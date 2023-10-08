var express = require('./express');
var app = express();
var request = require('request');
var bodyParser = require('./express/node_modules/body-parser');
require("body-parser-xml")(bodyParser);

var GlobalDef = require('./GlobalDef');
var exchangeItemConf = require('./exchangeItemConf');
var sql = require('./sql');
var wxGame = require('./wxGame');
let wxNativepay = require('./wxNativepay');
let wxSmallProgramPay = require('./wxSmallProgramPay');
let wxH5pay = require('./wxH5pay');
let alipay = require('./alipay');
let redpacket = require('./sendRedPacket');
let SendSms = require('./SendSms');
let wxGZ = require('./wxGZ');
let iosPay = require('./iosPay');
let wxNativeGame = require('./wxNativeGame');
//let wxPush = require('./wxPush');
var qr = require('qr-image')
let web3ETHWithdrawalAndRecharge = require('./web3ETHWithdrawalAndRecharge');
var GooglePlay = require('./GooglePlay')
var fs = require('fs');
// let CanShopRecharge = function (req, res, func) {
//     var GSP_WEB_CanShopRecharge = {
//         dwUserID: {
//             sqlType: "Int",
//             inputValue: req.query.userId
//         }
//     };
//     //console.log(GSP_WEB_CanShopRecharge);
//     sql.execute("GSP_WEB_CanShopRecharge", GSP_WEB_CanShopRecharge, function (resxx) {
//         if (resxx.returnValue == 0) {
//             func(req, res)
//         }
//         else {
//             res.send({ returnValue: "不能重复购买" });
//         }
//     })
// }

app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Headers", "Content-Type");
    res.header("Access-Control-Allow-Methods", "POST,PUT,GET,DELETE,OPTIONS");
    res.header("Access-Control-Allow-Origin", "*");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});

app.use(bodyParser.xml({
    limit: "100MB",   // Reject payload bigger than 1 MB
    xmlParseOptions: {
        normalize: true,     // Trim whitespace inside text nodes
        normalizeTags: true, // Transform tags to lowercase
        explicitArray: false // Only put nodes in array if >1
    },
    verify: function (req, res, buf, encoding) {
        if (buf && buf.length) {
            // Store the raw XML
            req.rawBody = buf.toString(encoding || "utf8");
        }
    }
}));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }))

app.post('/config/commonConfig', function (req, res) {
    console.log('config/commonConfig',req.body);
});

app.get('/clientVersion', function (req, res) {
    res.send({
        clientVersion: GlobalDef.clientVersionNative,
        PassingStateIOS: GlobalDef.PassingStateIOS
    });
});

app.get('/ccc', function (req, res) {
   // fs.writeFile('output.txt', req.body, function (err) { if (err) throw err; console.log('It\'s saved!'); }); 
});
fs.readFile("./PolyglotNew.csv", (err, data) => {
    if (err) {
        console.log('文件读取失败：' + err);
        // 设置404响应
       
    }
    else {
        data=data.toString()
        data=data.replace(/[\r\n]/g,"")
        console.log(data);
        fs.writeFile('output.txt', data, function (err) { if (err) throw err; console.log('It\'s saved!'); }); 
    }
    
});
app.post('/SendSms', function (req, res) {
    SendSms.SendSms(req, res)
});

app.post('/recordOffline', function (req, res) {
    var GSP_WEB_RecordOffline = {
        dwUserID: {
            sqlType: "Int",
            inputValue: req.body.userId
        },
        TypeOffline: {
            sqlType: "Int",
            inputValue: req.body.TypeOffline
        }
    };
    //console.log(GSP_WEB_CanShopRecharge);
    sql.execute("GSP_WEB_RecordOffline", GSP_WEB_RecordOffline, function (resxx) {
        res.send({ returnValue: resxx.returnValue });
    })
});

// app.post('/qg_login', function (req, res) {
//     oppopay.oppo_login(req, res)
// });
// app.post('/getOppoOrderInfo', function (req, res) {
//     if (req.query.itemId == 10) {
//         CanShopRecharge(req, res, oppopay.getOppoOrderInfo)
//     }
//     else {
//         oppopay.getOppoOrderInfo(req, res)
//     }
// });
// app.post('/oppoPayAction', function (req, res) {
//     oppopay.oppoPayAction(req, res)
// });

// app.get('/BaiDui_login', function (req, res) {
//     BaiDuiGame.BaiDui_login(req, res)
// });

// app.get('/getBaiDuiOrderInfo', function (req, res) {
//     if (req.query.itemId == 10) {
//         CanShopRecharge(req, res, BaiDuiGame.getBaiDuiOrderInfo)
//     }
//     else {
//         BaiDuiGame.getBaiDuiOrderInfo(req, res)
//     }
// });

// app.post('/BaiDuipaymentOrderquery', function (req, res) {
//     BaiDuiGame.BaiDuipaymentOrderquery(req, res)
// });

app.get('/wx_login', function (req, res) {
    wxGame.wx_login(req, res)
});

// app.get('/wx_UpdateUserInfo', function (req, res) {
//     wxGame.wx_UpdateUserInfo(req, res)
// });

app.get('/wx_UpdateUserInfo2', function (req, res) {
    wxGame.wx_UpdateUserInfo2(req, res)
});

app.get('/getWeChatOrderInfo3', function (req, res) {
    wxGame.getWeChatOrderInfo(req, res)
});
app.get('/paymentEnd3', function (req, res) {
    wxGame.paymentEnd3(req, res)
});
app.get('/paymentCheck2', function (req, res) {
    wxGame.paymentCheck2(req, res)
});

app.get('/wx_GZlogin', function (req, res) {
    wxGZ.wx_GZlogin(req, res)
});

app.get('/wx_GZloginGame', function (req, res) {
    wxGZ.wx_GZloginGame(req, res)
});

app.post('/wx_GZVerification', function (req, res) {
    wxGZ.wx_GZVerification(req, res)
});

app.get('/wx_GZloginThirdParty', function (req, res) {
    wxGZ.wx_GZloginThirdParty(req, res)
});

app.get('/bindingPublicNumberPNG', function (req, res) {
    var unionId = req.query.unionId;
    var url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx70eca148f31bc7b5&redirect_uri=http%3a%2f%2ffish.qiquwa.com%2fwx_GZloginThirdParty&response_type=code&scope=snsapi_userinfo&state=" + unionId + "#wechat_redirect"
    var img = qr.image(url, { size: 10 });
    res.writeHead(200, { 'content-Type': "image/png", "Access-Control-Allow-Origin": "*" })
    img.pipe(res);
});

// app.post('/useCheapShopCard', function (req, res) {
//     var itemId = req.body.itemId
//     var userId = req.body.userId
//     var exchangeItem = exchangeItemConf[itemId]
//     if (!exchangeItem) {
//         return
//     }
//     var GSP_WEB_UseCheapShopCard = {
//         dwUserID: {
//             sqlType: "Int",
//             inputValue: userId
//         },
//         dwGoodsID: {
//             sqlType: "Int",
//             inputValue: exchangeItem.GoodsID
//         },
//         iItemId: {
//             sqlType: "Int",
//             inputValue: itemId
//         },
//     };
//     //console.log(GSP_WEB_UseCheapShopCard);
//     sql.execute("GSP_WEB_UseCheapShopCard", GSP_WEB_UseCheapShopCard, function (resxx) {
//         res.send({ itemId: itemId, returnValue: resxx.returnValue, message: resxx.recordset[0].ResultDescribe });
//     })
// });
// app.post('/getCheapShopData', function (req, res) {
//     var GSP_WEB_GetCheapShopData = {
//         dwUserID: {
//             sqlType: "Int",
//             inputValue: req.body.userId
//         }
//     };
//     //console.log(GSP_WEB_GetCheapShopData);
//     sql.execute("GSP_WEB_GetCheapShopData", GSP_WEB_GetCheapShopData, function (resxx) {
//         res.send(resxx);
//     })
// });

app.post('/transferSend', function (req, res) {
    var password = req.body.password
    var itemId = req.body.itemId
    var userId = req.body.userId
    var channelID = req.body.channelID
    var exchangeItem = exchangeItemConf[itemId]
    if (!exchangeItem) {
        return
    }
    if (exchangeItemConf[itemId].GoodsID == 5) {
        var USDTAddress = req.body.USDTAddress
        var NetworkType = req.body.NetworkType
        var Amount = req.body.Amount
        var GSP_WEB__CanExchangeCash = {
            dwUserID: {
                sqlType: "Int",
                inputValue: userId
            },
            needRedPacket: {
                sqlType: "Int",
                inputValue: exchangeItem.needRedPacket
            },
            strPassword: {
                sqlType: "NVarChar",
                size: 48,
                inputValue: password
            },
            iItemId: {
                sqlType: "Int",
                inputValue: itemId
            },
            lExchangeCashLockeTime: {
                sqlType: "BigInt",
                inputValue: Math.floor(new Date().getTime() / 1000)
            },
        };
        sql.execute("GSP_WEB_CanExchangeCash", GSP_WEB__CanExchangeCash, function (resxx) {
            if (resxx.returnValue == 0) {
                var option = { total_amount: exchangeItem.needRedPacket, USDTAddress: USDTAddress, NetworkType: NetworkType };
                web3ETHWithdrawalAndRecharge.transferSend(option, function (error, transactionHash) {
                    if (transactionHash) {
                        var GSP_WEB_RedPacketExchangeGoodsMore = {
                            dwUserID: {
                                sqlType: "Int",
                                inputValue: userId
                            },
                            fRedPacket: {
                                sqlType: "Float",
                                inputValue: exchangeItem.needRedPacket / 100
                            },
                            dwGoodsID: {
                                sqlType: "Int",
                                inputValue: exchangeItem.GoodsID
                            },
                            dwGoodsCount: {
                                sqlType: "Int",
                                inputValue: exchangeItem.GoodsCount
                            },
                            iItemId: {
                                sqlType: "Int",
                                inputValue: itemId
                            },
                            iChannelID: {
                                sqlType: "Int",
                                inputValue: channelID
                            },
                            TransactionHash: {
                                sqlType: "NVarChar",
                                size: 70,
                                inputValue: transactionHash
                            },
                            USDTAddress: {
                                sqlType: "NVarChar",
                                size: 70,
                                inputValue: USDTAddress
                            },
                            NetworkType: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: NetworkType
                            },
                        };
                        //console.log(GSP_WEB_RedPacketExchangeGoods);
                        sql.execute("GSP_WEB_RedPacketExchangeGoodsMore", GSP_WEB_RedPacketExchangeGoodsMore, function (resxx) {
                            res.send({ itemId: itemId, returnValue: resxx.returnValue });
                        })
                    }
                    else {
                        res.send({ itemId: itemId, returnValue: 1, message: error });
                        console.log("transfer", error, transactionHash)
                    }
                })
            }
            else {
                res.send({ itemId: itemId, returnValue: 1, message: resxx.recordset[0].ErrorDescribe });
            }
        })
    }
    else {
        var GSP_WEB_RedPacketExchangeGoods = {
            dwUserID: {
                sqlType: "Int",
                inputValue: userId
            },
            fRedPacket: {
                sqlType: "Float",
                inputValue: exchangeItem.needRedPacket / 100
            },
            dwGoodsID: {
                sqlType: "Int",
                inputValue: exchangeItem.GoodsID
            },
            dwGoodsCount: {
                sqlType: "Int",
                inputValue: exchangeItem.GoodsCount
            },
            iItemId: {
                sqlType: "Int",
                inputValue: itemId
            },
            iChannelID: {
                sqlType: "Int",
                inputValue: channelID
            },

        };
        //console.log(GSP_WEB_RedPacketExchangeGoods);
        sql.execute("GSP_WEB_RedPacketExchangeGoods", GSP_WEB_RedPacketExchangeGoods, function (resxx) {
            res.send({ itemId: itemId, returnValue: resxx.returnValue, message: resxx.recordset[0].ResultDescribe });
        })
    }




    // console.log("aliPayAction")
    // web3ETHWithdrawalAndRecharge.transferFromSend(req, res)
});

// app.post('/exchangeAlipay', function (req, res) {
//     var password = req.body.password
//     var itemId = req.body.itemId
//     var userId = req.body.userId
//     var channelID = req.body.channelID
//     var exchangeItem = exchangeItemConf[itemId]
//     if (!exchangeItem) {
//         return
//     }
//     if (exchangeItemConf[itemId].GoodsID == 5) {
//         var name = req.body.name
//         var identity = req.body.identity
//         var GSP_WEB__CanExchangeCash = {
//             dwUserID: {
//                 sqlType: "Int",
//                 inputValue: userId
//             },
//             needRedPacket: {
//                 sqlType: "Int",
//                 inputValue: exchangeItem.needRedPacket
//             },
//             strPassword: {
//                 sqlType: "NVarChar",
//                 size: 48,
//                 inputValue: password
//             },
//             iItemId: {
//                 sqlType: "Int",
//                 inputValue: itemId
//             },
//             lExchangeCashLockeTime: {
//                 sqlType: "BigInt",
//                 inputValue: new Date().getTime() / 1000
//             },
//         };
//         sql.execute("GSP_WEB_CanExchangeCash", GSP_WEB__CanExchangeCash, function (resxx) {
//             if (resxx.returnValue == 0) {
//                 var option = { total_amount: exchangeItem.needRedPacket, identity: identity, name: name };
//                 alipay.fnSendMoney(option, function (result) {
//                     if (result.code == "10000") {
//                         var GSP_WEB_RedPacketExchangeGoodsMore = {
//                             dwUserID: {
//                                 sqlType: "Int",
//                                 inputValue: userId
//                             },
//                             fRedPacket: {
//                                 sqlType: "Float",
//                                 inputValue: exchangeItem.needRedPacket / 100
//                             },
//                             dwGoodsID: {
//                                 sqlType: "Int",
//                                 inputValue: exchangeItem.GoodsID
//                             },
//                             dwGoodsCount: {
//                                 sqlType: "Int",
//                                 inputValue: exchangeItem.GoodsCount
//                             },
//                             iItemId: {
//                                 sqlType: "Int",
//                                 inputValue: itemId
//                             },
//                             iChannelID: {
//                                 sqlType: "Int",
//                                 inputValue: channelID
//                             },
//                             strOut_trade_no: {
//                                 sqlType: "NVarChar",
//                                 size: 32,
//                                 inputValue: result.pay_fund_order_id
//                             },
//                             identity: {
//                                 sqlType: "NVarChar",
//                                 size: 32,
//                                 inputValue: identity
//                             },
//                             name: {
//                                 sqlType: "NVarChar",
//                                 size: 32,
//                                 inputValue: name
//                             },
//                         };
//                         //console.log(GSP_WEB_RedPacketExchangeGoods);
//                         sql.execute("GSP_WEB_RedPacketExchangeGoodsMore", GSP_WEB_RedPacketExchangeGoodsMore, function (resxx) {
//                             res.send({ itemId: itemId, returnValue: resxx.returnValue });
//                         })
//                     }
//                     else {
//                         //res.send({ itemId: itemId, returnValue: 1, message: "红包功能正在维护中,请密切关注"});
//                         res.send({ itemId: itemId, returnValue: 1, message: result.subMsg });
//                         console.log(result);
//                     }
//                 })
//             }
//             else {
//                 res.send({ itemId: itemId, returnValue: 1, message: resxx.recordset[0].ErrorDescribe });
//             }
//         })
//     }
//     else {
//         var GSP_WEB_RedPacketExchangeGoods = {
//             dwUserID: {
//                 sqlType: "Int",
//                 inputValue: userId
//             },
//             fRedPacket: {
//                 sqlType: "Float",
//                 inputValue: exchangeItem.needRedPacket / 100
//             },
//             dwGoodsID: {
//                 sqlType: "Int",
//                 inputValue: exchangeItem.GoodsID
//             },
//             dwGoodsCount: {
//                 sqlType: "Int",
//                 inputValue: exchangeItem.GoodsCount
//             },
//             iItemId: {
//                 sqlType: "Int",
//                 inputValue: itemId
//             },
//             iChannelID: {
//                 sqlType: "Int",
//                 inputValue: channelID
//             },

//         };
//         //console.log(GSP_WEB_RedPacketExchangeGoods);
//         sql.execute("GSP_WEB_RedPacketExchangeGoods", GSP_WEB_RedPacketExchangeGoods, function (resxx) {
//             res.send({ itemId: itemId, returnValue: resxx.returnValue, message: resxx.recordset[0].ResultDescribe });
//         })
//     }
// });

app.post('/exchange', function (req, res) {
    var password = req.body.password
    var itemId = req.body.itemId
    var userId = req.body.userId
    var channelID = req.body.channelID
    var exchangeItem = exchangeItemConf[itemId]
    if (!exchangeItem) {
        return
    }
    if (exchangeItemConf[itemId].GoodsID == 5) {
        var GSP_WEB__CanExchangeCash = {
            dwUserID: {
                sqlType: "Int",
                inputValue: userId
            },
            needRedPacket: {
                sqlType: "Int",
                inputValue: exchangeItem.needRedPacket
            },
            strPassword: {
                sqlType: "NVarChar",
                size: 48,
                inputValue: password
            },
            iItemId: {
                sqlType: "Int",
                inputValue: itemId
            },
            lExchangeCashLockeTime: {
                sqlType: "BigInt",
                inputValue: Math.floor(new Date().getTime() / 1000)
            },
        };
        sql.execute("GSP_WEB_CanExchangeCash", GSP_WEB__CanExchangeCash, function (resxx) {
            if (resxx.returnValue == 0) {
                var option = { total_amount: exchangeItem.needRedPacket, re_openid: resxx.recordset[0].OpenID };
                redpacket.fnSendMoney(option, function (result) {
                    if (result.err_code == "SUCCESS") {
                        var GSP_WEB_RedPacketExchangeGoods = {
                            dwUserID: {
                                sqlType: "Int",
                                inputValue: userId
                            },
                            fRedPacket: {
                                sqlType: "Float",
                                inputValue: exchangeItem.needRedPacket / 100
                            },
                            dwGoodsID: {
                                sqlType: "Int",
                                inputValue: exchangeItem.GoodsID
                            },
                            dwGoodsCount: {
                                sqlType: "Int",
                                inputValue: exchangeItem.GoodsCount
                            },
                            iItemId: {
                                sqlType: "Int",
                                inputValue: itemId
                            },
                            iChannelID: {
                                sqlType: "Int",
                                inputValue: channelID
                            },
                        };
                        //console.log(GSP_WEB_RedPacketExchangeGoods);
                        sql.execute("GSP_WEB_RedPacketExchangeGoods", GSP_WEB_RedPacketExchangeGoods, function (resxx) {
                            res.send({ itemId: itemId, returnValue: resxx.returnValue });
                        })
                    }
                    else {
                        //res.send({ itemId: itemId, returnValue: 1, message: "红包功能正在维护中,请密切关注"});
                        res.send({ itemId: itemId, returnValue: 1, message: result.err_code_des });
                        console.log(result);
                    }
                })
            }
            else {
                res.send({ itemId: itemId, returnValue: 1, message: resxx.recordset[0].ErrorDescribe });
            }
        })
    }
    else {
        var GSP_WEB_RedPacketExchangeGoods = {
            dwUserID: {
                sqlType: "Int",
                inputValue: userId
            },
            fRedPacket: {
                sqlType: "Float",
                inputValue: exchangeItem.needRedPacket / 100
            },
            dwGoodsID: {
                sqlType: "Int",
                inputValue: exchangeItem.GoodsID
            },
            dwGoodsCount: {
                sqlType: "Int",
                inputValue: exchangeItem.GoodsCount
            },
            iItemId: {
                sqlType: "Int",
                inputValue: itemId
            },
            iChannelID: {
                sqlType: "Int",
                inputValue: channelID
            },

        };
        //console.log(GSP_WEB_RedPacketExchangeGoods);
        sql.execute("GSP_WEB_RedPacketExchangeGoods", GSP_WEB_RedPacketExchangeGoods, function (resxx) {
            res.send({ itemId: itemId, returnValue: resxx.returnValue, message: resxx.recordset[0].ResultDescribe });
        })
    }
});

app.post('/exchange2', function (req, res) {
    var lLotteryTicket = req.body.lLotteryTicket
    var userId = req.body.userId
    var channelID = req.body.channelID
    var GSP_WEB_RedPacketExchangeGoods2 = {
        dwUserID: {
            sqlType: "Int",
            inputValue: userId
        },
        lLotteryTicket: {
            sqlType: "Int",
            inputValue: lLotteryTicket
        },
        iChannelID: {
            sqlType: "Int",
            inputValue: channelID
        },
    };
    //console.log(GSP_WEB_RedPacketExchangeGoods2);
    sql.execute("GSP_WEB_RedPacketExchangeGoods2", GSP_WEB_RedPacketExchangeGoods2, function (resxx) {
        res.send({ lLotteryTicket: lLotteryTicket, returnValue: resxx.returnValue, message: resxx.recordset[0].ResultDescribe });
    })
});

// app.post('/qtt_login', function (req, res) {
//     qttGame.qtt_login(req, res)
// });

// app.post('/qtt_payment', function (req, res) {
//     qttGame.qtt_payment(req, res)
// });

// app.post('/qtt_paymentOrderquery', function (req, res) {
//     qttGame.qtt_paymentOrderquery(req, res)
// });

app.get('/Nativepayment', function (req, res) {
    wxNativepay.Nativepayment(req, res)
});

app.post('/NativePayAction', function (req, res) {
    wxNativepay.NativepaymentOrderquery(req, res)
});

// app.post('/cm_login', function (req, res) {
//     cmGame.cm_login(req, res)
// });

app.get('/apple-app-site-association', function (req, res) {
    iosPay.appleAppSiteAssociation(req, res)
    console.log("apple-app-site-association")
});
app.get('/.well-known/apple-app-site-association', function (req, res) {
    iosPay.appleAppSiteAssociation(req, res)
    console.log(".well-known/apple-app-site-association")
});

app.post('/iospayment', function (req, res) {
    iosPay.iospayment(req, res)
});

app.get('/iospayment', function (req, res) {
    iosPay.iospayment(req, res)
});

app.post('/wx_Nativelogin', function (req, res) {
    wxNativeGame.wx_Nativelogin(req, res)
});
// app.get('/YK_Nativelogin', function (req, res) {
//     wxNativeGame.YK_Nativelogin(req, res)
// });
app.post('/wx_NativeModifyAccount', function (req, res) {
    wxNativeGame.wx_NativeModifyAccount(req, res)
});

// app.get('/wx_sendPush', function (req, res) {
//     wxPush.wx_sendPush(req, res)
// });

app.get('/wx_SmallProgramlogin', function (req, res) {
    wxSmallProgramPay.wx_SmallProgramlogin(req, res)
});

app.get('/SmallProgrampayment', function (req, res) {
    // let random = Math.random()
    // if (random < 0.4) {
    wxSmallProgramPay.SmallProgrampayment(req, res)
    // }
    // else if (random < 0.7) {
    //     wxSmallProgramPay2.SmallProgrampayment(req, res)
    // }
    // else {
    //     wxSmallProgramPay3.SmallProgrampayment(req, res)
    // }

});

app.post('/SmallProgramPayAction', function (req, res) {
    wxSmallProgramPay.SmallProgramPayAction(req, res)
});
// app.post('/SmallProgramPayAction2', function (req, res) {
//     wxSmallProgramPay2.SmallProgramPayAction(req, res)
// });
// app.post('/SmallProgramPayAction3', function (req, res) {
//     wxSmallProgramPay3.SmallProgramPayAction(req, res)
// });

app.get('/H5payment', function (req, res) {
    wxH5pay.H5payment(req, res)
});

app.post('/H5PayAction', function (req, res) {
    wxH5pay.H5paymentOrderquery(req, res)
});

app.get('/alipaymentTest', function (req, res) {
    alipay.alipaymentTest(req, res)
});
app.get('/alipaymentRed', function (req, res) {
    alipay.alipaymentRed(req, res)
});
app.get('/alipaymentapp', function (req, res) {
    alipay.alipaymentapp(req, res)
});
app.post('/aliPayAction', function (req, res) {
    // console.log("aliPayAction")
    alipay.alipaymentOrderquery(req, res)
});

app.get('/quit', function (req, res) {
    // console.log("quit")
    res.send("支付完成");
});
// app.get('/PlayH5Game', function (req, res) {
//     res.writeHead(200, {
//         'Content-Type': 'text/html'
//     });
//     res.write("<meta http-equiv=\"refresh\" content=\"0;url=https://h5fash.11478.com/web-mobile15/?productCode=" + req.query.productCode + "&channelCode=" + req.query.channelCode + "&uid=" + req.query.uid + "&username=" + req.query.username + "&isLogin=" + req.query.isLogin + "&time=" + req.query.time + "&sign=" + req.query.sign + "&marketTag=default&uid=" + req.query.uid + "&username=" + req.query.username + "&isLogin=" + req.query.isLogin + "&time=" + req.query.time + "&sign=" + req.query.sign + "&marketTag=default\">");
//     res.end();
// });

// app.get('/PlayH5GameMicro', function (req, res) {
//     res.writeHead(200, {
//         'Content-Type': 'text/html'
//     });
//     res.write("<meta http-equiv=\"refresh\" content=\"0;url=https://h5fash.11478.com/web-mobileMicro15/?productCode=" + req.query.productCode + "&channelCode=" + req.query.channelCode + "&uid=" + req.query.uid + "&username=" + req.query.username + "&isLogin=" + req.query.isLogin + "&time=" + req.query.time + "&sign=" + req.query.sign + "&marketTag=default&uid=" + req.query.uid + "&username=" + req.query.username + "&isLogin=" + req.query.isLogin + "&time=" + req.query.time + "&sign=" + req.query.sign + "&marketTag=default\">");
//     res.end();
// });
app.post('/googlePay', function (req, res) {
    // console.log("aliPayAction")
    GooglePlay.googlePay(req, res)
});

var server = app.listen(GlobalDef.serverPort, '0.0.0.0', function () {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Example app listening at http://%s:%s', host, port);
})

