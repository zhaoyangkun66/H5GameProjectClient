var request = require('request');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
var request = require('request');
const NodeRSA = require('node-rsa');

var GlobalDef = require('./GlobalDef');
var appid = "30154801"
let appKey = "96U1zv4xe4g0GS4w0wS4Ks4sw"
var appSecret = "Be76127D4BdC1Ec6f96c6c25DF168C97"
let raw = GlobalDef.raw
var fnCreateXml = GlobalDef.fnCreateXml
var showName = "云海街机捕鱼"
var AppSecretPay = "-----BEGIN PRIVATE KEY-----MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANGmB1R7ZE8FrJNmQ0s5RWSNpFltZtPnBDzQCIq5+MK3k6hHd19yuTkVvCWHkq/6Ug46Ud7+kf9whhtYtf5u68o/sxWXt1YSiLP1edorAOSmrhpE4phRvV95qfPYc9dVvcq0ltzcH27Ih9/AGBBcYtHBUWVrOjJ7xFZQvH+ETrKdAgMBAAECgYEAqaLjSXuydbKMqpRTnTmRKcTmmCnKy2mhZyeZ0c6bN8tdIgv5znTA5SzuGZvymIw++x47gumP7xX4nYYRdPgBtyNpLLNx9XYxva22hMpfFGzlYJpNFL+ICed82WLAmCOuhzbVlk5b3hvchjv5dz6tFGKkyWtcwJFnY6SdaOxUHaECQQD+zjWqrI2j1szkTFDRCuax8WyRLRP+oJvsIqLBnCSwSzHYi/1EkndJH6UJmxyHb6s0GDtLFgOZ06osGTlMPlQpAkEA0qGgXkiV7QVt79o0r7kQhJ5B+02YE3ZRTnBFSa0+smlFUmj54hFdZhuU+JkU3vIzA0yoaxVWuTwFQ7KuZNbZVQJAdDkQx5G/ZX0DphqdPkyPn5i0YZ/DIACYPmQqAs+6+GLEELcBxfZczJDPkYsbvzcTS0bGPOCEsfSXCVhUB0/iyQJANDaowHaR492ysQCQivb/Z0Cr7pX/muN7qEwggPEXV7bM3m7zct0HICa6OR4JlHLJvomkPldd1jFQxMVogcrYuQJBAKwtGqgYHR39HNFO8y5mjjs25aAR5zuVmu5vf3GE/2vge1ZRvsw6nqtOv2PBwkCrBCnwkuZFB+6/IioirUndPXQ=-----END PRIVATE KEY-----"
var AppSecretPayPu = "-----BEGIN PUBLIC KEY-----MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCrR4rZ0aOgMiTUxJzDkppF406wg6GpiIas1WNHfS0VkU+G27nK7vgfp7KaSrsJ1IkS9ROKDU3ifYI9/kuURt74+HkFWMwisa/6iAHZ9UYET58M5nPSNawSv7c/Ynw6am4+i5PtQTx6Xixf5qVbmdNL+WO/OJ9AZme1g/QWLTdRwIDAQAB-----END PUBLIC KEY-----"

exports.oppo_login = function (req, res) {
    let token = req.body.token
    let timeStamp = new Date().getTime()

    var getSigInfo =
    {
        "pkgName": "com.yhjjby.shcc.nearme.gamecenter",
        "appKey": appKey,
        "appSecret": appSecret,
        "token": token,
        "timeStamp": timeStamp,
    }
    //console.log('getSigInfo===', getSigInfo);
    var stringA = raw(getSigInfo)
    let sig = require('crypto').createHash('md5').update(stringA, 'utf8').digest('hex').toUpperCase();
    var url = "https://play.open.oppomobile.com/instant-game-open/userInfo?pkgName=com.yhjjby.shcc.nearme.gamecenter&timeStamp=" + timeStamp + "&token=" + token + "&sign=" + sig + "&version=1.0.0"
    request({
        method: 'get',
        url: url
    },
        function (err, response, body) {
            if (!err && response.statusCode == 200) {
                let sendData = JSON.parse(body)
                if (sendData.errCode == 200) {
                    sendData.userInfo.PassingState = GlobalDef.PassingState
                    sendData.userInfo.clientVersion = GlobalDef.clientVersion
                    res.send(sendData.userInfo);
                }
                else {
                    console.log(sendData);
                }

            }
        });
}

exports.getOppoOrderInfo = function (req, res) {

    var itemId = req.body.itemId
    var userId = req.body.userId
    let token = req.body.token
    let engineVersion = req.body.engineVersion

    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem_getOppoOrderInfo")
        return
    }
    var timeStamp = new Date().getTime()
    var timeStamp2 = timeStamp
    var total_amount = shopItem.amt * 100  //红包总金额
    var now = new Date();
    var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
    var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var OrderInfo =
    {
        "appId": appid,
        "openId": token,
        "timestamp": timeStamp,
        "productName": showName,
        "productDesc": showName,
        "count": 1,
        "price": total_amount,
        "currency": "CNY",
        "attach": itemId + ',' + userId,
        "callBackUrl": "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/oppoPayAction",
        "cpOrderId": date_time + date_no + random_no,
        "appVersion": "113",
        "engineVersion": engineVersion,
    }
    var stringA = raw(OrderInfo);
    const key = new NodeRSA();
    key.setOptions({ b: 1024, signingScheme: "sha256" });
    key.importKey(AppSecretPay, 'pkcs8-private');//导入密钥并设定格式
    let buffer = Buffer.from(stringA);
    OrderInfo.sign = key.sign(buffer).toString('base64');
    var url = 'https://jits.open.oppomobile.com/jitsopen/api/pay/v1.0/preOrder'
    request({
        url: url,
        method: "POST",
        json: true,
        headers: {
            "content-type": "application/json",
        },
        body: OrderInfo
    },
        function (err, response, body) {
            if (!err && response.statusCode == 200) {
                if (body.code == 200) {
                    var getSigInfoSend =
                    {
                        "appKey": appKey,
                        "timestamp": timeStamp2,
                        "orderNo": body.data.orderNo,
                    }
                    var formDataSend =
                    {
                        "appId": appid,
                        "token": token,
                        "timestamp": timeStamp2,
                        "orderNo": body.data.orderNo,
                    }
                    var stringA = raw(getSigInfoSend);
                    const key = new NodeRSA();
                    key.setOptions({ b: 1024, signingScheme: "sha256" });
                    key.importKey(AppSecretPay, 'pkcs8-private');//导入密钥并设定格式
                    let buffer = Buffer.from(stringA);
                    formDataSend.paySign = key.sign(buffer).toString('base64');
                    res.send(formDataSend);
                    //console.log('formDataSend', formDataSend);
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
                            inputValue: body.data.cpOrderId
                        },
                        iSuccess: {
                            sqlType: "Int",
                            inputValue: 0
                        },
                        strTransaction_id: {
                            sqlType: "NVarChar",
                            size: 32,
                            inputValue: "oppo"
                        }
                    };
                    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

                    })
                }
                else {
                    console.log(body);
                }

            }
        });
}

exports.oppoPayAction = function (req, res) {
    let data = req.body
    // var getSigInfo =
    // {
    //     "notifyId": data.notifyId,
    //     "partnerOrder": data.partnerOrder,
    //     "productName": data.productName,
    //     "productDesc": data.productDesc,
    //     "price": data.price,
    //     "count": data.count,
    //     "attach": data.attach,
    //     "paymentWay": data.paymentWay,
    //     "payResult": data.payResult,
    // }
    // var stringA = raw(getSigInfo);
    // const key = new NodeRSA();
    // key.setOptions({ b: 1024, signingScheme: "sha256" });
    // key.importKey(AppSecretPay, 'pkcs8-private');//导入密钥并设定格式
    // let buffer = Buffer.from(stringA);
    // let sign = key.sign(buffer).toString('base64');
    // if (sign == req.query.sign) {
    //     console.log("oppoPayActionsign == req.query.sign")
    // } else {
    //     console.log("oppoPayActionsign != req.query.sign")
    // }
    let attach = JSON.parse("[" + data.attach + "]")
    var itemId = attach[0]
    var userId = attach[1]
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    //res.send("result=OK&resultMsg=成功");
    var GSP_WEB_NOppoGameShopRecharge = {
        dwUserID: {
            sqlType: "Int",
            inputValue: userId
        },
        fCash: {
            sqlType: "Float",
            inputValue: data.price / 100
        },
        dwGold: {
            sqlType: "Int",
            inputValue: shopItem.golds
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: data.notifyId
        },
        strOut_trade_no: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: data.partnerOrder
        },
        iItemId: {
            sqlType: "Int",
            inputValue: itemId
        }
    };
    //console.log(GSP_WEB_NOppoGameShopRecharge);
    sql.execute("GSP_WEB_NOppoGameShopRecharge", GSP_WEB_NOppoGameShopRecharge, function (resxx) {
        //console.log("GSP_WEB_NOppoGameShopRechargeresult=OK&resultMsg=成功")
        res.send("result=OK&resultMsg=成功");
    })
    var GSP_WEB_GameShopRechargeClick = {
        dwUserID: {
            sqlType: "Int",
            inputValue: userId
        },
        fCash: {
            sqlType: "Float",
            inputValue: data.price / 100
        },
        dwGold: {
            sqlType: "Int",
            inputValue: shopItem.golds
        },
        strOut_trade_no: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: data.partnerOrder
        },
        iSuccess: {
            sqlType: "Int",
            inputValue: 1
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: "oppo"
        }
    };
    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

    })
}