let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.CompressStorageMgr = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "CompressStorageMgr",
        this.Log("Init")
    }
    ,
    t.prototype.set = function(e, t) {
        if (null != t) {
            var n = JSON.stringify(t)
              , o = LZUTF8.compress(n, {
                outputEncoding: "Base64"
            });
            cc.sys.localStorage.setItem(e, o)
        } else
            cc.sys.localStorage.setItem(e, "")
    }
    ,
    t.prototype.get = function(e) {
        var t = cc.sys.localStorage.getItem(e);
        if (null == t)
            return {};
        var n = LZUTF8.decompress(t, {
            inputEncoding: "Base64",
            outputEncoding: "String"
        });
        return JSON.parse(n)
    }
    ,
    t.prototype.remove = function(e) {
        cc.sys.localStorage.removeItem(e)
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.CompressStorageMgr = o,
module.exports = n
