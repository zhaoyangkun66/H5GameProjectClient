let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.EventTrackManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/TrackEventName")
  , a = {};
a[i.default.LAUNCH_START_BEGIN] = true,
a[i.default.GET_USER_INFO] = true,
a[i.default.LOGIN_GS_END] = true,
a[i.default.ENTER_HALL_SCENE] = true,
a[i.default.CLICK_ENTER_GAME] = true,
a[i.default.ENTER_GAME] = true;
var r = function(e) {
    function t() {
        var t = e.call(this) || this;
        if (t.mapEventCount = {},
        t.appEventCount = {},
        t.JS_Name = "EventTrackManager",
        t.Log("Init"),
        cc.sys.localStorage.CanUse) {
            var n = cc.sys.localStorage.getItem("mapEventCount");
            n && (t.mapEventCount = JSON.parse(n))
        }
        return t
    }
    return __extends(t, e),
    t.prototype.SaveEventCount = function(e) {
        this.mapEventCount[e] ? this.mapEventCount[e] += 1 : this.mapEventCount[e] = 1,
        this.appEventCount[e] ? this.appEventCount[e] += 1 : this.appEventCount[e] = 1,
        cc.sys.localStorage.setItem("mapEventCount", JSON.stringify(this.mapEventCount))
    }
    ,
    t.prototype.LogEvent = function(e, t) {
        app.PushTrackRecordManager().PushTrackRecord(e, t),
        app.AdjustEventTrackManager().LogEvent(e, t),
        app.PageTrackManager().PageTrackRecord(e, t),
        app.PixelManager().LogEvent(e, t),
        a[e] && (this.SaveEventCount(e),
        1 == this.mapEventCount[e] && app.GoogleAnalyticsManager().LogEvent("first_" + e),
        1 == this.appEventCount[e] && app.GoogleAnalyticsManager().LogEvent("session_" + e))
    }
    ,
    t
}(o.Singleton);
n.EventTrackManager = r,
module.exports = n
