var xml2js = require('xml2js');
var request = require('request');
var fs = require('fs');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');

var GlobalDef = require('./GlobalDef');
var showName = "商品"
var mch_id = "1470181602"
var wxappid = "wxdb2e526c7ecf46eb"
var wxkey = "2356iueijfjkg5445dffegf545thssaa"
var fnCreateXml = GlobalDef.fnCreateXml
var fnCreateUrlParam = GlobalDef.raw

exports.H5payment = function (req, res) {
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

    contentJson.appid = wxappid;//商户appid
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.body = showName;
    //contentJson.attach = itemId + ',' + userId;
    contentJson.out_trade_no = muc_id + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
    contentJson.total_fee = total_amount;//
    contentJson.spbill_create_ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress || req.socket.remoteAddress || req.connection.socket.remoteAddress;
    contentJson.notify_url = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/H5PayAction";
    contentJson.trade_type = "MWEB";
    contentJson.scene_info = { "h5_info": { "type": "Wap", "wap_url": "http://fish.qiquwa.com", "wap_name": "云海街机捕鱼" } }

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
            inputValue: "H5"
        }
    };
    sql.execute("GSP_WEB_CanShopRechargeAndClick", GSP_WEB_CanShopRechargeAndClick, function (resxx) {
        if (resxx.returnValue == 0) {
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
                            //res.send(result);
                            var mweb_url = result.mweb_url
                            fs.readFile("./config/H5Pay.html", (err, data) => {
                                if (err) {
                                    console.log('文件读取失败：' + err);
                                    // 设置404响应
                                    res.writeHead(404, {
                                        'Content-Type': 'text/html'
                                    });
                                }
                                else {
                                    // 状态码：200
                                    res.writeHead(200, {
                                        'Content-Type': 'text/html'
                                    });
                                    var str = data.toString()
                                    // 响应文件内容
                                    var result = str.replace('xxxxx', mweb_url);
                                    // 响应文件内容
                                    res.write(result);
                                }
                                // 发送响应
                                res.end();
                            });
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

exports.H5paymentOrderquery = function (req, res) {
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
                    if (result.return_code == "SUCCESS" && result.result_code == "SUCCESS") {
                        var GSP_WEB_GameShopRechargeCommon = {
                            dwTypePay: {
                                sqlType: "Int",
                                inputValue: 5
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
                                console.log("H5pay/orderqueryGSP_WEB_GameShopRechargeCommon", resxx);
                            }
                        })
                    }
                    else {
                        console.log("H5pay/orderquery", result);
                    }
                });
            }
        });
}
