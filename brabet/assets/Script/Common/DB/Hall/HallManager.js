let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.HallManager = undefined;
var o = require("../../../script/common/GIDTool")
    , i = require("../../../script/common/room_mode_tool")
    , a = require("../../Base/Singleton")
    , r = require("../../Define/GameEventDefine")
    , s = require("../../Define/HttpServerDefine")
    , c = require("../../Define/ShareDefine")
    , l = require("../../Define/TextDefine")
    , p = require("../../Define/TrackEventName")
    , d = require("../../Define/UINameDefine")
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.textData = {},
                t.footerPics = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "HallManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(s.HttpAPI.GET_FAQLIST, this.onFaqList, this),
                    app.HttpServerManager().RegNetPack(s.HttpAPI.GET_TEXTINFO, this.onTextInfo, this),
                    app.HttpServerManager().RegNetPack(s.HttpAPI.GET_FOOTER_PICS, this.onGetFooterPics, this),
                    this.textData = {}
            }
            ,
            t.prototype.RequestFooterPics = function () {
                app.HttpServerManager().SendHttpPack(s.HttpAPI.GET_FOOTER_PICS, {
                    token: app.UserManager().UserInfo.token
                })
            }
            ,
            t.prototype.onGetFooterPics = function (e) {
                this.footerPics = e,
                    app.Client.OnEvent(r.GameEventDefine.GET_FOOTER_PICS)
            }
            ,
            t.prototype.GetFooterPics = function () {
                return this.footerPics
            }
            ,
            t.prototype.GetFaqList = function () {
                return this.faqInfoList
            }
            ,
            Object.defineProperty(t.prototype, "GetVIPFaqShow", {
                get: function () {
                    return this.faqInfoList && this.faqInfoList.vip_faq_list && this.faqInfoList.vip_faq_list.length > 0 && app.FormManager().IsFormShow(d.UINameDefine.UIVIP)
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.RequestFaqList = function () {
                app.HttpServerManager().SendHttpPack(s.HttpAPI.GET_FAQLIST)
            }
            ,
            t.prototype.onFaqList = function (e) {
                this.faqInfoList = e,
                    app.Client.OnEvent(r.GameEventDefine.GET_FAQ_LIST, e)
            }
            ,
            t.prototype.GetFaqText = function (e) {
                var t = app.LanguageManager().GetLocalLanguage(true);
                if (this.textData[e])
                    for (var n = 0; n < this.textData[e].length; n++) {
                        var o = this.textData[e][n];
                        if (o.language == t)
                            return o.value
                    }
                return ""
            }
            ,
            t.prototype.SetFaqData = function (e, t) {
                var n = app.LanguageManager().GetLocalLanguage(true);
                !this.textData[e] && (this.textData[e] = []),
                    this.textData[e].push({
                        value: t,
                        language: n
                    })
            }
            ,
            t.prototype.onTextInfo = function (e, t) {
                this.SetFaqData(e.name, e.value),
                    app.Client.OnEvent(r.GameEventDefine.GET_FAQ_INFO, {
                        recvData: e,
                        sendData: t
                    })
            }
            ,
            t.prototype.RequestTextInfo = function (e, t) {
                app.HttpServerManager().SendHttpPack(s.HttpAPI.GET_TEXTINFO, {
                    token: app.UserManager().GetUserInfo.token,
                    name: e,
                    type: t
                })
            }
            ,
            t.prototype.IsDownload = function (e) {
                if (app.ExternGameManager().IsExternGame(e))
                    return true;
                if (cc.sys.isNative) {
                    var t = app.RoomManager().GetRoomModeInfoByGid(e);
                    return t ? !(!cc.sys.localStorage.getItem(t.BundleName) && !jsb.fileUtils.isDirectoryExist("assets/" + t.BundleName)) : (this.ErrLog("GetRoomModeInfoByGid failed: " + e),
                        false)
                }
                return true
            }
            ,
            t.prototype.IsInsufficientGoldCoins = function (e) {
                return !app.GameConfigManager().IsExperienceServer && (app.UserManager().GetUserInfo.gold < e || app.UserManager().GetUserInfo.gold <= 0) && (app.FormManager().ShowForm(d.UINameDefine.UIFreeWindow, {
                    type: c.FreeWindowType.GoldNod
                }),
                    true)
            }
            ,
            t.prototype.OnGameForbidden = function () {
                var e = app.SupportManager().SelToServiceTypeName();
                app.FormManager().ShowForm(e)
            }
            ,
            t.prototype.OnEnterGame = function (e, t) {
                app.GameConfigManager().GetShowJoinFree(e, t) ? app.FormManager().ShowForm(d.UINameDefine.UIExperience, {
                    gid: e,
                    subGid: t
                }) : this.EnterGame(e, t)
            }
            ,
            t.prototype.EnterGame = function (e, t) {
                if (app.EventTrackManager().LogEvent(p.default.CLICK_ENTER_GAME),
                    0 != app.GameConfigManager().GetGameConfig().game_status)
                    if (app.ExternGameManager().IsGameDown() && app.UserManager().GetUserInfo.gold <= 0)
                        app.FormManager().ShowForm(d.UINameDefine.UISettlement, {
                            gid: e,
                            subGid: t
                        });
                    else if (app.GameTypeManager().SetHistoryGame(e, t),
                        app.ExternGameManager().IsExternGame(e)) {
                        if (app.UserManager().GetIsOfficialPopup())
                            return;
                        app.ExternGameManager().EnterGame(e, t)
                    } else {
                        var n = app.GameConfigManager().GetGameRoomModeInfo(e);
                        if (n)
                            if (0 != n.length) {
                                var o = app.RoomManager().GetRoomModeInfoByGid(e);
                                if (o) {
                                    if (o.RoomMode != app.UserManager().GetUserInfo.roomMode)
                                        if (1 != n.length)
                                            if (o.RoomType == i.RoomType.ROOM_SINGLE)
                                                this.EnterRoomGame(o.RoomMode);
                                            else {
                                                var a = {
                                                    gid: e,
                                                    extern: false
                                                };
                                                this.EnterRoomGame(o.RoomMode, a)
                                            }
                                        else
                                            this.EnterRoomGame(n[0].way_id)
                                } else
                                    this.ErrLog("EnterGame failed GetRoomModeInfoByGid: " + e)
                            } else
                                this.ErrLog("EnterGame failed to get way list = 0: " + e);
                        else
                            this.ErrLog("EnterGame failed to get way list: " + e)
                    }
                else {
                    var r = app.TextManager().GetTextInfo(l.TextDefine.limit);
                    r && app.ConfirmManager().ShowConfirm(c.ConfirmType.ConfirmYN, r, null, this.OnGameForbidden, null, this)
                }
            }
            ,
            t.prototype.EnterRoomGame = function (e, t) {
                0 != app.GameConfigManager().GetGameConfig().game_status ? app.RoomManager().GetRoomModeInfoByRoomMode(e) ? app.RoomManager().EnterGame(e, t) : this.ErrLog("EnterRoomGame failed GetRoomModeInfoByRoomMode: " + e) : this.Log("EnterRoomGame failed Game Forbidden ")
            }
            ,
            t.prototype.ImmediateEnterGame = function (e, t) {
                app.RoomManager().ImmediateEnterGame(e, t)
            }
            ,
            Object.defineProperty(t.prototype, "GetSelectGameType", {
                get: function () {
                    return this.SelectGameType
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetFitRoomMode = function (e) {
                var t = app.HGameManager().GetRoomConfigByGid(o.GIDTool.YDZJH)
                    , n = app.HGameManager().GetRoomConfigByGid(o.GIDTool.RUMMY);
                return this.GetFitGame(e, t) || this.GetFitGame(e, n)
            }
            ,
            t.prototype.GetFitGame = function (e, t) {
                if (!t || 0 === t.length)
                    return 0;
                for (var n, o = t[0].way_id, i = 0, a = t.length - 1; i <= a;) {
                    var r = t[n = Math.floor((i + a) / 2)].min_gold
                        , s = t[n].way_id;
                    if (e < r)
                        a = n - 1;
                    else if (e > r)
                        i = n + 1,
                            o = s;
                    else if (e == r)
                        return s
                }
                return o
            }
            ,
            t.prototype.RequestFreeGame = function () { }
            ,
            t.prototype.RequestHundredLeaveEnterRoom = function (e) {
                this.RequestHundredLeaveRoom(e),
                    this.OnEnterGame(e)
            }
            ,
            t.prototype.RequestHundredLeaveRoom = function (e) {
                var t = app.RoomManager().GetRoomModeInfoByGid(e);
                t ? t.RoomMode != app.UserManager().GetUserInfo.roomMode && t.RoomType == i.RoomType.ROOM_HUNDRED && app.RoomManager().IsHundredGame && app.GameServerManager().send(app.GameServerManager().req_key_map.req_leave_hall.key, {
                    hall_id: app.UserManager().GetUserInfo.roomMode
                }, true) : this.ErrLog("RequestHundredLeaveRoom: " + e)
            }
            ,
            t.prototype.GetFreeOutGameWindow = function () {
                app.GameConfigManager().IsExperienceServer && app.FormManager().ShowForm(d.UINameDefine.UIFreeWindow, {
                    type: c.FreeWindowType.FreeOutGame
                })
            }
            ,
            t.prototype.CloseIndependentForm = function () {
                var e = app.GameManager().GetCurSceneInfo.concat(d.UINameDefine.UIDownAndSevice);
                app.FormManager().CloseIndependentForm(e)
            }
            ,
            t.prototype.ShowHallForm = function (e, t) {
                undefined === e && (e = d.UINameDefine.UIHall),
                    this.CloseIndependentForm(),
                    app.FormManager().IsFormShow(e) || app.FormManager().ShowForm(e, t)
            }
            ,
            t.prototype.OnReload = function () { }
            ,
            t.prototype.LoadImage = function (e, t) {
                if (e) {
                    if (t) {
                        var n = t.substring(t.lastIndexOf(".") + 1);
                        if (!(t.indexOf("http") > -1 && "jpeg" != n && "png" != n))
                            return app.ControlManager().CreateLoadPromiseByUrl(t).then(function (t) {
                                var n = function (e) {
                                    if (cc.isValid(e, true) && e && e.getComponent(cc.Sprite)) {
                                        var n = new cc.SpriteFrame(t);
                                        app.PlaceholderManager().urlS.push(n),
                                            app.PlaceholderManager().imgNode.push(e)
                                    }
                                };
                                Array.isArray(e) ? e.forEach(function (e) {
                                    n(e)
                                }) : n(e),
                                    app.PlaceholderManager().SubLoadCount()
                            }).catch(function () {
                                app.PlaceholderManager().SubLoadCount()
                            });
                        this.ErrLog("LoadImage failed: " + t)
                    }
                } else
                    this.ErrLog("LoadImage failed: " + t)
            }
            ,
            t.prototype.LoadImageIncrease = function (e, t, n) {
                app.PlaceholderManager().FirstLogin && n && app.PlaceholderManager().LoadSunCount < app.PlaceholderManager().LoadMaxCount ? this.LoadImage(e, t) && (this.Log("placeholder==========LoadImage"),
                    app.PlaceholderManager().LoadCount++,
                    app.PlaceholderManager().LoadSunCount++) : app.ImageUtil().LoadImage(e, t)
            }
            ,
            t.prototype.OnShowHallRank = function (e) {
                var t = false;
                return e.y <= app.Client.GetUILayer().height && e.x <= app.Client.GetUILayer().width && (t = true),
                    t
            }
            ,
            t
    }(a.Singleton);
n.HallManager = h,
    module.exports = n
