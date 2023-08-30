var GlobalDef = require('./GlobalDef');
var WXBizDataCrypt = require('./WXBizDataCrypt')
var sql = require('./sql');
var request = require('request');

var AppID = GlobalDef.AppID
var AppSecret = GlobalDef.AppSecret
let NewUserWelfareConf = {
    1: {
        des: "5000金币",
    },
    2: {
        des: "1张福卡",
    },
    3: {
        des: "2万金币",
    },
    4: {
        des: "2万金币",
    },
    5: {
        des: "2张福卡",
    },
    6: {
        des: "3万金币",
    },
    7: {
        des: "3张福卡",
    },
}
let wx_sendPush = function () {
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + AppID + "&secret=" + AppSecret
    }, function (err, res1, body) {
        if (!err && res1.statusCode == 200) {
            //console.log("res1.body", body);
            var access_token = JSON.parse(body).access_token;
            for (let SignDate = 2; SignDate <= 7; SignDate++) {
                var GSP_WEB_PushNewUserSign = {
                    dwSignDate: {
                        sqlType: "Int",
                        inputValue: SignDate 
                    }
                };
                sql.execute("GSP_WEB_PushNewUserSign", GSP_WEB_PushNewUserSign, function (resxx) {
                    if (resxx.returnValue == 0) {
                        console.log(resxx)
                        for (let index = 0; index < resxx.recordset.length; index++) {
                            const element = resxx.recordset[index].OpenID;
                            var contentJson =
                            {
                                "touser": element,
                                "template_id": "gE0CWN8S31QJxt_xZyNmzp7Ub0Uax_oer6ZgOaaRbR0",
                                "page": "pages/index/index",
                                "data": {
                                    "phrase1": {
                                        "value": "未签到"
                                    },
                                    "thing2": {
                                        "value": SignDate + "天"
                                    },
                                    "thing3": {
                                        "value": NewUserWelfareConf[SignDate].des
                                    },
                                    "thing5": {
                                        "value": "进游戏领取"
                                    },
                                    "thing7": {
                                        "value": "新手豪礼"
                                    }
                                }
                            }
                            request({
                                url: "https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=" + access_token,
                                method: "POST",
                                json: true,
                                headers: {
                                    "content-type": "application/json",
                                },
                                body: contentJson
                            },
                                function (err, response, body) {
                                    if (!err && response.statusCode == 200) {
                                        //console.log(body)
                                    }
                                });
                        }

                    }

                })

            }
        }
    });

}

function intervalFunc() {
    console.log('Cant stop me now!');
    wx_sendPush()
}
setInterval(intervalFunc, 600000);