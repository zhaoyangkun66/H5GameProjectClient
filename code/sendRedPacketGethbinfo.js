var xml2js = require('xml2js');
var fs = require('fs');
var https = require('https');

var GlobalDef = require('./GlobalDef');
var mch_id = GlobalDef.mch_id
var wxappid = GlobalDef.AppIDGZ 
var wxkey = GlobalDef.wxkey 
var fnCreateXml = GlobalDef.fnCreateXml
var fnCreateUrlParam = GlobalDef.raw

/*
生成微信红包数据
*/
var fnGetWeixinBonus = function (option) {
    
    var mch_billno = '150329433120206168702558250'  //红包发送的目标用户

    var muc_id = mch_id;
    var contentJson = {};
    contentJson.mch_billno = mch_billno
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.bill_type = 'MCHT'; 
    contentJson.appid = wxappid;  //商户appid

    var stringA = fnCreateUrlParam(contentJson);
    var stringSignTemp = stringA + "&key=" + wxkey
    contentJson.sign = require('crypto').createHash('md5').update(stringSignTemp, 'utf8').digest('hex').toUpperCase();
    var xmlData = fnCreateXml(contentJson);
    var sendData = '<xml>' + xmlData + '</xml>'; 

    return sendData;
}
//微信现金红包
exports.fnSendMoney = function (option, func) {

    var host = 'api.mch.weixin.qq.com';
    var path = '/mmpaymkttransfers/gethbinfo';
    var opt = {
        host: host,
        port: '443',
        method: 'POST',
        path: path,
        key: fs.readFileSync('./config/apiclient_key.pem'), //将微信生成的证书放入 cert目录下
        cert: fs.readFileSync('./config/apiclient_cert.pem')
    }

    var body = '';
    opt.agent = new https.Agent(opt);
    var req = https.request(opt, function (res) {
        if (res.statusCode == 200) {
            res.on('data', function (d) {
                body += d;
            }).on('end', function () {
                var parser = new xml2js.Parser({ trim: true, explicitArray: false, explicitRoot: false });//解析签名结果xml转json
                parser.parseString(body, function (err, result) {
                    console.log(result);
                    func(result)
                });
            });
        }
    }).on('error', function (e) {
        console.log("Got error: " + e.message);
    });

    var sendData = fnGetWeixinBonus(option);
    req.write(sendData);
    req.end();
}

