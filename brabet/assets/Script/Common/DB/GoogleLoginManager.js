let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GoogleLoginManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.IsInitEnd = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GoogleLoginManager",
        app.ClientConfigManager().GetGlobalConfig.GoogleClientID && (this.IsStartUsing = true)
    }
    ,
    t.prototype.WebGoogleLoginInit = function() {
        var e = this;
        if (this.checkGoogleObject() && this.IsStartUsing && !this.IsInitEnd) {
            google.accounts.id.initialize({
                client_id: app.ClientConfigManager().GetGlobalConfig.GoogleClientID,
                callback: function(t) {
                    var n = t.credential.split(".")[1].replace(/-/g, "+").replace(/_/g, "/")
                      , o = JSON.parse(window.atob(n))
                      , a = o.name
                      , r = o.sub
                      , s = o.picture
                      , c = o.email
                      , l = t.credential;
                    app.Client.OnEvent(i.GameEventDefine.GOOGLE_LOGIN_SUCCESS, {
                        nickname: a,
                        third_token: r,
                        headimg: s,
                        login_type: 1,
                        third_account: c,
                        third_jwt: l
                    }),
                    e.Log("googleData", o)
                }
            });
            var t = document.createElement("div");
            t.id = "GooglebBtnDiv",
            t.style.display = "none",
            document.body.appendChild(t);
            var n = document.createElement("div");
            n.id = "googlediv",
            n.style.left = "50%",
            n.style.top = "55%",
            n.style.position = "absolute",
            n.style.zIndex = "888",
            n.style.transform = "translate(-50%,-50%)",
            t.appendChild(n);
            var o = document.createElement("div");
            o.id = "layer",
            o.style.position = "absolute",
            o.style.width = "331.7px",
            o.style.height = "198.7px",
            o.style.left = "50%",
            o.style.top = "50%",
            o.style.transform = "translate(-50%,-50%)",
            o.style.display = "flex",
            o.style.flexDirection = "column",
            t.appendChild(o);
            var a = document.createElement("img");
            a.id = "bg",
            a.src = "externGame/bg_layer.png",
            a.style.position = "absolute",
            a.style.width = "100%",
            a.style.height = "100%",
            a.style.top = "0px",
            a.style.left = "0px",
            o.appendChild(a);
            var r = document.createElement("div");
            r.id = "tit",
            r.innerText = app.i18n.t("UI.Tips"),
            r.style.position = "absolute",
            r.style.left = "50%",
            r.style.top = "10%",
            r.style.transform = "translate(-50%,-50%)",
            r.style.color = "#FFE536",
            r.style.fontSize = "20px",
            o.appendChild(r);
            var s = document.createElement("div");
            s.id = "text_tips",
            s.style.position = "absolute",
            s.style.top = "30%",
            s.style.alignSelf = "center",
            s.style.color = "#ffffff",
            s.style.fontSize = "18px",
            s.style.maxWidth = "300px",
            s.style.wordBreak = "break-word",
            s.style.textAlign = "center",
            o.appendChild(s);
            var c = document.createElement("button");
            c.id = "btn_enter Cancel",
            c.style.position = "absolute",
            c.style.width = "15%",
            c.style.height = "15%",
            c.style.left = "80%",
            c.style.top = "5%",
            c.style.border = "none",
            c.style.backgroundColor = "transparent",
            c.addEventListener("click", this.hideTips.bind(this)),
            o.appendChild(c);
            var l = document.createElement("img");
            l.id = "btnCancelBg",
            l.src = "externGame/btn_bg2.png",
            l.style.position = "absolute",
            l.style.width = "100%",
            l.style.height = "100%",
            l.style.left = "0px",
            l.style.top = "0px",
            c.appendChild(l);
            var p = document.createElement("div");
            p.id = "btnCancel_txt",
            p.style.position = "absolute",
            p.style.left = "50%",
            p.style.top = "50%",
            p.style.fontSize = "18px",
            p.style.color = "#FFDADA",
            p.style.transform = "translate(-50%,-50%)",
            c.appendChild(p),
            google.accounts.id.renderButton(document.getElementById("googlediv"), {
                theme: "outline",
                size: "large"
            }),
            this.onRefreshLabel(),
            this.IsInitEnd = true
        }
    }
    ,
    t.prototype.hideTips = function() {
        app.NativeMgr().openInternalWindow(false);
        var e = document.getElementById("GooglebBtnDiv");
        e && (e.style.display = "none")
    }
    ,
    t.prototype.showTips = function() {
        app.NativeMgr().openInternalWindow(true),
        this.IsInitEnd || (this.WebGoogleLoginInit(),
        this.ErrLog("GoogleInit Faild"));
        var e = document.getElementById("GooglebBtnDiv");
        e && (e.style.display = "block",
        this.onRefreshLabel())
    }
    ,
    t.prototype.onRefreshLabel = function() {
        document.getElementById("tit").innerText = app.i18n.t("UI.Tips"),
        document.getElementById("text_tips").innerText = app.i18n.t("UI_GoogleLoginHint"),
        document.getElementById("btnCancel_txt").innerText = "X"
    }
    ,
    t.prototype.checkGoogleObject = function() {
        return "undefined" != typeof google || (this.WarnLog("google Object Error"),
        false)
    }
    ,
    t
}(o.Singleton);
n.GoogleLoginManager = a,
module.exports = n
