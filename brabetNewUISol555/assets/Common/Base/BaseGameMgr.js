let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BaseGameMgr = undefined;
var o = require("../Define/ShareDefine")
  , i = require("./BaseClass")
  , a = require("./EventFunAdapter")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.DefaultBetGold = 0,
        t.GameBetSizeLimit = {
            min: 0,
            max: 0
        },
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "BaseGameMgr",
        this.gameId = "",
        this.EventFunAdapter || (this.EventFunAdapter = new a.EventFunAdapter(this))
    }
    ,
    t.prototype.OnReload = function() {
        this.EventFunAdapter.RegisterEvent(),
        this.GameBetSizeLimit = app.GameConfigManager().GameBetSizeLimit(Number(this.gameId)),
        this.InitDefaultBetCount()
    }
    ,
    t.prototype.OnClear = function() {
        this.EventFunAdapter.UnRegisterEvent()
    }
    ,
    t.prototype.RegRoomEvent = function(e, t) {
        this.EventFunAdapter.RegRoomEvent(e, t)
    }
    ,
    t.prototype.RegHttpEvent = function(e, t) {
        this.EventFunAdapter.RegHttpEvent(e, t)
    }
    ,
    t.prototype.LeaveRoom = function() {
        this.gameId = "",
        app.RoomManager().gameId = "",
        app.UserManager().UserInfo.roomMode = 0,
        app.GameManager().BackHallScene()
    }
    ,
    t.prototype.InitDefaultBetCount = function() {
        if (this.gameId.length) {
            var e = app.UserManager().UserInfo.uid + "FistGameBetGold"
              , t = app.LocalDataManager().GetConfigObject(e);
            t && t[this.gameId] && t[this.gameId] < app.UserManager().UserInfo.gold ? this.DefaultBetGold = t[this.gameId] : (this.DefaultBetGold = this.GetDefaultBetCount(),
            this.SetDefaultBetGold(this.DefaultBetGold))
        } else
            this.ErrLog("InitDefaultBetCount Error.")
    }
    ,
    t.prototype.SetDefaultBetGold = function(e) {
        this.DefaultBetGold = e;
        var t = app.UserManager().UserInfo.uid + "FistGameBetGold"
          , n = app.LocalDataManager().GetConfigObject(t) || {};
        n[this.gameId] = this.DefaultBetGold,
        app.LocalDataManager().SetConfigObject(t, n)
    }
    ,
    t.prototype.OnFistOpenHelp = function() {
        var e = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().UserInfo.roomMode)
          , t = app.LocalDataManager().GetConfigObject("FistGame");
        if (e && !(t && t.indexOf(e.GID) > -1) && e.Help) {
            var n = {
                bundle: e.BundleName
            };
            app.FormManager().ShowForm(e.Help, n),
            t || (t = []),
            t.push(e.GID),
            app.LocalDataManager().SetConfigObject("FistGame", t)
        }
    }
    ,
    Object.defineProperty(t.prototype, "GetDefaultBetGold", {
        get: function() {
            return this.DefaultBetGold
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetDefaultBetCount = function() {
        return 1
    }
    ,
    Object.defineProperty(t.prototype, "GetGameOfficialUrl", {
        get: function() {
            return app.GameConfigManager().GetGameOfficialUrl(Number(this.gameId))
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.ErrorCodeHint = function(e) {
        if (e.code == o.HTTPERRORCODE.GOLD_NOT_ENOUGH)
            return false;
        if (e.code == o.HTTPERRORCODE.LEAST_GOLD_NOT_ENOUGH) {
            var t = app.GameConfigManager().GameBetLimit(app.UserManager().GetUserInfo.roomMode);
            return t && app.SysNotifyManager().ShowToast("Error_Define_50014", ["" + t]),
            false
        }
        return e.code == o.HTTPERRORCODE.MIN_BET_LIMIT ? (app.SysNotifyManager().ShowToast("UI_Game840_MinimumNum", ["" + e.data]),
        false) : e.code == o.HTTPERRORCODE.MAX_BET_LIMIT ? (app.SysNotifyManager().ShowToast("UI_Game840_MaximumNum", ["" + e.data]),
        false) : 1 != e.code
    }
    ,
    t
}(i.BaseClass);
n.BaseGameMgr = r,
module.exports = n
