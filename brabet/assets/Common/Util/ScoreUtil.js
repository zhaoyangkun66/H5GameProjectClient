let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ScoreUtil = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "ScoreUtil",
        this.Log("Init")
    }
    ,
    t.prototype.FormatK = function(e) {
        return e < 1e3 ? "" + e : Big(e).div(1e3).toString() + "k"
    }
    ,
    t.prototype.coinFormatter = function(e, t) {
        var n, o = [{
            value: 1,
            symbol: ""
        }, {
            value: 1e3,
            symbol: "K"
        }, {
            value: 1e6,
            symbol: "M"
        }, {
            value: 1e9,
            symbol: "G"
        }, {
            value: 1e12,
            symbol: "T"
        }, {
            value: 1e15,
            symbol: "P"
        }, {
            value: 1e18,
            symbol: "E"
        }];
        for (n = o.length - 1; n > 0 && !(e >= o[n].value); n--)
            ;
        return (e / o[n].value).toFixed(t).replace(/\.0+$|(\.[0-9]*[1-9])0+$/, "$1") + o[n].symbol
    }
    ,
    t.prototype.fix_float_number = function(e) {
        return Math.floor(100 * e) / 100
    }
    ,
    t.prototype.fix_number = function(e, t) {
        return ("" + e).length < t ? (new Array(t + 1).join("0") + e).slice(-t) : "" + e
    }
    ,
    t.prototype.coinFixed2 = function(e) {
        return parseInt(e) === e ? e.toFixed(2) : ("string" == typeof e && (e = parseFloat(e)),
        e > 0 && (e = Math.floor(100 * e) / 100),
        e.toFixed(2))
    }
    ,
    t.prototype.toFixed = function(e, t) {
        undefined === t && (t = 2);
        var n = Math.pow(10, t)
          , o = e * n + .5;
        return (o = parseInt(o.toString(), 10) / n) + ""
    }
    ,
    t.prototype.toFixedString = function(e) {
        var t = e.toString();
        return t.indexOf(".") >= 0 && t.split(".")[1].length > 2 ? this.toFixed(e, 2) : e + ""
    }
    ,
    t.prototype.formatScore22 = function(e, t, n) {
        undefined === t && (t = 2),
        undefined === n && (n = false);
        var o = ""
          , i = (o = n ? "" + this.toFixed(e, t) : "" + e).indexOf(".");
        return i > 0 ? "" + Number(o.substring(0, i + t + 1)) : "" + Number(o)
    }
    ,
    t.prototype.formatNumberWithCommas = function(e) {
        var t = ("" + Number(e)).split(".");
        return t[0] = t[0].replace(/\B(?=(\d{3})+(?!\d))/g, ","),
        t.join(".")
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.ScoreUtil = o,
module.exports = n
