const Core = require('@alicloud/pop-core');
var sql = require('./sql');

var client = new Core({
    accessKeyId: 'LTAIRvNNgR2f7guR',
    accessKeySecret: '6u4HaMTu5ufI7AEuGPjylWdPkziSSG',
    endpoint: 'https://dysmsapi.aliyuncs.com',
    apiVersion: '2017-05-25'
});

exports.SendSms = function (req, res) {
    var phoneNumber = req.body.PhoneNumbers
    var myreg = /^1[3|4|5|6|7|8|9][0-9]{9}$/
    if (phoneNumber == '') {
        console.log("手机号码不能为空！")
        return;
    } else if (phoneNumber.length != 11) {
        console.log("请输入11位手机号码！")
        return;
    }
    else if (!myreg.test(phoneNumber)) {
        console.log("请输入有效的手机号码！")
        return;
    }
    let verificationCode = (Array(6).join(0) + Math.floor(Math.random() * 999999)).slice(-6)
    let TemplateParam = JSON.stringify({ "code": verificationCode })

    var params = {
        "PhoneNumbers": phoneNumber,
        "SignName": "BUYU王国",
        "TemplateCode": "SMS_198805074",
        "TemplateParam": TemplateParam
    }

    var requestOption = {
        method: 'POST'
    };

    //console.log(params)

    var GSP_WEB_CanSendSms = {
        IPhoneNumber: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: phoneNumber
        }
    };
    sql.execute("GSP_WEB_CanSendSms", GSP_WEB_CanSendSms, function (resCan) {
        if (resCan.returnValue == 0) {
            client.request('SendSms', params, requestOption).then((result) => {
                // console.log(result);
                if (result.Code = 'OK') {
                    var GSP_WEB_SendSms = {
                        IPhoneNumber: {
                            sqlType: "NVarChar",
                            size: 48,
                            inputValue: phoneNumber
                        },
                        IVerificationCode: {
                            sqlType: "NVarChar",
                            size: 48,
                            inputValue: verificationCode
                        }
                    };
                    sql.execute("GSP_WEB_SendSms", GSP_WEB_SendSms, function (resxx) {

                    })
                }
                res.send({ returnValue: 0 });
            }, (ex) => {
                console.log(ex);
            })
        }
        else {
            res.send({ returnValue: resCan.returnValue, message: resCan.recordset[0].ErrorDescribe });
        }

    })
}
