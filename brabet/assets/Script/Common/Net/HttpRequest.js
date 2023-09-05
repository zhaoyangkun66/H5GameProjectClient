let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.HttpRequest = undefined;
var o = function (e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "HttpRequest",
                this.Log("Init")
        }
        ,
        t.prototype.SendHttpRequest = function (e, t, n, o, i, a) {
            var r = [e, t].join("")
                , s = this
                , c = new XMLHttpRequest
                , l = false
                , p = setTimeout(function () {
                    d()
                }, 8e4)
                , d = function () {
                    l || (l = true,
                        clearTimeout(p),
                        c.abort(),
                        a && a(e, t, c.readyState, c.status, o))
                };
            c.onerror = function () {
                s.ErrLog("httpRequest.error:%s", r),
                    d()
            }
                ,
                c.onreadystatechange = function () {
                    if (4 == c.readyState) {
                        if (l)
                            return void s.ErrLog("httpRequest time out:%s", r);
                        clearTimeout(p)
                        if (isgoServer == true) {
                            c.status = 200
                        }
                        200 == c.status ? i && i(e, t, c.responseText, o) : (s.ErrLog("url:%s onreadystatechange(%s, %s, %s)", r, c.readyState, c.status, c.statusText, o),
                            d())
                    }
                }
                ,
                "GET" == n ? (c.open("GET", r + "?" + this.formatParams(o), true),
                    c.send()) : "POST" == n && (c.open("POST", r, true),
                        c.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"),
                        c.send(this.formatParams(o)))
        }
        ,
        t.prototype.formatParams = function (e) {
            var t = [];
            for (var n in e) {
                var o = e[n];
                "[object Object]" === toString.call(o) || "[object Array]" === toString.call(o) ? t.push(n + "=" + JSON.stringify(o)) : t.push(n + "=" + o)
            }
            return t.join("&")
        }
        ,
        t
}(require("../Base/Singleton").Singleton);
n.HttpRequest = o,
    module.exports = n
