var xml2js = require('xml2js');
var request = require('request');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');

var GlobalDef = require('./GlobalDef');
var clientIp = "121.201.12.115"
var showName = "商品"
var wxappid = "wx9400a01b45da5a15"                             //小程序AppID
var AppSecret = "b829ca6cac20ecf4005dc8311eadfdaf"             //小程序AppID
var mch_id = "1606782785"                                      //微信商户号
var wxkey = "94837fserEHTJ84763ERTEfhh8372232"                 //key为在微信商户平台

var fnCreateXml = GlobalDef.fnCreateXml
var fnCreateUrlParam = GlobalDef.raw

exports.wx_SmallProgramlogin = function (req, res) {
    let code = req.query.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/jscode2session?appid=" + wxappid + "&secret=" + AppSecret + "&js_code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            //console.log("body", body)
            let sendData = JSON.parse(body)
            if (sendData.session_key) {
                sendData.PassingState = GlobalDef.PassingState
                res.send(sendData);
            }
        }
    });
}

exports.SmallProgrampayment = function (req, res) {
    var itemId = req.query.itemId
    var userId = req.query.userId
    var openid = req.query.openid

    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    var total_amount = shopItem.amt * 100  //红包总金额
    //var total_amount = "1"  //红包总金额
    var now = new Date();
    var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
    var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var muc_id = mch_id;
    var contentJson = {};
    //contentJson.attach = itemId + ',' + userId;
    contentJson.openid = openid
    contentJson.body = showName;
    contentJson.spbill_create_ip = clientIp;
    contentJson.out_trade_no = muc_id + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.trade_type = "JSAPI";
    contentJson.total_fee = total_amount;//
    contentJson.notify_url = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/SmallProgramPayAction";
    contentJson.appid = wxappid;

    var GSP_WEB_CanShopRechargeAndClick = {
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
            inputValue: "JSAPI"
        }
    };
    sql.execute("GSP_WEB_CanShopRechargeAndClick", GSP_WEB_CanShopRechargeAndClick, function (resxx) {
        if (resxx.returnValue == 0) {
            let WhiteUser = resxx.recordset[0].WhiteUser
            var stringA = fnCreateUrlParam(contentJson);
            var stringSignTemp = stringA + "&key=" + wxkey
            contentJson.sign = require('crypto').createHash('md5').update(stringSignTemp, 'utf8').digest('hex').toUpperCase();
            //console.log(contentJson)
            var xmlData = fnCreateXml(contentJson);
            var sendData = '<xml>' + xmlData + '</xml>'; //_xmlTemplate.replace(/{content}/)node server.js
            var url = 'https://api.mch.weixin.qq.com/pay/unifiedorder'
            request({
                url: url,
                method: "POST",
                json: true,
                headers: {
                    "content-type": "application/json",
                },
                body: sendData
            },
                function (err, response, body) {
                    if (!err && response.statusCode == 200) {
                        var parser = new xml2js.Parser({ trim: true, explicitArray: false, explicitRoot: false });//解析签名结果xml转json
                        parser.parseString(body, function (err, result) {
                            //console.log(result);
                            if (result.result_code == 'SUCCESS') {
                                var contentJson2 = {};
                                contentJson2.appId = wxappid
                                contentJson2.timeStamp = Math.floor(new Date().getTime() / 1000) + ''
                                contentJson2.nonceStr = result.nonce_str
                                contentJson2.package = 'prepay_id=' + result.prepay_id
                                contentJson2.signType = 'MD5'
                                var stringA2 = fnCreateUrlParam(contentJson2);
                                var stringSignTemp2 = stringA2 + "&key=" + wxkey
                                contentJson2.paySign = require('crypto').createHash('md5').update(stringSignTemp2, 'utf8').digest('hex').toUpperCase();
                                contentJson2.WhiteUser = WhiteUser
                                res.send(contentJson2);
                            }
                            else {
                                console.log(result);
                            }
                        });
                    }
                });
        }
        else {
            // res.send({ returnValue: "不能重复购买" });
            console.log(resxx);
        }
    })



}

exports.SmallProgramPayAction = function (req, res) {
    let bodyData = req.body.xml
    //console.log(bodyData)
    var transaction_id = bodyData.transaction_id;
    var out_trade_no = bodyData.out_trade_no;
    var muc_id = mch_id;
    var contentJson = {};

    contentJson.transaction_id = bodyData.transaction_id
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.appid = wxappid;//商户appid

    var stringA = fnCreateUrlParam(contentJson);
    var stringSignTemp = stringA + "&key=" + wxkey
    contentJson.sign = require('crypto').createHash('md5').update(stringSignTemp, 'utf8').digest('hex').toUpperCase();
    //console.log(contentJson)
    var xmlData = fnCreateXml(contentJson);
    var sendData = '<xml>' + xmlData + '</xml>';
    var url = 'https://api.mch.weixin.qq.com/pay/orderquery'
    request({
        url: url,
        method: "POST",
        json: true,
        headers: {
            "content-type": "application/json",
        },
        body: sendData
    },
        function (err, response, body) {
            if (!err && response.statusCode == 200) {
                var parser = new xml2js.Parser({ trim: true, explicitArray: false, explicitRoot: false });//解析签名结果xml转json
                parser.parseString(body, function (err, result) {
                    // console.log("pay/orderquery", result);
                    if (result.return_code == "SUCCESS" && result.result_code == "SUCCESS") {
                        var GSP_WEB_GameShopRechargeCommon = {
                            dwTypePay: {
                                sqlType: "Int",
                                inputValue: 6
                            },
                            strTransaction_id: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: transaction_id
                            },
                            strOut_trade_no: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: out_trade_no
                            },
                        };
                        //console.log(GSP_WEB_GameShopRechargeCommon);
                        sql.execute("GSP_WEB_GameShopRechargeCommon", GSP_WEB_GameShopRechargeCommon, function (resxx) {
                            var xmlData = fnCreateXml({ return_code: "SUCCESS", return_msg: "OK", });
                            var sendData = '<xml>' + xmlData + '</xml>';
                            res.send(sendData);
                            if (resxx.returnValue == 1) {
                                console.log("pay/orderquerGSP_WEB_GameShopRechargeCommon", resxx);
                            }
                        })
                    }
                    else {
                        console.log("pay/orderquery", result);
                    }
                });
            }
        });
}
