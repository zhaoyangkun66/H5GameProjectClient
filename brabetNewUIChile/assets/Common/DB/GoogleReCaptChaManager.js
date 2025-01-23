let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GoogleReCaptChaManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.DivName = "GoogleRecaptDiv",
        t.Token = "",
        t.IsInit = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GoogleReCaptChaManager",
        this.Log("GoogleRecaptDiv Init"),
        this.IsInit = false
    }
    ,
    t.prototype.AddRecaptChaDiv = function() {
        if (this.GetElementDiv()) {
            var e = document.createElement("div");
            e.id = this.DivName,
            e.style.display = "none",
            e.style.position = "fixed",
            e.style.top = "0",
            e.style.left = "0",
            e.style.right = "0",
            e.style.bottom = "0",
            e.style.zIndex = "887",
            e.style.background = "rgba(0,0,0,0.6)";
            var t = document.createElement("div");
            t.id = "layer2",
            t.style.display = "block",
            t.style.left = "50%",
            t.style.top = "56%",
            t.style.position = "absolute",
            t.style.zIndex = "888",
            t.style.transform = "translate(-50%,-50%)",
            e.appendChild(t);
            var n = document.createElement("div");
            n.id = "layer",
            n.style.position = "absolute",
            n.style.width = "331.7px",
            n.style.height = "198.7px",
            n.style.left = "50%",
            n.style.top = "50%",
            n.style.transform = "translate(-50%,-50%)",
            n.style.display = "flex",
            n.style.flexDirection = "column",
            e.appendChild(n);
            var o = document.createElement("img");
            o.id = "bg",
            o.src = "externGame/bg_layer_2.png",
            o.style.position = "absolute",
            o.style.width = "100%",
            o.style.height = "100%",
            o.style.top = "0px",
            o.style.left = "0px",
            n.appendChild(o);
            var i = document.createElement("button");
            i.id = "btn_enter Cancel",
            i.style.position = "absolute",
            i.style.width = "15%",
            i.style.height = "15%",
            i.style.right = "0",
            i.style.top = "5%",
            i.style.border = "none",
            i.style.backgroundColor = "transparent",
            i.addEventListener("click", this.hideDiv.bind(this)),
            n.appendChild(i);
            var a = document.createElement("div");
            a.id = "tit1",
            a.innerText = app.i18n.t("UI.Tips"),
            a.style.position = "absolute",
            a.style.left = "50%",
            a.style.top = "10%",
            a.style.transform = "translate(-50%,-50%)",
            a.style.color = "#333333",
            a.style.fontSize = "20px",
            n.appendChild(a);
            var r = document.createElement("div");
            r.id = "text_tips1",
            r.innerText = app.i18n.t("UI_GoogleReaptCha_Hint"),
            r.style.position = "absolute",
            r.style.top = "30%",
            r.style.alignSelf = "center",
            r.style.color = "#333333",
            r.style.fontSize = "18px",
            r.style.maxWidth = "300px",
            r.style.wordBreak = "break-word",
            r.style.textAlign = "center",
            n.appendChild(r);
            var s = document.createElement("img");
            s.id = "btnCancelBg",
            s.src = "externGame/btn_close.png",
            s.style.width = "100%",
            s.style.left = "0px",
            s.style.top = "0px",
            i.appendChild(s),
            document.body.appendChild(e)
        }
    }
    ,
    t.prototype.InitGoogleGrecaptcha = function() {
        var e = this;
        this.checkGoogleGrecaptchaObject() && (this.IsInit ? grecaptcha.reset() : (this.IsInit = true,
        grecaptcha.render("layer2", {
            sitekey: app.ClientConfigManager().GetGlobalConfig.GoogleRecaptChaID,
            theme: "light",
            callback: function(t) {
                e.Log("InitGoogleGrecaptcha" + t),
                e.Token = t,
                setTimeout(function() {
                    e.hideDiv(),
                    app.Client.OnEvent(i.GameEventDefine.GOOGLRECAPTCHAFINISH)
                }, 1e3)
            }
        })))
    }
    ,
    Object.defineProperty(t.prototype, "getRecaptcha", {
        get: function() {
            return this.Token
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.hideDiv = function() {
        if (this.checkGoogleGrecaptchaObject()) {
            var e = document.getElementById(this.DivName);
            e && (e.style.display = "none")
        }
    }
    ,
    t.prototype.showDiv = function() {
        if (this.checkGoogleGrecaptchaObject()) {
            this.AddRecaptChaDiv(),
            this.InitGoogleGrecaptcha();
            var e = document.getElementById(this.DivName);
            e ? (e.style.display = "block",
            this.onRefreshLabel()) : this.ErrLog("showDiv failed==>", this.DivName)
        }
    }
    ,
    t.prototype.onRefreshLabel = function() {
        document.getElementById("tit1").innerText = app.i18n.t("UI.Tips"),
        document.getElementById("text_tips1").innerText = app.i18n.t("UI_GoogleReaptCha_Hint"),
        this.Log("GoogleReCaptChaManager refershlabel")
    }
    ,
    t.prototype.GetElementDiv = function() {
        return !document.getElementById(this.DivName)
    }
    ,
    t.prototype.checkGoogleGrecaptchaObject = function() {
        return "undefined" != typeof grecaptcha || (this.ErrLog("grecaptcha Object Error"),
        false)
    }
    ,
    t
}(o.Singleton);
n.GoogleReCaptChaManager = a,
module.exports = n
