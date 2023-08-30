var xml2js = require('xml2js');
var fs = require('fs');
var https = require('https');

var GlobalDef = require('./GlobalDef');
var clientIp = "121.201.12.115"
var showName = "微信小游戏"
var wishing = "恭喜发财"
var mch_id = GlobalDef.mch_id
var wxappid = GlobalDef.AppIDGZ 
var wxkey = GlobalDef.wxkey 
var fnCreateXml = GlobalDef.fnCreateXml
var fnCreateUrlParam = GlobalDef.raw

/*
生成微信红包数据
*/
var fnGetWeixinBonus = function (option) {

    var total_amount = option.total_amount  //红包总金额
    var re_openid = option.re_openid  //红包发送的目标用户
    var now = new Date();
    var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
    var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
    var random_no = Math.floor(Math.random() * 99);
    if (random_no < 10) { //生成位数为2的随机码
        random_no = '0' + random_no;
    }
    var muc_id = mch_id;

    var contentJson = {};
    contentJson.act_name = showName;// '新年红包';
    contentJson.client_ip = clientIp;
    contentJson.mch_billno = muc_id + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
    contentJson.mch_id = muc_id;
    contentJson.nonce_str = Math.random().toString(36).substr(2, 15);
    contentJson.re_openid = re_openid;
    contentJson.remark = wishing;
    contentJson.send_name = showName;
    contentJson.total_amount = total_amount;//
    contentJson.total_num = 1;
    contentJson.wishing = wishing;  //'恭喜发财';
    contentJson.wxappid = wxappid;  //商户appid

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
    var path = '/mmpaymkttransfers/sendredpack';
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
                    //console.log(result);
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

