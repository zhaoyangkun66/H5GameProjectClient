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
        return t.lblBeforeNum = null,
        t.lblAfterNum = null,
        t.lblCount = null,
        t.lblpercent = null,
        t.lblpercent2 = null,
        t.nodeTime = null,
        t.rtDesc = null,
        t.biaoqian = null,
        t.LimitDateEndTime = 0,
        t.DiffTime = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.JS_Name = "UIRechargeTime",
        this.lblAfterNum.string = "",
        this.lblCount.string = "",
        this.lblpercent.string = "",
        this.lblpercent2.string = "",
        this.rtDesc.string = "<b><color=#ffffff>" + app.i18n.t("UI.Charge_rechargetime_1") + "</c><color=#ffff></b>",
        this.RegEvent(i.GameEventDefine.CLOSE_PAY, this.onClose),
        this.RegEvent(i.GameEventDefine.GET_GOODS_LIST, this.onGetGoodsList),
        this.RegEvent(i.GameEventDefine.GET_LIMIT_RECHARGE, this.onLimitRecharge)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.DiffTime = 0,
        app.StoreManager().RequstGoodsList()
    }
    ,
    t.prototype.onGetGoodsList = function() {
        app.ActivityManager().RequstLimitRecharge()
    }
    ,
    t.prototype.onLimitRecharge = function() {
        var e = app.ActivityManager().GetLimitRechargeInfo()
          , t = 1 == Number(e.status)
          , n = 1 !== e.is_limited
          , o = app.ComUtil().CheckDateEventTimeIn(e.start_time, e.end_time, e.cur_time);
        this.LimitDateEndTime = e.end_time;
        var i = e.cur_time - Math.round(Date.now() / 1e3);
        if (i && (this.DiffTime = i),
        t && n && o) {
            var a = e.amount
              , r = a * e.percent / 100;
            this.lblAfterNum.string = "" + a,
            this.lblpercent2.string = "" + r,
            this.lblpercent.string = 1 == e.bonus_type ? app.i18n.t("Shop_Bonus") : app.i18n.t("Shop_Cash");
            var s = app.GameConfigManager().GetCurrency;
            this.lblCount.string = s + a,
            cc.find("scrollview/view/content/bg_li/button_withdraw/Background/Label", this.node).getComponent(cc.Label).string = s + a
        } else
            this.CloseForm()
    }
    ,
    t.prototype.UpdateSeconds = function() {
        if (this.node.active && this.LimitDateEndTime > 0) {
            var e = Math.round(Date.now() / 1e3) + this.DiffTime
              , t = Number(this.LimitDateEndTime) - e
              , n = Math.floor(t % 60) + "";
            Number(n) < 10 && (n = "0" + n);
            var o = Math.floor(t / 60 % 60) + "";
            Number(o) < 10 && (o = "0" + o);
            var i = Math.floor(t / 3600) + "";
            Number(i) < 10 && (i = "0" + i);
            var a = i + ":" + o + ":" + n;
            this.nodeTime.getComponent(cc.Label).string = "" + a,
            this.nodeTime.active = true,
            t <= 1 && this.CloseForm()
        }
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
        var e = app.ActivityManager().GetLimitRechargeInfo()
          , t = {
            Reward: e.amount * e.percent / 100,
            is_discount: 1,
            amount: e.amount,
            is_sale: 1,
            is_limited: 1
        };
        app.FormManager().ShowForm(a.UINameDefine.UIRechargeInfo, t)
    }
    ,
    t.prototype.onClose = function() {
        this.CloseForm()
    }
    ,
    __decorate([c(cc.Label)], t.prototype, "lblBeforeNum", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblAfterNum", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblCount", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblpercent", undefined),
    __decorate([c(cc.Label)], t.prototype, "lblpercent2", undefined),
    __decorate([c(cc.Node)], t.prototype, "nodeTime", undefined),
    __decorate([c(cc.RichText)], t.prototype, "rtDesc", undefined),
    __decorate([c(cc.Node)], t.prototype, "biaoqian", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
