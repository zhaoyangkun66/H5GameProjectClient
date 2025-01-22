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
        return t.lblNum = null,
        t.lblTotal = null,
        t.lblReward = null,
        t.lblCount = null,
        t.lblPercent = null,
        t.rtDesc = null,
        t.biaoqian = null,
        t.send_percent = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.JS_Name = "UIDiscount",
        this.lblNum.string = "",
        this.lblTotal.string = "",
        this.lblReward.string = "",
        this.rtDesc.string = "",
        this.lblCount.string = "",
        this.lblPercent.string = "",
        this.RegEvent(i.GameEventDefine.CLOSE_PAY, this.onClose),
        this.RegEvent(i.GameEventDefine.GET_GOODS_LIST, this.onGetGoodsList),
        this.RegEvent(i.GameEventDefine.GET_RECHARGE_REWARD, this.onGetRechargeReward)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.StoreManager().RequstGoodsList()
    }
    ,
    t.prototype.onGetGoodsList = function() {
        app.ActivityManager().RequstRechargeReward()
    }
    ,
    t.prototype.onGetRechargeReward = function() {
        var e = app.ActivityManager().GetRechargeRewardInfo();
        e ? this.renderRewardInfo(e) : this.CloseForm()
    }
    ,
    t.prototype.renderRewardInfo = function(e) {
        var t, n = e.gold, o = e.reward, i = 100 * Number(Number(o) / Number(n));
        this.lblNum.string = "" + n,
        this.lblReward.string = "" + o,
        this.send_percent = app.ScoreUtil().fix_float_number(i),
        t = 1 == e.bonus_type ? app.i18n.t("Shop_Bonus") : app.i18n.t("Shop_Cash"),
        cc.find("bonus/label", this.biaoqian).getComponent(cc.Label).string = "",
        this.lblPercent.string = t;
        var a = app.GameConfigManager().GetCurrency;
        this.lblCount.string = a + n,
        cc.find("/scrollview/view/content/bg_li/button_withdraw/Background/Label", this.node).getComponent(cc.Label).string = a + n,
        this.rtDesc.string = "<color=#ffffff>" + app.i18n.t("UI.Charge_discount_2") + "</c><color=#ffff>  " + a + " " + n + " </color><color=#ffffff>," + app.i18n.t("UI.Charge_discount_2") + "</color>"
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("button_withdraw" != e)
            ;
        else {
            if (app.UserManager().GetIsOfficialPopup())
                return;
            this.goToEvent()
        }
    }
    ,
    t.prototype.goToEvent = function() {
        var e = app.ActivityManager().GetRechargeRewardInfo()
          , t = {
            Reward: e.reward,
            is_discount: 1,
            amount: e.gold,
            send_percent: 0
        };
        app.FormManager().ShowForm(a.UINameDefine.UIRechargeInfo, t)
    }
    ,
    t.prototype.onClose = function() {
        this.CloseForm()
    }
    ,
    __decorate([c(cc.Label)], t.prototype, "lblNum", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblTotal", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblReward", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblCount", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblPercent", undefined),
    __decorate([c(cc.RichText)], t.prototype, "rtDesc", undefined),
    __decorate([c(cc.Node)], t.prototype, "biaoqian", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
