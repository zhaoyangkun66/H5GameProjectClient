let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LogManager = undefined;
var o = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.logFilePath = "",
        t.id = 0,
        t.debugLogList = [],
        t.sendLogList = [],
        t.outPutLogList = [],
        t.isOpenLog = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.HookLogs()
    }
    ,
    t.prototype.HookLogs = function() {
        var e = this
          , t = console.log
          , n = console.info;
        cc.log = function() {
            for (var n = [], o = 0; o < arguments.length; o++)
                n[o] = arguments[o];
            e.isOpenLog && (t.apply(e, n),
            e.AddSysLog(n, "log"))
        }
        ,
        cc.syslog = function() {
            for (var t = [], o = 0; o < arguments.length; o++)
                t[o] = arguments[o];
            e.isOpenLog && (n.apply(e, t),
            e.AddSysLog(t, "info"))
        }
        ;
        var o = console.warn;
        cc.warn = function() {
            for (var t = [], n = 0; n < arguments.length; n++)
                t[n] = arguments[n];
            e.isOpenLog && (o.apply(e, t),
            e.AddSysLog(t, "warn"))
        }
        ;
        var i = console.error;
        cc.error = function() {
            for (var t = [], n = 0; n < arguments.length; n++)
                t[n] = arguments[n];
            e.isOpenLog && (i.apply(e, t),
            e.AddSysLog(t, "error"))
        }
    }
    ,
    t.prototype.GetMsg = function(e) {
        for (var t = e.length, n = 1; n < t; n++) {
            var o = e[n];
            if (o) {
                var i = Object.prototype.toString.call(o).slice("[object ".length, -1);
                if ("Array" == i)
                    o = JSON.stringify(o);
                else if ("Object" == i) {
                    var a = [];
                    o = JSON.stringify(o, function(e, t) {
                        if ("object" == typeof t && null !== t) {
                            if (-1 !== a.indexOf(t))
                                return;
                            a.push(t)
                        }
                        return t
                    }),
                    a = null
                }
                e[n] = o
            }
        }
        return cc.js.formatStr.apply(null, e)
    }
    ,
    t.prototype.AddSysLog = function(e, t) {
        if (this.isOpenLog || "error" == t) {
            var n = "";
            try {
                n = this.GetMsg(e)
            } catch (o) {
                cc.error("error:%s", o.stack),
                n = "AddSysLog error"
            }
            this.id += 1,
            this.sendLogList.push([n, t, this.id]),
            this.outPutLogList.push([n, t, this.id]),
            this.debugLogList.push([n, t, this.id])
        }
    }
    ,
    t.prototype.IsOpenLog = function(e) {
        this.isOpenLog = e
    }
    ,
    t.prototype.GetNowDateTimeStr = function() {
        for (var e = "", t = new Date, n = [t.getFullYear(), t.getMonth() + 1, t.getDate()], o = 0; o < n.length; o++) {
            var i = n[o].toString();
            parseInt(i) < 10 && (i = "0" + i),
            o != n.length - 1 ? e += i + "-" : e += i
        }
        return e
    }
    ,
    t.prototype.OutPutLog = function() {
        if (cc.sys.isNative) {
            for (var e = (new Date).toLocaleString(), t = "", n = 0, o = this.outPutLogList.length - 1; n <= o; n++) {
                var i = this.outPutLogList[n][1]
                  , a = this.outPutLogList[n][2];
                t += "error" == i ? [e, "\t[" + a, "]\t###", this.outPutLogList[n][0], "\n"].join("") : [e, "\t[" + a, "]\t", this.outPutLogList[n][0], "\n"].join("")
            }
            if (t) {
                this.outPutLogList = [];
                var r = jsb.fileUtils;
                if (!this.logFilePath) {
                    var s = r.getWritablePath();
                    if (!s)
                        return;
                    this.logFilePath = s + "Log/"
                }
                r.isDirectoryExist(this.logFilePath) || r.createDirectory(this.logFilePath);
                var c = this.GetNowDateTimeStr()
                  , l = [this.logFilePath, c, ".txt"].join("");
                r.writeStringToFile(t, l)
            }
        }
    }
    ,
    t.prototype.GetReportMsgList = function() {
        for (var e = [], t = 0, n = this.sendLogList.length - 1; t <= n; t++)
            if ("error" == this.sendLogList[t][1]) {
                var o = this.sendLogList[t][0].split("\n");
                e.push(o[0]),
                o.length > 1 && e.push(o[1])
            }
        return this.sendLogList = [],
        e
    }
    ,
    t.prototype.ClearLogMsgList = function() {
        this.debugLogList = []
    }
    ,
    t.prototype.GetDebugMsgList = function(e) {
        return e || (e = this.debugLogList.length),
        this.debugLogList.splice(0, e)
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.LogManager = o,
module.exports = n
