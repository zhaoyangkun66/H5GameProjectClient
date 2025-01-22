let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/UINameDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.timeNode = null,
        t.timeNodeH = null,
        t.timeNodeD = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIAnnouncementItem"
    }
    ,
    t.prototype.renderInfo = function(e) {
        this.timeNode = this.GetWndNode("node_time"),
        this.timeNodeH = this.GetWndNode("node_time/timeNode"),
        this.timeNodeD = this.GetWndNode("node_time/timeDayNode"),
        this.data = e;
        var t = this.node.getChildByName("node_img")
          , n = new cc.Component.EventHandler;
        n.target = this.node,
        n.component = this.JS_Name,
        n.handler = "NoticeWndEvent",
        n.customEventData = JSON.stringify(e),
        t.getComponent(cc.Button).clickEvents = [],
        t.getComponent(cc.Button).clickEvents.push(n),
        this.renderSelectContent(e, this.node),
        this.OnTimeShow()
    }
    ,
    t.prototype.renderSelectContent = function(e, t) {
        var n = e.content;
        if (1 == e.content_type)
            if (this.setWebWndVisible(false, t),
            this.setImageWndVisible(false, t),
            "" == n || null == n)
                cc.error("url = null");
            else {
                var o = cc.find("node_img", t);
                this.noticerenderImageWnd(n, o),
                this.setImageWndVisible(true, t)
            }
        else {
            this.setWebWndVisible(true, t);
            var i = n + "&token=" + app.UserManager().GetUserInfo.token;
            this.setWebUrl(i, t),
            this.setImageWndVisible(false, t)
        }
    }
    ,
    t.prototype.setWebWndVisible = function(e, t) {
        cc.find("web", t).active = e
    }
    ,
    t.prototype.setImageWndVisible = function(e, t) {
        cc.find("node_img", t).active = e
    }
    ,
    t.prototype.setWebUrl = function(e, t) {
        "" != e && null != e ? t.getChildByName("web").children[0].getComponent(cc.WebView).url = e : cc.error("url = null")
    }
    ,
    t.prototype.noticerenderImageWnd = function(e, t) {
        "" != e && null != e ? t && app.ImageUtil().LoadImage(t, e) : cc.error("url = null")
    }
    ,
    t.prototype.NoticeWndEvent = function(e, t) {
        var n = JSON.parse(t);
        if (null != n) {
            var o = n.link;
            if (o > 0)
                return app.InteractionMgr().SendWndEvent(o),
                void app.FormManager().CloseForm(i.UINameDefine.UIAnnouncement);
            var a = n.external_link;
            a && cc.sys.openURL(a)
        } else
            this.ErrLog("NoticeWndEvent ==> ")
    }
    ,
    t.prototype.OnDisable = function() {
        this.unscheduleAllCallbacks()
    }
    ,
    t.prototype.OnTimeShow = function() {
        var e = this;
        if (!this.timeNode || !this.data.start_time_stamp && !this.data.end_time_stamp)
            return this.node.active = true,
            void (this.timeNode && (this.timeNode.active = false));
        this.EndTime = this.data.end_time_stamp;
        var t = app.GameConfigManager().GetAsTime();
        this.setNodeDisable(),
        this.data.start_time_stamp && this.EndTime > t && (this.UpdateSeconds(),
        this.schedule(function() {
            e.setNodeDisable(),
            e.timeNode.active && e.UpdateSeconds()
        }, 1))
    }
    ,
    t.prototype.setNodeDisable = function() {
        var e = app.GameConfigManager().GetAsTime()
          , t = this.data.start_time_stamp && this.data.start_time_stamp < e && this.EndTime > e;
        this.timeNode.active = t,
        this.node.active = t
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
            this.node.removeFromParent(),
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
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
