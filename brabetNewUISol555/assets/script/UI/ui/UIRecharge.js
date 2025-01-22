let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.lb_hour = null,
        t.lb_minute = null,
        t.lb_second = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.LIMIT_TIME_RECHARGE, this.onLimitTimeRecharge)
    }
    ,
    t.prototype.OnEnable = function() {
        this.initTime("", "", ""),
        app.ActivityManager().RequestLimitTimeRecharge()
    }
    ,
    t.prototype.onLimitTimeRecharge = function() {
        var e = app.UserManager().GetUserRechargeActivity;
        this.LimitDateEndTime = app.ActivityManager().LimitEndTime(),
        e.status && this.LimitDateEndTime > 0 ? (this.UpdateSeconds(),
        this.schedule(this.UpdateSeconds, 1)) : this.node.active = false
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
            t <= 1 && (app.UserManager().GetUserRechargeActivity.status = 0,
            this.initTime("00", "00", "00"),
            this.node.active = false)
        }
    }
    ,
    t.prototype.initTime = function(e, t, n) {
        this.lb_hour.string = e,
        this.lb_minute.string = t,
        this.lb_second.string = n
    }
    ,
    t.prototype.OnClick = function(e) {
        "UIRecharge" == e && app.FormManager().ShowForm(a.UINameDefine.UIRechargeLimitedTime)
    }
    ,
    t.prototype.OnDisable = function() {
        this.unschedule(this.UpdateSeconds)
    }
    ,
    __decorate([c(cc.Label)], t.prototype, "lb_hour", undefined),
    __decorate([c(cc.Label)], t.prototype, "lb_minute", undefined),
    __decorate([c(cc.Label)], t.prototype, "lb_second", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
