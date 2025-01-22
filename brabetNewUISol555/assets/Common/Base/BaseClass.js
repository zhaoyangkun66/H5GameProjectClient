let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.BaseClass = undefined;
var o = require("../Define/ShareDefine")
    , i = cc._decorator.ccclass
    , a = {
        "b-gb1": "background: #255; color: #ff80ff",
        "b-gb": "background: #255; color: #00ffff",
        "b-g": "background: #255; color: #00ff00",
        "w-g": "background: #0; color: #007f00"
    }
    , r = function () {
        function e() {
            for (var e = [], t = 0; t < arguments.length; t++)
                e[t] = arguments[t];
            this.JS_Name = "BaseClass",
                this.Init.apply(this, e)
        }
        return e.prototype.Init = function () {
            for (var e = [], t = 0; t < arguments.length; t++)
                e[t] = arguments[t]
        }
            ,
            e.prototype.OnReload = function () { }
            ,
            e.prototype.IsDevelopment = function () {
                return o.Development.IsDevelopment()
            }
            ,
            e.prototype.GetLogFormatList = function (e) {
                var t = e.length
                    , n = e[0];
                if ("string" != typeof n)
                    return e;
                var o = e[t - 1];
                if ("string" == typeof o) {
                    var i = a[o];
                    i && ("chrome" == cc.sys.browserType ? (e.pop(),
                        n = "%c" + n,
                        e.splice(1, 0, i)) : e.pop())
                }
                return e[0] = "[" + this.JS_Name + "]\t" + n,
                    e
            }
            ,
            e.prototype.Log = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.IsDevelopment() && (e = this.GetLogFormatList(e),
                    cc.log.apply(this, e))
            }
            ,
            e.prototype.NetLog = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.IsDevelopment() && (e = this.GetLogFormatList(e),
                    cc.log.apply(this, e))
            }
            ,
            e.prototype.SysLog = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                e = this.GetLogFormatList(e),
                    cc.syslog && cc.syslog.apply(this, e)
            }
            ,
            e.prototype.WarnLog = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.IsDevelopment() && (e = this.GetLogFormatList(e),
                    cc.warn.apply(this, e))
            }
            ,
            e.prototype.ErrLog = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                e = this.GetLogFormatList(e),
                    cc.error.apply(this, e)
            }
            ,
            __decorate([i], e)
    }();
n.BaseClass = r

module.exports = n
