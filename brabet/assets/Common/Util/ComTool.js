let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ComTool = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "ComTool",
        this.Log("Init")
    }
    ,
    t.prototype.RandInt = function(e, t, n) {
        undefined === n && (n = []);
        var o = Math.floor(Math.random() * (t + 1 - e) + e);
        return t - e <= n.length ? (this.ErrLog("\u968f\u673a\u7684\u6574\u6570\u6570\u91cf\u5c0f\u4e8e\u6392\u9664\u7684\u6574\u6570\u6570\u91cf"),
        o) : n.InArray(o) ? this.RandInt(e, t, n) : o
    }
    ,
    t.prototype.StringAddNumSuffix = function(e, t, n) {
        var o = "" + t;
        if (n) {
            var i = o.length;
            o = i < n ? Array(n - i + 1).join("0") + t : o
        }
        return [e, o].join("")
    }
    ,
    t.prototype.H5Platform = function() {
        return cc.sys.platform == cc.sys.MOBILE_BROWSER
    }
    ,
    t.prototype.DesktopPlatform = function() {
        return cc.sys.platform == cc.sys.DESKTOP_BROWSER
    }
    ,
    t.prototype.IsIOS = function() {
        return cc.sys.isNative && cc.sys.os == cc.sys.OS_IOS
    }
    ,
    t.prototype.IsAndroid = function() {
        return cc.sys.isNative && cc.sys.os == cc.sys.OS_ANDROID
    }
    ,
    t.prototype.IsWindows = function() {
        return cc.sys.isNative && cc.sys.os == cc.sys.OS_WINDOWS
    }
    ,
    t.prototype.AndroidHybirdPlatform = function() {
        return "undefined" != typeof android
    }
    ,
    t.prototype.CheckPlatform = function() {
        return !cc.sys.isNative
    }
    ,
    t.prototype.getPackageName = function() {
        return cc.sys.isNative || this.AndroidHybirdPlatform() ? app.NativeMgr().getPackageName() : "h5_client"
    }
    ,
    t.prototype.GetQueryString = function(e) {
        if (!cc.sys.isBrowser)
            return null;
        var t = new RegExp("(^|&)" + e + "=([^&]*)(&|$)","i")
          , n = location.search.substr(1).match(t);
        return null != n ? unescape(n[2]) : null
    }
    ,
    t.prototype.ReplaceParamVal = function(e, t, n) {
        var o = new RegExp("(" + t + "=)([^&]*)","gi");
        return e.replace(o, t + "=" + n)
    }
    ,
    t.prototype.ParseParamsToUri = function(e, t) {
        var n = [];
        return Object.keys(t).forEach(function(e) {
            return t[e] && n.push(e + "=" + t[e])
        }),
        -1 === e.search(/\?/) ? e += "?" + n.join("&") : e += "&" + n.join("&"),
        e
    }
    ,
    t.prototype.NodeAConvertToNodeBSpaceAR = function(e, t) {
        var n = e.convertToWorldSpaceAR(new cc.Vec2(0,0));
        return t.convertToNodeSpaceAR(n)
    }
    ,
    t.prototype.ResetAnimationNode = function(e, t) {
        var n = e.getComponent(cc.Animation);
        if (n) {
            n.stop();
            var o = n.play(t);
            n.setCurrentTime(o.duration)
        }
    }
    ,
    t.prototype.DeepCopyArray = function(e) {
        for (var t = [], n = 0; n < e.length; n++) {
            var o = e[n].slice(0);
            t.push(o)
        }
        return t
    }
    ,
    t.prototype.RandomGUID = function() {
        return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(e) {
            var t = 16 * Math.random() | 0;
            return ("x" == e ? t : 3 & t | 8).toString(16)
        })
    }
    ,
    t.prototype.GenQRCode = function(e, t, n) {
        undefined === n && (n = 1);
        var o = new QRCode(-1,n);
        o.addData(e),
        o.make();
        for (var i = t.node.width / o.getModuleCount(), a = t.node.height / o.getModuleCount(), r = 0; r < o.getModuleCount(); r++)
            for (var s = 0; s < o.getModuleCount(); s++) {
                o.isDark(r, s) ? t.fillColor = cc.Color.BLACK : t.fillColor = cc.Color.WHITE;
                var c = Math.ceil((s + 1) * i) - Math.floor(s * i)
                  , l = Math.ceil((r + 1) * a) - Math.floor(r * a);
                t.rect(Math.round(s * i), Math.round(r * a), c, l),
                t.fill()
            }
    }
    ,
    t.prototype.PrefixInteger = function(e, t) {
        return ("0000000000000000" + e).substr(-t)
    }
    ,
    t.prototype.getIosBrowserType = function() {
        return "standalone"in window.navigator && window.navigator.standalone
    }
    ,
    t.prototype.GetUrlParam = function() {
        var e = document.location.toString().split("?")
          , t = Object.create(null);
        return e.length > 1 && (e = e[1].split("&")).forEach(function(e) {
            var n = e.split("=");
            t[n[0]] = n[1]
        }),
        t
    }
    ,
    t.prototype.htmlEncode = function(e) {
        return 0 === e.length ? "" : e.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/ /g, "&nbsp;").replace(/\'/g, "&#39;").replace(/\"/g, "&quot;")
    }
    ,
    t.prototype.htmlRestore = function(e) {
        return 0 === e.length ? "" : e.replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&nbsp;/g, " ").replace(/&#39;/g, "'").replace(/&quot;/g, '"')
    }
    ,
    t.prototype.checkSpecialStr = function(e) {
        return !/[`~!@#$%^&*()_+<>?:"{},.\/;'[\]]/im.test(e) && !/[\xb7\uff01#\uffe5\uff08\u2014\u2014\uff09\uff1a\uff1b\u201c\u201d\u2018\u3001\uff0c|\u300a\u3002\u300b\uff1f\u3001\u3010\u3011[\]]/im.test(e)
    }
    ,
    t.prototype.isSafari = function() {
        var e = navigator.userAgent.toLowerCase();
        return e.indexOf("applewebkit") > -1 && e.indexOf("mobile") > -1 && e.indexOf("safari") > -1 && -1 === e.indexOf("linux") && -1 === e.indexOf("android") && -1 === e.indexOf("chrome") && -1 === e.indexOf("ios") && -1 === e.indexOf("browser")
    }
    ,
    t.prototype.getRandomNumber = function(e, t) {
        return Math.random() * (t - e) + e
    }
    ,
    t.prototype.GetLocalTime = function(e) {
        if ("number" == typeof e) {
            var t = new Date
              , n = t.getTime()
              , o = 6e4 * t.getTimezoneOffset();
            return new Date(n + o + 36e5 * e)
        }
    }
    ,
    t.prototype.GetServerTimeString = function(e) {
        var t = new Date(1e3 * e);
        return t.getFullYear() + "-" + (t.getMonth() + 1 < 10 ? "0" + (t.getMonth() + 1) : t.getMonth() + 1) + "-" + t.getDate() + " " + t.getHours() + ":" + t.getMinutes() + ":" + t.getSeconds()
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.ComTool = o,
module.exports = n
