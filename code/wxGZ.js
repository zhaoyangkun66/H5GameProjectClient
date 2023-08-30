var GlobalDef = require('./GlobalDef');
var sql = require('./sql');
var request = require('request');
var fs = require('fs');

var AppIDGZ = GlobalDef.AppIDGZ
var AppSecretGZ = GlobalDef.AppSecretGZ

exports.wx_GZlogin = function (req, res) {
    let code = req.query.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppIDGZ + "&secret=" + AppSecretGZ + "&code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            let bodyData = JSON.parse(body)
            //console.log("body", bodyData)
            var openid = bodyData.openid;
            var unionid = bodyData.unionid;
            if (openid && unionid) {
                var GSP_WEB_BindingPublicNumber = {
                    strUnionID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: unionid
                    },
                    strOpenID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: openid
                    },
                };
                //console.log(GSP_WEB_BindingPublicNumber);
                sql.execute("GSP_WEB_BindingPublicNumber", GSP_WEB_BindingPublicNumber, function (resxx) {
                    if (resxx.returnValue == 1) {
                        if (resxx.recordset && resxx.recordset[0] && resxx.recordset[0].OpenID) {
                            var redirect = "http://fish.qiquwa.com:8888/img/downfishH5.html/?OpenID=" + resxx.recordset[0].OpenID + "&code=" + resxx.recordset[0].VerificationCode
                            res.writeHead(301, {
                                location: redirect
                            });
                            res.end();
                        }
                        else {
                            fs.readFile("./config/index.html", (err, data) => {
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
                                        'Content-Type': 'text/html'
                                    });
                                    // 响应文件内容
                                    res.write(data.toString());
                                }
                                // 发送响应
                                res.end();
                            });
                        }
                    }
                })
            }
            else {
                if (bodyData.errcode = 40163) {
                    res.send("绑定失败,请不要点击刷新");
                    //console.log("绑定失败,请不要点击刷新", bodyData)
                }
                else {
                    res.send("绑定失败");
                    console.log("绑定失败", bodyData)
                }
            }

        }
    });
}

exports.wx_GZloginGame = function (req, res) {
    let code = req.query.code;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppIDGZ + "&secret=" + AppSecretGZ + "&code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            let bodyData = JSON.parse(body)
            //console.log("body", bodyData)
            var openid = bodyData.openid;
            var unionid = bodyData.unionid;
            if (openid && unionid) {
                var GSP_WEB_BindingPublicNumber = {
                    strUnionID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: unionid
                    },
                    strOpenID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: openid
                    },
                };
                //console.log(GSP_WEB_BindingPublicNumber);
                sql.execute("GSP_WEB_BindingPublicNumber", GSP_WEB_BindingPublicNumber, function (resxx) {
                    if (resxx.recordset && resxx.recordset[0] && resxx.recordset[0].OpenID) {
                        var redirect = "http://fish.qiquwa.com:8888/img/downfishH5.html/?OpenID=" + resxx.recordset[0].OpenID + "&code=" + resxx.recordset[0].VerificationCode
                        res.writeHead(301, {
                            location: redirect
                        });
                        res.end();
                    }
                    else {
                        res.send("暂未开放");
                    }
                })
            }
            else {
                if (bodyData.errcode = 40163) {
                    res.send("登入失败,请不要点击刷新");
                    //console.log("绑定失败,请不要点击刷新", bodyData)
                }
                else {
                    res.send("登入失败");
                    console.log("登入失败", bodyData)
                }
            }
        }
    });
}

exports.wx_GZVerification = function (req, res) {
    let openid = req.body.openid;
    let code = req.body.code;
    var GSP_WEB_BindingPublicNumberVerification = {
        strVerificationCode: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: code
        },
        strOpenID: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: openid
        },
    };
    sql.execute("GSP_WEB_BindingPublicNumberVerification", GSP_WEB_BindingPublicNumberVerification, function (resCan) {
        if (resCan.returnValue == 0) {
            res.send({ returnValue: 0 });
        }
        else {
            res.send({ returnValue: resCan.returnValue, message: resCan.recordset[0].ErrorDescribe });
        }
    })
}

exports.wx_GZloginThirdParty = function (req, res) {
    let code = req.query.code;
    let unionid = req.query.state;
    request({
        method: 'get',
        url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppIDGZ + "&secret=" + AppSecretGZ + "&code=" + code + "&grant_type=authorization_code"
    }, function (error, response, body) {
        if (!error && response.statusCode == 200) {
            let bodyData = JSON.parse(body)
            //console.log("body", bodyData)
            var openid = bodyData.openid;
            if (openid && unionid) {
                var GSP_WEB_BindingPublicNumber = {
                    strUnionID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: unionid
                    },
                    strOpenID: {
                        sqlType: "NVarChar",
                        size: 48,
                        inputValue: openid
                    },
                };
                //console.log(GSP_WEB_BindingPublicNumber);
                sql.execute("GSP_WEB_BindingPublicNumber", GSP_WEB_BindingPublicNumber, function (resxx) {
                    if (resxx.returnValue == 1) {
                        fs.readFile("./config/index.html", (err, data) => {
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
                                    'Content-Type': 'text/html'
                                });
                                // 响应文件内容
                                res.write(data.toString());
                            }
                            // 发送响应
                            res.end();
                        });
                    }
                })
            }
            else {
                res.send("绑定失败");
            }
        }
    });
};

// exports.wx_GZloginFromShare = function (req, res) {
//     let code = req.query.code;
//     let shareUserId = req.query.shareUserId;
//     request({
//         method: 'get',
//         url: "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + AppIDGZ + "&secret=" + AppSecretGZ + "&code=" + code + "&grant_type=authorization_code"
//     }, function (error, response, body) {
//         if (!error && response.statusCode == 200) {
//             let bodyData = JSON.parse(body)
//             //console.log("body", bodyData)
//             var openid = bodyData.openid;
//             var unionid = bodyData.unionid;
//             if (openid && unionid) {
//                 var GSP_WEB_BindingPublicNumberFromShare = {
//                     strUnionID: {
//                         sqlType: "NVarChar",
//                         size: 48,
//                         inputValue: unionid
//                     },
//                     strOpenID: {
//                         sqlType: "NVarChar",
//                         size: 48,
//                         inputValue: openid
//                     },
//                     dwshareUserId: {
//                         sqlType: "Int",
//                         inputValue: shareUserId
//                     },
//                 };
//                 //console.log(GSP_WEB_BindingPublicNumberFromShare);
//                 sql.execute("GSP_WEB_BindingPublicNumberFromShare", GSP_WEB_BindingPublicNumberFromShare, function (resxx) {
//                     if (resxx.returnValue == 1) {
//                         fs.readFile("./config/downfish.html", (err, data) => {
//                             if (err) {
//                                 console.log('文件读取失败：' + err);
//                                 // 设置404响应
//                                 res.writeHead(404, {
//                                     'Content-Type': 'text/html'
//                                 });
//                             }
//                             else {
//                                 // 状态码：200
//                                 res.writeHead(200, {
//                                     'Content-Type': 'text/html'
//                                 });
//                                 // 响应文件内容
//                                 res.write(data.toString());
//                             }
//                             // 发送响应
//                             res.end();
//                         });
//                     }
//                 })
//             }
//             else {
//                 res.send("绑定失败");
//             }
//         }
//     });
// };