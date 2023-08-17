let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LocalDataManager = undefined;
var o = require("../Base/Singleton")
  , i = {
    SysSetting: {
        BackMusic: 0,
        BackVolume: 1,
        SpSound: 1,
        SpVolume: 1,
        Language: "",
        ShieldShake: false,
        LastResVersion: "1.0"
    },
    AccountInfo: {},
    DebugInfo: {},
    ServerInfo: {
        LastConnectedHostIndex: 0
    },
    LocalInfo: {
        agentID: "",
        ajtrackerName: "",
        firstInstall: true
    },
    FavoriteGame: {}
}
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "LocalDataManager",
        this.Log("Init"),
        this.InitDataDict = i
    }
    ,
    t.prototype.InitConfig = function() {
        var e = cc.sys.localStorage;
        e.setItem("testStorage", "1");
        var t = e.getItem("testStorage");
        for (var n in t ? (cc.sys.localStorage.CanUse = 1,
        e.removeItem("testStorage")) : (cc.sys.localStorage.CanUse = 0,
        this.ErrLog("cant use sys.localStorage")),
        this.InitDataDict) {
            var o = this.InitDataDict[n];
            for (var i in o)
                this.HaveConfigProperty(n, i) || this.SetConfigProperty(n, i, o[i])
        }
    }
    ,
    t.prototype.SetConfigProperty = function(e, t, n) {
        var o = {};
        if (cc.sys.localStorage.CanUse) {
            var i = cc.sys.localStorage.getItem(e);
            (o = i ? JSON.parse(i) : {})[t] = n,
            cc.sys.localStorage.setItem(e, JSON.stringify(o))
        } else {
            if (!(o = this.InitDataDict[e]))
                return this.ErrLog("SetConfigProperty not find(%s)", e),
                false;
            o[t] = n
        }
        return true
    }
    ,
    t.prototype.GetConfigProperty = function(e, t) {
        e = e.toString();
        var n = {};
        if (cc.sys.localStorage.CanUse) {
            var o = cc.sys.localStorage.getItem(e);
            o && (n = JSON.parse(o))
        } else
            n = this.InitDataDict[e],
            this.ErrLog("GetConfigProperty fail, configName:%s option:%s is not find", e, t);
        if (n)
            return n.hasOwnProperty(t) ? n[t] : (this.ErrLog("configInfo", n),
            void this.ErrLog("GetConfigProperty fail, not find the option:%s", t));
        this.ErrLog("GetConfigProperty(%s,%s)", e, t)
    }
    ,
    t.prototype.HaveConfigProperty = function(e, t) {
        var n = cc.sys.localStorage.getItem(e);
        return !!n && !!(n = JSON.parse(n)).hasOwnProperty(t)
    }
    ,
    t.prototype.Remove = function(e) {
        cc.sys.localStorage.removeItem(e)
    }
    ,
    t.prototype.GetConfigObject = function(e) {
        if (e = e.toString(),
        cc.sys.localStorage.CanUse) {
            var t = cc.sys.localStorage.getItem(e);
            if (t)
                return JSON.parse(t)
        }
        return null
    }
    ,
    t.prototype.SetConfigObject = function(e, t) {
        return e = e.toString(),
        cc.sys.localStorage.CanUse ? (cc.sys.localStorage.setItem(e, JSON.stringify(t)),
        true) : (this.ErrLog("SetConfigObject Error"),
        false)
    }
    ,
    t
}(o.Singleton);
n.LocalDataManager = a,

module.exports = n
