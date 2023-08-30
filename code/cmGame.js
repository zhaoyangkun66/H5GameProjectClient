var GlobalDef = require('./GlobalDef'); //彩猫
var sql = require('./sql');
var request = require('request');

var merchantid = "1062694"                                      //微信商户号
var wxkey = "6cad605fa27cc209f05a6e3a2cd96e09"                 //key为在微信商户平台

exports.cm_login = function (req, res) {
    var contentJson =
    {
        "code": req.body.code,
        "merchantid": merchantid,
    }
    var stringA = contentJson.code + wxkey;
    contentJson.sign = require('crypto').createHash('md5').update(stringA, 'utf8').digest('hex')
    //console.log(contentJson)
    request({
        method: 'get',
        url: "https://touch.fcaimao.com/open/userInfo.jhtml?code=" + contentJson.code + "&merchantid=" + contentJson.merchantid + "&sign=" + contentJson.sign
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            let sendData = JSON.parse(body)
            //console.log(sendData)
            res.send(sendData);
        }
    });
}