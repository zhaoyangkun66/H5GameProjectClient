let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GameListManager = undefined;
var o = require("../../../script/common/GIDTool")
  , i = require("../../../script/common/room_mode_tool")
  , a = require("../../Base/Singleton")
  , r = require("../../Bundle/BundleConfig")
  , s = require("../../Define/UINameDefine")
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GoldGameList = {},
        t.GoldGameShowMap = new Map,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GameListManager",
        this.Log("Init")
    }
    ,
    Object.defineProperty(t.prototype, "GetGameGid", {
        get: function() {
            return this.gameGid
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetTypeName", {
        get: function() {
            return this.typeName
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.SetTypeName = function(e) {
        this.typeName = e
    }
    ,
    Object.defineProperty(t.prototype, "GetIsTypeShow", {
        get: function() {
            return !this.GetIsGameTruco && !this.GetIsGameTEXAS
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetIsGameTruco", {
        get: function() {
            return this.gameGid == o.GIDTool.TRUCOONE || this.gameGid == o.GIDTool.TRUCOTWO
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetIsGameTEXAS", {
        get: function() {
            return this.gameGid == o.GIDTool.TEXAS || this.gameGid == o.GIDTool.Omaha || this.gameGid == o.GIDTool.DuanPai
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetPlayOmaha", {
        get: function() {
            return this.typeName == this.GetGameTypeName(o.GIDTool.Omaha)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetPlayShortCard", {
        get: function() {
            return this.typeName == this.GetGameTypeName(o.GIDTool.DuanPai)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetIsGameRummy", {
        get: function() {
            return this.gameGid == o.GIDTool.RUMMY || this.gameGid == o.GIDTool.RUMMY_2P || this.gameGid == o.GIDTool.RUMMY_SINGLE || this.gameGid == o.GIDTool.RUMMY_2P_SINGLE || this.gameGid == o.GIDTool.RUMMY_Pool_101 || this.gameGid == o.GIDTool.RUMMY_Pool_201 || this.gameGid == o.GIDTool.RUMMY_Deal_2P || this.gameGid == o.GIDTool.RUMMY_Deal_3P
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetIsGameTeenPatti", {
        get: function() {
            return this.gameGid == o.GIDTool.Royal_TP || this.gameGid == o.GIDTool.TP_SINGLE || this.gameGid == o.GIDTool.Royal_TP_SINGLE || this.gameGid == o.GIDTool.YDZJH
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetPlayPoolRummy", {
        get: function() {
            return this.typeName == this.GetGameTypeName(o.GIDTool.RUMMY_Pool_101)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetPlayDealRummy", {
        get: function() {
            return this.typeName == this.GetGameTypeName(o.GIDTool.RUMMY_Deal_2P)
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetIsPoolDealRummy", {
        get: function() {
            return this.GetPlayPoolRummy || this.GetPlayDealRummy
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetTrucoOrder = function(e) {
        for (var t = {}, n = [o.GIDTool.TRUCOONE, o.GIDTool.TRUCOTWO], i = 0; i < n.length; i++) {
            var a = n[i]
              , r = app.GameConfigManager().GetGameListItem(a);
            for (var s in t[i] = {},
            e)
                e[s][r.game_name] && (t[i][r.game_name] = e[s][r.game_name])
        }
        return t
    }
    ,
    t.prototype.getGameRoomList = function(e) {
        this.gameGid = e;
        var t = app.RoomManager().GetGoldGame(this.gameGid);
        this.SetTypeName(this.GetOldGameType(t));
        var n = this.getGoldGameList;
        if (n[t]) {
            for (var o = {}, a = 0; a < n[t].length; a++) {
                var r = n[t][a];
                o[a] = {},
                o[a][r.gid + ""] = [],
                o[a][r.gid + ""].push(r)
            }
            var s = {}
              , c = 0;
            for (var a in o)
                for (var l in r = o[a]) {
                    var p = false
                      , d = r[l][0]
                      , h = Number(l)
                      , u = this.GetIsGameTruco ? d.game_name : this.GetGameTypeName(h);
                    for (var _ in s) {
                        var m = s[_];
                        m[u] && (m[u].push(d),
                        p = true)
                    }
                    p || (s[c] = {},
                    s[c][u] = [],
                    s[c][u].push(d),
                    c++)
                }
            return this.GetIsGameTruco && Object.keys(s).length > 1 && (s = this.GetTrucoOrder(s)),
            s
        }
        app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL)
    }
    ,
    t.prototype.GetGameTypeName = function(e) {
        var t = app.RoomManager().GetRoomModeInfoByGid(e);
        return t ? t.GameName : (this.ErrLog("GetGameTypeName fail:", e),
        "")
    }
    ,
    t.prototype.GetPlayTypeName = function(e) {
        var t = app.RoomManager().GetRoomModeInfoByGid(e);
        return t && t.PlayTypeName ? app.i18n.t(t.PlayTypeName) : (this.WarnLog("GetPlayTypeName fail:", e),
        app.i18n.t("UI.cashout_0_main_5"))
    }
    ,
    t.prototype.GetOldGameType = function(e) {
        var t = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "GoldGameTypeName");
        return t && t[e] ? t[e] : ""
    }
    ,
    t.prototype.SetOldGameType = function() {
        var e = {};
        e[app.RoomManager().GetGoldGame(this.gameGid)] = this.typeName,
        app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "GoldGameTypeName", e)
    }
    ,
    t.prototype.GetGoldGameList = function(e) {
        this.GoldGameList || (this.GoldGameList = {});
        var t = app.RoomManager().GetGoldGame(e.gid);
        if (t) {
            if (this.GoldGameList && this.GoldGameList[t]) {
                for (var n = 0; n < this.GoldGameList[t].length; n++)
                    if (this.GoldGameList[t][n].gid === e.gid)
                        return this.GoldGameShowMap.get(t) ? this.GoldGameShowMap.get(t) : (this.GoldGameShowMap.set(t, true),
                        false);
                return this.GoldGameList[t].push(e),
                this.GoldGameShowMap.set(t, true),
                true
            }
            this.GoldGameList[t] || (this.GoldGameList[t] = []),
            this.GoldGameList[t].push(e),
            this.GoldGameShowMap.set(t, true)
        }
        return false
    }
    ,
    Object.defineProperty(t.prototype, "getGoldGameList", {
        get: function() {
            return this.GoldGameList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.clearGameShowMap = function() {
        this.GoldGameShowMap.clear()
    }
    ,
    t.prototype.OntOutGoldGameCheck = function(e) {
        var t = this
          , n = app.UserManager().UserInfo.roomMode;
        app.GameManager().BackHallScene(function() {
            if (e) {
                var o = app.RoomManager().GetRoomModeInfoByRoomMode(n);
                o && t.OpenRoomList({
                    extern: true,
                    gid: o.GID,
                    loadType: 0
                })
            }
        })
    }
    ,
    t.prototype.OpenRoomList = function(e) {
        app.FormManager().ShowForm(s.UINameDefine.UIRoomList, e)
    }
    ,
    t.prototype.OpenGameHelp = function() {
        var e = {};
        e = {
            bundle: "",
            HelpPage: 2
        };
        var t = s.UINameDefine.UIGameHelp;
        if (this.GetIsGameRummy)
            e.bundle = r.BundleNames.RUMMY,
            (this.GetPlayPoolRummy || this.GetPlayDealRummy) && (e.helpName = this.GetPlayPoolRummy ? "PoolRM_help" : "DealRM_help");
        else if (this.GetIsGameTeenPatti)
            e.bundle = r.BundleNames.TP;
        else {
            if (this.GetIsGameTruco)
                return void app.FormManager().ShowForm(s.UINameDefine.Game730Help);
            this.GetIsGameTEXAS && (t = s.UINameDefine.UIGameHelpCom,
            e.HelpPage = 1,
            e.bundle = r.BundleNames.Game30,
            this.GetPlayOmaha ? e.bundle = r.BundleNames.Game910 : this.GetPlayShortCard && (e.bundle = r.BundleNames.Game900))
        }
        app.FormManager().ShowForm(t, e)
    }
    ,
    t
}(a.Singleton);
n.GameListManager = c,
module.exports = n
