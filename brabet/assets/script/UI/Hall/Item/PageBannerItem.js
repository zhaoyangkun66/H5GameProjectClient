let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.nodeSp = this.GetWndComponent("img", cc.Sprite),
        this.timeNode = this.GetWndNode("img/node_time"),
        this.timeNodeH = this.GetWndNode("img/node_time/timeNode"),
        this.timeNodeD = this.GetWndNode("img/node_time/timeDayNode")
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.renderInfo = function(e) {
        this.data = e;
        var t = false;
        app.PlaceholderManager().BannerItemNum > 0 && (app.PlaceholderManager().BannerItemNum--,
        t = true),
        app.HallManager().LoadImageIncrease(this.nodeSp.node, e.image, t),
        this.OnTimeShow()
    }
    ,
    t.prototype.OnDisable = function() {
        this.unscheduleAllCallbacks()
    }
    ,
    t.prototype.OnTimeShow = function() {
        var e = this;
        this.timeNode && (this.data.start_time_stamp || this.data.end_time_stamp) ? (this.EndTime = this.data.end_time_stamp,
        this.UpdateSeconds(),
        this.timeNode.active = true,
        this.schedule(function() {
            e.UpdateSeconds()
        }, 1)) : this.timeNode && (this.timeNode.active = false)
    }
    ,
    t.prototype.UpdateSeconds = function() {
        if (this.EndTime > 0) {
            var e = app.GameConfigManager().GetAsTime()
              , t = Number(this.EndTime) - e
              , n = Math.floor(t / 3600) + "";
            Number(n) < 10 && (n = "0" + n);
            var o = Math.floor(t % 60) + "";
            Number(o) < 10 && (o = "0" + o);
            var i = Math.floor(t / 60 % 60) + "";
            if (Number(i) < 10 && (i = "0" + i),
            Number(n) > 24) {
                this.setTimeTypeShow(true);
                var a = Math.floor(Number(n) / 24)
                  , r = "" + Number(n) % 24;
                Number(r) < 10 && (r = "0" + r),
                this.initDayTime("" + a, r)
            } else
                this.setTimeTypeShow(false),
                this.initTime(n, i, o);
            t <= 1 && (this.initTime("00", "00", "00"),
            this.timeNode.active = false,
            this.unscheduleAllCallbacks())
        }
    }
    ,
    t.prototype.initTime = function(e, t, n) {
        this.GetWndComponent("lb_hour", cc.Label, this.timeNodeH).string = e,
        this.GetWndComponent("lb_minute", cc.Label, this.timeNodeH).string = t,
        this.GetWndComponent("lb_second", cc.Label, this.timeNodeH).string = n
    }
    ,
    t.prototype.initDayTime = function(e, t) {
        this.GetWndComponent("lb_hour", cc.Label, this.timeNodeD).string = e,
        this.GetWndComponent("lb_minute", cc.Label, this.timeNodeD).string = t
    }
    ,
    t.prototype.setTimeTypeShow = function(e) {
        this.timeNodeD.active = e,
        this.timeNodeH.active = !e
    }
    ,
    t.prototype.OnClick = function() {
        var e = this.data.link;
        if (e > 0)
            app.InteractionMgr().SendWndEvent(e);
        else {
            var t = this.data.external_link;
            t && cc.sys.openURL(t)
        }
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
