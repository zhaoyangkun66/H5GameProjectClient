const crypto = require('crypto');
var shopItemConf = require('./shopItemConf');
var sql = require('./sql');

// 把字符串分割为一连串更小的部分
function chunk_split(paramString, paramLength, paramEnd = '\n') {
    let p = [];
    let s = paramString;
    while (s.length > paramLength) {
        let s1 = s.substr(0, paramLength);
        let s2 = s.substr(paramLength);
        s = s2;
        p.push(s1);
    }
    if (s.length > 0) {
        p.push(s);
    }
    p.push('');
    return p.join(paramEnd);
}

// google 公钥
let googlePublicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAigKoeBOvyh/9bNn+STezOAN9OAnMqwTLspBuqduX4DhqHNbWbMCWrvcxsr4XYUUcWzmILK0BiMq6Dj1vBYTRrhF5oi+PwilvL7VWm+9Hf24APWTrtUo+7Onout8RWx5nR2+eEUHlHoLRRUQU8KhRu7QsTGKp3cM/C/OqMywRYMxrgQ0A3bizemOIZi3hDXgfEvZ4Ilx/nmG9j27K4pvKW7nmWVE7MTsJZItORALcL4GaJt2getH2BiKcFmWsDA9p1zMKdGVg1G9diQt+538hZFxKJFkj8VFD3n2e6q9X2hsuMBdnuuOShaA3gQjUeZgqslCdwtr/aRIFq+UniShQMQIDAQAB';

/**
 * 验证google支付签名是否正确
 * @param {*} params  支付成功收到的参数
 * @param {*} inappDataSignature google 传入的签名 字段名和顺序与用例保持一致  {
    "orderId": "GPA.3341-6034-7995-16517",
    "packageName": "com.exchange.demo",
    "productId": "1006",
    "purchaseTime": 1551281602450,
    "purchaseState": 0,
    "developerPayload": "Coins Package Pack 1",
    "purchaseToken": "jjfbbecohm",
}
 */
function GooglePlayCheck(inappPurchaseData, inappDataSignature) {
    let verify = crypto.createVerify('RSA-SHA1');//请注意，这里要用RSA-SHA1

    let PHP_EOL = '\n';//实际上就是换行符
    //  let inappPurchaseData = JSON.stringify(params);
    //这里要将公钥转换成64个字符一行的文本块。
    let publicKey = "-----BEGIN PUBLIC KEY-----" + PHP_EOL + chunk_split(googlePublicKey, 64, PHP_EOL) + "-----END PUBLIC KEY-----";
    verify.update(inappPurchaseData);//
    let isSuccess = verify.verify(publicKey, Buffer.from(inappDataSignature, 'base64')); //验证数据
   // console.log("result:", isSuccess);
    if (!isSuccess) {
        console.log("resultinappPurchaseData:", inappPurchaseData);
    }
    return isSuccess
}
// GooglePlayCheck({
//     "orderId": "GPA.3341-6034-7995-16517",
//     "packageName": "com.exchange.demo",
//     "productId": "1006",
//     "purchaseTime": 1551281602450,
//     "purchaseState": 0,
//     "developerPayload": "Coins Package Pack 1",
//     "purchaseToken": "jjfbbecohm",
// }, "Ig1zAZJPZ8dH4id\/0zDDY62OlbACgWrb+ApRNXu08W35A+XLTp5N5krGugSUBG5LN1CRdLECGY+F8kczh10KLubCmgSPbBhB1kxJ\/bpMSfeklvCa0L3qJ00h0J8km7xJw6nTlwWtlHZzCQWu0TjeniVT0+hipTV67jkCjpHV+e8iGMxxKy0X+8qVEwQ5XNA==");

exports.googlePay = function (req, res) {

    var OriginalJson = Buffer.from(req.body.OriginalJson, 'base64').toString()
    var userId = req.body.userId
    var Signature = req.body.Signature
    GooglePlayCheck(OriginalJson, Signature)
    var OriginalJson = JSON.parse(OriginalJson);
   // console.log("OriginalJson:", OriginalJson);
    var itemId = OriginalJson.productId
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }

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
            inputValue: OriginalJson.orderId
        },
        iSuccess: {
            sqlType: "Int",
            inputValue: 0
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: "googlePay"
        }
    };
    sql.execute("GSP_WEB_CanShopRechargeAndClick", GSP_WEB_CanShopRechargeAndClick, function (resxx) {
        var GSP_WEB_GameShopRechargeCommon = {
            dwTypePay: {
                sqlType: "Int",
                inputValue: 12
            },
            strTransaction_id: {
                sqlType: "NVarChar",
                size: 32,
                inputValue: OriginalJson.orderId
            },
            strOut_trade_no: {
                sqlType: "NVarChar",
                size: 32,
                inputValue: OriginalJson.orderId
            },
        };
        //console.log(GSP_WEB_GameShopRechargeCommon);
        sql.execute("GSP_WEB_GameShopRechargeCommon", GSP_WEB_GameShopRechargeCommon, function (resxx) {
            res.send({returnValue:1});
            if (resxx.returnValue == 1) {
                console.log("googlePay/orderqueryGSP_WEB_GameShopRechargeCommon", resxx);
            }
        })
        if (resxx.returnValue == 0) {
            
        }
        else {
            // res.send({ returnValue: "不能重复购买" });
            console.log(resxx);
        }
    })
}