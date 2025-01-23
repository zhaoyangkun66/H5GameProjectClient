let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.PixelManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/TrackEventName")
  , a = {};
a[i.default.USER_REGISTER] = "CompleteRegistration",
a[i.default.GET_USER_INFO] = "Login",
a[i.default.OPEN_RECHARGE] = "AddToCart",
a[i.default.RECHARGE] = "Purchase";
var r = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "PixelManager",
        this.Log("Init")
    }
    ,
    Object.defineProperty(t.prototype, "EnableEvent", {
        get: function() {
            return "undefined" != typeof fbq
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.LogEvent = function(e, t) {
        this.EnableEvent ? a[e] && fbq("track", a[e], t) : this.WarnLog("LogEvent failed")
    }
    ,
    t
}(o.Singleton);
n.PixelManager = r,
module.exports = n
