let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.vipRichtext = null,
        t.lbl_bonus = null,
        t.lbl_Week_gold = null,
        t.lbl_Month_gold = null,
        t.lbl_VIPLevel = null,
        t.animation = null,
        t.spine = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIUpgrade",
        this.RegEvent(i.GameEventDefine.VIP_LIST, this.onVipInfo),
        this.animation = cc.find("btn_upgrade", this.node).getComponent(cc.Animation),
        this.spine = cc.find("btn_upgrade/level/VIP", this.node).getComponent(sp.Skeleton),
        this.animation.on("finished", this.SpinePlayEnd, this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.VIPManager().VIPList ? this.onVipInfo() : app.VIPManager().RequestVipList(),
        cc.find("btn_bg", this.node).active = false,
        this.animation.play(),
        this.spine.setAnimation(0, "animation", false)
    }
    ,
    t.prototype.SpinePlayEnd = function() {
        cc.find("btn_bg", this.node).active = true
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_bg" != e)
            return "btn_ok1" == e ? (this.CloseForm(),
            void app.FormManager().ShowForm(a.UINameDefine.UIVIP)) : undefined;
        this.CloseForm()
    }
    ,
    t.prototype.onVipInfo = function() {
        var e = app.VIPManager().VIPList
          , t = app.VIPManager().getVipUpgradeData();
        if (e && t) {
            var n = e.list[Number(t.vip_id) - 1];
            this.lbl_bonus.string = n.grade_gold,
            this.lbl_Week_gold.string = n.week_gold,
            this.lbl_Month_gold.string = n.month_gold,
            this.lbl_VIPLevel.string = n.name.replace("VIP", "");
            var o = e.list[Number(t.vip_id)];
            if (o) {
                var i = app.i18n.t("UI_UpgradeNextLvRichText");
                i = (i = (i = i.replace("{VIPLV}", o.name)).replace("{MINRECHARGE}", "" + o.min_recharge)).replace("{MINBET}", o.min_bet),
                this.vipRichtext.getComponent(cc.RichText).string = i
            } else
                this.vipRichtext.active = false;
            app.VIPManager().delVipUpgradeData()
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.FormManager().ShowNextQueueForm("hall")
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "vipRichtext", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_bonus", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_Week_gold", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_Month_gold", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_VIPLevel", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
