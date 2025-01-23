let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.menu
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.activityInfo = null,
        t.goodsChannel = null,
        t
    }
    return __extends(t, e),
    t.prototype.UpdateActivity = function(e, t) {
        if (this.goodsChannel = t,
        e) {
            this.node.active = true;
            var n = 1 == e.tip_time_switch
              , o = 1 == e.tip_count_switch;
            if (this.ui.lb_activityNum.node.active = o,
            this.ui.lb_tit.string = e.name,
            n) {
                var i = e.start_time_stamp
                  , a = e.end_time_stamp;
                i && a && this.CheckDateEvent(i, a) && (this.activityInfo = e,
                this.schedule(this.UpdateTime, 1))
            }
            if (o) {
                var r = e.use_num + "/" + e.total_num;
                this.ui.lb_activityNum.string = "" + r
            }
        } else
            this.node.active = false
    }
    ,
    t.prototype.CheckDateEvent = function(e, t) {
        var n = this.goodsChannel.sale.cur_time - Math.round(Date.now() / 1e3);
        n = n || 0;
        var o = Math.round(Date.now() / 1e3) + n;
        return !(!e || !t || o > t || o < e)
    }
    ,
    t.prototype.UpdateTime = function() {
        if (this.activityInfo) {
            var e = this.goodsChannel.sale.cur_time - Math.round(Date.now() / 1e3);
            e = e || 0;
            var t = this.activityInfo.end_time_stamp - (Math.round(Date.now() / 1e3) + e);
            if (t < 1)
                return this.unscheduleAllCallbacks(),
                void (this.node.active = false);
            this.ui.lb_tit.string = this.activityInfo.name + "    " + app.TimeUtil().FormatTimeWithNum(t);
            var n = this.activityInfo.use_num + "/" + this.activityInfo.total_num;
            this.ui.lb_activityNum.string = "" + n
        }
    }
    ,
    t.prototype.OnDisable = function() {
        this.unscheduleAllCallbacks()
    }
    ,
    __decorate([a, r("UI/Deposit_Withdraw/UIAccMessage")], t)
}(o.default);
n.default = s,
module.exports = n
