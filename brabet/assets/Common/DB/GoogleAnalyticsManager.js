let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GoogleAnalyticsManager = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GoogleAnalyticsManager",
        this.Log("Init")
    }
    ,
    Object.defineProperty(t.prototype, "EnableEvent", {
        get: function() {
            return "undefined" != typeof gtag
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.LogEvent = function(e) {
        this.EnableEvent ? gtag("event", e) : this.WarnLog("LogEvent failed")
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.GoogleAnalyticsManager = o,
module.exports = n
