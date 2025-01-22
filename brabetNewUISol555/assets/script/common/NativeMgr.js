let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
}),
n.NativeMgr = undefined;
var o = require("./BaseNativeMgr")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/HttpServerDefine")
  , r = "NativeOcClass"
  , s = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "NativeMgr",
        this.Log("Init")
    }
    ,
    t.prototype.getApkVersion = function() {
        var e = 0;
        if (app.ComTool().CheckPlatform())
            return e;
        if (cc.sys.os == cc.sys.OS_ANDROID)
            try {
                e = this.callJava("getApkVersion", null, o.DataType.Number)
            } catch (t) {
                e = -1
            }
        return e
    }
    ,
    t.prototype.getPlatformVersion = function() {
        var e = 0;
        return app.ComTool().CheckPlatform() ? e : (cc.sys.os == cc.sys.OS_ANDROID && (e = this.callJava("getPlatformVersion", null, o.DataType.Number)),
        e)
    }
    ,
    t.prototype.SaveQR = function(e) {
        var t = "";
        if (app.ComTool().CheckPlatform()) {
            try {
                var n = document.createElement("a");
                n.href = e,
                n.download = "qr-code.png",
                document.body.appendChild(n),
                n.click(),
                document.body.removeChild(n)
            } catch (a) {
                console.error("SaveQR Error")
            }
            return t
        }
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var i = {
                str: e
            };
            t = this.callJava("saveQR", i, o.DataType.String)
        }
        return t
    }
    ,
    t.prototype.exitApp = function() {
        app.ComTool().CheckPlatform() || cc.sys.os != cc.sys.OS_ANDROID || this.callJava("exitApp", null, null)
    }
    ,
    t.prototype.getBatteryLevel = function() {
        if (app.ComTool().CheckPlatform())
            return 100;
        if (cc.sys.os == cc.sys.OS_ANDROID)
            return this.callJava("getBatteryLevel", null, o.DataType.Number);
        if (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) {
            var e = jsb.reflection.callStaticMethod(r, "getBatteryLevel");
            return parseInt(e)
        }
        return 100
    }
    ,
    t.prototype.getBatteryStatusCharging = function() {
        return !app.ComTool().CheckPlatform() && (cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getBatteryStatusCharging", null, o.DataType.Boolean) : !(cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative) && jsb.reflection.callStaticMethod(r, "getBatteryStatusCharging"))
    }
    ,
    t.prototype.startRecording = function() {
        return this.Log("startRecording====="),
        !!app.ComTool().CheckPlatform() || (cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("startRecording", null, o.DataType.Boolean) : cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative || jsb.reflection.callStaticMethod(r, "startRecording"))
    }
    ,
    t.prototype.stopRecording = function() {
        return this.Log("stopRecording====="),
        !!app.ComTool().CheckPlatform() || (cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("stopRecording", null, o.DataType.Boolean) : cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative || jsb.reflection.callStaticMethod(r, "stopRecording"))
    }
    ,
    t.prototype.uploadRecordedFile = function() {
        return this.Log("uploadRecordedFile====="),
        !!app.ComTool().CheckPlatform() || (cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("uploadRecordedFile", null, o.DataType.Boolean) : cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative || jsb.reflection.callStaticMethod(r, "uploadRecordedFile"))
    }
    ,
    t.prototype.uploadVoiceResult = function(e) {
        this.Log("uploadVoiceResult====="),
        cc.mg.talk_manager.uploadVoiceResult(e)
    }
    ,
    t.prototype.speechToTextResult = function(e) {
        this.Log("speechToTextResult=====" + e),
        cc.mg.talk_manager.sendTalkMessage(e, 0)
    }
    ,
    t.prototype.downloadRecordedFile = function(e) {
        if (this.Log("downloadRecordedFile=====" + e),
        app.ComTool().CheckPlatform())
            return true;
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                fileID: e
            };
            return this.callJava("downloadRecordedFile", t, o.DataType.Boolean)
        }
        return cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative || jsb.reflection.callStaticMethod(r, "downloadRecordedFile:", e)
    }
    ,
    t.prototype.playRecordFile = function(e) {
        if (this.Log("playRecordFile=====" + e),
        cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                fileID: e
            };
            return this.callJava("playRecordFile", t, o.DataType.Boolean)
        }
        cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "playRecordFile:", e)
    }
    ,
    t.prototype.initWXSDK = function(e) {
        if (this.Log("appID=====" + e),
        cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                appID: e
            };
            this.callJava("initWXSDK", t)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "initWXSDK:", e)
    }
    ,
    t.prototype.loginWX = function() {
        this.Log("loginWX====="),
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("loginWX") : cc.sys.os == cc.sys.OS_IOS && jsb.reflection.callStaticMethod(r, "loginWX")
    }
    ,
    t.prototype.loginFaceBook = function() {
        this.Log("=====loginFaceBook====="),
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("loginFaceBook") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "loginFaceBook")
    }
    ,
    t.prototype.loginFaceBookSuccess = function(e) {
        var t = JSON.parse(e)
          , n = t.uid
          , o = t.name
          , a = t.url;
        this.Log(n + "===loginFaceBookSuccess===" + o);
        var r = a.replace(/&/g, "%26");
        app.Client.OnEvent(i.GameEventDefine.FACEBOOK_LOGIN_SUCCESS, {
            nickname: o,
            third_token: n,
            headimg: r
        })
    }
    ,
    t.prototype.FaceBookShare = function(e) {
        this.Log("nativeShare=====");
        var t = JSON.parse(e);
        if (app.ComTool().CheckPlatform())
            return cc.sys.isBrowser ? void cc.sys.openURL("https://www.facebook.com/sharer/sharer.php?u=" + t.url + "&quote=" + t.des) : undefined;
        if (t)
            if (cc.sys.os == cc.sys.OS_ANDROID) {
                var n = {
                    url: t.url,
                    des: t.des
                };
                this.callJava("FacebookShareUrl", n)
            } else
                cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "FacebookShareUrl:", t.url)
    }
    ,
    t.prototype.WhatsAppShare = function(e) {
        if (this.Log("nativeShare====="),
        app.ComTool().CheckPlatform())
            return cc.sys.isBrowser ? void cc.sys.openURL("https://wa.me/?text=" + e) : undefined;
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                url: e
            };
            this.callJava("WhatsAppShareUrl", t)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "WhatsAppShareUrl:", e)
    }
    ,
    t.prototype.LineAppShare = function(e) {
      
    }
    ,
    t.prototype.WhatsAppOpenTelMessages = function(e) {
        if (!app.ComTool().CheckPlatform())
            if (cc.sys.os == cc.sys.OS_ANDROID) {
                var t = {
                    tel: e
                };
                this.callJava("WhatsAppOpenNumMessages", t)
            } else if (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) {
                app.NativeMgr().copyToClipBoard(e);
                var n = "https://wa.me/" + e;
                cc.sys.openURL(n)
            }
    }
    ,
    t.prototype.VibrateAction = function(e) {
        if (this.Log("nativeShare====="),
        !app.ComTool().CheckPlatform())
            if (cc.sys.os == cc.sys.OS_ANDROID) {
                var t = {
                    time: e
                };
                this.callJava("VibrateAction", t)
            } else
                cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative
    }
    ,
    t.prototype.iosPay = function(e, t, n, o) {
        cc.error(e),
        cc.sys.os == cc.sys.OS_IOS && jsb.reflection.callStaticMethod(r, "iosPay:andMoney:andCount:andUrl:", t, n, o, e)
    }
    ,
    t.prototype.getRoomID = function() {
        return this.Log("getRoomID====="),
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getRoomID", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative ? jsb.reflection.callStaticMethod(r, "getRoomID") : 3e4
    }
    ,
    t.prototype.setRoomID = function(e) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                strRoomID: e
            };
            this.callJava("setRoomID", t)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "setRoomID:", e)
    }
    ,
    t.prototype.iosUniversalLinksCallBack = function() {
        if (cc.sys.os == cc.sys.OS_IOS) {
            var e = app.GameManager().curr_scene_name
              , t = app.NativeMgr().getRoomID();
            "hall" == e && "" != t && app.NativeMgr().setRoomID("")
        }
    }
    ,
    t.prototype.getPackageName = function() {
        return this.Log("getPackageName====="),
        app.ComTool().CheckPlatform() ? "unknown" : cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getPackageName", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative ? jsb.reflection.callStaticMethod(r, "getPackageName") : "unknown"
    }
    ,
    t.prototype.getDeviceId = function() {
        this.Log("getDeviceId=====");
        var e = app.ComTool().RandomGUID();
        return app.ComTool().CheckPlatform() ? e : (cc.sys.os == cc.sys.OS_ANDROID ? e = this.callJava("getDeviceId", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && ((e = jsb.reflection.callStaticMethod(r, "getDeviceIdByIDFA")) || (e = jsb.reflection.callStaticMethod(r, "getDeviceId"))),
        e)
    }
    ,
    t.prototype.copyToClipBoard = function(e, t) {
        var n = function() {
            app.SysNotifyManager().ShowToast(t || "UI_Copyed")
        };
        if (app.ComTool().CheckPlatform())
            try {
                var o = e
                  , i = document.createElement("input");
                document.body.appendChild(i),
                i.value = o,
                i.setAttribute("readOnly", "readOnly"),
                i.select(),
                document.execCommand("Copy"),
                document.body.removeChild(i),
                n()
            } catch (s) {
                console.error("copyToClipBoard Error")
            }
        else if (app.ComTool().AndroidHybirdPlatform()) {
            var a = {
                content: e
            };
            this.callJava("copyToClipBoard", a),
            n()
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && (jsb.reflection.callStaticMethod(r, "copyToClipBoard:", e),
            n())
    }
    ,
    t.prototype.openWX = function() {
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("openWX") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "openWX")
    }
    ,
    t.prototype.openWhatsApp = function() {
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("OpenWhatsApp") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "OpenWhatsApp")
    }
    ,
    t.prototype.openQQ = function(e) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                url: "mqqwpa://im/chat?chat_type=wpa&uin=" + e
            };
            this.callJava("openQQ", t)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "openQQ:", "mqq://im/chat?chat_type=wpa&uin=" + e + "&version=1&src_type=web")
    }
    ,
    t.prototype.getXSocksAsPort = function() {
        var e = 0;
        return app.ComTool().CheckPlatform() ? e : (cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getXSocksAsPort", null, o.DataType.Number) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && (e = jsb.reflection.callStaticMethod(r, "getXSocksAsPort")),
        cc.log("xsock as port===== " + e),
        e)
    }
    ,
    t.prototype.getXSocksGsPort = function() {
        var e = 0;
        return app.ComTool().CheckPlatform() ? e : (cc.sys.os == cc.sys.OS_ANDROID ? e = this.callJava("getXSocksGsPort", null, o.DataType.Number) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && (e = jsb.reflection.callStaticMethod(r, "getXSocksGsPort")),
        cc.log("xsock gs port===== " + e),
        e)
    }
    ,
    t.prototype.openUrl = function(e) {
        app.ComTool().CheckPlatform() ? cc.sys.openURL(e) : cc.sys.os == cc.sys.OS_ANDROID || cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "openUrl:", e)
    }
    ,
    t.prototype.openUrlCallBack = function() {
        cc.systemEvent.emit("openUrlCallBack")
    }
    ,
    t.prototype.getHostAddress = function(e) {
        var t = "";
        if (app.ComTool().CheckPlatform())
            return t;
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var n = {
                strHost: e
            };
            t = this.callJava("getHostAddress", n, o.DataType.String)
        } else
            t = cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative ? jsb.reflection.callStaticMethod(r, "getHostAddress:", e) : "192.168.1.1";
        return cc.log("strIp ========" + t),
        t
    }
    ,
    t.prototype.saveFileToGalley = function(e, t, n) {
        if (app.ComTool().CheckPlatform())
            return true;
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            cc.error("saveFileToGalley:" + e + "|" + t + "|" + n);
            var i = {
                picName: e,
                imageLocalPath: t,
                imageFormat: n
            }
              , a = this.callJava("saveFileToGalley", i, o.DataType.String);
            return cc.error("savedFilePath:" + a),
            true
        }
        if (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) {
            var s = jsb.reflection.callStaticMethod(r, "saveFileToGalley:andImageLocalPath:andImageFormat:", e, t, n);
            return s || app.SysNotifyManager().ShowToast("\u8bf7\u60a8\u8bbe\u7f6e\u5141\u8bb8\u8be5\u5e94\u7528\u8bbf\u95ee\u60a8\u7684\u76f8\u673a \u8bbe\u7f6e>\u9690\u79c1>\u76f8\u673a"),
            s
        }
    }
    ,
    t.prototype.hasPicPrivicy = function() {
        return !!app.ComTool().CheckPlatform() || cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative || jsb.reflection.callStaticMethod(r, "hasPicPrivicy")
    }
    ,
    t.prototype.hasNoPicChoice = function() {
        return !app.ComTool().CheckPlatform() && !(cc.sys.os != cc.sys.OS_IOS || !cc.sys.isNative) && jsb.reflection.callStaticMethod(r, "hasNoPicChoice")
    }
    ,
    t.prototype.umengEvent = function(e) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var t = {
                eventId: e
            };
            this.callJava("umengOnEvent", t)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "umengOnEvent:", e)
    }
    ,
    t.prototype.umengOnEventValue = function(e, t) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var n = {
                eventId: e,
                duration: t
            };
            this.callJava("umengOnEventValue", n)
        } else
            cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "umengOnEventValue:andDuration:", e, t)
    }
    ,
    t.prototype.isNetworkAvailable = function() {
        var e = true;
        return app.ComTool().CheckPlatform() ? e : (cc.sys.os == cc.sys.OS_ANDROID ? e = this.callJava("isNetworkAvailable", null, o.DataType.Boolean) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && (e = jsb.reflection.callStaticMethod(r, "isNetworkAvailable")),
        cc.log("isNetworkAvailable = " + e),
        e)
    }
    ,
    t.prototype.getChannel = function() {
        if (app.ComTool().CheckPlatform())
            return "";
        var e = "unkownChannel";
        return cc.sys.os == cc.sys.OS_ANDROID && (e = this.callJava("getChannel", null, o.DataType.String)),
        e
    }
    ,
    t.prototype.initQsuSdk = function() {}
    ,
    t.prototype.initQsuSdkCallBack = function() {
        var e = app.NativeMgr().getXSocksAsPort()
          , t = app.NativeMgr().getXSocksGsPort();
        cc.log("setQsuAsGsPort as port==" + e + ",gs port==" + t);
        var n = {
            asPort: e,
            gsPort: t
        };
        cc.systemEvent.emit("e_init_qsu_sdk_cb", n)
    }
    ,
    t.prototype.downloadApp = function(e) {
        if (this.Log("download app url =" + e),
        !app.ComTool().CheckPlatform())
            if (cc.sys.os == cc.sys.OS_IOS)
                jsb.reflection.callStaticMethod(r, "downloadIpa:", e);
            else if (cc.sys.os == cc.sys.OS_ANDROID) {
                var t = {
                    url: e
                };
                this.callJava("downloadApp", t)
            }
    }
    ,
    t.prototype.ShowORHideGoHomeBtn = function(e) {
        e ? cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("ShowBackIndexBtn") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "ShowBackIndexBtn") : cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("HideBackIndexBtn") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "HideBackIndexBtn")
    }
    ,
    t.prototype.setHomeButtonVisible = function(e) {
        app.ComTool().CheckPlatform() || (e ? cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("showHomeButton") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "showHomeButton") : cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("hideHomeButton") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "hideHomeButton"))
    }
    ,
    t.prototype.setFacebookButtonVisible = function(e) {
        app.ComTool().CheckPlatform() || (e ? cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("ShowFacebookBtn") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative : cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("HideFacebookBtn") : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)
    }
    ,
    t.prototype.backHall = function() {
        this.Log("\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014backhall"),
        cc.director.loadScene("hall_gold")
    }
    ,
    t.prototype.setOrientation = function(e) {
        if (!app.ComTool().CheckPlatform())
            if (cc.sys.os == cc.sys.OS_ANDROID) {
                var t = {
                    dir: e
                };
                this.callJava("setOrientation", t)
            } else
                cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "setOrientation:", e)
    }
    ,
    t.prototype.PhoneVibrator = function(e) {
        if (app.VibrationMgr().GetOpenVibration)
            if ("" !== e && null != e)
                if (isNaN(e))
                    cc.error("non numerical");
                else if (cc.sys.os == cc.sys.OS_ANDROID) {
                    var t = {
                        time: e
                    };
                    this.callJava("PhoneVibrator", t)
                } else
                    cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "PhoneVibrator:", e);
            else
                cc.error("non numerical")
    }
    ,
    t.prototype.cashFreePay = function(e, t, n, o, i, a, r, s, c, l) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var p = {
                id: e,
                token: t,
                appId: n,
                orderId: o,
                orderAmount: i,
                orderNote: a,
                customerName: r,
                customerPhone: s,
                customerEmail: c,
                notifyUrl: l
            };
            this.callJava("cashFreePay", p)
        }
    }
    ,
    t.prototype.Pazorpay = function(e, t, n, o, i, a, r, s, c, l) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var p = {
                id: 1,
                method: t,
                appId: n,
                orderId: o,
                orderAmount: i,
                orderNote: a,
                customerName: r,
                customerPhone: s,
                customerEmail: c,
                notifyUrl: l
            };
            this.callJava("razorPay", p)
        }
    }
    ,
    t.prototype.PayU = function(e, t, n, o, i, a, r, s, c, l, p, d) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var h = {
                txnId: e,
                key: t,
                MerchantId: n,
                hash: o,
                amount: i,
                orderNote: a,
                customerName: r,
                customerPhone: s,
                customerEmail: c,
                notifyUrl: l,
                surl: p,
                furl: d
            };
            this.callJava("goPay", h)
        }
    }
    ,
    t.prototype.mpursePay = function(e, t, n, o, i, a) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var r = {
                TxnId: e,
                Amount: t,
                MpQueryId: n,
                PartnerId: o,
                CreateTime: i,
                PayerVA: a
            };
            this.callJava("mpursePay", r)
        }
    }
    ,
    t.prototype.mpursePayPayResult = function(e, t) {
        this.Log("mpursePayPayResult code = ", e, ",txMsg = ", t),
        app.SysNotifyManager().ShowToast(t)
    }
    ,
    t.prototype.cashPayResult = function(e, t) {
        this.Log("cashPayResult code = ", e, ",txMsg = ", t),
        "" !== t && app.SysNotifyManager().ShowToast(t)
    }
    ,
    t.prototype.getMediaSource = function() {
        if (app.ComTool().CheckPlatform())
            return "";
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var e = this.callJava("getMediaSource", null, o.DataType.String);
            if ("null" != e)
                return e
        }
        return null
    }
    ,
    t.prototype.getAdJustData = function() {
        if (app.ComTool().CheckPlatform())
            return null;
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var e = this.callJava("getAdJustKey", null, o.DataType.String);
            if ("" != e)
                return JSON.parse(e)
        }
        return cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative ? jsb.reflection.callStaticMethod(r, "getAdJustKey") : null
    }
    ,
    t.prototype.getAll_preinstallKey = function() {
        if (app.ComTool().CheckPlatform())
            return "";
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            if (e = this.callJava("getAll_preinstallKey", null, o.DataType.String))
                return e
        } else if (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative) {
            var e;
            if (e = jsb.reflection.callStaticMethod(r, "getAll_preinstallKey"))
                return e
        }
        return ""
    }
    ,
    t.prototype.getAdvertisingId = function() {
        return app.ComTool().CheckPlatform() ? "" : cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getAdvertisingId", null, o.DataType.String) : ""
    }
    ,
    t.prototype.isProbablyAnEmulator = function() {
        return !app.ComTool().CheckPlatform() && cc.sys.os == cc.sys.OS_ANDROID && this.callJava("isProbablyAnEmulator", null, o.DataType.Boolean)
    }
    ,
    t.prototype.trackEvent = function(e, t) {
        if (cc.sys.os == cc.sys.OS_ANDROID) {
            var n = {
                type: e,
                jsonData: t
            };
            this.callJava("trackEvent", n)
        }
    }
    ,
    t.prototype.FacebooklogEvent = function(e, t) {
        if (app.ComTool().CheckPlatform())
            cc.log("logEvent", e, t);
        else
            try {
                var n = app.GameConfigManager().GetFBEventConfig() || [];
                if (n[e]) {
                    var o = n[e].key ? n[e].key : ""
                      , i = n[e].currency ? n[e].currency : ""
                      , a = t || 0;
                    if ("" == o)
                        return;
                    if (cc.sys.os == cc.sys.OS_ANDROID) {
                        var s = {
                            typetoken: o,
                            tObjData: a,
                            tCurrencyType: i
                        };
                        return void this.callJava("FaceBookLogEvent", s)
                    }
                    if (cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative)
                        return void jsb.reflection.callStaticMethod(r, "FaceBookLogEvent:number:currencyType:", o, a, i)
                }
                return
            } catch (c) {
                cc.error("FacebooklogEvent: ", c)
            }
    }
    ,
    t.prototype.AdjustlogEvent = function(e, t) {
        if (app.ComTool().CheckPlatform())
            cc.log("logEvent", e, t);
        else
            try {
                var n = app.GameConfigManager().GetAJEventConfig() || [];
                if (n[e]) {
                    var o = n[e].key ? n[e].key : ""
                      , i = n[e].currency ? n[e].currency : ""
                      , a = t || 0;
                    if ("" == o)
                        return;
                    if (cc.sys.os == cc.sys.OS_ANDROID) {
                        var s = {
                            typetoken: o,
                            tObjData: a,
                            tCurrencyType: i
                        };
                        return void this.callJava("adjustlogEvent", s)
                    }
                    cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative && jsb.reflection.callStaticMethod(r, "adjustlogEvent:andData:andType:", o, a, i)
                }
            } catch (c) {}
    }
    ,
    t.prototype.RazorPayResult = function() {}
    ,
    t.prototype.PaytmPay = function(e, t, n, o, i, a) {
        if (!app.ComTool().CheckPlatform() && cc.sys.os == cc.sys.OS_ANDROID) {
            var r = {
                orderid: e,
                mid: t,
                txnToken: n,
                amount: o,
                callbackurl: i,
                orderNote: a
            };
            this.callJava("PaytmPay", r)
        }
    }
    ,
    t.prototype.consumeResponse = function() {}
    ,
    t.prototype.addOrder = function(e) {
        cc.log("addOrder,data:", e);
        var t = JSON.parse(e).token;
        this.Log("googlePay add order, purchaseToken:" + t)
    }
    ,
    t.prototype.toast = function(e) {
        var t = JSON.parse(e).str;
        app.SysNotifyManager().ShowToast(t)
    }
    ,
    t.prototype.removeLoading = function() {}
    ,
    t.prototype.onBackKey = function() {
        cc.systemEvent.emit("onBackKey")
    }
    ,
    t.prototype.getContentFromClipBoard = function() {
        if (!app.ComTool().CheckPlatform())
            return cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getContentFromClipBoard", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS ? jsb.reflection.callStaticMethod("NativeOcClass", "getContentFromClipBoard") : undefined
    }
    ,
    t.prototype.zaloShareCallback = function(e) {
        if (!app.ComTool().CheckPlatform())
            if (cc.sys.os == cc.sys.OS_ANDROID) {
                var t = JSON.parse(e)
                  , n = t.msg
                  , o = t.link;
                this.callJava("zaloShareCallback", {
                    msg: n,
                    link: o
                })
            } else
                cc.sys.os,
                cc.sys.OS_IOS
    }
    ,
    t.prototype.openInternalWindow = function(e) {
        if (!app.ComTool().CheckPlatform())
            try {
                if (cc.sys.os == cc.sys.OS_ANDROID) {
                    var t = {
                        value: e
                    };
                    return void this.callJava("openInternalWindow", t)
                }
            } catch (n) {}
    }
    ,
    t.prototype.InitHallEnd = function() {
        app.ComTool().CheckPlatform() || cc.sys.os == cc.sys.OS_ANDROID && this.callJava("initHallEnd", {
            initHallEnd: "initHallEnd"
        })
    }
    ,
    t.prototype.OpenGooglePay = function(e, t, n) {
        if (!app.ComTool().CheckPlatform() && cc.sys.os == cc.sys.OS_ANDROID) {
            var o = {
                uid: e,
                orderid: t,
                productId: "android.recharge_" + n
            };
            this.callJava("launchBillingFlow", o)
        }
    }
    ,
    t.prototype.GoogleConsumeProduct = function(e) {
        if (!app.ComTool().CheckPlatform() && cc.sys.os == cc.sys.OS_ANDROID)
            if (app.NativeMgr().getPackageName()) {
                var t = {
                    purchaseToken: e
                };
                this.callJava("consumeProduct", t)
            } else
                cc.error("getPackageName error.")
    }
    ,
    t.prototype.verifyGPPay = function(e) {
        var t = JSON.parse(e)
          , n = {
            packageName: t.packagename,
            productId: t.productId,
            purchaseToken: t.purchaseToken,
            order_no: t.orderId
        };
        if (app.StoreManager().GetPayGoodResult() && app.StoreManager().GetPayGoodResult().notifyurl) {
            var o = {
                notify_url: app.StoreManager().GetPayGoodResult().notifyurl,
                order_no: ""
            };
            app.StoreManager().AddMonitor(o, n)
        } else
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_PAY_NOTIFYURL, n)
    }
    ,
    t.prototype.openPhoto = function() {
        if (app.ComTool().CheckPlatform())
            return true;
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getPhotoUploadHandler", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative
    }
    ,
    t.prototype.openCamera = function() {
        if (app.ComTool().CheckPlatform())
            return true;
        cc.sys.os == cc.sys.OS_ANDROID ? this.callJava("getCameraUploadHandler", null, o.DataType.String) : cc.sys.os == cc.sys.OS_IOS && cc.sys.isNative
    }
    ,
    t.prototype.getPhotoAndCamera = function(e) {
        var t = JSON.parse(e)
          , n = t.base64Bitmap
          , o = t.filePath;
        cc.log(n + "===getPhotoAndCamera===" + o),
        cc.systemEvent.emit("GetPhotoAndCameraDataSuccess", {
            base64Bitmap: n,
            filePath: o
        })
    }
    ,
    t
}(o.BaseNativeMgr);
n.NativeMgr = s,

module.exports = n
