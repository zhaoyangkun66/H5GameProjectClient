var xml2js = require('xml2js');
var request = require('request');
var qr = require('qr-image')
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
var GlobalDef = require('./GlobalDef');
var fs = require('fs');
var clientIp = "121.201.12.115"
var showName = "云海街机捕鱼"

exports.appleAppSiteAssociation = function (req, res) {
    fs.readFile("./config/apple-app-site-association", (err, data) => {
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
                'Content-Type': 'application/json'
            });
            // 响应文件内容
            res.write(data.toString());
        }
        // 发送响应
        res.end();
    });
}

exports.iospayment = function (req, res) {
    console.log(req.body);
    console.log(req.query);
    let userId = 1
    if (req.body.userId) {
        userId = req.body.userId
    }
    let receipent=
	{
		"receipt-data":req.body.receipent
	}
    //console.log(receipent)
    request({
        url: 'https://buy.itunes.apple.com/verifyReceipt',
        method: "POST",
        json: true,
        headers: {
            "content-type": "application/json",
        },
        body: receipent
    },
        function (err, response, body) {
            if (!err && response.statusCode == 200) {
                console.log(body);
                if (body.status == 0) {
                    let productIdentifier = body.receipt.product_id
                    let itemId = 0
                    if (productIdentifier == "com.jiejiebuyuh5.jj1") {
                        itemId = 0
                    }
                    else if (productIdentifier == "com.jiejiebuyuh5.jj2") {
                        itemId = 1
                    }
                    else if (productIdentifier == "com.jiejiebuyuh5.jj3") {
                        itemId = 2
                    }
                    else if (productIdentifier == "com.jiejiebuyuh5.jj4") {
                        itemId = 3
                    }
                    else if (productIdentifier == "com.jiejiebuyuh5.jj5") {
                        itemId = 4
                    }
                    else if (productIdentifier == "com.jiejiebuyuh5.jj10") {
                        itemId = 10
                    }
                    else {
                        console.log("iospayment订单号错误", productIdentifier);
                    }
                    var shopItem = shopItemConf[itemId]
                    var GSP_WEB_NiosGameShopRecharge = {
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
                        strTransaction_id: {
                            sqlType: "NVarChar",
                            size: 32,
                            inputValue: body.receipt.transaction_id
                        },
                        iItemId: {
                            sqlType: "Int",
                            inputValue: itemId
                        }
                    };
                    //console.log(GSP_WEB_NiosGameShopRecharge);
                    sql.execute("GSP_WEB_NiosGameShopRecharge", GSP_WEB_NiosGameShopRecharge, function (resxx) {
                        res.send({ itemId: itemId, returnValue: resxx.returnValue });
                    })
                }
                else if (body.status == 21007) {
                    request({
                        url: 'https://sandbox.itunes.apple.com/verifyReceipt',
                        method: "POST",
                        json: true,
                        headers: {
                            "content-type": "application/json",
                        },
                        body: receipent
                    },
                        function (err, response, bodySandbox) {
                            if (!err && response.statusCode == 200) {
                                console.log(bodySandbox);
                                if (bodySandbox.status == 0) {
                                    let productIdentifier = bodySandbox.receipt.product_id
                                    let itemId = 0
                                    if (productIdentifier == "com.jiejiebuyuh5.jj1") {
                                        itemId = 0
                                    }
                                    else if (productIdentifier == "com.jiejiebuyuh5.jj2") {
                                        itemId = 1
                                    }
                                    else if (productIdentifier == "com.jiejiebuyuh5.jj3") {
                                        itemId = 2
                                    }
                                    else if (productIdentifier == "com.jiejiebuyuh5.jj4") {
                                        itemId = 3
                                    }
                                    else if (productIdentifier == "com.jiejiebuyuh5.jj5") {
                                        itemId = 4
                                    }
                                    else if (productIdentifier == "com.jiejiebuyuh5.jj10") {
                                        itemId = 10
                                    }
                                    else {
                                        console.log("iospayment订单号错误", productIdentifier);
                                    }
                                    var shopItem = shopItemConf[itemId]
                                    var GSP_WEB_NiosGameShopRecharge = {
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
                                        strTransaction_id: {
                                            sqlType: "NVarChar",
                                            size: 32,
                                            inputValue: bodySandbox.receipt.transaction_id
                                        },
                                        iItemId: {
                                            sqlType: "Int",
                                            inputValue: itemId
                                        }
                                    };
                                    //console.log(GSP_WEB_NiosGameShopRecharge);
                                    sql.execute("GSP_WEB_NiosGameShopRecharge", GSP_WEB_NiosGameShopRecharge, function (resxx) {
                                        res.send({ itemId: itemId, returnValue: resxx.returnValue });
                                    })
                                }
                                else {
                                    console.log("sandbox验证错误", bodySandbox);
                                }
                            }
                        });
                }
                else {
                    console.log("buy验证错误", body);
                }
            }
        });
}

