let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.bg = null,
        t.logo = null,
        t.bar = null,
        t.progressBar = null,
        t.cb = null,
        t.progressEnd = 1,
        t.gid = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGameLoading",
        this.RegEvent(i.GameEventDefine.GAME_LOADING_SUCCESS, this.OnLoadingSuccess),
        this.RegEvent(i.GameEventDefine.GAME_LOADING_FAILED, this.OnLoadingFailed)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = this, t = [], n = 0; n < arguments.length; n++)
            t[n] = arguments[n];
        if (t[0]) {
            var o = app.RoomManager().GetRoomModeInfoByRoomMode(t[0]);
            if (!o)
                return this.CloseForm();
            this.gid = o.GID,
            this.setAllSprite(),
            this.progressEnd = .9,
            this.progressBar.progress = 0,
            this.schedule(this.updateProgress, .1),
            this.cb = t[1],
            this.scheduleOnce(function() {
                e.cb && e.cb()
            }, .5)
        }
    }
    ,
    t.prototype.clearAllSprite = function() {
        this.bg.getComponent(cc.Sprite).spriteFrame = null,
        this.logo.getComponent(cc.Sprite).spriteFrame = null,
        this.bar.getComponent(cc.Sprite).spriteFrame = null,
        this.progressBar.node.getComponent(cc.Sprite).spriteFrame = null
    }
    ,
    t.prototype.setAllSprite = function() {
        this.clearAllSprite();
        var e = "GameLoading/"
          , t = app.ComTool().H5Platform() ? "_V" : "_H"
          , n = e + this.gid + "_Bg" + t;
        app.ImageUtil().LoadImage(this.bg, n);
        var o = e + this.gid + "_Logo";
        app.ImageUtil().LoadImage(this.logo, o);
        var i = e + this.gid + "_Bar" + t;
        app.ImageUtil().LoadImage(this.bar, i);
        var a = e + this.gid + "_Progress" + t;
        app.ImageUtil().LoadImage(this.progressBar.node, a)
    }
    ,
    t.prototype.updateProgress = function() {
        this.progressBar.progress += .05,
        this.OnClosePro()
    }
    ,
    t.prototype.OnClosePro = function() {
        this.progressBar.progress >= this.progressEnd && this.unschedule(this.updateProgress),
        this.progressBar.progress >= 1 && this.CloseForm()
    }
    ,
    t.prototype.OnLoadingSuccess = function() {
        this.progressBar.progress = 1,
        this.OnClosePro()
    }
    ,
    t.prototype.OnLoadingFailed = function() {
        this.ErrLog("OnLoadingFailed"),
        this.unscheduleAllCallbacks(),
        app.FormManager().ShowForm(a.UINameDefine.UILoadingFail)
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.GameManager().SpliceFightDefaultForm()
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "bg", undefined),
    __decorate([c(cc.Node)], t.prototype, "logo", undefined),
    __decorate([c(cc.Node)], t.prototype, "bar", undefined),
    __decorate([c(cc.ProgressBar)], t.prototype, "progressBar", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
