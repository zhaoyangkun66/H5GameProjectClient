let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.WebClientManager = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "WebClientManager"
    }
    ,
    Object.defineProperty(t.prototype, "GetWebApiUrl", {
        get: function() {
            return app.ClientConfigManager().ApiUrl
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.request = function(e, t, n, o, i) {
        var a = this
          , r = cc.loader.getXMLHttpRequest();
        r.timeout = 6e3;
        var s = app.LanguageManager().GetLocalLanguage(true);
        t && (t.language = s);
        var c = "?";
        for (var l in t)
            "?" != c && (c += "&"),
            c += l + "=" + t[l];
        var p = (i || this.GetWebApiUrl) + e + encodeURI(c);
        return 0 != e.indexOf("http") && 0 != e.indexOf("https") || (p = e + encodeURI(c)),
        this.Log("http request:" + p),
        r.open("GET", p, true),
        cc.sys.isNative && cc.sys.isMobile && r.setRequestHeader("Accept-Encoding", "gzip,deflate"),
        r.onreadystatechange = function() {
            if (4 === r.readyState && r.status >= 200 && r.status < 300) {
                var e = null;
                try {
                    e = JSON.parse(r.responseText)
                } catch (t) {
                    a.ErrLog("err:" + t)
                }
                null != e && null !== n && n(e)
            }
        }
        ,
        r.ontimeout = function() {
            o && o()
        }
        ,
        r.send(),
        r
    }
    ,
    t.prototype.post = function(e, t, n) {
        var o = this
          , i = cc.loader.getXMLHttpRequest();
        i.timeout = 5e3;
        var a = this.GetWebApiUrl + e;
        return cc.log("http request:" + a),
        i.open("POST", a, true),
        cc.sys.isNative && cc.sys.isMobile && i.setRequestHeader("Accept-Encoding", "gzip,deflate"),
        i.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"),
        i.onreadystatechange = function() {
            if (4 === i.readyState && i.status >= 200 && i.status < 300)
                try {
                    var e = JSON.parse(i.responseText);
                    null !== n && n(e)
                } catch (t) {
                    o.ErrLog("err:" + t.message)
                }
        }
        ,
        i.send(t),
        i
    }
    ,
    t
}(require("../../Common/Base/Singleton").Singleton);
n.WebClientManager = o,
module.exports = n
