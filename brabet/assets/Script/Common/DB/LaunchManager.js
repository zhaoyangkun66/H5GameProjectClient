let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LaunchManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = require("../Define/HttpServerDefine")
  , r = require("../Define/MsgIDDefine")
  , s = require("../Define/ShareDefine")
  , c = require("../Define/TrackEventName")
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.timer = null,
        t.remoteHosts = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "LaunchManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.COMMON_CONFIG, this.OnGameConfig, this),
        this.defaultHosts = app.ClientConfigManager().GetGlobalConfig.hosts.concat()
    }
    ,
    t.prototype.RequestGameConfig = function() {
        app.EventTrackManager().LogEvent(c.default.LAUNCH_GAME_CONFIG_BEGIN),
        app.GameConfigManager().RequestGameConfig(),
        this.timer = window.setTimeout(function() {
            app.Client.OnEvent(i.GameEventDefine.SHOW_BTN_SUPPORT)
        }, 5e3)
    }
    ,
    t.prototype.ClearTimeout = function() {
        clearTimeout(this.timer)
    }
    ,
    t.prototype.GetBackUpUrl = function() {
        var e = this
          , t = app.ClientConfigManager().GetGlobalConfig.backupUrl;
        if (t) {
            var n = function() {
                app.ClientConfigManager().GetGlobalConfig.hosts = e.remoteHosts.concat(e.defaultHosts),
                app.Client.OnEvent(i.GameEventDefine.REFRESH_LAUNCH)
            };
            if (this.remoteHosts)
                n();
            else {
                var o = new XMLHttpRequest;
                o.open("GET", t, false),
                o.send(null);
                var a = o.responseText;
                this.Log(a),
                this.remoteHosts = JSON.parse(a),
                n()
            }
        }
    }
    ,
    t.prototype.OnGameConfig = function(e, t) {
        if (!e)
            return app.Client.OnEvent(i.GameEventDefine.GET_GAME_CONFIG_FAILED),
            void this.GetBackUpUrl();
        if (e.code)
            return e.code == s.ReqFailCode.IP_Limit ? void app.Client.OnEvent(i.GameEventDefine.LOGIN_IPLIMIT, e.data) : void this.ErrLog("OnGameConfig fail");
        if (this.ClearTimeout(),
        app.EventTrackManager().LogEvent(c.default.LAUNCH_GAME_CONFIG_END),
        app.LocalDataManager().SetConfigProperty("LocalInfo", "firstInstall", false),
        app.GameConfigManager().SetGameConfig(e),
        1 != Number(e.is_stopgs)) {
            if (cc.sys.isNative) {
                var n = e.is_up;
                if (1 == n)
                    return void app.Client.OnEvent(i.GameEventDefine.HOT_UPDATE);
                if (2 == n)
                    return void app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmOK, r.MsgIDDefine.System_42, null, this.OnConFirm, null, this)
            }
            app.Client.OnEvent(i.GameEventDefine.CHECK_UPDATE_SUCCESS)
        } else
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_STOPGS_NOTICE, t)
    }
    ,
    t.prototype.OnConFirm = function() {
        jsb.fileUtils.removeDirectory(jsb.fileUtils.getWritablePath()),
        cc.sys.localStorage.setItem("HotUpdateSearchPaths", ""),
        cc.sys.os == cc.sys.OS_ANDROID ? app.NativeMgr().downloadApp(app.GameConfigManager().GetGameConfig().android_download_url) : cc.sys.os == cc.sys.OS_IOS && app.NativeMgr().downloadApp(app.GameConfigManager().GetGameConfig().ios_download_url)
    }
    ,
    t.prototype.StartLogin = function() {
        app.LoginManager().StartLogin()
    }
    ,
    t
}(o.Singleton);
n.LaunchManager = l,
module.exports = n
