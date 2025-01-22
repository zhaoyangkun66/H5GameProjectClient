let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.HGameManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("../Define/HttpServerDefine")
    , r = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.CountryGameLogo = null,
                t.RoomConfig = null,
                t.RoomConfigList = null,
                t.RoomBetGoldConfigs = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "HGameManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.ROOM_CONFIG, this.onRoomConfig, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.COUNTRY_GAME_LOGO, this.onCountryGameLogo, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.ROOM_BET_GOLD_CONFIGS, this.onRoomBetGoldConfigs, this)
            }
            ,
            t.prototype.RequestAllInfo = function () {
                this.RequestCountryGameLogo(),
                    this.RequestRoomBetGoldConfigs()
            }
            ,
            t.prototype.onRoomConfig = function (e) {
                var t = this;
                this.RoomConfigList = e,
                    this.RoomConfig = {},
                    this.RoomConfigList.forEach(function (e) {
                        var n = e.way_id
                            , o = app.RoomManager().GetRoomModeInfoByRoomMode(n);
                        if (o) {
                            var i = o.GID
                                , a = t.RoomConfig[i];
                            a ? a.push(e) : t.RoomConfig[i] = [e]
                        }
                    }),
                    app.Client.OnEvent(i.GameEventDefine.ROOM_LIST)
            }
            ,
            t.prototype.GetRoomConfig = function () {
                return this.RoomConfigList
            }
            ,
            t.prototype.GetRoomConfigByGid = function (e) {
                return this.RoomConfig && this.RoomConfig[e]
            }
            ,
            t.prototype.RequestRoomConfig = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.ROOM_CONFIG)
            }
            ,
            t.prototype.RequestCountryGameLogo = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.COUNTRY_GAME_LOGO)
            }
            ,
            t.prototype.onCountryGameLogo = function (e) {
                //  if (isgoServer) {
                //      e = require("Http_countryGameLogo")
                // }
  //setTimeout(function () {
    this.CountryGameLogo = e,
    app.PlaceholderManager().GameLogoEnd = true

   //}, 1000);
 
            }
            ,
            Object.defineProperty(t.prototype, "GetCountryGameLogoInfo", {
                get: function () {
                    return this.CountryGameLogo
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetCountryGameLogo = function (e, t) {
                var n = this.GetGameLogoInfoByGid(e);
                return n ? null == t ? n.fury_pic_url : 2 == t || 3 == t ? app.ComTool().H5Platform() ? n.fury_pic_phone_url : n.fury_pic_pc_url : n.fury_pic_url : null
            }
            ,
            t.prototype.GetGameLogoInfoByGid = function (e) {
                if (this.CountryGameLogo)
                    for (var t = 0; t < this.CountryGameLogo.length; t++)
                        if (this.CountryGameLogo[t] && this.CountryGameLogo[t].gid == e)
                            return this.CountryGameLogo[t];
                return null
            }
            ,
            t.prototype.onRoomBetGoldConfigs = function (e) {
                if (isgoServer) {
                    e = require("Http_roomBetGoldConfigs")
                }
                this.RoomBetGoldConfigs = e,
                    app.Client.OnEvent(i.GameEventDefine.ROOM_BET_GOLD_CONFIGS)
            }
            ,
            t.prototype.RequestRoomBetGoldConfigs = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.ROOM_BET_GOLD_CONFIGS)
            }
            ,
            t.prototype.GetRoomBetGoldConfigs = function (e) {
                return (this.RoomBetGoldConfigs ? this.RoomBetGoldConfigs[e] : null) || (this.ErrLog("RoomBetGoldConfigs Fail ==>", e),
                    null)
            }
            ,
            t
    }(o.Singleton);
n.HGameManager = r,
    module.exports = n
