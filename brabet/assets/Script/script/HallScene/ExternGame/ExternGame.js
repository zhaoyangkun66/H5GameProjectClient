let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/TrackEventName")
  , i = require("../../common/GIDTool")
  , a = require("../../common/Orientation")
  , r = function() {
    function e() {
        this.isInit = false,
        this.isLoaded = false,
        this.scoreEnd = false,
        this.gameUpInfo = null,
        this.timer = 0,
        this.disLeft = 0,
        this.disTop = 0
    }
    return e.prototype.init = function(e, t) {
        undefined === t && (t = true),
        this.gameUpInfo = e;
        var n = e.base_url ? e.base_url : e.url;
        cc.log("init " + n),
        cc.sys.isBrowser ? (this.scoreEnd = t,
        this.isInit || (this.isInit = true,
        this.initWebIframe(),
        this.initLoadingIframe(),
        this.initBtn(),
        this.initTips(),
        this.initCashLabel(),
        window.addEventListener("message", this.OnMessage.bind(this), false)),
        app.EventTrackManager().LogEvent(o.default.ENTER_GAME, {
            gid: app.ExternGameManager().Track_gid
        }),
        this.showLoading(),
        this.show(n)) : cc.error("ExternGame init failed: " + n)
    }
    ,
    e.prototype.OnMessage = function(e) {
        cc.log("ExternGame::OnMessage");
        try {
            var t = e.data;
            if (t && "globalGames" == t.type)
                this.hideAll();
            else if (this.gameUpInfo && this.gameUpInfo.gid == i.GIDTool.PINGBO) {
                var n = this.gameUpInfo.cross_domain_url;
                if (!n)
                    return void cc.error("Invalid gameUpInfo cross_domain_url");
                if (e.origin && e.origin.toLowerCase().endsWith(n))
                    switch (t.action) {
                    case "OPEN_WINDOW":
                        window.open(t.url)
                    }
            }
        } catch (o) {
            cc.log(o.message)
        }
    }
    ,
    e.prototype.initWebIframe = function() {
        var e = this
          , t = document.createElement("iframe");
        t.id = "Game",
        t.draggable = false,
        document.body.appendChild(t),
        t.style.position = "absolute",
        t.style.width = "100%",
        t.style.height = "100%",
        t.style.display = "none",
        t.style.border = "none",
        t.style.backgroundColor = "#FFFFFF",
        t.onload = function() {
            cc.log("ExternGame url loaded"),
            e.isLoaded = true,
            e.hideLoading(),
            e.timer && clearTimeout(e.timer),
            e.timer = window.setTimeout(function() {
                e.renderCashLabel()
            }, 100)
        }
        ,
        t.onerror = function() {
            cc.error("ExternGame iframe show error.")
        }
    }
    ,
    e.prototype.initLoadingIframe = function() {
        var e = document.createElement("iframe");
        e.id = "extern_loading",
        document.body.appendChild(e),
        e.draggable = false,
        e.style.position = "absolute",
        e.style.width = "100%",
        e.style.height = "100%",
        e.style.display = "none",
        e.style.border = "none",
        e.style.backgroundColor = "transparent"
    }
    ,
    e.prototype.UpdateUserInfo = function() {
        this.isLoaded && this.renderCashLabel()
    }
    ,
    e.prototype.renderCashLabel = function() {
        this.gameUpInfo && this.gameUpInfo.gid == i.GIDTool.PINGBO ? (document.getElementById("id_label_cash").innerHTML = "R$&nbsp;&nbsp;" + app.ExternGameManager().UserCash,
        this.SetCashLabelVisible(true)) : this.SetCashLabelVisible(false)
    }
    ,
    e.prototype.SetCashLabelVisible = function(e) {
        document.getElementById("id_cash_root").style.display = e ? "" : "none"
    }
    ,
    e.prototype.initCashLabel = function() {
        var e = document.createElement("div");
        e.id = "id_cash_root",
        e.style.width = "100px",
        e.style.height = "100px",
        e.style.position = "absolute",
        e.style.right = "60px",
        e.style.top = "0px",
        e.style.backgroundColor = "transparent",
        document.body.appendChild(e);
        var t = document.createElement("div");
        t.id = "id_label_cash",
        t.style.position = "absolute",
        t.style.right = "20px",
        t.style.top = "11px",
        t.style.color = "white",
        t.style.fontSize = "20px",
        e.appendChild(t),
        this.SetCashLabelVisible(false)
    }
    ,
    e.prototype.initBtn = function() {
        var e = document.createElement("button");
        e.id = "BtnBack",
        e.draggable = true,
        e.style.display = "none",
        e.style.position = "absolute";
        var t = cc.sys.platform == cc.sys.DESKTOP_BROWSER ? "90px" : "40px";
        e.style.width = t,
        e.style.height = t,
        e.style.left = "60px",
        e.style.top = "30px",
        e.style.border = "none",
        e.style.backgroundColor = "transparent",
        e.addEventListener("click", this.showTips.bind(this)),
        e.addEventListener("dragstart", this.dragstart.bind(this)),
        e.addEventListener("dragend", this.dragend.bind(this)),
        e.addEventListener("touchmove", this.touchmove.bind(this)),
        e.addEventListener("touchstart", this.touchstart.bind(this)),
        document.body.appendChild(e);
        var n = document.createElement("img");
        n.id = "return_btn2",
        n.style.position = "absolute",
        n.style.width = "100%",
        n.style.height = "100%",
        n.style.left = "0px",
        n.style.top = "0px",
        e.appendChild(n)
    }
    ,
    e.prototype.touchstart = function(e) {
        var t = e.touches[0];
        this.setDisFun(t.clientX, t.clientY)
    }
    ,
    e.prototype.touchmove = function(e) {
        var t = e.touches[0]
          , n = t.clientX - this.disLeft
          , o = t.clientY - this.disTop;
        this.onBtnEndFun(o, n)
    }
    ,
    e.prototype.dragstart = function(e) {
        this.setDisFun(e.clientX, e.clientY)
    }
    ,
    e.prototype.dragend = function(e) {
        var t = e.clientX - this.disLeft
          , n = e.clientY - this.disTop;
        this.onBtnEndFun(n, t)
    }
    ,
    e.prototype.setDisFun = function(e, t) {
        var n = document.getElementById("BtnBack");
        this.disLeft = e - n.offsetLeft,
        this.disTop = t - n.offsetTop
    }
    ,
    e.prototype.onBtnEndFun = function(e, t) {
        var n = document.getElementById("BtnBack");
        e < 0 ? e = 0 : e > document.body.clientHeight - n.offsetHeight && (e = document.body.clientHeight - n.offsetHeight),
        t < 0 ? t = 0 : t > document.body.clientWidth - n.offsetWidth && (t = document.body.clientWidth - n.offsetWidth),
        n.style.left = t + "px",
        n.style.top = e + "px",
        app.ExternGameManager().setExternGameCacheLocalData(e, t)
    }
    ,
    e.prototype.initTips = function() {
        var e = document.createElement("div");
        e.id = "TIP",
        e.style.position = "absolute",
        e.style.width = "100%",
        e.style.height = "100%",
        e.style.display = "none",
        document.body.appendChild(e);
        var t = document.createElement("div");
        t.id = "layer",
        t.style.position = "absolute",
        t.style.width = "331.7px",
        t.style.height = "198.7px",
        t.style.left = "50%",
        t.style.top = "50%",
        t.style.transform = "translate(-50%,-50%)",
        t.style.display = "flex",
        t.style.flexDirection = "column",
        e.appendChild(t);
        var n = document.createElement("img");
        n.id = "bg",
        n.src = "externGame/bg_layer.png",
        n.style.position = "absolute",
        n.style.width = "100%",
        n.style.height = "100%",
        n.style.top = "0px",
        n.style.left = "0px",
        t.appendChild(n);
        var o = document.createElement("div");
        o.id = "tit",
        this.getInputTxt(o, "UI.Tips"),
        o.style.position = "absolute",
        o.style.left = "50%",
        o.style.top = "10%",
        o.style.transform = "translate(-50%,-50%)",
        o.style.color = "#FFE536",
        o.style.fontSize = "20px",
        t.appendChild(o);
        var i = document.createElement("div");
        i.id = "text_tips",
        this.getInputTxt(i, "UI_ExternGame"),
        i.style.position = "absolute",
        i.style.top = "30%",
        i.style.color = "#ffffff",
        i.style.fontSize = "18px",
        i.style.maxWidth = "300px",
        i.style.alignSelf = "center",
        i.style.wordBreak = "break-word",
        i.style.textAlign = "center",
        t.appendChild(i);
        var a = document.createElement("button");
        a.id = "btn_enter",
        a.style.position = "absolute",
        a.style.width = "40%",
        a.style.height = "20%",
        a.style.left = "5%",
        a.style.top = "70%",
        a.style.border = "none",
        a.style.backgroundColor = "transparent",
        a.addEventListener("click", this.hideAll.bind(this)),
        t.appendChild(a);
        var r = document.createElement("img");
        r.id = "btnOkBg",
        r.src = "externGame/btn_bg.png",
        r.style.position = "absolute",
        r.style.width = "100%",
        r.style.height = "100%",
        r.style.left = "0px",
        r.style.top = "0px",
        a.appendChild(r);
        var s = document.createElement("div");
        s.id = "btnOk_txt",
        this.getInputTxt(s, "General.General_1"),
        s.style.position = "absolute",
        s.style.top = "50%",
        s.style.left = "50%",
        s.style.transform = "translate(-50%,-50%)",
        s.style.fontSize = "18px",
        s.style.color = "#FFFB95",
        a.appendChild(s);
        var c = document.createElement("button");
        c.id = "btn_enter Cancel",
        c.style.position = "absolute",
        c.style.width = "40%",
        c.style.height = "20%",
        c.style.left = "55%",
        c.style.top = "70%",
        c.style.border = "none",
        c.style.backgroundColor = "transparent",
        c.addEventListener("click", this.hideTips.bind(this)),
        t.appendChild(c);
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
        this.getInputTxt(p, "General.General_2"),
        p.style.position = "absolute",
        p.style.left = "50%",
        p.style.top = "50%",
        p.style.transform = "translate(-50%,-50%)",
        p.style.fontSize = "18px",
        p.style.color = "#FFDADA",
        c.appendChild(p)
    }
    ,
    e.prototype.onRefreshLabel = function() {
        var e = document.getElementById("tit");
        this.getInputTxt(e, "UI.Tips");
        var t = document.getElementById("text_tips");
        this.getInputTxt(t, "UI_ExternGame");
        var n = document.getElementById("btnOk_txt");
        this.getInputTxt(n, "General.General_1");
        var o = document.getElementById("btnCancel_txt");
        this.getInputTxt(o, "General.General_2")
    }
    ,
    e.prototype.getInputTxt = function(e, t) {
        e.innerHTML = app.i18n.t(t)
    }
    ,
    e.prototype.show = function(e) {
        try {
            var t = document.getElementById("Game");
            t.style.display = "block",
            t.src = e
        } catch (n) {
            cc.error("show url", n.message)
        }
    }
    ,
    e.prototype.showLoading = function() {
        var e = document.getElementById("extern_loading");
        e.style.display = "block",
        e.src = "externGame/index.html",
        this.setBackBtnInfo()
    }
    ,
    e.prototype.setBackBtnInfo = function() {
        try {
            var e = app.ExternGameManager().GetBackIconInfo(this.gameUpInfo.gid);
            document.getElementById("return_btn2").src = e.url ? e.url : "externGame/return_btn.png";
            var t = document.getElementById("BtnBack");
            t.style.display = "block";
            var n = e.position;
            t.style.left = n.left >= 0 ? n.left + "px" : "60px",
            t.style.top = n.top >= 0 ? n.top + "px" : "30px"
        } catch (o) {
            cc.error("show url", o.message)
        }
    }
    ,
    e.prototype.showTips = function() {
        this.onRefreshLabel(),
        document.getElementById("TIP").style.display = "block"
    }
    ,
    e.prototype.hideLoading = function() {
        document.getElementById("extern_loading").style.display = "none"
    }
    ,
    e.prototype.hideTips = function() {
        document.getElementById("TIP").style.display = "none"
    }
    ,
    e.prototype.hideAll = function() {
        this.scoreEnd && (this.gameUpInfo.is_experience_server || app.ExternGameManager().RequestGameDown(true),
        app.HallManager().GetFreeOutGameWindow()),
        this.gameUpInfo = null,
        this.isLoaded = false;
        var e = document.getElementById("Game");
        e.src = "about:blank",
        e.style.display = "none",
        document.getElementById("BtnBack").style.display = "none",
        this.SetCashLabelVisible(false),
        this.timer && clearTimeout(this.timer),
        this.hideTips(),
        this.hideLoading(),
        app.ComTool().CheckPlatform() || a.default.setOrientation(cc.find("Canvas").getComponent(cc.Canvas), "V")
    }
    ,
    e
}();
n.default = r,
module.exports = n
