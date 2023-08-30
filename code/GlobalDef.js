module.exports =
    {
        clientVersionNative: 32,
        clientVersion: 130,
        clientVersionVX: 650,                                 //微信小游戏
        debug: true,
        PassingState: true,                                  //通过审核状态
        PassingStateIOS: true,                               //通过审核状态苹果
        PassingStateQTT: true,                               //通过审核状态趣头条
        serverPort: 8080,                                    //服务器端口
        sqlserverPort: 1455, //2753   //1455                 //数据库端口
        AppID: 'wx6f2319501335f2cf',                         //小程序AppID
        AppSecret: '365c3357d3b479885115698a156861cb',       //小程序AppSecret
        AppIDGZ: 'wx70eca148f31bc7b5',                       //公众号AppID
        AppSecretGZ: 'fc48bdb1eb0594441f2076e14001b5c0',     //公众号AppSecret
        offer_id: '1450017955',                              //小程序支付应用ID
        secret: 'UsG7lhvbGBawFYS2u3oeZvxX2C8P66lv',          //小程序支付应用现网AppKey
        mch_id: '1567095021',                                //微信商户号
        wxkey: '78jdgjWjrjTTjfj738gjg2gTTmgmWW88',           //key为在微信商户平台

        fnCreateXml: function (json) {
            var _xml = '';
            for (var key in json) {
                _xml += '<' + key + '><![CDATA[' + json[key] + ']]></' + key + '>';
            }
            return _xml;
        },

        raw: function (args) {
            var keys = Object.keys(args);
            keys = keys.sort()
            var newArgs = {};
            keys.forEach(function (key) {
                newArgs[key] = args[key];
            });
            var string = '';
            for (var k in newArgs) {
                string += '&' + k + '=' + newArgs[k];
            }
            string = string.substr(1);
            return string;
        }


    }
