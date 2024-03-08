let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.conCode = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIRedeemCode",
        this.RegEvent(i.GameEventDefine.GET_OPEN_REDBAG, this.On_OpenRedBag)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.node.scale = app.ComTool().H5Platform() ? 1 : .7
    }
    ,
    t.prototype.On_OpenRedBag = function(e) {
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI_Reward")
        })
    }
    ,
    t.prototype.OnSendRedBag = function() {
        app.ActivityManager().RequestOpenRedBag(this.conCode.string)
    }
    ,
    t.prototype.OnClick = function(e) {
        "receive" != e || this.OnSendRedBag()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([s(cc.EditBox)], t.prototype, "conCode", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
