let n ={} 
Object.defineProperty(n, "__esModule", {
    value: !0
});
var o =require("../../../Common/Base/BaseForm")
  , i =require("../../../Common/Define/ShareDefine")
  , l = cc._decorator
  , d = l.ccclass
  , a = l.property
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.layerWin = [],
        t.bg_node = null,
        t.icon_turbon = null,
        t.icon_turboff = null,
        t.lbl_layertips = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "SlotTipsView",
        this.bg_node = this.GetWndNode("bg"),
        this.icon_turbon = this.GetWndNode("bg/icon_turbon"),
        this.icon_turboff = this.GetWndNode("bg/icon_turboff"),
        this.lbl_layertips = this.GetWndComponent("bg/label", cc.Label)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        this.initTip()
    }
    ,
    t.prototype.initTip = function() {
        var e = this
          , t = "";
        cc.Tween.stopAllByTarget(this.bg_node),
        this.bg_node.opacity = 255,
        cc.tween(this.bg_node).to(.1, {
            scale: 1.2
        }).to(.1, {
            scale: 1
        }).delay(1).to(.5, {
            opacity: 0
        }).call(function() {
            e.UpdateClose()
        }).start(),
        this.data == i.SlotTipType.MinimumBet ? t = app.i18n.t("UI_Game840_Minimum") : this.data == i.SlotTipType.MaximumBet ? t = app.i18n.t("UI_Game840_Maximum") : this.data == i.SlotTipType.TURBO_OFF ? t = app.i18n.t("UI_Game1050_TurboSpinDisabled") : this.data == i.SlotTipType.TURBO_ON && (t = app.i18n.t("UI_Game1050_TurboSpinEnabled")),
        this.lbl_layertips.string = t,
        this.icon_turbon.active = this.data == i.SlotTipType.TURBO_ON,
        this.icon_turboff.active = this.data == i.SlotTipType.TURBO_OFF
    }
    ,
    t.prototype.UpdateClose = function() {
        this.CloseForm()
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    __decorate([a(cc.Node)], t.prototype, "layerWin", void 0),
    __decorate([d], t)
}(o.default);
n.default = r,
module.exports = n
