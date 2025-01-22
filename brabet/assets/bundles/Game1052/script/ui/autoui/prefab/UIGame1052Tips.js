let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
  , o = require("../../../Game1052Define")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , l = function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.icon_turbon = null,
        e.icon_turboff = null,
        e.lbl_layertips = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGame1052Tips",
        this.icon_turbon = this.GetWndNode("bg/icon_turbon"),
        this.icon_turboff = this.GetWndNode("bg/icon_turboff"),
        this.lbl_layertips = this.GetWndComponent("bg/label", cc.Label)
    }
    ,
    e.prototype.OnShow = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e];
        this.data = t[0],
        this.initTip()
    }
    ,
    e.prototype.initTip = function() {
        var t = this
          , e = "";
        cc.tween(this.GetWndNode("bg")).to(.2, {
            scale: 1.2,
            opacity: 255
        }).to(.2, {
            scale: .9
        }).to(.1, {
            scale: 1
        }).start(),
        this.data == o.Game1052TipsType.MinimumBet ? e = app.i18n.t("UI_Game1050_Minimum") : this.data == o.Game1052TipsType.MaximumBet ? e = app.i18n.t("UI_Game1050_Maximum") : this.data == o.Game1052TipsType.TURBO_OFF ? e = app.i18n.t("UI_Game1050_TurboSpinDisabled") : this.data == o.Game1052TipsType.TURBO_ON && (e = app.i18n.t("UI_Game1050_TurboSpinEnabled")),
        this.lbl_layertips.string = e,
        this.icon_turbon.active = this.data == o.Game1052TipsType.TURBO_ON,
        this.icon_turboff.active = this.data == o.Game1052TipsType.TURBO_OFF,
        this.unscheduleAllCallbacks(),
        this.scheduleOnce(function() {
            t.UpdateClose()
        }, 2)
    }
    ,
    e.prototype.UpdateClose = function() {
        this.CloseForm()
    }
    ,
    e.prototype.OnClick = function() {}
    ,
    __decorate([r], e)
}(n.default);
i.default = l,
module.exports = i
