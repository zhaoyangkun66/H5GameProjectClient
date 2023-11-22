let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/ShareDefine")
  , a = require("../../../Common/Define/TrackEventName")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GoldNod = null,
        t.FreeOutGame = null,
        t.FreeNotice = null,
        t.FreeInFreeGameNotice = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIFreeWindow"
    }
    ,
    t.prototype.OnShow = function(e) {
        this.OnNodeDisable(e.type)
    }
    ,
    t.prototype.OnNodeDisable = function(e) {
        this.GoldNod.active = e == i.FreeWindowType.GoldNod
     //   this.GetWndNode("glod/btn_free", this.GoldNod).active = app.GameConfigManager().IsExperienceServerShow;
        var t = app.GameConfigManager().IsExperienceServerShow ? "UI_Guide_text1" : "UI_Guide_text4";
        this.GetWndComponent("lbl", cc.Label, this.GoldNod).string = app.i18n.t(t)
       // this.FreeOutGame.active = e == i.FreeWindowType.FreeOutGame,
       // this.FreeNotice.active = e == i.FreeWindowType.FreeNotice,
       // this.FreeInFreeGameNotice.active = e == i.FreeWindowType.FreeInFreeGameNotice
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("Recharge" == e)
            return app.StoreManager().ShowStoreUI({
                in_type: a.default.PAGETRACK_EVENT_RECHARGE_GAME
            }),
            void this.CloseForm();
        "btn_free" != e && "btnSure" != e || app.DemoServerManager().EnterGame()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.OnNodeDisable(0)
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "GoldNod", undefined),
    __decorate([c(cc.Node)], t.prototype, "FreeOutGame", undefined),
    __decorate([c(cc.Node)], t.prototype, "FreeNotice", undefined),
    __decorate([c(cc.Node)], t.prototype, "FreeInFreeGameNotice", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
