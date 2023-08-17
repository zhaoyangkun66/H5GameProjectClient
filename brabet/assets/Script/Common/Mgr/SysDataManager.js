let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.SysDataManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/FormDefine")
  , a = require("../Define/GameEventDefine")
  , r = function(e) {
    function t() {
        var t = e.call(this) || this;
        for (var n in t.FieldLine = 1,
        t.tableDict = {},
        t.originalTableDict = {},
        t.JS_Name = "SysDataManager",
        i.FormDefine)
            t.tableDict[n] = {};
        return t.Log("Init"),
        t
    }
    return __extends(t, e),
    t.prototype.InitTable = function() {
        var e = this
          , t = Object.keys(this.tableDict)
          , n = [];
        t.forEach(function(t) {
            var o = "Form/" + t;
            t == i.FormDefine.Form ? o = app.ComTool().DesktopPlatform() ? o + "H" : o + "V" : t == i.FormDefine.SceneInfo && (o = app.ComTool().DesktopPlatform() ? o + "H" : o + "V");
            var a = new Promise(function(n) {
                app.ControlManager().CreateLoadPromise(o, cc.TextAsset, false).then(function(o) {
                    var i = o.text;
                    i || (e.Log("tableName:%s not textData", t),
                    i = ""),
                    e.Log("配置表资源读取成功:" + t),
                    e.OnLoadTableEnd(t, null, i),
                    n(true)
                }).catch(function(t) {
                    e.ErrLog(t)
                })
            }
            );
            n.push(a)
        }),
        Promise.all(n).then(function() {
            app.Client.OnEvent(a.GameEventDefine.INIT_FORM_TABLE)
        })
    }
    ,
    t.prototype.GetTableDict = function(e) {
        var t = e.split(".")[0];
        return this.tableDict.hasOwnProperty(t) ? this.tableDict[e] : (this.ErrLog("GetTableDict (%s) not load!", t),
        {})
    }
    ,
    t.prototype.OnLoadTableEnd = function(e, t, n, o) {
        undefined === o && (o = {});
        var i = this.TransformTextData(e, n);
        if (!i)
            return this.ErrLog("OnLoadTableEnd(%s) TransformTextData fail", e),
            false;
        if (t)
            for (var a in i) {
                var r = i[a]
                  , s = this.GetKeyNameStr(t, r);
                s ? o.hasOwnProperty(s) ? this.ErrLog("OnLoadTableEnd(%s)\u5b58\u5728\u91cd\u590d\u7684\u8054\u5408key(%s)", e, s) : o[s] = r : this.ErrLog("OnLoadTableEnd(%s)GetKeyNameStr(%s, %s) fail", e, JSON.stringify(t), JSON.stringify(r))
            }
        else
            o = i;
        if (this.Log("\u6570\u636e\u8868\u8bfb\u53d6\u5b8c\u6210:", e),
        this.tableDict.hasOwnProperty(e)) {
            var c = this.tableDict[e];
            for (var l in c)
                delete c[l];
            for (var l in o)
                c[l] = o[l]
        } else
            this.tableDict[e] = o;
        var p = {};
        for (var l in o)
            p[l] = o[l];
        return this.originalTableDict[e] = p,
        true
    }
    ,
    t.prototype.TransformTextData = function(e, t) {
        var n = t.split("\n")
          , o = n.length;
        if (!o)
            return this.ErrLog("\u914d\u7f6e\u6570\u636e\u4e3a\u7a7a(%s) \u6ca1\u6709\u914d\u7f6e\u6570\u636e", e),
            null;
        for (var i = -1, a = null, r = null, s = {}, c = 0; c < o; c++) {
            var l = n[c];
            if (l = l.replace(/(\s*$)/g, "")) {
                i += 1;
                var p = l.split("\t");
                if (i === this.FieldLine)
                    r = (a = p).length;
                else if (i > this.FieldLine) {
                    var d = p.length;
                    if (d != r)
                        return this.ErrLog("\u8bfb\u53d6\u6570\u636e\u5931\u8d25(%s),\u7b2c(%s)\u884c, \u914d\u7f6e\u6570\u636e:%s \u914d\u7f6e\u5217\u6570(%s)!=\u9700\u6c42\u5217\u6570(%s)", e, i, JSON.stringify(p), d, r),
                        null;
                    for (var h = p[0], u = {}, _ = 0; _ < r; _++) {
                        var m = p[_]
                          , f = a[_].trim();
                        try {
                            m = this.GetTransformValue(e, f, m, i)
                        } catch (g) {
                            this.ErrLog("GetTransformValue(%s,%s)(%s), error:%s", e, f, m, g.stack),
                            m = undefined
                        }
                        u[f] = m
                    }
                    s[h] = u
                }
            }
        }
        return s
    }
    ,
    t.prototype.GetTransformValue = function(e, t, n, o) {
        var i = n[0]
          , a = n[n.length - 1]
          , r = n.toLowerCase();
        if ("false" === r)
            return false;
        if ("true" === r)
            return true;
        if ("null" === r)
            return null;
        if ("[" === i && "]" === a)
            try {
                return JSON.parse(n)
            } catch (s) {
                return this.ErrLog("\u8f6c\u6362\u6570\u7ec4\u914d\u7f6e\u9519\u8bef(%s,%s)(%s)  \u7b2c(%s)\u884c", e, t, n, o),
                n
            }
        else {
            if ("{" !== i || "}" !== a)
                return t.endsWith("List") && "string" == typeof n ? this.GetListFromStr(n) : -1 != n.indexOf("return") ? new Function(n) : "" == n ? n : isNaN(n) ? n : Number(n);
            try {
                return JSON.parse(n)
            } catch (s) {
                return this.WarnLog("\u8f6c\u6362\u6570\u7ec4\u914d\u7f6e\u9519\u8bef(%s,%s)(%s)  \u7b2c(%s)\u884c", e, t, n, o),
                n
            }
        }
    }
    ,
    t.prototype.GetKeyNameStr = function(e, t) {
        for (var n = [], o = e.length, i = 0; i < o; i++) {
            var a = e[i];
            if (!t.hasOwnProperty(a))
                return this.ErrLog("GetKeyNameStr valueDict(%s) dont have keyName(%s)", JSON.stringify(t), a),
                null;
            n.push(t[a])
        }
        return n.join("_")
    }
    ,
    t.prototype.GetListFromStr = function(e) {
        return e.split(";")
    }
    ,
    t.prototype.DeleteTable = function(e) {
        delete this.tableDict[e]
    }
    ,
    t.prototype.DebugOutput = function(e) {
        undefined === e && (e = "");
        var t;
        t = e ? this.tableDict[e] : this.tableDict,
        this.Log("DebugOutput:%s", JSON.stringify(t))
    }
    ,
    t
}(o.Singleton);
n.SysDataManager = r,
module.exports = n
