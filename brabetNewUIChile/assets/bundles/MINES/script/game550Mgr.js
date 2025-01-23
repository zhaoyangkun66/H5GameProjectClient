let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.game550Mgr = void 0;
var o = require("../../../Common/Base/Singleton")
  , i = require("./MinesDefine")
  , a = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.Init = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e];
        this.JS_Name = "game550Mgr",
        app.HttpServerManager().RegNetPack(i.Game550HttpAPI.MINES_SHOW_RESULT, this.netHistory, this),
        app.HttpServerManager().RegNetPack(i.Game550HttpAPI.MINES_START_DEFAULT, this.OnStartDefault, this),
        app.HttpServerManager().RegNetPack(i.Game550HttpAPI.MINES_OPEN_POS, this.OnMinesOpenPos, this)
    }
    ,
    e.prototype.initInfo = function() {
        this.onRequestInfo(0),
        this.onRequestHisTory()
    }
    ,
    e.prototype.onRequestHisTory = function() {
        app.HttpServerManager().SendHttpPack(i.Game550HttpAPI.MINES_SHOW_RESULT, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    e.prototype.netHistory = function(t) {
        app.Client.OnEvent(i.Game550HttpAPI.MINES_SHOW_RESULT, t)
    }
    ,
    e.prototype.onRequestInfo = function(t) {
        app.HttpServerManager().SendHttpPack(i.Game550HttpAPI.MINES_START_DEFAULT, {
            mines: t,
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    e.prototype.OnStartDefault = function(t) {
        app.Client.OnEvent(i.Game550HttpAPI.MINES_START_DEFAULT, t)
    }
    ,
    e.prototype.onRequestGame = function(t) {
        app.HttpServerManager().SendHttpPack(i.Game550HttpAPI.MINES_OPEN_POS, t,false)
    }
    ,
    e.prototype.OnMinesOpenPos = function(t, e) {
        app.Client.OnEvent(i.Game550HttpAPI.MINES_OPEN_POS, {
            data: t,
            senData: e
        })
    }
    ,
    e.prototype.onRequestBet = function(t) {
        app.HttpServerManager().SendHttpCB(i.Game550HttpAPI.MINES_BET, t, function(e) {
            var n = e.data;
            if (e.code)
                return app.SysNotifyManager().ShowToast(e.msg),
                void app.Client.OnEvent(i.Game550EventName.MINES_BET_ERROR, e.code);
            app.Client.OnEvent(i.Game550HttpAPI.MINES_BET, {
                data: n,
                reqData: t
            })
        }, true)
    }
    ,
    e
}(o.Singleton);
n.game550Mgr = a,
module.exports = n
