let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.LoginManager = n.websiteTypeArr = undefined;
var o = require("../../script/common/room_mode_tool")
    , i = require("../Base/Singleton")
    , a = require("../Define/GameEventDefine")
    , r = require("../Define/HttpServerDefine")
    , s = require("../Define/TrackEventName")
    , c = require("../Net/MsgEventDefine")
    , l = require("../Define/ShareDefine")
    , p = require("../Define/UINameDefine")
    , d = require("../Base/BaseRoomDefine");
n.websiteTypeArr = ["Gmail", "Outlook", "zoho", "HubSpot", "pepipost"];
var h = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._AreaCode = null,
            t.newPaw = null,
            t.newCode = null,
            t.isFormLogin = false,
            t.isLoginAnimPlay = false,
            t.userAuth = null,
            t.reconRoomMode = 0,
            t.isVerification = false,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "LoginManager",
                this.Log("Init"),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_AREA_CODES, this.OnGetAreaCodes, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.LOGIN_LOGIN, this.OnLogin, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.LOGIN_REGISTER, this.OnLoginRegister, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.RESET_PASSWORD, this.OnResetPassword, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.VISITOR_LOGIN, this.OnVisitorLogin, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.THIRD_LOGIN, this.OnThirdLogin, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.EXPERIENCE_LOGIN, this.OnExperienceLogin, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_ONLINE_NUM, this.OnOnlineNum, this),
                app.Client.RegEvent(a.GameEventDefine.FACEBOOK_LOGIN_SUCCESS, this.onFacebookLoginSuccess, this),
                app.Client.RegEvent(a.GameEventDefine.GOOGLE_LOGIN_SUCCESS, this.onGoogleLoginSuccess, this),
                app.Client.RegEvent(a.GameEventDefine.GO_GAME_SERVER_CONNECTED, this.OnGoGameServerConnected, this),
                app.GoServerManager().RegisterMsgHandler(d.BaseRoomDefine.UserAuth, this.OnUserAuth, this),
                app.GoServerManager().RegisterMsgHandler(d.BaseRoomDefine.UserKick, this.OnUserKick, this),
                cc.systemEvent.on(a.GameEventDefine.GAME_SERVER_CONNECTED, this.OnServerConnected, this),
                cc.systemEvent.on(c.default.EVENT_LOGIN, this.OnRspAccountInfo, this),
                cc.systemEvent.on(c.default.EVENT_LOGIN_FINISH, this.OnRespLoginFinish, this),
                cc.systemEvent.on(c.default.EVENT_LOGOUT, this.OnRespLogout, this),
                cc.systemEvent.on(c.default.EVENT_SELF_JOIN_ROOM, this.OnRespJoinRoom, this)
        }
        ,
        Object.defineProperty(t.prototype, "GetIsFormLogin", {
            get: function () {
                return this.isFormLogin
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetIsLoginAnimPlay", {
            get: function () {
                return this.isLoginAnimPlay
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.SetIsLoginAnimPlay = function (e) {
            this.isLoginAnimPlay = e
        }
        ,
        t.prototype.SetIsFormLogin = function (e) {
            this.isFormLogin = e
        }
        ,
        t.prototype.StartLogin = function () {
            if (app.ComTool().CheckPlatform() && app.ClientConfigManager().getLocalUrlDataByName("token"))
                this.VisitorLogin();
            else if (this.Log("StartLogin", app.GameConfigManager().IsExperienceServer),
                app.GameConfigManager().IsExperienceServer)
                this.ExperienceLogin();
            else {
                var e = app.UserManager().GetLastLoginUser();
                e ? app.LoginManager().TokenLogin(e.token) : this.VisitorLogin()
            }
        }
        ,
        t.prototype.VisitorLogin = function () {
            app.EventTrackManager().LogEvent(s.default.VISITOR_LOGIN_BEGIN);
            var e = {};
            this.AddLoginParam(e),
                app.HttpServerManager().SendHttpPack(r.HttpAPI.VISITOR_LOGIN, e)
        }
        ,
        t.prototype.OnVisitorLogin = function (e) {
            app.EventTrackManager().LogEvent(s.default.VISITOR_LOGIN_END),
                this.SetUserInfoAndLoginGS(e)
        }
        ,
        t.prototype.OnThirdLogin = function (e) {
            app.EventTrackManager().LogEvent(s.default.THIRD_LOGIN_END),
                this.SetUserInfoAndLoginGS(e)
        }
        ,
        t.prototype.ExperienceLogin = function () {
            app.EventTrackManager().LogEvent(s.default.EXERCISE_LOGIN_BEGIN);
            var e = {
                uid: app.ClientConfigManager().getLocalUrlDataByName("uid")
            };
            this.AddLoginParam(e),
                app.HttpServerManager().SendHttpPack(r.HttpAPI.EXPERIENCE_LOGIN, e)
        }
        ,
        t.prototype.OnExperienceLogin = function (e) {
            app.EventTrackManager().LogEvent(s.default.EXERCISE_LOGIN_END),
                this.SetUserInfoAndLoginGS(e)
        }
        ,
        t.prototype.GetDeviceID = function () {
            var e = cc.sys.localStorage.getItem("testID");
            if (null == e && (e = app.ComTool().RandomGUID(),
                app.ComTool().CheckPlatform() && (e = cc.sys.os == cc.sys.OS_ANDROID || cc.sys.os == cc.sys.OS_IOS ? "H5_" + e : "PC_" + e),
                cc.sys.localStorage.setItem("testID", e)),
                app.ComTool().CheckPlatform()) {
                var t = app.ClientConfigManager().getLocalUrlDataByName("token");
                t && (e = t)
            }
            if (app.ComTool().IsAndroid() || app.ComTool().IsIOS() || app.ComTool().AndroidHybirdPlatform()) {
                var n = app.NativeMgr().getDeviceId();
                n && (e = n)
            }
            return e
        }
        ,
        t.prototype.RequestLogin = function (e) {
            app.EventTrackManager().LogEvent(s.default.USER_LOGIN_BEGIN);
            var t = this.AddLoginParam(e);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.LOGIN_LOGIN, t)
        }
        ,
        t.prototype.OnLogin = function (e, t) {
            app.EventTrackManager().LogEvent(s.default.USER_LOGIN_END),
                app.Client.OnEvent(a.GameEventDefine.STOP_LOGIN_ANIM),
                e.code || this.setNewPawCode(t.password, t.area),
                this.SetUserInfoAndLoginGS(e)
        }
        ,
        t.prototype.GetChangePaw = function (e, t) {
            this.setNewPawCode(t),
                this.TokenLogin(e)
        }
        ,
        t.prototype.setNewPawCode = function (e, t) {
            this.newPaw = e,
                this.newCode = t
        }
        ,
        t.prototype.LoginSaveStorage = function (e) {
            var t = this.getUserLoginCode();
            e.tel && (t.phone_password = this.newPaw ? this.newPaw : e.tel == t.phone_account ? t.phone_password : "",
                t.phone_account = e.tel),
                e.account && (t.mail_password = this.newPaw ? this.newPaw : e.account == t.mail_account ? t.mail_password : "",
                    t.mail_account = e.account),
                t.code = this.newCode ? this.newCode : t.code,
                this.setNewPawCode("", ""),
                this.setUserLoginCode(t)
        }
        ,
        t.prototype.RequestRegister = function (e) {
            app.EventTrackManager().LogEvent(s.default.USER_REGISTER_BEGIN);
            var t = this.AddLoginParam(e);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.LOGIN_REGISTER, t)
        }
        ,
        t.prototype.OnLoginRegister = function (e, t) {
            app.Client.OnEvent(a.GameEventDefine.STOP_LOGIN_ANIM),
                app.EventTrackManager().LogEvent(s.default.USER_REGISTER_END),
                e.code || this.setNewPawCode(t.pwd, t.area),
                this.SetUserInfoAndLoginGS(e)
        }
        ,
        t.prototype.TokenLogin = function (e) {
            app.EventTrackManager().LogEvent(s.default.TOKEN_LOGIN_BEGIN);
            var t = this.AddLoginParam({
                token: e
            });
            app.UserManager().RequestUserInfo(t)
        }
        ,
        t.prototype.onFacebookLoginSuccess = function (e) {
            app.EventTrackManager().LogEvent(s.default.THIRD_LOGIN_BEGIN);
            var t = e
                , n = this.AddLoginParam(t);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.THIRD_LOGIN, n)
        }
        ,
        t.prototype.onGoogleLoginSuccess = function (e) {
            var t = e
                , n = this.AddLoginParam(t);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.THIRD_LOGIN, n)
        }
        ,
        t.prototype.AddLoginParam = function (e) {
            e.mainVer = app.ClientConfigManager().GetGlobalConfig.mainVer,
                e.subVer = app.ClientConfigManager().GetGlobalConfig.subVer,
                e.pkgName = app.ComTool().getPackageName(),
                e.nativeVer = app.NativeMgr().getApkVersion(),
                e.deviceid = this.GetDeviceID();
            var t = app.ClientConfigManager().GetClientConfig
                , n = t.agentID
                , o = t.gaid
                , i = t.ajtrackerName
                , a = t.aj_gaid;
            n && (e.agentid = n),
                o && (e.gaid = o),
                i && (e.ajtrackerName = i),
                a && (e.aj_gaid = a),
                cc.sys.platform && (e.Type = cc.sys.platform),
                e.source = "10",
                e.Type = cc.sys.platform,
                e.os = cc.sys.os,
                e.ioswebclip = 1 == Number(app.ClientConfigManager().getLocalUrlDataByName("ioswebclip")) ? 1 : 0,
                e.isShell = app.ComTool().AndroidHybirdPlatform() ? 1 : 0,
                0 == e.ioswebclip && (e.ioswebclip = app.ComTool().getIosBrowserType() ? 1 : 0);
            var r = app.GoogleReCaptChaManager().Token;
            r && (e.recaptcha = r);
            var s = app.ClientConfigManager().getLocalUrlDataByName("tj_task");
            s && (e.tj_task = s);
            var c = app.ClientConfigManager().getLocalUrlDataByName("tj_oid");
            c && (e.tj_oid = c);
            var l = app.ClientConfigManager().getLocalUrlDataByName("tj_sign");
            l && (e.tj_sign = l);
            var p = app.ClientConfigManager().getLocalUrlDataByName("tj_did");
            p && (e.tj_did = p);
            var d = app.ClientConfigManager().getLocalUrlDataByName("tj_code");
            return d && (e.agentid = d),
                e
        }
        ,
        t.prototype.RequestAreaCodes = function () {
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_AREA_CODES)
        }
        ,
        t.prototype.OnGetAreaCodes = function (e) {
            this._AreaCode = e,
                app.Client.OnEvent(a.GameEventDefine.GET_AREA_CODES)
        }
        ,
        t.prototype.GetAreaCode = function () {
            return this._AreaCode
        }
        ,
        t.prototype.GetDefaultAreaCode = function () {
            return this._AreaCode ? this._AreaCode[0] : null
        }
        ,
        t.prototype.Logout = function () {
            this.Log("Logout");
            var e = app.UserManager().GetQuestAccount();
            this.RemoveCurrentUser(),
                e ? this.TokenLogin(e.token) : this.VisitorLogin()
        }
        ,
        t.prototype.SetUserInfoAndLoginGS = function (e) {
            var t = this;
            if (e.code != l.ReqFailCode.IP_DEVICE_LIMIT) {
                if (e.code == l.ReqFailCode.LOGIN_FAILED_VERIFICATION)
                    return app.GoogleReCaptChaManager().showDiv(),
                        void (this.isVerification = true);
                this.isVerification = false,
                    app.EventTrackManager().LogEvent(s.default.GET_USER_INFO),
                    app.Client.Reload(),
                    this.LoginSaveStorage(e),
                    app.UserManager().SetUserInfo(e),
                    app.Client.OnEvent(a.GameEventDefine.START_LOAD_HALL),
                    app.GameManager().enterSceneByRoomMode(o.RoomMode.HALL, function () {
                        app.Client.OnEvent(a.GameEventDefine.LOAD_HALL_SUCCESS);
                        var e = app.ClientConfigManager().getLocalUrlDataByName("room_mod");
                        t.Log("SetUserInfoAndLoginGS", e),
                            e ? app.HallManager().EnterRoomGame(Number(e)) : t.reconRoomMode ? t.ReconnectGame() : t.userAuth ? (app.RoomManager().LoadBundleAndRequestRoomInfo(t.userAuth.GameId, t.userAuth.RoomNo, t.userAuth.GameVenue),
                                t.userAuth = null) : app.ClientConfigManager().StartRouter(),
                            app.EventTrackManager().LogEvent(s.default.AJ_CONSUMEEVENT)
                    }),
                    this.LoginGS(),
                    Number(app.GameConfigManager().GetGameConfig().ngs_switch) && this.LoginGoGs()
            } else
                app.FormManager().IsFormShow(p.UINameDefine.UILoginSign) || app.FormManager().ShowForm(p.UINameDefine.UILoginSign, 1)
        }
        ,
        t.prototype.LoginGS = function () {
            app.EventTrackManager().LogEvent(s.default.LOGIN_GS_BEGIN);
            var e = app.GameConfigManager().GetGameServerUrl();
            app.GameServerManager().connect(e)
        }
        ,
        t.prototype.OnServerConnected = function () {
            app.EventTrackManager().LogEvent(s.default.LOGIN_GS_CONNECTED);
            var e = app.UserManager().GetUserInfo
                , t = {
                    headimg: e.headimg,
                    gid: 0,
                    token: e.token,
                    uid: e.uid,
                    time: Math.ceil(Date.now() / 1e3),
                    sign: ""
                };
            app.GameServerManager().send("req_login", t)
        }
        ,
        t.prototype.OnRspAccountInfo = function (e) {
            cc.mg.global.gs_time_diff = Math.round(e.time - Date.now() / 1e3),
                this.reconRoomMode = e.roomMode,
                app.UserManager().UpdateUserInfo(e)
        }
        ,
        t.prototype.OnRespLoginFinish = function () {
            app.EventTrackManager().LogEvent(s.default.LOGIN_GS_END),
                app.RedDotManager().RequestRecharge_InfoV2(),
                (app.GameManager().InHallScene || app.GameManager().InGameScene) && this.ReconnectGame()
        }
        ,
        t.prototype.ReconnectGame = function () {
            if (!app.RoomManager().IsSingleGame) {
                var e = this.reconRoomMode;
                return app.UserManager().UserInfo.roomMode || (app.UserManager().UserInfo.roomMode = this.reconRoomMode),
                    this.reconRoomMode = 0,
                    e > 1e4 ? (app.HallMessageCenter().startMonitorEvent(),
                        void app.GameServerManager().send(app.GameServerManager().req_key_map.req_hall_info.key, {
                            hall_id: e
                        })) : e > 0 ? (app.RoomMessageCenter().startMonitorEvent(),
                            void app.GameServerManager().send(app.GameServerManager().req_key_map.req_roominfo.key)) : undefined
            }
        }
        ,
        t.prototype.LoginGoGs = function () {
            var e = app.GameConfigManager().GetGoGameServerUrl();
            app.GoServerManager().Connect(e)
        }
        ,
        t.prototype.OnGoGameServerConnected = function () {
            var e = app.UserManager().UserInfo
                , t = {
                    server_id: "1000",
                    token: e.token,
                    ip: e.ip
                };
            app.GoServerManager().SendMessage(d.BaseRoomDefine.UserAuth, t)
        }
        ,
        t.prototype.OnUserAuth = function (e) {
            0 === e.code ? (this.Log("OnUserAuth: ", app.ComUtil().format_date(e.time)),
                app.GoServerManager().SetServerTimeOffset(e.time - Math.floor(Date.now() / 1e3)),
                e.data && e.data.GameId && (this.userAuth = e.data,
                    app.GameManager().InHallScene || app.RoomManager().GetCurRoomType == o.RoomType.GO_ROOM_HUNDRED) && app.RoomManager().LoadBundleAndRequestRoomInfo(this.userAuth.GameId, this.userAuth.RoomNo, this.userAuth.GameVenue)) : app.SysNotifyManager().ShowToast(e.msg)
        }
        ,
        t.prototype.OnRespLogout = function (e) {
            switch (e.code) {
                case 10010:
                    this.KickOut("UI.System_43");
                    break;
                case 10002:
                    this.KickOut("UI.System_46");
                    break;
                case 10011:
                    break;
                case 10012:
                case 10100:
                case 10005:
                    this.KickOut("UI.System_46");
                    break;
                case 10001:
                case 10003:
                case 10004:
                default:
                    app.ConfirmManager().ShowConfirm(l.ConfirmType.ConfirmOK, "Game Error: Eno: " + e.code, [], null)
            }
        }
        ,
        t.prototype.OnUserKick = function (e) {
            this.KickOut("UI.System_43"),
                app.ConfirmManager().ShowConfirm(l.ConfirmType.ConfirmOK, "Game Error: Eno: " + e.Reason, [], null)
        }
        ,
        t.prototype.KickOut = function (e) {
            var t = this;
            this.RemoveCurrentUser(),
                app.GameManager().enterSceneByRoomMode(o.RoomMode.HALL, function () {
                    app.ConfirmManager().ShowConfirm(l.ConfirmType.ConfirmOK, e, [], function () {
                        var e = app.UserManager().GetQuestAccount();
                        e ? (app.LoginManager().SetIsFormLogin(true),
                            app.LoginManager().TokenLogin(e.token)) : t.ErrLog("GetQuestAccount error")
                    })
                })
        }
        ,
        t.prototype.RemoveCurrentUser = function () {
            app.GameServerManager().closeNeedntConnect(),
                app.GoServerManager().CloseConnect(),
                app.UserManager().RemoveCurrentUser()
        }
        ,
        t.prototype.OnRespJoinRoom = function (e) {
            0 == e.code ? (app.RoomMessageCenter().startMonitorEvent(),
                app.UserManager().GetUserInfo.room_no = e.room_no,
                app.UserManager().GetUserInfo.roomMode = e.room_mode,
                app.UserManager().GetUserInfo.room_no > 0 && app.GameServerManager().send("req_roominfo")) : 30122 == e.code ? app.GameManager().InHallScene ? app.ConfirmManager().ShowConfirm(l.ConfirmType.Confirm, app.i18n.t("UI.System_34"), null, function () {
                    return app.ActivityManager().selectShop()
                }) : app.ConfirmManager().ShowConfirm(l.ConfirmType.Confirm, app.i18n.t("UI.System_34"), null, function () {
                    app.GameManager().enterSceneByRoomMode(o.RoomMode.HALL, function () {
                        return app.ActivityManager().selectShop()
                    })
                }) : 30123 == e.code ? app.SysNotifyManager().ShowToast("\u91d1\u5e01\u8d85\u8fc7\u4e0a\u9650") : 30103 == e.code ? cc.log("do nothing") : app.GameManager().InHallScene ? app.SysNotifyManager().ShowToast(e.msg) : app.GameManager().enterSceneByRoomMode(o.RoomMode.HALL, function () {
                    app.SysNotifyManager().ShowToast(e.msg)
                })
        }
        ,
        t.prototype.RequestResetPassword = function (e) {
            app.HttpServerManager().SendHttpPack(r.HttpAPI.RESET_PASSWORD, e)
        }
        ,
        t.prototype.OnResetPassword = function (e, t) {
            this.setNewPawCode(t.pwd, t.area),
                this.TokenLogin(e.token)
        }
        ,
        t.prototype.getUserLoginCode = function () {
            return app.LocalDataManager().GetConfigObject("loginCode") || {
                code: "",
                mark: "",
                nation: "",
                phone_account: "",
                mail_account: "",
                phone_password: "",
                mail_password: ""
            }
        }
        ,
        t.prototype.RequestOnlineNum = function () {
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_ONLINE_NUM)
        }
        ,
        t.prototype.OnOnlineNum = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_ONLINE_NUM, e)
        }
        ,
        t.prototype.setUserLoginCode = function (e) {
            app.LocalDataManager().SetConfigObject("loginCode", e)
        }
        ,
        Object.defineProperty(t.prototype, "IsRememberPass", {
            get: function () {
                if (app.UserManager().UserInfo) {
                    var e = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "LoginRememberPass");
                    if (e)
                        return e.isRememberPass
                }
                return true
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.setLocalRememberPass = function (e) {
            app.UserManager().UserInfo && app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "LoginRememberPass", {
                isRememberPass: e
            })
        }
        ,
        Object.defineProperty(t.prototype, "GetIsVerification", {
            get: function () {
                return this.isVerification
            },
            enumerable: false,
            configurable: true
        }),
        t
}(i.Singleton);
n.LoginManager = h

module.exports = n