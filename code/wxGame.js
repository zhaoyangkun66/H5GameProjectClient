var GlobalDef = require('./GlobalDef');
var WXBizDataCrypt = require('./WXBizDataCrypt')
var shopItemConf = require('./shopItemConf');
var sql = require('./sql');
var request = require('request');

var AppID = GlobalDef.AppID
var AppSecret = GlobalDef.AppSecret
var offer_id = GlobalDef.offer_id
var secret = GlobalDef.secret
var wxappid = "wx9400a01b45da5a15"                             //跳转小程序AppID
let raw = GlobalDef.raw

exports.wx_login = function (req, res) {
    let code = req.query.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/jscode2session?appid=" + AppID + "&secret=" + AppSecret + "&js_code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            //console.log("body", body)
            let sendData = JSON.parse(body)
            if (sendData.session_key) {
                sendData.clientVersionVX = GlobalDef.clientVersionVX
                // if (req.query.ChannelPlatformType) {
                //     if (req.query.ChannelPlatformType == 2) {
                //         sendData.clientVersionVX = 1
                //     }
                // }
                // if (req.query.channelID) {
                //     console.log("channelID",req.query.channelID)
                //     if (req.query.channelID == 1026) {
                //         sendData.clientVersionVX = 1
                //     }
                // }
                sendData.PassingState = GlobalDef.PassingState
                sendData.wxSmallProgramPayWxappid = wxappid
                var GSP_WEB_UpdateMiniGameIP = {
                    strOpenID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: sendData.openid
                    },
                    strClientIP: {
                        sqlType: "NVarChar",
                        size: 16,
                        inputValue: req.headers['x-forwarded-for'] || req.connection.remoteAddress || req.socket.remoteAddress || req.connection.socket.remoteAddress
                    },
                };
                //console.log(GSP_WEB_UpdateMiniGameIP);
                sql.execute("GSP_WEB_UpdateMiniGameIP", GSP_WEB_UpdateMiniGameIP, function (resxx) {
                    //console.log(resxx);
                    if (resxx.returnValue == 0) {
                        sendData.ChannelID = resxx.recordset[0].ChannelID
                        sendData.IosShow = resxx.recordset[0].IosShow
                    }
                    res.send(sendData);
                })
            }
            else {
                console.log("errwx_login", sendData)
            }
        }
    });
}

// exports.wx_UpdateUserInfo = function (req, res) {
//     let session_key = req.query.session_key;
//     let encryptedData = req.query.encryptedData
//     let iv = req.query.iv
//     let nickName = req.query.nickName
//     if (session_key && encryptedData && iv) {
//         let pc = new WXBizDataCrypt(AppID, session_key)
//         let data = pc.decryptData(encryptedData, iv)
//         //console.log("data", data)
//         if (data.openId && data.unionId) {
//             var GSP_WEB_UpdateUserInfo = {
//                 strHeadImgUrl: {
//                     sqlType: "NVarChar",
//                     size: 256,
//                     inputValue: data.avatarUrl
//                 },
//                 strOpenID: {
//                     sqlType: "NVarChar",
//                     size: 48,
//                     inputValue: data.openId
//                 },
//                 strUnionID: {
//                     sqlType: "NVarChar",
//                     size: 48,
//                     inputValue: data.unionId
//                 },
//                 cbGender: {
//                     sqlType: "TinyInt",
//                     inputValue: data.gender
//                 },
//                 strnickName: {
//                     sqlType: "NVarChar",
//                     size: 48,
//                     inputValue: nickName
//                 },
//             };
//             //console.log(GSP_WEB_UpdateUserInfo);
//             sql.execute("GSP_WEB_UpdateUserInfo", GSP_WEB_UpdateUserInfo, function (resxx) {
//                 res.send(data);
//             })
//         }
//         else {
//             console.log("err2wx_UpdateUserInfo", data)
//         }
//     }
//     else {
//         console.log("errwx_UpdateUserInfo")
//     }
// }
exports.wx_UpdateUserInfo2 = function (req, res) {
    let nickName = req.query.nickName
    var GSP_WEB_UpdateUserInfo = {
        strHeadImgUrl: {
            sqlType: "NVarChar",
            size: 256,
            inputValue: req.query.avatarUrl
        },
        strOpenID: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: req.query.openId
        },
        strUnionID: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: req.query.unionId
        },
        cbGender: {
            sqlType: "TinyInt",
            inputValue: req.query.gender
        },
        strnickName: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: nickName
        },
    };
    //console.log(GSP_WEB_UpdateUserInfo);
    sql.execute("GSP_WEB_UpdateUserInfo", GSP_WEB_UpdateUserInfo, function (resxx) {
        if (resxx.returnValue != 1) {
            console.log("wx_UpdateUserInfo2", req.query, resxx)
        }
        if (resxx.returnValue >= 1) {
            res.send({ returnValue: resxx.returnValue });
        }

    })
}
var wxpay = {
    //把金额转为分    
    getmoney: function (money) {
        return parseFloat(money) * 100;
    },
    // 随机字符串产生函数      
    createNonceStr: function () {
        return Math.random().toString(36).substr(2, 15);
    },
    // 时间戳产生函数      
    createTimeStamp: function () {
        return parseInt(new Date().getTime() / 1000);
    },
    //签名加密算法    
    get_sig: function (getSigInfo, type) {
        var stringA = raw(getSigInfo)
        //console.log(stringA);
        var stringSignTemp = stringA + "&org_loc=/cgi-bin/midas/" + type + "&method=POST&secret=" + secret
        return require('crypto').createHmac('sha256', secret).update(stringSignTemp).digest('hex');
    },
    //签名加密算法,第二次的签名    
    get_mp_sig: function (getMpSigInfo, type, session_key) {
        var stringA = raw(getMpSigInfo)
        //console.log(stringA);
        var stringSignTemp = stringA + "&org_loc=/cgi-bin/midas/" + type + "&method=POST&session_key=" + session_key
        return require('crypto').createHmac('sha256', session_key).update(stringSignTemp).digest('hex')
    },
}

exports.getWeChatOrderInfo = function (req, res) {
    var itemId = req.query.itemId
    var userId = req.query.userId
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    var contentJson = {};
    contentJson.buyQuantity = shopItem.amt
    var now = new Date();
    var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
    var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var muc_id = offer_id;
    contentJson.out_trade_no = muc_id + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
    contentJson.canPayment = 1
    contentJson.itemId = itemId
    contentJson.userId = userId
    contentJson.zone_id = 1000 + parseInt(itemId)
    contentJson.zone_id = contentJson.zone_id.toString()
    //contentJson.zone_id = "1"
    var GSP_WEB_CanShopRechargeAndClick = {
        dwUserID: {
            sqlType: "Int",
            inputValue: userId
        },
        fCash: {
            sqlType: "Float",
            inputValue: contentJson.buyQuantity
        },
        dwGold: {
            sqlType: "Int",
            inputValue: shopItem.golds
        },
        iItemId: {
            sqlType: "Int",
            inputValue: itemId
        },
        strOut_trade_no: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: contentJson.out_trade_no
        },
        iSuccess: {
            sqlType: "Int",
            inputValue: 0
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: "WeChatMinigame"
        }
    };
    sql.execute("GSP_WEB_CanShopRechargeAndClick", GSP_WEB_CanShopRechargeAndClick, function (resxx) {
        if (resxx.returnValue == 0) {
            contentJson.WhiteUser = resxx.recordset[0].WhiteUser
            res.send(contentJson);
        }
        else {
            // res.send({ returnValue: "不能重复购买" });
            console.log(resxx);
        }
    })
}

exports.paymentEnd3 = function (req, res) {
    var openid = req.query.openId
    var session_key = req.query.session_key
    var itemId = req.query.itemId
    var zone_id = req.query.zone_id
    var userId = req.query.userId
    var out_trade_no = req.query.out_trade_no
    var shopItem = shopItemConf[itemId]

    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
    }, function (err, res1, body) {
        if (!err && res1.statusCode == 200) {
            //console.log("res1.body", body);
            var access_token = JSON.parse(body).access_token;
            let ts = wxpay.createTimeStamp();
            let bill_no = out_trade_no
            var getSigInfo =
            {
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "amt": shopItem.amt,
                "bill_no": bill_no,
            }
            let sig = wxpay.get_sig(getSigInfo, "pay")
            var getMpSigInfo =
            {
                "access_token": access_token,
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "amt": shopItem.amt,
                "bill_no": bill_no,
                "sig": sig
            }
            let mp_sig = wxpay.get_mp_sig(getMpSigInfo, "pay", session_key)
            var formData =
            {
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "amt": shopItem.amt,
                "bill_no": bill_no,
                "sig": sig,
                "mp_sig": mp_sig
            }

            // console.log('formData===', formData);
            var url = 'https://api.weixin.qq.com/cgi-bin/midas/pay?access_token=' + access_token
            request({
                url: url,
                method: "POST",
                json: true,
                headers: {
                    "content-type": "application/json",
                },
                body: formData
            },
                function (err, response, body) {
                    if (!err && response.statusCode == 200) {
                        if (body.errcode == 0) {
                            var GSP_WEB_GameShopRechargeWeChatMore = {
                                dwUserID: {
                                    sqlType: "Int",
                                    inputValue: userId
                                },
                                fCash: {
                                    sqlType: "Float",
                                    inputValue: shopItem.amt
                                },
                                dwGold: {
                                    sqlType: "Int",
                                    inputValue: shopItem.golds
                                },
                                strOut_trade_no: {
                                    sqlType: "NVarChar",
                                    size: 32,
                                    inputValue: out_trade_no
                                },
                                iItemId: {
                                    sqlType: "Int",
                                    inputValue: itemId
                                },
                                iOrderState: {
                                    sqlType: "Int",
                                    inputValue: 1
                                },
                                ibalance: {
                                    sqlType: "Int",
                                    inputValue: body.balance
                                }
                            };
                            //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                            sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                if (resxx.returnValue != 0) {
                                    console.log(resxx);
                                }
                            })
                        }
                        else if (body.errcode == 90012) {
                            var GSP_WEB_GameShopRechargeWeChatMore = {
                                dwUserID: {
                                    sqlType: "Int",
                                    inputValue: userId
                                },
                                fCash: {
                                    sqlType: "Float",
                                    inputValue: shopItem.amt
                                },
                                dwGold: {
                                    sqlType: "Int",
                                    inputValue: shopItem.golds
                                },
                                strOut_trade_no: {
                                    sqlType: "NVarChar",
                                    size: 32,
                                    inputValue: out_trade_no
                                },
                                iItemId: {
                                    sqlType: "Int",
                                    inputValue: itemId
                                },
                                iOrderState: {
                                    sqlType: "Int",
                                    inputValue: 1
                                },
                                ibalance: {
                                    sqlType: "Int",
                                    inputValue: -1
                                }
                            };
                            //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                            sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                if (resxx.returnValue != 0) {
                                    console.log(resxx);
                                }
                            })
                            console.log(body);
                        }
                        else if (body.errcode == 40001) {
                            console.log(body);
                            request({
                                method: 'get',
                                url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
                            }, function (err, res1, body) {
                                if (!err && res1.statusCode == 200) {
                                    //console.log("res1.body", body);
                                    var access_token = JSON.parse(body).access_token;
                                    let ts = wxpay.createTimeStamp();
                                    let bill_no = out_trade_no
                                    var getSigInfo =
                                    {
                                        "openid": openid,
                                        "appid": AppID,
                                        "offer_id": offer_id,
                                        "ts": ts,
                                        "zone_id": zone_id,
                                        "pf": "android",
                                        "amt": shopItem.amt,
                                        "bill_no": bill_no,
                                    }
                                    let sig = wxpay.get_sig(getSigInfo, "pay")
                                    var getMpSigInfo =
                                    {
                                        "access_token": access_token,
                                        "openid": openid,
                                        "appid": AppID,
                                        "offer_id": offer_id,
                                        "ts": ts,
                                        "zone_id": zone_id,
                                        "pf": "android",
                                        "amt": shopItem.amt,
                                        "bill_no": bill_no,
                                        "sig": sig
                                    }
                                    let mp_sig = wxpay.get_mp_sig(getMpSigInfo, "pay", session_key)
                                    var formData =
                                    {
                                        "openid": openid,
                                        "appid": AppID,
                                        "offer_id": offer_id,
                                        "ts": ts,
                                        "zone_id": zone_id,
                                        "pf": "android",
                                        "amt": shopItem.amt,
                                        "bill_no": bill_no,
                                        "sig": sig,
                                        "mp_sig": mp_sig
                                    }

                                    // console.log('formData===', formData);
                                    var url = 'https://api.weixin.qq.com/cgi-bin/midas/pay?access_token=' + access_token
                                    request({
                                        url: url,
                                        method: "POST",
                                        json: true,
                                        headers: {
                                            "content-type": "application/json",
                                        },
                                        body: formData
                                    },
                                        function (err, response, body) {
                                            if (!err && response.statusCode == 200) {
                                                if (body.errcode == 0) {
                                                    var GSP_WEB_GameShopRechargeWeChatMore = {
                                                        dwUserID: {
                                                            sqlType: "Int",
                                                            inputValue: userId
                                                        },
                                                        fCash: {
                                                            sqlType: "Float",
                                                            inputValue: shopItem.amt
                                                        },
                                                        dwGold: {
                                                            sqlType: "Int",
                                                            inputValue: shopItem.golds
                                                        },
                                                        strOut_trade_no: {
                                                            sqlType: "NVarChar",
                                                            size: 32,
                                                            inputValue: out_trade_no
                                                        },
                                                        iItemId: {
                                                            sqlType: "Int",
                                                            inputValue: itemId
                                                        },
                                                        iOrderState: {
                                                            sqlType: "Int",
                                                            inputValue: 1
                                                        },
                                                        ibalance: {
                                                            sqlType: "Int",
                                                            inputValue: body.balance
                                                        }
                                                    };
                                                    //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                                                    sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                                        res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                                        if (resxx.returnValue != 0) {
                                                            console.log(resxx);
                                                        }
                                                    })
                                                }
                                                else if (body.errcode == 90012) {
                                                    var GSP_WEB_GameShopRechargeWeChatMore = {
                                                        dwUserID: {
                                                            sqlType: "Int",
                                                            inputValue: userId
                                                        },
                                                        fCash: {
                                                            sqlType: "Float",
                                                            inputValue: shopItem.amt
                                                        },
                                                        dwGold: {
                                                            sqlType: "Int",
                                                            inputValue: shopItem.golds
                                                        },
                                                        strOut_trade_no: {
                                                            sqlType: "NVarChar",
                                                            size: 32,
                                                            inputValue: out_trade_no
                                                        },
                                                        iItemId: {
                                                            sqlType: "Int",
                                                            inputValue: itemId
                                                        },
                                                        iOrderState: {
                                                            sqlType: "Int",
                                                            inputValue: 1
                                                        },
                                                        ibalance: {
                                                            sqlType: "Int",
                                                            inputValue: -1
                                                        }
                                                    };
                                                    //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                                                    sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                                        res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                                        if (resxx.returnValue != 0) {
                                                            console.log(resxx);
                                                        }
                                                    })
                                                    console.log(body);
                                                }
                                                else if (body.errcode == 40001) {
                                                    console.log('paymentEnd3_2', body);
                                                }
                                                else {
                                                    var GSP_WEB_GameShopRechargeClick = {
                                                        dwUserID: {
                                                            sqlType: "Int",
                                                            inputValue: userId
                                                        },
                                                        fCash: {
                                                            sqlType: "Float",
                                                            inputValue: shopItem.amt
                                                        },
                                                        dwGold: {
                                                            sqlType: "Int",
                                                            inputValue: shopItem.golds
                                                        },
                                                        strOut_trade_no: {
                                                            sqlType: "NVarChar",
                                                            size: 32,
                                                            inputValue: out_trade_no
                                                        },
                                                        iSuccess: {
                                                            sqlType: "Int",
                                                            inputValue: 2
                                                        },
                                                        strTransaction_id: {
                                                            sqlType: "NVarChar",
                                                            size: 32,
                                                            inputValue: "WeChatMinigame"
                                                        }
                                                    };
                                                    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

                                                    })
                                                    console.log(body);
                                                    res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: 1 });
                                                }

                                            }
                                        });
                                }
                            });
                        }
                        else {
                            var GSP_WEB_GameShopRechargeClick = {
                                dwUserID: {
                                    sqlType: "Int",
                                    inputValue: userId
                                },
                                fCash: {
                                    sqlType: "Float",
                                    inputValue: shopItem.amt
                                },
                                dwGold: {
                                    sqlType: "Int",
                                    inputValue: shopItem.golds
                                },
                                strOut_trade_no: {
                                    sqlType: "NVarChar",
                                    size: 32,
                                    inputValue: out_trade_no
                                },
                                iSuccess: {
                                    sqlType: "Int",
                                    inputValue: 2
                                },
                                strTransaction_id: {
                                    sqlType: "NVarChar",
                                    size: 32,
                                    inputValue: "WeChatMinigame"
                                }
                            };
                            sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

                            })
                            console.log(body);
                            res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: 1 });
                        }

                    }
                });
        }
    });
}
exports.paymentCheck2 = function (req, res) {
    var openid = req.query.openId
    var session_key = req.query.session_key
    var itemId = req.query.itemId
    var zone_id = req.query.zone_id
    var userId = req.query.userId
    var out_trade_no = req.query.out_trade_no
    if (req.query.errCode && req.query.errCode != -2 && req.query.errCode != 1) {
        console.log("paymentCheck2errMsg", req.query)
    }
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    var GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold = {
        dwUserID: {
            sqlType: "Int",
            inputValue: userId
        },
        iItemId: {
            sqlType: "Int",
            inputValue: itemId
        }
    };
    sql.execute("GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold", GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold, function (resxx) {
        let needUseWeChatGold = resxx.recordset[0].needUseWeChatGold
        request({
            method: 'get',
            url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
        }, function (err, res1, body) {
            if (!err && res1.statusCode == 200) {
                //console.log("res1.body", body);
                var access_token = JSON.parse(body).access_token;
                let ts = wxpay.createTimeStamp();
                let bill_no = out_trade_no
                var getSigInfo =
                {
                    "openid": openid,
                    "appid": AppID,
                    "offer_id": offer_id,
                    "ts": ts,
                    "zone_id": zone_id,
                    "pf": "android",
                    "amt": shopItem.amt + needUseWeChatGold,
                    "bill_no": bill_no,
                }
                let sig = wxpay.get_sig(getSigInfo, "pay")
                var getMpSigInfo =
                {
                    "access_token": access_token,
                    "openid": openid,
                    "appid": AppID,
                    "offer_id": offer_id,
                    "ts": ts,
                    "zone_id": zone_id,
                    "pf": "android",
                    "amt": shopItem.amt + needUseWeChatGold,
                    "bill_no": bill_no,
                    "sig": sig
                }
                let mp_sig = wxpay.get_mp_sig(getMpSigInfo, "pay", session_key)
                var formData =
                {
                    "openid": openid,
                    "appid": AppID,
                    "offer_id": offer_id,
                    "ts": ts,
                    "zone_id": zone_id,
                    "pf": "android",
                    "amt": shopItem.amt + needUseWeChatGold,
                    "bill_no": bill_no,
                    "sig": sig,
                    "mp_sig": mp_sig
                }

                // console.log('formData===', formData);
                var url = 'https://api.weixin.qq.com/cgi-bin/midas/pay?access_token=' + access_token
                request({
                    url: url,
                    method: "POST",
                    json: true,
                    headers: {
                        "content-type": "application/json",
                    },
                    body: formData
                },
                    function (err, response, body) {
                        if (!err && response.statusCode == 200) {
                            if (body.errcode == 0) {
                                var GSP_WEB_GameShopRechargeWeChatMore = {
                                    dwUserID: {
                                        sqlType: "Int",
                                        inputValue: userId
                                    },
                                    fCash: {
                                        sqlType: "Float",
                                        inputValue: shopItem.amt
                                    },
                                    dwGold: {
                                        sqlType: "Int",
                                        inputValue: shopItem.golds
                                    },
                                    strOut_trade_no: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: out_trade_no
                                    },
                                    iItemId: {
                                        sqlType: "Int",
                                        inputValue: itemId
                                    },
                                    iOrderState: {
                                        sqlType: "Int",
                                        inputValue: 3
                                    },
                                    ibalance: {
                                        sqlType: "Int",
                                        inputValue: body.balance
                                    }
                                };
                                //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                                sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                    res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                    if (resxx.returnValue != 0) {
                                        console.log(resxx);
                                    }
                                })
                            }
                            else if (body.errcode == 90012) {
                                var GSP_WEB_GameShopRechargeWeChatMore = {
                                    dwUserID: {
                                        sqlType: "Int",
                                        inputValue: userId
                                    },
                                    fCash: {
                                        sqlType: "Float",
                                        inputValue: shopItem.amt
                                    },
                                    dwGold: {
                                        sqlType: "Int",
                                        inputValue: shopItem.golds
                                    },
                                    strOut_trade_no: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: out_trade_no
                                    },
                                    iItemId: {
                                        sqlType: "Int",
                                        inputValue: itemId
                                    },
                                    iOrderState: {
                                        sqlType: "Int",
                                        inputValue: 3
                                    },
                                    ibalance: {
                                        sqlType: "Int",
                                        inputValue: -1
                                    }
                                };
                                //console.log(GSP_WEB_GameShopRechargeWeChatMore);
                                sql.execute("GSP_WEB_GameShopRechargeWeChatMore", GSP_WEB_GameShopRechargeWeChatMore, function (resxx) {
                                    res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: resxx.returnValue });
                                    if (resxx.returnValue != 0) {
                                        console.log(resxx);
                                    }
                                })
                                console.log('paymentCheck', body);
                            }
                            else if (body.errcode == 90013) {
                                var GSP_WEB_GameShopRechargeClick = {
                                    dwUserID: {
                                        sqlType: "Int",
                                        inputValue: userId
                                    },
                                    fCash: {
                                        sqlType: "Float",
                                        inputValue: shopItem.amt
                                    },
                                    dwGold: {
                                        sqlType: "Int",
                                        inputValue: shopItem.golds
                                    },
                                    strOut_trade_no: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: out_trade_no
                                    },
                                    iSuccess: {
                                        sqlType: "Int",
                                        inputValue: 2
                                    },
                                    strTransaction_id: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: "WeChatMinigame"
                                    }
                                };
                                sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {
                                    res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: 1 });
                                })
                                //console.log('paymentCheck', body);
                            }
                            else if (body.errcode == 40001) {
                                console.log('paymentCheck', body);
                            }
                            else {
                                var GSP_WEB_GameShopRechargeClick = {
                                    dwUserID: {
                                        sqlType: "Int",
                                        inputValue: userId
                                    },
                                    fCash: {
                                        sqlType: "Float",
                                        inputValue: shopItem.amt
                                    },
                                    dwGold: {
                                        sqlType: "Int",
                                        inputValue: shopItem.golds
                                    },
                                    strOut_trade_no: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: out_trade_no
                                    },
                                    iSuccess: {
                                        sqlType: "Int",
                                        inputValue: 2
                                    },
                                    strTransaction_id: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: "WeChatMinigame"
                                    }
                                };
                                sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {
                                    res.send({ itemId: itemId, out_trade_no: out_trade_no, returnValue: 1 });
                                })
                                console.log('paymentCheck', body);
                            }
                        }
                    });
            }
        });
    })
}
// exports.paymentGoldGet = function (req, res) {
//     var openid = req.query.openId
//     var session_key = req.query.session_key
//     var userId = req.query.userId
//     var GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold = {
//         dwUserID: {
//             sqlType: "Int",
//             inputValue: userId
//         }
//     };
//     sql.execute("GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold", GSP_WEB_GameShopRechargeWeChatGetNeedUseWeChatGold, function (resxx) {
//         let needUseWeChatGold = resxx.recordset[0].needUseWeChatGold
//         request({
//             method: 'get',
//             url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
//         }, function (err, res1, body) {
//             if (!err && res1.statusCode == 200) {
//                 //console.log("res1.body", body);
//                 var access_token = JSON.parse(body).access_token;
//                 let ts = wxpay.createTimeStamp();
//                 var getSigInfo =
//                 {
//                     "openid": openid,
//                     "appid": AppID,
//                     "offer_id": offer_id,
//                     "ts": ts,
//                     "zone_id": "2",
//                     "pf": "android",
//                 }
//                 let sig = wxpay.get_sig(getSigInfo, "getbalance")
//                 var getMpSigInfo =
//                 {
//                     "access_token": access_token,
//                     "openid": openid,
//                     "appid": AppID,
//                     "offer_id": offer_id,
//                     "ts": ts,
//                     "zone_id": "2",
//                     "pf": "android",
//                     "sig": sig
//                 }
//                 let mp_sig = wxpay.get_mp_sig(getMpSigInfo, "getbalance", session_key)
//                 var formData =
//                 {
//                     "openid": openid,
//                     "appid": AppID,
//                     "offer_id": offer_id,
//                     "ts": ts,
//                     "zone_id": "2",
//                     "pf": "android",
//                     "sig": sig,
//                     "mp_sig": mp_sig
//                 }

//                 // console.log('formData===', formData);
//                 var url = 'https://api.weixin.qq.com/cgi-bin/midas/getbalance?access_token=' + access_token
//                 request({
//                     url: url,
//                     method: "POST",
//                     json: true,
//                     headers: {
//                         "content-type": "application/json",
//                     },
//                     body: formData
//                 },
//                     function (err, response, body) {
//                         if (!err && response.statusCode == 200) {
//                             if (body.errcode == 0) {
//                                 res.send({ balance: body.balance - needUseWeChatGold, returnValue: 1 });
//                             }
//                             else {
//                                 console.log('getbalance', body);
//                                 res.send({ returnValue: 2 });
//                             }

//                         }
//                     });
//             }
//         });
//     })
// }
exports.paymentTest = function (req, res) {

    var openid = req.query.openId
    var session_key = req.query.session_key
    var zone_id = req.query.zone_id
    var present_counts = 500
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
    }, function (err, res1, body) {
        if (!err && res1.statusCode == 200) {
            console.log("res1.body", body);
            var access_token = JSON.parse(body).access_token;
            let ts = wxpay.createTimeStamp();
            let bill_no = wxpay.createNonceStr();
            var getSigInfo =
            {
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "present_counts": present_counts,
                "bill_no": bill_no,
            }
            let sig = wxpay.get_sig(getSigInfo, "present")
            var getMpSigInfo =
            {
                "access_token": access_token,
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "present_counts": present_counts,
                "bill_no": bill_no,
                "sig": sig
            }
            let mp_sig = wxpay.get_mp_sig(getMpSigInfo, "present", session_key)
            var formData =
            {
                "openid": openid,
                "appid": AppID,
                "offer_id": offer_id,
                "ts": ts,
                "zone_id": zone_id,
                "pf": "android",
                "present_counts": present_counts,
                "bill_no": bill_no,
                "sig": sig,
                "mp_sig": mp_sig
            }

            console.log('formData===', formData);
            var url = 'https://api.weixin.qq.com/cgi-bin/midas/present?access_token=' + access_token
            request({
                url: url,
                method: "POST",
                json: true,
                headers: {
                    "content-type": "application/json",
                },
                body: formData
            },
                function (err, response, body) {
                    if (!err && response.statusCode == 200) {
                        console.log(body);
                        //res.send(body);
                    }
                });
        }
    });
};