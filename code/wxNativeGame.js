var GlobalDef = require('./GlobalDef');
var request = require('request');
var sql = require('./sql');

var AppID = 'wxbacacd65e1ad1ca2'
var AppSecret = 'e9c3bb6e3aacfec0188b21842f75d30e'

exports.wx_Nativelogin = function (req, res) {
    let code = req.body.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppID + "&secret=" + AppSecret + "&code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            // console.log("body", body)
            let tempData = JSON.parse(body)
            if (tempData.openid) {
                request({
                    method: 'get',
                    url: "https://api.weixin.qq.com/sns/userinfo?access_token=" + tempData.access_token + "&openid=" + tempData.openid
                }, function (error, response, body) {
                    if (!error && response.statusCode == 200) {
                        let sendData = JSON.parse(body)
                        // console.log("wx_Nativelogin", sendData)
                        if (sendData.openid) {
                            sendData.PassingStateIOS = GlobalDef.PassingStateIOS
                            var GSP_WEB_LoginNativeWX = {
                                strOpenID: {
                                    sqlType: "NVarChar",
                                    size: 48,
                                    inputValue: sendData.openid
                                },
                                strUnionID: {
                                    sqlType: "NVarChar",
                                    size: 48,
                                    inputValue: sendData.unionid
                                },
                            };
                            //console.log(GSP_WEB_UpdateUserInfoNativeModifyAccount);
                            sql.execute("GSP_WEB_LoginNativeWX", GSP_WEB_LoginNativeWX, function (resxx) {
                                console.log("GSP_WEB_LoginNativeWX", resxx);
                                if (resxx.returnValue == 0) {
                                    sendData.openid = resxx.recordset[0].OpenID
                                    sendData.ChannelID = resxx.recordset[0].ChannelID
                                    res.send(sendData);
                                }
                                else if (resxx.returnValue == 1) {
                                    res.send(sendData);
                                }

                            })
                        }
                        else {
                            console.log("errwx_Nativelogin", sendData)
                        }
                    }
                });
            }
            else {
                console.log("errwx_Nativelogin", tempData)
            }
        }
    });
}
// exports.YK_Nativelogin = function (req, res) {
//     res.send({ PassingStateIOS: GlobalDef.PassingStateIOS });
// }
exports.wx_NativeModifyAccount = function (req, res) {
    let code = req.body.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppID + "&secret=" + AppSecret + "&code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            //console.log("body", body)
            let tempData = JSON.parse(body)
            if (tempData.openid) {
                request({
                    method: 'get',
                    url: "https://api.weixin.qq.com/sns/userinfo?access_token=" + tempData.access_token + "&openid=" + tempData.openid
                }, function (error, response, body) {
                    if (!error && response.statusCode == 200) {
                        let sendData = JSON.parse(body)
                        console.log("wx_Nativelogin", sendData)
                        if (sendData.openid) {
                            sendData.PassingStateIOS = GlobalDef.PassingStateIOS
                            var GSP_WEB_UpdateUserInfoNativeModifyAccount = {
                                strHeadImgUrl: {
                                    sqlType: "NVarChar",
                                    size: 256,
                                    inputValue: data.headimgurl
                                },
                                strOpenID: {
                                    sqlType: "NVarChar",
                                    size: 48,
                                    inputValue: data.openid
                                },
                                strUnionID: {
                                    sqlType: "NVarChar",
                                    size: 48,
                                    inputValue: data.unionid
                                },
                                cbGender: {
                                    sqlType: "TinyInt",
                                    inputValue: data.sex
                                },
                                strnickName: {
                                    sqlType: "NVarChar",
                                    size: 48,
                                    inputValue: data.nickname
                                },
                            };
                            //console.log(GSP_WEB_UpdateUserInfoNativeModifyAccount);
                            sql.execute("GSP_WEB_UpdateUserInfoNativeModifyAccount", GSP_WEB_UpdateUserInfoNativeModifyAccount, function (resxx) {
                                sendData.sqlData = resxx
                                res.send(sendData);
                            })
                        }
                        else {
                            console.log("errwx_Nativelogin", sendData)
                        }
                    }
                });
            }
            else {
                console.log("errwx_Nativelogin", tempData)
            }
        }
    });
}