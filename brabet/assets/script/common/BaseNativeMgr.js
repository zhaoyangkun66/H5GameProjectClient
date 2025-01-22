let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BaseNativeMgr = n.DataType = undefined;
var o, i = require("../../Common/Base/Singleton");
(function(e) {
    e.Empty = "",
    e.Number = "number",
    e.String = "string",
    e.Boolean = "boolean"
}
)(o = n.DataType || (n.DataType = {}));
var a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.getDataTypeString = function(e) {
        return e == o.String ? "Ljava/lang/String;" : e == o.Number ? "I" : e == o.Boolean ? "Z" : "V"
    }
    ,
    t.prototype.callJava = function(e, t, n) {
        if (cc.sys.os == cc.sys.OS_ANDROID && cc.sys.isNative) {
            t || (t = {});
            var i = JSON.stringify(t)
              , a = jsb.reflection.callStaticMethod("org/cocos2dx/javascript/App", "callJava", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", e, i);
            if (n == o.Number)
                return parseFloat(a);
            if (n == o.Boolean)
                return "true" === a;
            if (n == o.String)
                return a
        } else if (cc.sys.os == cc.sys.OS_ANDROID && cc.sys.platform == cc.sys.MOBILE_BROWSER && (i = JSON.stringify(t),
        app.ComTool().AndroidHybirdPlatform())) {
            if (a = android.callJava(e, i),
            n == o.Number)
                return parseFloat(a);
            if (n == o.Boolean)
                return "true" === a;
            if (n == o.String)
                return a
        }
    }
    ,
    t.prototype.callScript = function(e, t) {
        try {
            this[e] ? this[e](t) : this.ErrLog("callScript error 1, " + e + ", " + t)
        } catch (n) {
            this.ErrLog("callScript error 2", n)
        }
    }
    ,
    t
}(i.Singleton);
n.BaseNativeMgr = a,
module.exports = n
