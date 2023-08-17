let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.DemoServerManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "DemoServerManager",
        this.Log("Init"),
        app.Client.RegEvent(i.GameEventDefine.CHECK_UPDATE_SUCCESS, this.onCheckUpdateSuccess, this)
    }
    ,
    t.prototype.EnterGame = function() {
        var e = app.GameConfigManager().ExperienceServerUrl.split("https://")[1] || app.GameConfigManager().ExperienceServerUrl;
        app.ClientConfigManager().GetGlobalConfig.hosts = [e],
        this.Log("Enter Game", app.ClientConfigManager().GetGlobalConfig.hosts),
        app.ExternGameManager().ClearTimer(),
        app.GameServerManager().closeNeedntConnect(),
        app.GoServerManager().CloseConnect(),
        app.GameConfigManager().RequestGameConfig()
    }
    ,
    t.prototype.onCheckUpdateSuccess = function() {
        app.LoginManager().StartLogin()
    }
    ,
    t
}(o.Singleton);
n.DemoServerManager = a,
module.exports = n
