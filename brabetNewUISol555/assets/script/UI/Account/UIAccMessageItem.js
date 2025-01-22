let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.node_time = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIAccMessageItem"
    }
    ,
    t.prototype.renderInfo = function(e) {
        var t = this;
        this.data = e,
        this.EndTime = e.end_time_stamp;
        var n = app.GameConfigManager().GetAsTime()
          , o = e.start_time_stamp && e.start_time_stamp < n && this.EndTime > n;
        this.node_time.active = o,
        this.OnDataLbl(),
        e.start_time_stamp && this.EndTime > n && (this.UpdateSeconds(),
        this.schedule(function() {
            t.node_time.active = o,
            t.node_time.active && t.UpdateSeconds(),
            t.OnDataLbl()
        }, 1))
    }
    ,
    t.prototype.OnUpdateInfo = function(e) {
        this.data = e,
        this.OnDataLbl()
    }
    ,
    t.prototype.OnDataLbl = function() {
        this.GetWndComponent("lb_tit", cc.Label).string = this.data.title.length > 26 ? this.data.title.substring(0, 26) + "..." : this.data.title,
        this.GetWndComponent("lb_num", cc.Label).string = "(" + this.data.num + "/" + this.data.totle_num + ")"
    }
    ,
    t.prototype.UpdateSeconds = function() {
        if (this.EndTime > 0) {
            var e = app.GameConfigManager().GetAsTime()
              , t = Number(this.EndTime) - e
              , n = Math.floor(t % 60) + "";
            Number(n) < 10 && (n = "0" + n);
            var o = Math.floor(t / 60 % 60) + "";
            Number(o) < 10 && (o = "0" + o);
            var i = Math.floor(t / 3600) + "";
            Number(i) < 10 && (i = "0" + i),
            this.initTime(i, o, n),
            t <= 1 && (this.initTime("00", "00", "00"),
            this.node_time.active = false,
            this.unscheduleAllCallbacks())
        }
    }
    ,
    t.prototype.initTime = function(e, t, n) {
        this.GetWndComponent("lb_hour", cc.Label, this.node_time).string = e,
        this.GetWndComponent("lb_minute", cc.Label, this.node_time).string = t,
        this.GetWndComponent("lb_second", cc.Label, this.node_time).string = n
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "node_time", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
