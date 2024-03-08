let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BaseGameForm = undefined;
var o = require("../../Common/Base/BaseForm")
  , i = cc._decorator.ccclass
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.OnFistOpenHelp()
    }
    ,
    t.prototype.OnFistOpenHelp = function() {
        var e = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().UserInfo.roomMode)
          , t = app.LocalDataManager().GetConfigObject("FistGame");
        !e || t && t.indexOf(e.GID) > -1 || !e.Help || (!t && (t = []),
        t.push(e.GID),
        app.LocalDataManager().SetConfigObject("FistGame", t),
        this.OpenGameHelp())
    }
    ,
    t.prototype.OpenGameHelp = function() {
        var e = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().UserInfo.roomMode);
        e && app.FormManager().ShowForm(e.Help, {
            bundle: e.BundleName
        })
    }
    ,
    __decorate([i], t)
}(o.default);
n.BaseGameForm = a,
    module.exports = n
