let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameBaseHttpForm = undefined;
var o = require("./BaseGameForm")
    , i = cc._decorator
    , a = i.ccclass
    , r = (i.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.roomMgr = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnShow = function () {
                    app.LoginManager().heartbeatType = 1
                    app.ExternGameManager().RequestHtmlGameProgress(0);
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
                        this.roomMgr.gameId = app.RoomManager().gameId,
                        this.roomMgr.OnReload(),
                        e.prototype.OnShow.call(this, t)
                }
                ,
                t.prototype.OnClose = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t]
                }
                ,
                t.prototype.LeaveRoom = function () {
                    this.roomMgr.OnClear()
                }
                ,
                __decorate([a], t)
        }(o.BaseGameForm));
n.GameBaseHttpForm = r,
    module.exports = n
