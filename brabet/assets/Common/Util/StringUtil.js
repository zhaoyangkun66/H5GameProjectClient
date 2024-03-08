let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.StringUtil = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "StringUtil",
        this.Log("Init")
    }
    ,
    t.prototype.isLegal = function(e) {
        var t = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~\uff01@#\uffe5\u2026\u2026&*\uff08\uff09\u2014\u2014|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c'\u3002\uff0c\u3001\uff1f\u21b5\r\n]","g");
        return !e.match(t)
    }
    ,
    t.prototype.isSpecialChar = function(e) {
        return !this.isLegal(e) || e.trim() !== e
    }
    ,
    t.prototype.transformString = function(e) {
        if (!e)
            return "";
        for (var t = /[a-zA-Z0-9]+/, n = "", o = 0; o < e.length; o++) {
            var i = e[o];
            t.test(i) && (n += i)
        }
        return n
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.StringUtil = o,
module.exports = n
