let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.RoomManager = undefined;
var o = require("../Bundle/BundleManager")
  , i = require("../Bundle/EventDefine")
  , a = require("../../script/common/room_mode_tool")
  , r = require("../Base/Singleton")
  , s = require("../Define/FormDefine")
  , c = require("../Net/MsgEventDefine")
  , l = require("../../script/common/error_define")
  , p = require("../../script/common/GIDTool")
  , d = require("../Define/UINameDefine")
  , h = [a.RoomMode.ROOM_MODE_Roulette, a.RoomMode.ROOM_MODE_DRAGON_TIGER_HALL, a.RoomMode.ROOM_MODE_LUN_PAN]
  , u = [p.GIDTool.WCS]
  , _ = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.gameId = "",
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "RoomManager",
        this.Log("Init"),
        this.RoomModeInfo = app.SysDataManager().GetTableDict(s.FormDefine.RoomModeInfo),
        cc.systemEvent.on(i.default.ENTER_GAME, this.OnEnterGame, this),
        cc.systemEvent.on(c.default.EVENT_CREATE_ROOM, this.respCreateRoom, this)
    }
    ,
    t.prototype.respCreateRoom = function(e) {
        if (0 == e.Eno || 30103 == e.Eno)
            app.UserManager().UserInfo.room_no = e.RoomID,
            app.UserManager().UserInfo.roomMode = e.RoomMode,
            app.RoomMessageCenter().startMonitorEvent(),
            app.UserManager().UserInfo.room_no > 0 && app.UserManager().UserInfo.roomMode < 1e4 && app.GameServerManager().send("req_roominfo");
        else if ("number" == typeof e.Eno) {
            var t = l.get(e.Eno);
            t && app.SysNotifyManager().ShowToast(t())
        } else
            app.SysNotifyManager().ShowToast(e.Eno)
    }
    ,
    t.prototype.OnEnterGame = function(e) {
        var t = e.customData
          , n = e.roomMode;
        if (t)
            return 0 === t.loadType ? void app.GameListManager().OpenRoomList(t) : 1 === t.loadType ? void (t.cb && t.cb()) : 2 === t.loadType ? void this.RequestRoomInfo(t.gameId, t.roomId, t.venue) : void this.ErrLog("unknown OnEnterGame");
        this.SendEnterRoom(n)
    }
    ,
    t.prototype.SendEnterRoom = function(e) {
        var t = this.RoomModeInfo[e];
        if (t) {
            if (t.RoomType == a.RoomType.ROOM_SINGLE)
                return this.gameId = t.GID.toString(),
                app.UserManager().UserInfo.roomMode = e,
                void app.GameManager().enterSceneByRoomMode(e);
            if (t.RoomType != a.RoomType.ROOM_HUNDRED)
                if (t.RoomType != a.RoomType.ROOM_GOLD) {
                    if (t.RoomType == a.RoomType.GO_ROOM_HUNDRED) {
                        var n = t.GID.toString()
                          , o = this.GetGameRoomMgr(n);
                        if (o)
                            return o.gameId = n,
                            o.OnReload(),
                            void o.ReqJoinRoom(n)
                    }
                    this.ErrLog("EnterGame Failed: " + e)
                } else
                    app.GameServerManager().send(app.GameServerManager().req_key_map.req_match_room.key, {
                        RoomMode: e,
                        Rematch: 1
                    }, true);
            else
                app.GameServerManager().send(app.GameServerManager().req_key_map.req_join_hall.key, {
                    hall_id: e
                }, true)
        } else
            this.ErrLog("EnterGame Failed: " + e)
    }
    ,
    t.prototype.EnterGame = function(e, t) {
        var n = this;
        t && (t.loadType = 0);
        var i = null;
        if (this.GetLoadedBundle(e)) {
            if (t)
                return void app.GameListManager().OpenRoomList(t);
            i = function() {
                n.SendEnterRoom(e)
            }
        } else
            i = function() {
                o.BundleManager.Instance.enterBundle(e, t)
            }
            ;
        this.isGameLoading(e) ? this.OpenGameLoading(e, i) : i && i()
    }
    ,
    t.prototype.isGameLoading = function(e) {
        var t = this.GetRoomModeInfoByRoomMode(e);
        return !!(t && t.UILoading && app.ClientConfigManager().GetGlobalConfig.ShowGameLoading)
    }
    ,
    t.prototype.OpenGameLoading = function(e, t) {
        app.GameManager().PushFightDefaultForm(),
        app.FormManager().ShowForm(d.UINameDefine.UIGameLoading, e, t)
    }
    ,
    t.prototype.GetLoadedBundle = function(e) {
        var t = this.GetRoomModeInfoByRoomMode(e);
        return !!t && o.BundleManager.Instance.GetLoadedBundle(t.BundleName)
    }
    ,
    t.prototype.ImmediateEnterGameCb = function(e) {
        var t = this;
        app.UserManager().UserInfo.roomMode = e,
        app.GameManager().enterSceneByRoomMode(e, function() {
            t.SendEnterGSRoom(e)
        })
    }
    ,
    t.prototype.SendEnterGSRoom = function(e) {
        var t = this.GetRoomModeInfoByRoomMode(e);
        if (t) {
            var n = t.RoomType;
            if (!app.GameServerManager().GetLoginSuccess)
                return this.ErrLog("ImmediateEnterGame failed, game server not available."),
                void (n != a.RoomType.ROOM_HUNDRED && n != a.RoomType.ROOM_GOLD || app.SysNotifyManager().ShowToast("Connection failed. Please check your network connection and try again"));
            n == a.RoomType.ROOM_HUNDRED ? app.GameServerManager().send(app.GameServerManager().req_key_map.req_join_hall.key, {
                hall_id: e
            }, true) : n == a.RoomType.ROOM_GOLD && app.GameServerManager().send(app.GameServerManager().req_key_map.req_match_room.key, {
                RoomMode: e,
                Rematch: 1
            }, true)
        } else
            this.ErrLog("SendEnterGSRoom failed GetRoomModeInfoByRoomMode: " + e)
    }
    ,
    t.prototype.ImmediateEnterGame = function(e, t) {
        if (this.GetRoomModeInfoByRoomMode(e).BundleName)
            if (this.GetLoadedBundle(e))
                t && t();
            else {
                var n = {
                    cb: t,
                    loadType: 1
                };
                o.BundleManager.Instance.enterBundle(e, n)
            }
    }
    ,
    t.prototype.GetRoomModeInfoByGid = function(e) {
        for (var t = Object.keys(this.RoomModeInfo), n = 0; n < t.length; n++) {
            var o = this.RoomModeInfo[t[n]];
            if (o.GID == e)
                return o
        }
        return null
    }
    ,
    t.prototype.GetRoomModeInfoByRoomMode = function(e) {
        return this.RoomModeInfo[e]
    }
    ,
    t.prototype.GetRoomModeInfoByBundleName = function(e) {
        for (var t = Object.keys(this.RoomModeInfo), n = 0; n < t.length; n++) {
            var o = this.RoomModeInfo[t[n]];
            if (o.BundleName == e)
                return o
        }
        return null
    }
    ,
    t.prototype.GetRoomModeInfoBySceneName = function(e) {
        for (var t = Object.keys(this.RoomModeInfo), n = 0; n < t.length; n++) {
            var o = this.RoomModeInfo[t[n]];
            if (o.SceneName == e)
                return o
        }
        return null
    }
    ,
    Object.defineProperty(t.prototype, "IsSingleGame", {
        get: function() {
            return this.GetRoomType == a.RoomType.ROOM_SINGLE
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "IsHundredGame", {
        get: function() {
            return this.GetRoomType == a.RoomType.ROOM_HUNDRED
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "IsRoomCard", {
        get: function() {
            return this.GetRoomType == a.RoomType.ROOM_CARD
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "IsRoomGold", {
        get: function() {
            return this.GetRoomType == a.RoomType.ROOM_GOLD
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetRoomType", {
        get: function() {
            var e = app.UserManager().GetUserInfo.roomMode;
            if (0 == e)
                return a.RoomType.ROOM_NONE;
            var t = this.GetRoomModeInfoByRoomMode(e);
            return t ? t.RoomType : (this.ErrLog("GetRoomType failed."),
            a.RoomType.ROOM_CARD)
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.SetEnableRefreshGold = function(e) {
        this.EnableRefreshGold = e
    }
    ,
    t.prototype.SetWheelAnimation = function(e) {
        this.IsWheelAnimation = e
    }
    ,
    Object.defineProperty(t.prototype, "EnableRefresh", {
        get: function() {
            var e = Number(this.gameId);
            return !!(e && u.indexOf(e) > -1) || !this.IsSingleGame && (h.indexOf(app.UserManager().GetUserInfo.roomMode) > -1 ? this.EnableRefreshGold : !this.IsWheelAnimation)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "isDouble", {
        get: function() {
            var e = app.UserManager().GetUserInfo.room_no;
            return e >= a.RoomMode.ROOM_MODE_Roulette && e <= a.RoomMode.ROOM_MODE_OtherRoulette
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "isPoolDealRummy", {
        get: function() {
            return !(!this.isDealRummy && !this.isPoolRummy)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "isPoolRummy", {
        get: function() {
            var e = app.UserManager().GetUserInfo.roomMode;
            return !(!a.RoomModeTool.isPoolRummy_101(e) && !a.RoomModeTool.isPoolRummy_201(e))
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "isDealRummy", {
        get: function() {
            var e = app.UserManager().GetUserInfo.roomMode;
            return !(!a.RoomModeTool.isDealRummy2p(e) && !a.RoomModeTool.isDealRummy3p(e))
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetRoomMgr = function(e) {
        return app.GetInstance(e)
    }
    ,
    t.prototype.GetCurRoomMgr = function() {
        return this.GetGameRoomMgr(this.gameId)
    }
    ,
    t.prototype.GetGameRoomMgr = function(e) {
        var t = "Game" + e + "Mgr";
        return this.GetRoomMgr(t)
    }
    ,
    t.prototype.GetCurHttpGameMgr = function() {
        var e = "Game" + this.gameId + "Mgr";
        return app.GetInstance(e)
    }
    ,
    Object.defineProperty(t.prototype, "GetCurRoomType", {
        get: function() {
            var e = Number(this.gameId);
            if (e) {
                var t = this.GetRoomModeInfoByGid(e);
                if (t)
                    return t.RoomType
            }
            return a.RoomType.ROOM_NONE
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.LoadBundleAndRequestRoomInfo = function(e, t, n) {
        var i = this.GetRoomModeInfoByGid(Number(e)).RoomMode;
        if (this.GetLoadedBundle(i))
            this.RequestRoomInfo(e, t, n);
        else {
            var a = {
                loadType: 2,
                gameId: e,
                roomId: t,
                venue: n
            };
            o.BundleManager.Instance.enterBundle(i, a)
        }
    }
    ,
    t.prototype.RequestRoomInfo = function(e, t, n) {
        var o = this.GetGameRoomMgr(e);
        o ? (o.gameId = e,
        o.OnReload(),
        o.ReqGetRoomInfo(t, n)) : this.ErrLog("RequestRoomInfo: " + e + ", " + t + ", " + n)
    }
    ,
    t.prototype.IsOutGoldGamePop = function() {
        if (!this.IsRoomGold)
            return false;
        var e = cc.mg.global.getMegHandleBase();
        return !(!e || !e.checkLeaveRoom())
    }
    ,
    t.prototype.GetGoldGame = function(e) {
        var t = this.GetRoomModeInfoByGid(e);
        if (t && (t.RoomType == a.RoomType.ROOM_GOLD || t.RoomType == a.RoomType.ROOM_CARD))
            return t.ShowName
    }
    ,
    t.prototype.GetGameScene = function() {
        var e = app.UserManager().GetUserInfo.roomMode;
        if (0 != e) {
            var t = this.GetRoomModeInfoByRoomMode(e);
            if (t)
                return t.SceneName;
            this.ErrLog("GetGameScene error: " + e)
        }
    }
    ,
    t
}(r.Singleton);
n.RoomManager = _,
module.exports = n
