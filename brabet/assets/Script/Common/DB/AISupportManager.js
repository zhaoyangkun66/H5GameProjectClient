let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.AISupportManager = undefined;
var o = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.isInit = false,
        t.isShow = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "AISupportManager",
        this.Log("Init")
    }
    ,
    t.prototype.ShowSupport = function() {
        this.isInit || (this.isInit = true,
        this.initSupport());
        var e = app.UserManager().GetUserInfo.ai_chat_robot_url;
        e += "?language=" + app.LanguageManager().GetLocalLanguage(true) + "&token=" + app.UserManager().GetUserInfo.token,
        this.show(e)
    }
    ,
    t.prototype.initSupport = function() {
        var e = app.ComTool().H5Platform()
          , t = document.createElement("button");
        t.id = "idSupportCloseBtnBG",
        t.draggable = false,
        t.style.display = "none",
        t.style.position = "absolute",
        t.style.width = "100%",
        t.style.height = "100%",
        t.style.border = "none",
        t.style.backgroundColor = "transparent",
        t.addEventListener("click", this.hide.bind(this)),
        document.body.appendChild(t);
        var n = document.createElement("iframe");
        n.id = "idSupportIframe",
        n.draggable = false,
        document.body.appendChild(n),
        n.style.position = "absolute",
        e ? (n.style.width = "100%",
        n.style.height = "100%") : (n.style.width = "325px",
        n.style.height = "667px",
        n.style.right = "0px",
        n.style.bottom = "0px"),
        n.style.display = "none",
        n.style.border = "none",
        n.style.backgroundColor = "#FFFFFF";
        var o = document.createElement("button");
        o.id = "idSupportCloseBtn",
        o.draggable = true,
        o.style.display = "none",
        o.style.position = "absolute";
        var i = e ? "40px" : "50px";
        o.style.width = i,
        o.style.height = i,
        e ? (o.style.left = "35px",
        o.style.top = "5px") : (o.style.right = "220px",
        o.style.bottom = "617px"),
        o.style.border = "none",
        o.style.backgroundColor = "transparent",
        o.addEventListener("click", this.hide.bind(this)),
        document.body.appendChild(o);
        var a = document.createElement("img");
        a.id = "support_close_btn",
        a.src = "support/btn_close.png",
        a.style.position = "absolute",
        a.style.width = "100%",
        a.style.height = "100%",
        a.style.left = "0px",
        a.style.top = "0px",
        o.appendChild(a)
    }
    ,
    t.prototype.show = function(e) {
        if (!this.isShow)
            try {
                this.isShow = true;
                var t = document.getElementById("idSupportIframe");
                t.style.display = "block",
                t.src = e,
                document.getElementById("idSupportCloseBtn").style.display = "block",
                document.getElementById("idSupportCloseBtnBG").style.display = "block"
            } catch (n) {
                cc.error("show url", n.message)
            }
    }
    ,
    t.prototype.hide = function() {
        this.isShow = false;
        var e = document.getElementById("idSupportIframe");
        e.src = "about:blank",
        e.style.display = "none",
        document.getElementById("idSupportCloseBtn").style.display = "none",
        document.getElementById("idSupportCloseBtnBG").style.display = "none"
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.AISupportManager = o,
module.exports = n
