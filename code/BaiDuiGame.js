var request = require('request');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
const NodeRSA = require('node-rsa');

var GlobalDef = require('./GlobalDef');
var client_id = "P3IHtYllNeltfPlX0fpjUZtrMwSU6zbo"
var sk = "oiiBIrNEGHKgx2ohkk9kGepxP1Ybps4h"

var appId = "14918"
var dealId = "3842440285"
var appKey = "MMMugu"

var AppSecret = "-----BEGIN PRIVATE KEY-----MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANGmB1R7ZE8FrJNmQ0s5RWSNpFltZtPnBDzQCIq5+MK3k6hHd19yuTkVvCWHkq/6Ug46Ud7+kf9whhtYtf5u68o/sxWXt1YSiLP1edorAOSmrhpE4phRvV95qfPYc9dVvcq0ltzcH27Ih9/AGBBcYtHBUWVrOjJ7xFZQvH+ETrKdAgMBAAECgYEAqaLjSXuydbKMqpRTnTmRKcTmmCnKy2mhZyeZ0c6bN8tdIgv5znTA5SzuGZvymIw++x47gumP7xX4nYYRdPgBtyNpLLNx9XYxva22hMpfFGzlYJpNFL+ICed82WLAmCOuhzbVlk5b3hvchjv5dz6tFGKkyWtcwJFnY6SdaOxUHaECQQD+zjWqrI2j1szkTFDRCuax8WyRLRP+oJvsIqLBnCSwSzHYi/1EkndJH6UJmxyHb6s0GDtLFgOZ06osGTlMPlQpAkEA0qGgXkiV7QVt79o0r7kQhJ5B+02YE3ZRTnBFSa0+smlFUmj54hFdZhuU+JkU3vIzA0yoaxVWuTwFQ7KuZNbZVQJAdDkQx5G/ZX0DphqdPkyPn5i0YZ/DIACYPmQqAs+6+GLEELcBxfZczJDPkYsbvzcTS0bGPOCEsfSXCVhUB0/iyQJANDaowHaR492ysQCQivb/Z0Cr7pX/muN7qEwggPEXV7bM3m7zct0HICa6OR4JlHLJvomkPldd1jFQxMVogcrYuQJBAKwtGqgYHR39HNFO8y5mjjs25aAR5zuVmu5vf3GE/2vge1ZRvsw6nqtOv2PBwkCrBCnwkuZFB+6/IioirUndPXQ=-----END PRIVATE KEY-----"

var fnCreateUrlParam = GlobalDef.raw

exports.BaiDui_login = function (req, res) {
    let code = req.query.code;
    request({
        method: 'POST',
        url: "https://spapi.baidu.com/oauth/jscode2sessionkey?client_id=" + client_id + "&sk=" + sk + "&code=" + code
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log("body", body)
            let sendData = JSON.parse(body)
            sendData.PassingState = GlobalDef.PassingState
            sendData.clientVersion = GlobalDef.clientVersion
            if (sendData.session_key) {
                res.send(sendData);
            }
        }
    });
}

exports.getBaiDuiOrderInfo = function (req, res) {

    var itemId = req.query.itemId
    var userId = req.query.userId
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    var total_amount = shopItem.amt * 100  //红包总金额

    var now = new Date();
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var OrderInfo = {};
    OrderInfo.dealId = dealId;
    OrderInfo.appKey = appKey
    OrderInfo.totalAmount = total_amount;
    OrderInfo.tpOrderId = itemId + ',' + userId + ',' + now.getTime() + random_no//itemId + ',' + userId
    var stringA = fnCreateUrlParam(OrderInfo);
    const key = new NodeRSA();
    key.setOptions({ b: 1024, signingScheme: "sha1" });
    key.importKey(AppSecret, 'pkcs8-private');//导入密钥并设定格式
    let buffer = Buffer.from(stringA);
    OrderInfo.rsaSign = key.sign(buffer).toString('base64');

    OrderInfo.dealTitle = "云海街机捕鱼"
    OrderInfo.bizInfo = {}
    
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
            inputValue: OrderInfo.tpOrderId
        },
        iSuccess: {
            sqlType: "Int",
            inputValue: 0
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: "BaiDui"
        }
    };
    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

    })
    res.send(OrderInfo);
    // console.log(OrderInfo)
}

exports.BaiDuipaymentOrderquery = function (req, res) {
    //console.log(req.body)
    let bodyData = req.body
    let attach = JSON.parse("[" + bodyData.tpOrderId + "]")
    var itemId = attach[0]
    var userId = attach[1]
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("BaiDuipaymentOrderquery!shopItem")
        return
    }
    let total_fee = parseInt(bodyData.unitPrice)
    if (bodyData.unitPrice && total_fee / 100 >= shopItem.amt && bodyData.status == 2) {
        var GSP_WEB_NBaiDuGameShopRecharge = {
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
                inputValue: bodyData.orderId
            },
            strOut_trade_no: {
                sqlType: "NVarChar",
                size: 32,
                inputValue: bodyData.tpOrderId
            },
            iItemId: {
                sqlType: "Int",
                inputValue: itemId
            }
        };
        //console.log(GSP_WEB_NBaiDuGameShopRecharge);
        sql.execute("GSP_WEB_NBaiDuGameShopRecharge", GSP_WEB_NBaiDuGameShopRecharge, function (resxx) {
            res.send({ "errno": 0, "msg": "success", "data": { "isConsumed": 2 } });
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
                inputValue: bodyData.tpOrderId
            },
            iSuccess: {
                sqlType: "Int",
                inputValue: 1
            },
            strTransaction_id: {
                sqlType: "NVarChar",
                size: 32,
                inputValue: "BaiDui"
            }
        };
        sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

        })
    }
}
