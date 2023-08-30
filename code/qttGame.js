var GlobalDef = require('./GlobalDef');
var shopItemConf = require('./shopItemConf');
var sql = require('./sql');
var request = require('request');

var app_id = 'a3KahGZmYfD7'
var appKey = 'KjGkBIMYYJEDSGxwEjVX1JBkCAEESqEaHUM42IMAIKMOSEMGkKeakkuyEjKUkkeM'

let raw = function sign(values) {
    delete values.sign;
    values.app_key = appKey;
    let keysArr = [];
    for (let key in values) {
        keysArr.push(key)
    }
    keysArr.sort();
    let keys = ''
    keysArr.forEach((e) => {
        keys += e;
        keys += values[e];
    });
    //console.log(keys)
    delete values.app_key;
    return keys;
}

exports.qtt_login = function (req, res) {
    var contentJson =
    {
        "app_id": app_id,
        "platform": req.body.platform,
        "ticket": req.body.ticket,
        "time": Math.floor(Date.now() / 1000),
    }
    var stringA = raw(contentJson);
    contentJson.sign = require('crypto').createHash('md5').update(stringA, 'utf8').digest('hex')
    //console.log(contentJson)
    request({
        method: 'get',
        url: "https://newidea4-gamecenter-backend.1sapp.com/x/open/user/ticket?app_id=" + contentJson.app_id + "&platform=" + contentJson.platform + "&ticket=" + contentJson.ticket + "&time=" + contentJson.time + "&sign=" + contentJson.sign
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            let sendData = JSON.parse(body)
            sendData.PassingStateQTT = GlobalDef.PassingStateQTT
            //console.log("body", sendData)
            res.send(sendData);
        }
    });
}

exports.qtt_payment = function (req, res) {
    var itemId = req.body.itemId
    var userId = req.body.userId
    var openId = req.body.openId
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem_qtt_payment")
        return
    }
    var contentJson =
    {
        openId: openId,
        money: shopItem.amt * 100,
        appId: app_id,
        notifyUrl: "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/qtt_paymentOrderquery",
        land: 0,
        ext: JSON.stringify({ itemId: itemId, userId: userId })
    }
    //console.log("contentJson", contentJson)
    res.send(contentJson);
}

exports.qtt_paymentOrderquery = function (req, res) {
    //console.log(req.query)
    //console.log(req.body)

    let ext = JSON.parse(req.body.ext)
    var userId = ext.userId
    var itemId = ext.itemId
    var contentJson =
    {
        app_id: req.body.app_id,
        open_id: req.body.open_id,
        trade_no: req.body.trade_no,
        time: Math.floor(Date.now() / 1000),
    }
    var stringA = raw(contentJson);
    contentJson.sign = require('crypto').createHash('md5').update(stringA, 'utf8').digest('hex')
    //console.log("contentJson", contentJson)
    request({
        method: 'get',
        url: "https://newidea4-gamecenter-backend.1sapp.com/x/pay/union/order/query?app_id=" + contentJson.app_id + "&open_id=" + contentJson.open_id + "&trade_no=" + contentJson.trade_no + "&time=" + contentJson.time + "&sign=" + contentJson.sign
    }, function (error, response, bodytemp) {
        if (!error && response.statusCode == 200) {
            let body = JSON.parse(bodytemp)
            //console.log("body", body)
            if (body.code == 0) {
                var shopItem = shopItemConf[itemId]
                if (body.data.status == 1 && body.data.total_fee >= shopItem.amt * 100) {
                    var GSP_WEB_QTTGameShopRecharge = {
                        dwUserID: {
                            sqlType: "Int",
                            inputValue: userId
                        },
                        fCash: {
                            sqlType: "Float",
                            inputValue: body.data.total_fee / 100
                        },
                        dwGold: {
                            sqlType: "Int",
                            inputValue: shopItem.golds
                        },
                        strTransaction_id: {
                            sqlType: "NVarChar",
                            size: 32,
                            inputValue: req.body.trade_no
                        },
                        iItemId: {
                            sqlType: "Int",
                            inputValue: itemId
                        }
                    };
                    //console.log(GSP_WEB_QTTGameShopRecharge);
                    sql.execute("GSP_WEB_QTTGameShopRecharge", GSP_WEB_QTTGameShopRecharge, function (resxx) {
                        res.send({ "message": "ok" });
                    })
                }

            }
            else {
                console.log(body)
            }


        }
    });
}