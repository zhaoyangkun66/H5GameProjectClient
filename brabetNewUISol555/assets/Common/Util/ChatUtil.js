let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ChatUtil = undefined;
var i = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "ChatUtil",
        this.Log("Init")
    }
    ,
    t.prototype.stringToUint = function(e) {
        for (var t = (e = o.from(decodeURIComponent(encodeURIComponent(e)), "binary").toString("base64")).split(""), n = [], i = 0; i < t.length; i++)
            n.push(t[i].charCodeAt(0));
        return new Uint8Array(n)
    }
    ,
    t.prototype.uintToString = function(e) {
        var t = String.fromCharCode.apply(null, e);
        return o.from(t, "base64").toString()
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.ChatUtil = i,
module.exports = n
