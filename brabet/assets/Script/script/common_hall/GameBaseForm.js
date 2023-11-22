let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameBaseForm = undefined;
var o = require("../../Common/Base/BaseForm")
    , i = require("../../Common/Component/UINumKeyPadLabel")
    , a = require("../../Common/Define/GameEventDefine")
    , r = require("../../Common/Define/ShareDefine")
    , s = require("../../Common/Define/TrackEventName")
    , c = require("../../Common/Define/UINameDefine")
    , l = [new cc.Color(82, 180, 69), new cc.Color(255, 81, 81)]
    , p = cc._decorator
    , d = p.ccclass
    , h = (p.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.roomMode = 0,
                    t.GID = 0,
                    t.userAllGold = 0,
                    t.historyCount = 20,
                    t.gameLimit = 0,
                    t.GameBetGold = 0,
                    t.gameStatus = 0,
                    t.delayMSNode = null,
                    t.BetGoldInterval = [1, 2, 5, 10, 50, 100],
                    t.GameBetSizeLimit = {
                        min: 1,
                        max: 0
                    },
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.RegEvent(a.GameEventDefine.GAME_SERVER_UNCONNECTED, this.GameServerUnConnected),
                        this.RegEvent(a.GameEventDefine.SEND_END, this.GetGameLimit),
                        this.RegEvent(a.GameEventDefine.UPDATE_GAME_GOLD, this.updateUserAllGold)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t];
                    app.Client.OnEvent(a.GameEventDefine.GAME_LOADING_SUCCESS),
                        this.DelayMSType = -1,
                        this.BetGoldInterval = [1, 2, 5, 10, 50, 100],
                        this.setMyGold(app.UserManager().UserInfo.gold),
                        this.roomMode = app.UserManager().GetUserInfo.roomMode,
                        this.GID = app.RoomManager().GetRoomModeInfoByRoomMode(this.roomMode).GID,
                        this.Log(this.roomMode),
                        this.gameLimit = 0,
                        this.GetGameLimit(),
                        app.EventTrackManager().LogEvent(s.default.ENTER_GAME, {
                            gid: this.GID || 0
                        }),
                        this.OnFistOpenHelp(),
                        this.OnFistJoinGameBet()
                }
                ,
                t.prototype.OnClose = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t];
                    cc.audioEngine.stopAll(),
                        this.unscheduleAllCallbacks(),
                        app.RoomManager().SetEnableRefreshGold(false),
                        this.roomMode == app.UserManager().GetUserInfo.roomMode && app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_INFO)
                }
                ,
                t.prototype.ReckonBetGold = function () {
                    for (var e = app.UserManager().UserInfo.gold, t = [0, 100, 200, 500, 1e3, 5e3, 1 / 0], n = 0; n < t.length - 1; n++)
                        if (e >= t[n] && e <= t[n + 1])
                            return this.BetGoldInterval[n];
                    return this.BetGoldInterval[0]
                }
                ,
                t.prototype.onBetGoldNum = function (e, t) {
                    this.setLabelTipShow(t),
                        this.SetGameBetGold(e)
                }
                ,
                t.prototype.OnFistJoinGameBet = function () {
                    var e = app.RoomManager().GetRoomModeInfoByRoomMode(this.roomMode)
                        , t = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "FistGameBetGold");
                    t && t[e.GID] && t[e.GID] < app.UserManager().UserInfo.gold ? this.SetGameBetGold(t[e.GID]) : this.SetGameBetGold(this.ReckonBetGold())
                }
                ,
                t.prototype.SetGameBetGold = function (e) {
                    this.GameBetGold = e,
                        this.setLocalDataFistGame()
                }
                ,
                t.prototype.setLocalDataFistGame = function () {
                    var e = app.RoomManager().GetRoomModeInfoByRoomMode(this.roomMode)
                        , t = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "FistGameBetGold");
                    t && t[e.GID] || t || (t = {}),
                        t[e.GID] = this.GameBetGold,
                        app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "FistGameBetGold", t)
                }
                ,
                t.prototype.GameServerUnConnected = function () {
                    app.SysNotifyManager().ShowToast("Connection failed. Please check your network connection and try again")
                }
                ,
                t.prototype.ReckonGold = function (e) {
                    var t = Big(e).plus(this.userAllGold).toNumber();
                    t <= 0 && (t = 0),
                        this.setMyGold(t, {
                            gold: t
                        })
                }
                ,
                t.prototype.resHallInfo = function () { }
                ,
                t.prototype.RefreshGold = function (e) {
                    app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_INFO, e)
                }
                ,
                t.prototype.setMyGold = function (e, t) {
                    e = Math.max(e, 0),
                        this.userAllGold = e,
                        this.RefreshGold(t)
                }
                ,
                t.prototype.updateUserAllGold = function () {
                    this.setMyGold(app.UserManager().UserInfo.gold)
                }
                ,
                t.prototype.setLabelTipShow = function (e) {
                    e && app.ComTool().H5Platform() && e.getComponent(i.default).OnNodeShow()
                }
                ,
                t.prototype.GetGameLimit = function () {
                    this.gameLimit = app.GameConfigManager().GameBetLimit(this.roomMode),
                        this.GameBetSizeLimit = app.GameConfigManager().GameBetSizeLimit(this.GID)
                }
                ,
                t.prototype.OnFistOpenHelp = function () {
                    var e = app.RoomManager().GetRoomModeInfoByRoomMode(this.roomMode)
                        , t = app.LocalDataManager().GetConfigObject("FistGame");
                    if (!(t && t.indexOf(e.GID) > -1) && e.Help) {
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
                t.prototype.GetGoldInadequate = function () {
                    app.GameConfigManager().IsExperienceServer || app.UserManager().GetIsOfficialPopup() || app.FormManager().ShowForm(c.UINameDefine.UIFreeWindow, {
                        type: r.FreeWindowType.GoldNod
                    })
                }
                ,
                t.prototype.update = function () {
                    var e = app.GameServerManager().GetDelayMS;
                    this.delayMSNode && this.DelayMSType != e && (this.DelayMSType = e,
                        this.delayMSNode.color = l[e])
                }
                ,
                t.prototype.OnFreeRoomShowNode = function (e) {
                    e.forEach(function (e) {
                        e && (e.active = !app.GameConfigManager().IsExperienceServer)
                    })
                }
                ,
                __decorate([d], t)
        }(o.default));
n.GameBaseForm = h,
    module.exports = n
