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
        return t.content = null,
        t.RechargeItem = null,
        t.lb_hour = null,
        t.lb_minute = null,
        t.lb_second = null,
        t.icons = [],
        t.rtDesc = null,
        t.LimitDateEndTime = 0,
        t.ActivityEnd = false,
        t.refreshTime = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        var e = this;
        this.JS_Name = "UIRechargeLimitedTime",
        this.RegEvent(i.GameEventDefine.UPDATE_USER_VIP, this.onGetGoodsList),
        this.RegEvent(i.GameEventDefine.LIMIT_TIME_RECHARGE, this.onLimitTimeRecharge),
        this.RegEvent(i.GameEventDefine.COMPANY_PAYMENT, function() {
            e.refreshTime = true,
            e.onGetGoodsList()
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.setBtnColorLbl(true),
        this.unschedule(this.UpdateSeconds),
        this.initTime("", "", ""),
        this.refreshTime = false,
        this.rechargeData = null,
        this.content.active = false;
        var n = app.StoreManager().GetGoodsList;
        n || app.StoreManager().RequstGoodsList(),
        this.onLimitTimeRecharge()
    }
    ,
    t.prototype.onGetGoodsList = function() {
        app.ActivityManager().RequestLimitTimeRecharge()
    }
    ,
    t.prototype.onLimitTimeRecharge = function() {
        var e = app.ActivityManager().GetLimitTimeRecharge;
        if (this.content.removeAllChildren(),
        this.content.active = true,
        this.LimitDateEndTime = app.ActivityManager().LimitEndTime(),
        e.cur_time < this.LimitDateEndTime) {
            this.refreshTime || (this.UpdateSeconds(),
            this.schedule(this.UpdateSeconds, 1));
            var t = e.list;
            this.rtDesc.string = e.content;
            for (var n = 0; n < t.length; n++) {
                var o = t[n]
                  , i = cc.instantiate(this.RechargeItem);
                i.data = {
                    Reward: o.send_amount,
                    amount: o.amount
                },
                this.GetWndComponent("Background/num/lb_num", cc.Label, i).string = "+ " + o.send_amount,
                this.GetWndComponent("Background/lb_amount", cc.Label, i).string = "" + o.amount;
                var a = o.amount < 100 ? 0 : o.amount < 1e3 ? 1 : 2;
                this.GetWndComponent("Background/spr_icon", cc.Sprite, i).spriteFrame = this.icons[a];
                var r = this.GetWndNode("frequency", i);
                this.GetWndComponent("lb_left", cc.Label, r).string = "" + o.use_times,
                this.GetWndComponent("lb_right", cc.Label, r).string = "" + o.limit_times;
                var s = Number(o.use_times) != Number(o.limit_times);
                r.active = s,
                this.GetWndNode("SoldOut", i).active = !s,
                i.getComponent(cc.Button).interactable = s,
                i.is_show = s,
                i.active = true,
                i.parent = this.content
            }
            this.GetCheckItem()
        } else
            app.SysNotifyManager().ShowToast("UI_Rechargetip2"),
            this.ActivityEnd = true,
            this.CloseForm()
    }
    ,
    t.prototype.GetCheckItem = function() {
        var e = this.content.children;
        if (this.refreshTime && this.rechargeData)
            for (var t = 0; t < e.length; t++) {
                var n = e[t];
                if (this.rechargeData.amount == n.data.amount) {
                    var o = n.is_show;
                    this.GetWndNode("checkmark", n).active = o,
                    this.rechargeData = o ? n.data : null;
                    break
                }
            }
        if (!this.rechargeData)
            for (t = 0; t < e.length; t++)
                if (o = (n = e[t]).is_show) {
                    this.GetWndNode("checkmark", n).active = o,
                    this.rechargeData = n.data;
                    break
                }
        this.setBtnColorLbl(null != this.rechargeData)
    }
    ,
    t.prototype.setBtnColorLbl = function(e) {
        var t = this.GetWndNode("layer/btn_recharge");
        t.getComponent(cc.Button).interactable = e,
        this.GetWndNode("Background", t).color = e ? new cc.Color(255,255,255) : new cc.Color(101,101,101);
        var n = this.GetWndNode("Background/lb_recharge", t);
        n.color = e ? new cc.Color(255,255,255) : new cc.Color(101,101,101),
        n.getComponent(cc.Label).string = e ? app.i18n.t("UI_To_recharge") : app.i18n.t("UI_Come_again_tomorrow")
    }
    ,
    t.prototype.UpdateSeconds = function() {
        if (this.LimitDateEndTime > 0) {
            var e = Math.round(Date.now() / 1e3) + app.ActivityManager().GetDiffTime
              , t = Number(this.LimitDateEndTime) - e
              , n = Math.floor(t % 60) + "";
            Number(n) < 10 && (n = "0" + n);
            var o = Math.floor(t / 60 % 60) + "";
            Number(o) < 10 && (o = "0" + o);
            var i = Math.floor(t / 3600) + "";
            Number(i) < 10 && (i = "0" + i),
            this.initTime(i, o, n),
            t <= 1 && (this.initTime("00", "00", "00"),
            this.ActivityEnd = true,
            this.unschedule(this.UpdateSeconds))
        }
    }
    ,
    t.prototype.initTime = function(e, t, n) {
        this.lb_hour.string = e,
        this.lb_minute.string = t,
        this.lb_second.string = n
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if ("tog_money" == e)
            return this.GetAllBtnMarkHide(),
            this.GetWndNode("checkmark", t).active = true,
            void (this.rechargeData = t.data);
        if ("btn_recharge" == e) {
            if (app.UserManager().GetIsOfficialPopup())
                return;
            return this.ActivityEnd ? (app.SysNotifyManager().ShowToast("UI_Rechargetip2"),
            void this.CloseForm()) : this.rechargeData ? void this.goToEvent() : void app.SysNotifyManager().ShowToast("UI_Rechargetip1")
        }
    }
    ,
    t.prototype.GetAllBtnMarkHide = function() {
        var e = this;
        this.content.children.forEach(function(t) {
            e.GetWndNode("checkmark", t).active = false
        })
    }
    ,
    t.prototype.goToEvent = function() {
        var e = {
            Reward: this.rechargeData.Reward,
            is_discount: 1,
            amount: this.rechargeData.amount,
            is_sale: 1,
            is_limited: 1,
            is_limit_time: 1
        };
        app.FormManager().ShowForm(a.UINameDefine.UIRechargeInfo, e)
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.unschedule(this.UpdateSeconds)
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "content", undefined),
    __decorate([c(cc.Node)], t.prototype, "RechargeItem", undefined),
    __decorate([c(cc.Label)], t.prototype, "lb_hour", undefined),
    __decorate([c(cc.Label)], t.prototype, "lb_minute", undefined),
    __decorate([c(cc.Label)], t.prototype, "lb_second", undefined),
    __decorate([c([cc.SpriteFrame])], t.prototype, "icons", undefined),
    __decorate([c(cc.RichText)], t.prototype, "rtDesc", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
