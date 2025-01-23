let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/Singleton")
  , i = require("../Bundle/BundleManager")
  , a = require("../Define/FormDefine")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.mapKey2LoadState = new Map,
        t.mapKey2Node = new Map,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "EffectMgr",
        this.TableInfo = app.SysDataManager().GetTableDict(a.FormDefine.Effect)
    }
    ,
    t.prototype.PreLoad = function(e) {
        var t = this.TableInfo[e];
        t ? t.BundleName ? i.BundleManager.LoadAssets(t.FilePath, t.BundleName, cc.Prefab) : app.ControlManager().CreateLoadPromise(t.FilePath, cc.Prefab, false) : this.ErrLog("PlayAnimation")
    }
    ,
    t.prototype.PlayAnimation = function(e) {
        var t, n, o, a, r = this;
        if (!e)
            return this.ErrLog("PlayAnimation failed, name is required"),
            false;
        if ("string" == typeof e ? t = e : (t = e.name,
        n = e.loadCB,
        o = e.currentTime,
        a = e.target),
        this.mapKey2LoadState.get(t))
            return false;
        var s = this.TableInfo[t];
        if (s)
            return this.mapKey2LoadState.set(t, true),
            (s.BundleName ? i.BundleManager.LoadAssets(s.FilePath, s.BundleName, cc.Prefab) : app.ControlManager().CreateLoadPromise(s.FilePath, cc.Prefab, false)).then(function(e) {
                if (r.mapKey2LoadState.get(t)) {
                    var i = app.Client.GetUILayer()
                      , s = cc.find("animation", i);
                    s || (s = new cc.Node,
                    i.addChild(s));
                    var c = cc.instantiate(e);
                    r.mapKey2Node.set(t, c),
                    s.addChild(c),
                    n && n(c);
                    var l = c.getComponent(cc.Animation);
                    l.play(),
                    o && l.setCurrentTime(o),
                    l.once("finished", function() {
                        a && a.emit(t),
                        r.mapKey2Node.delete(t),
                        c.destroy()
                    }, r)
                }
            }).finally(function() {
                r.mapKey2LoadState.delete(t)
            }),
            true;
        this.ErrLog("PlayAnimation failed, find '" + t + "' error")
    }
    ,
    t.prototype.IsPlaying = function(e) {
        return !!this.mapKey2Node.get(e)
    }
    ,
    t.prototype.StopAnimation = function(e) {
        this.mapKey2LoadState.delete(e);
        var t = this.mapKey2Node.get(e);
        return t && t.destroy(),
        true
    }
    ,
    t.prototype.ClearAnimation = function() {
        this.mapKey2LoadState.clear(),
        this.mapKey2Node.forEach(function(e) {
            e.destroy()
        }),
        this.mapKey2Node.clear()
    }
    ,
    t.prototype.ResetBeginAnimation = function(e, t) {
        var n = e.getComponent(cc.Animation);
        n && (n.play(t),
        n.setCurrentTime(0),
        n.stop(t))
    }
    ,
    t
}(o.Singleton);
n.default = r,
module.exports = n
