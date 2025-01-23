let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.AdjustEventTrackManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/HttpServerDefine")
    , a = require("../Define/TrackEventName")
    , r = function (e) {
        function t() {
            return null !== e && e.apply(this, arguments) || this
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "LoginManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(i.HttpAPI.GET_WITHDRAWGOLD, this.OnGetWithdrawgold, this),
                    app.HttpServerManager().RegNetPack(i.HttpAPI.GET_AJNOTICE, this.OnGetAjNotice, this),
                    this.MapObEvent = {},
                    this.MapObEvent[a.default.AJ_CONSUMEEVENT] = this.ConSumeAdjustEvent.bind(this)
            }
            ,
            t.prototype.ConSumeAdjustEvent = function () {
                this.RequestAJGetWithdrawgold(),
                    this.RequestAJNotice()
            }
            ,
            t.prototype.RequestAJGetWithdrawgold = function () {
                // app.HttpServerManager().SendHttpPack(i.HttpAPI.GET_WITHDRAWGOLD, {
                //     token: app.UserManager().GetUserInfo.token
                // }, false)
            }
            ,
            t.prototype.RequestAJNotice = function () {
                if (isgoServer) {
                    app.HttpServerManager().SendHttpPack(i.HttpAPI.GET_AJNOTICE, {
                        token: app.UserManager().GetUserInfo.token,
                        notice_app_id: 1,
                        is_use_cache: 0
                    }, false)

                }
                else {
                    app.HttpServerManager().SendHttpPack(i.HttpAPI.GET_AJNOTICE, {
                        token: app.UserManager().GetUserInfo.token
                    }, false)
                }
            }
            ,
            t.prototype.LogEvent = function (e) {
                "function" == typeof this.MapObEvent[e] && this.MapObEvent[e]()
            }
            ,
            t.prototype.OnGetWithdrawgold = function (e) {
                e.forEach(function (e) {
                    e.amount && (app.NativeMgr().AdjustlogEvent("withdraw", e.amount),
                        app.NativeMgr().FacebooklogEvent("withdraw", e.amount))
                })
            }
            ,
            t.prototype.OnGetAjNotice = function (e) {
                if (isgoServer) {
                    if (!(e instanceof Array)) {
                        e = []
                    }
                }
                e.forEach(function (e) {
                    app.NativeMgr().AdjustlogEvent(e.key, e.amount),
                        app.NativeMgr().FacebooklogEvent(e.key, e.amount)
                })
            }
            ,
            t
    }(o.Singleton);
n.AdjustEventTrackManager = r,
    module.exports = n
