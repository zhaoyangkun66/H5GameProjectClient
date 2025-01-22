let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.TimeUtil = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "TimeUtil",
        this.Log("Init")
    }
    ,
    t.prototype.formatDate = function(e) {
        var t = new Date(e);
        return t.getFullYear() + "-" + (t.getMonth() + 1 < 10 ? "0" + (t.getMonth() + 1) : t.getMonth() + 1) + "-" + (t.getDate() < 10 ? "0" + t.getDate() : t.getDate()) + " " + (t.getHours() < 10 ? "0" + t.getHours() : t.getHours()) + ":" + (t.getMinutes() < 10 ? "0" + t.getMinutes() : t.getMinutes()) + ":" + (t.getSeconds() < 10 ? "0" + t.getSeconds() : t.getSeconds())
    }
    ,
    t.prototype.FormatTimeWithNum = function(e) {
        var t = e / 3600 >> 0
          , n = (e - 3600 * t) / 60 >> 0
          , o = e - 3600 * t - 60 * n;
        return t + ":" + (n < 10 ? "0" + n : n) + ":" + (o < 10 ? "0" + o : o)
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.TimeUtil = o,
module.exports = n
