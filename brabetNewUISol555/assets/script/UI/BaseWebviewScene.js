let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/TrackEventName")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.webView = null,
        t.newWebView = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.Log("BaseWebviewScene onLoad"),
        this.RegSystemEvent("e_back_hall", this.onBtnBack),
        this.RegSystemEvent(i.GameEventDefine.GAME_EVENT_SHOW, this.onGameEventShow)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.EventTrackManager().LogEvent(a.default.ENTER_GAME, {
            gid: app.ExternGameManager().Track_gid
        }),
        this.newWebView = cc.instantiate(this.webView.node),
        this.newWebView.active = true,
        this.node.addChild(this.newWebView),
        this.newWebView.on("loaded", this.onWebviewLoaded, this),
        this.renderVideoGame(),
        this.ChangeWebViewDivTimer()
    }
    ,
    t.prototype.onGameEventShow = function() {
        app.SoundManager().PauseAll()
    }
    ,
    t.prototype.onWebviewLoaded = function() {
        var e = cc.winSize
          , t = this.webView.node;
        t.x = 0,
        t.width = e.width,
        t.height = e.height,
        app.SoundManager().PauseAll(),
        this.Log("game landscape onWebviewLoaded")
    }
    ,
    t.prototype.renderVideoGame = function() {
        var e = app.ExternGameManager().GetExternGameUrl;
        this.Log("game url = " + e),
        this.newWebView.getComponent(cc.WebView).url = e
    }
    ,
    t.prototype.onBtnBack = function() {
        this.leaveGame()
    }
    ,
    t.prototype.leaveGame = function() {
        this.newWebView.destroy(),
        app.GameManager().BackHallScene()
    }
    ,
    t.prototype.ChangeWebViewDivTimer = function() {
        var e = this;
        cc.sys.isBrowser && (this.schedule(this.ChangeWebViewDiv, .1),
        this.scheduleOnce(function() {
            e.unschedule(e.ChangeWebViewDiv)
        }, 10))
    }
    ,
    t.prototype.ChangeWebViewDiv = function() {
        try {
            var e = this.newWebView.getComponent(cc.WebView)._impl;
            e._div && (e._div.style.width = "100%",
            e._div.style.height = "100%",
            e._div.style.transform = "",
            e._div.style["-webkit-transform"] = "")
        } catch (t) {
            this.ErrLog("ChangeWebViewDiv  Error")
        }
    }
    ,
    __decorate([c(cc.WebView)], t.prototype, "webView", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
