var request = require('request');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
var request = require('request');

var GlobalDef = require('./GlobalDef');
var ProductCode = "07265988686081756472125137887777"
let ProductKey = "50400286"
var Callback_Key = "15797553935150288065842457550421"
var Md5_Key = "y06hvd3swbathrmwx22pwif12lz3ana8"
var xml2js = require('xml2js');


//QuickSDK参数同步解码方法
//输入密文、callbackKey
//成功返回解密后的xml字符
//失败会空字符串,长度为0
function decode(str, key) {

    if (str.length <= 0) {
        return '';
    }

    var list = new Array();
    var resultMatch = str.match(/\d+/g);
    for (var i = 0; i < resultMatch.length; i++) {
        list.push(resultMatch[i]);
    }

    if (list.length <= 0) {
        return '';
    }

    var keysByte = stringToBytes(key);
    var dataByte = new Array();
    for (var i = 0; i < list.length; i++) {
        dataByte[i] = parseInt(list[i]) - (0xff & parseInt(keysByte[i % keysByte.length]));
    }

    if (dataByte.length <= 0) {
        return '';
    }

    var parseStr = bytesToString(dataByte);
    return parseStr;
}

function stringToBytes(str) {
    var ch, st, re = [];
    for (var i = 0; i < str.length; i++) {
        ch = str.charCodeAt(i);
        st = [];
        do {
            st.push(ch & 0xFF);
            ch = ch >> 8;
        } while (ch);
        re = re.concat(st.reverse());
    }
    return re;
}

function bytesToString(array) {
    return String.fromCharCode.apply(String, array);
}

exports.quickSDKPaymentMicro = function (req, res) {
    var session_key = req.body.session_key
    var itemId = req.body.itemId
    var userId = req.body.userId
    var shopItem = shopItemConf[itemId]
    if (!shopItem) {
        console.log("!shopItem")
        return
    }
    var now = new Date();
    var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
    var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var orderInfo = new Object();
    orderInfo.productCode = ProductCode
    orderInfo.uid = session_key
    orderInfo.userRoleId = 'roleId1'
    orderInfo.userRoleName = '小朋友'
    orderInfo.serverId = 1
    orderInfo.userServer = '1区'
    orderInfo.userLevel = 1
    orderInfo.cpOrderNo = userId + ',' + itemId + ',' + date_time + date_no + random_no
    orderInfo.amount = shopItem.amt
    orderInfo.subject = shopItem.des
    orderInfo.desc = shopItem.des
    orderInfo.callbackUrl = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/quickSDKPayActionMicro"
    orderInfo.extrasParams = ''
    orderInfo.goodsId = 1 + itemId
    orderInfo.count = shopItem.golds
    orderInfo.quantifier = '个'
    res.send(orderInfo)
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
            inputValue: orderInfo.cpOrderNo
        },
        iSuccess: {
            sqlType: "Int",
            inputValue: 0
        },
        strTransaction_id: {
            sqlType: "NVarChar",
            size: 32,
            inputValue: "QuickSDK"
        }
    };
    sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

    })
}

exports.quickSDKPayActionMicro = function (req, res) {
    let nt_data = req.body.nt_data
    let sign = req.body.sign
    let md5Sign = req.body.md5Sign
    let md5Sign2 = require('crypto').createHash('md5').update(nt_data + sign + Md5_Key, 'utf8').digest('hex')
    if (md5Sign != md5Sign2) {
        console.log("MD5", md5Sign, md5Sign2);
    }
    //调用解密
    var xml = decode(nt_data, Callback_Key);
    var parser = new xml2js.Parser({ trim: true, explicitArray: false, explicitRoot: false });//解析签名结果xml转json
    parser.parseString(xml, function (err, result) {
        //console.log(result);
        let attach = JSON.parse("[" + result.message.game_order + "]")
        var userId = attach[0]
        var itemId = attach[1]
        var shopItem = shopItemConf[itemId]
        if (!shopItem) {
            console.log("!shopItem")
            return
        }
        if (shopItem.amt == result.message.amount) {
            result.message.channel_uid
            result.message.game_order
            result.message.order_no

            //res.send("result=OK&resultMsg=成功");
            var GSP_WEB_NH5QuickSDKGameShopRecharge = {
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
                    inputValue: result.message.order_no
                },
                iItemId: {
                    sqlType: "Int",
                    inputValue: itemId
                }
            };
            //console.log(GSP_WEB_NH5QuickSDKGameShopRecharge);
            sql.execute("GSP_WEB_NH5QuickSDKGameShopRecharge", GSP_WEB_NH5QuickSDKGameShopRecharge, function (resxx) {
                res.send("SUCCESS");
            })
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
                    inputValue: result.message.game_order
                },
                iSuccess: {
                    sqlType: "Int",
                    inputValue: 1
                },
                strTransaction_id: {
                    sqlType: "NVarChar",
                    size: 32,
                    inputValue: "QuickSDK"
                }
            };
            sql.execute("GSP_WEB_GameShopRechargeClick", GSP_WEB_GameShopRechargeClick, function (resxx) {

            })
        }
        else {
            console.log("金额不对", result.message.amount, shopItemConf[itemId].amt)
        }
    });
}

exports.quickSDKPayAction2 = function (req, res) {
    console.log("quickSDKPayAction2");
}
