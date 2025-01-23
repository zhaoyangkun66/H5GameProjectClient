let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.SubGameLoadManager = undefined;
var o = require("../Bundle/BundleManager")
  , i = require("../Define/FormDefine")
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "SubGameLoadManager"
    }
    ,
    t.prototype.LoadSubGameForm = function(e) {
        return __awaiter(this, undefined, undefined, function() {
            var t, n, o, a, r, s;
            return __generator(this, function(c) {
                switch (c.label) {
                case 0:
                    return t = app.SysDataManager().GetTableDict(i.FormDefine.Form),
                    n = "Form/",
                    o = app.ComTool().H5Platform() ? "" + n + i.FormDefine.Form + "V" : "" + n + i.FormDefine.Form + "H",
                    (a = []).push(this.CreateTextPromise(o, t, e + "/" + i.FormDefine.Form, e)),
                    r = app.SysDataManager().GetTableDict(i.FormDefine.Effect),
                    a.push(this.CreateTextPromise("" + n + i.FormDefine.Effect, r, e + "/" + i.FormDefine.Effect, e)),
                    s = app.SysDataManager().GetTableDict(i.FormDefine.Sound),
                    a.push(this.CreateTextPromise("" + n + i.FormDefine.Sound, s, e + "/" + i.FormDefine.Sound, e)),
                    [4, Promise.all(a)];
                case 1:
                    return c.sent(),
                    [2]
                }
            })
        })
    }
    ,
    t.prototype.CreateTextPromise = function(e, t, n, i) {
        return __awaiter(this, undefined, undefined, function() {
            var a, r, s, c, l;
            return __generator(this, function(p) {
                switch (p.label) {
                case 0:
                    return p.trys.push([0, 2, , 3]),
                    [4, o.BundleManager.LoadAssets(e, i, cc.TextAsset)];
                case 1:
                    for (c in (a = p.sent()).text || (this.Log("tableName:%s not textData", e),
                    a.text = ""),
                    r = a.text,
                    this.Log("\u914d\u7f6e\u8868\u8d44\u6e90\u8bfb\u53d6\u6210\u529f:" + e),
                    s = app.SysDataManager().TransformTextData(n, r))
                        l = s[c],
                        t[c] = l;
                    return o.BundleManager.ReleaseAssets(i, e),
                    Promise.resolve(true),
                    [3, 3];
                case 2:
                    return p.sent(),
                    this.WarnLog("\u5b50\u6e38\u620f" + n + "\u4e0d\u5b58\u5728"),
                    Promise.resolve(false),
                    [3, 3];
                case 3:
                    return [2]
                }
            })
        })
    }
    ,
    t
}(require("./Singleton").Singleton);
n.SubGameLoadManager = a,
module.exports = n
