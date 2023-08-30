var xml2js = require('xml2js');
var request = require('request');
var qr = require('qr-image')
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');

var GlobalDef = require('./GlobalDef');
var clientIp = "121.201.12.115"
var showName = "商品"
var mch_id = GlobalDef.mch_id
var wxappid = GlobalDef.AppIDGZ
var wxkey = GlobalDef.wxkey
var fnCreateXml = GlobalDef.fnCreateXml
var fnCreateUrlParam = GlobalDef.raw

exports.Nativepayment = function (req, res) {
    var itemId = req.query.itemId
    var userId = req.query.userId
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
    contentJson.attach = itemId + ',' + userId;
    contentJson.body = showName;
    contentJson.spbill_create_ip = clientIp;
    contentJson.out_trade_no = muc_id + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.trade_type = "NATIVE";
    contentJson.total_fee = total_amount;//
    contentJson.notify_url = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/NativePayAction";
    contentJson.appid = wxappid;//商户appid

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
                    var img = qr.image(result.code_url, { size: 10 });
                    res.writeHead(200, { 'content-Type': "image/png", "Access-Control-Allow-Origin": "*" })
                    img.pipe(res);

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
                            inputValue: contentJson.out_trade_no
                        },
                        iSuccess: {
                            sqlType: "Int",
                            inputValue: 0
                        },
                        strTransaction_id: {
                            sqlType: "NVarChar",
                            size: 32,
                            inputValue: "Native"
                        }
                    };
                    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

                    })
                });
            }
        });
}


exports.NativepaymentOrderquery = function (req, res) {
    let bodyData = req.body.xml
    //console.log(bodyData)
    let attach = JSON.parse("[" + bodyData.attach + "]")
    var itemId = attach[0]
    var userId = attach[1]
    var transaction_id = bodyData.transaction_id;
    var muc_id = mch_id;
    var contentJson = {};

    contentJson.transaction_id = bodyData.transaction_id
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.appid = wxappid;//商户appid

    var stringA = fnCreateUrlParam(contentJson);
    var stringSignTemp = stringA + "&key=" + wxkey
    contentJson.sign = require('crypto').createHash('md5').update(stringSignTemp, 'utf8').digest('hex').toUpperCase();
    // console.log(contentJson)
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
                    var shopItem = shopItemConf[itemId]
                    //console.log(result);
                    let total_fee = parseInt(result.total_fee)
                   // if (result.total_fee && total_fee / 100 >= shopItem.amt) {
                        var GSP_WEB_NativeGameShopRecharge = {
                            dwUserID: {
                                sqlType: "Int",
                                inputValue: userId
                            },
                            fCash: {
                                sqlType: "Float",
                                inputValue: total_fee / 100
                            },
                            dwGold: {
                                sqlType: "Int",
                                inputValue: shopItem.golds
                            },
                            strTransaction_id: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: transaction_id
                            },
                            iItemId: {
                                sqlType: "Int",
                                inputValue: itemId
                            }
                        };
                        //console.log(GSP_WEB_NativeGameShopRecharge);
                        sql.execute("GSP_WEB_NativeGameShopRecharge", GSP_WEB_NativeGameShopRecharge, function (resxx) {
                            var xmlData = fnCreateXml({ return_code: "SUCCESS", return_msg: "OK", });
                            var sendData = '<xml>' + xmlData + '</xml>';
                            res.send(sendData);
                        })
                        var GSP_WEB_GameShopRechargeClick = {
                            dwUserID: {
                                sqlType: "Int",
                                inputValue: userId
                            },
                            fCash: {
                                sqlType: "Float",
                                inputValue: total_fee / 100
                            },
                            dwGold: {
                                sqlType: "Int",
                                inputValue: shopItem.golds
                            },
                            strOut_trade_no: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: bodyData.out_trade_no
                            },
                            iSuccess: {
                                sqlType: "Int",
                                inputValue: 1
                            },
                            strTransaction_id: {
                                sqlType: "NVarChar",
                                size: 32,
                                inputValue: "Native"
                            }
                        };
                        sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

                        })
                    //}
                });
            }
        });
}