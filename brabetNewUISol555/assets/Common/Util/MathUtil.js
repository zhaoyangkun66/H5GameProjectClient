let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.MathUtil = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "MathUtil",
        this.Log("Init")
    }
    ,
    t.prototype.multiply = function(e, t) {
        var n = (e * t).toFixed(2);
        return app.ScoreUtil().coinFixed2(parseFloat(n))
    }
    ,
    t.prototype.rand = function(e, t) {
        return Math.floor(Math.random() * (t - e + 1) + e)
    }
    ,
    t.prototype.angle = function(e, t) {
        var n = t.sub(e);
        return 0 == n.x ? 0 : 180 * Math.atan(n.y / n.x) / Math.PI
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.MathUtil = o,
module.exports = n
