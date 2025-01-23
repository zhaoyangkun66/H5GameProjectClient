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
                app.Client.RegEvent(a.GameEventDefine.Telegram_LOGIN_SUCCESS, this.onTelegramLoginSuccess, this),
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
            this.VisitorLogin()
            // if (app.ComTool().CheckPlatform() && app.ClientConfigManager().getLocalUrlDataByName("token"))
            //     this.VisitorLogin();
            // else if (this.Log("StartLogin", app.GameConfigManager().IsExperienceServer),
            //     app.GameConfigManager().IsExperienceServer)
            //     this.ExperienceLogin();
            // else {
            //     var e = app.UserManager().GetLastLoginUser();
            //     e ? app.LoginManager().TokenLogin(e.token) : this.VisitorLogin()
            // }
        }
        ,
        t.prototype.VisitorLogin = function (isLoginSign) {
            // app.ClientConfigManager().GetClientConfig.agentID = 10171638
            // window.location.hash = "#tgWebAppData=user%3D%257B%2522id%2522%253A6583485575%252C%2522first_name%2522%253A%2522zhao%2522%252C%2522last_name%2522%253A%2522yangkun%2522%252C%2522language_code%2522%253A%2522zh-hans%2522%252C%2522allows_write_to_pm%2522%253Atrue%257D%26chat_instance%3D-240208116236157775%26chat_type%3Dprivate%26auth_date%3D1726213880%26hash%3Dd4c7f117658858ad0f2ecba6b95aa999828e9fe2012241f3fe0db27ebeab1877&tgWebAppVersion=7.10&tgWebAppPlatform=tdesktop&tgWebAppThemeParams=%7B%22accent_text_color%22%3A%22%23168acd%22%2C%22bg_color%22%3A%22%23ffffff%22%2C%22bottom_bar_bg_color%22%3A%22%23ffffff%22%2C%22button_color%22%3A%22%2340a7e3%22%2C%22button_text_color%22%3A%22%23ffffff%22%2C%22destructive_text_color%22%3A%22%23d14e4e%22%2C%22header_bg_color%22%3A%22%23ffffff%22%2C%22hint_color%22%3A%22%23999999%22%2C%22link_color%22%3A%22%23168acd%22%2C%22secondary_bg_color%22%3A%22%23f1f1f1%22%2C%22section_bg_color%22%3A%22%23ffffff%22%2C%22section_header_text_color%22%3A%22%23168acd%22%2C%22section_separator_color%22%3A%22%23e7e7e7%22%2C%22subtitle_text_color%22%3A%22%23999999%22%2C%22text_color%22%3A%22%23000000%22%7D"
            if (window.location.hash != "") {
                const params = new URLSearchParams(window.location.hash.substring(1));
                let jsonParams = {};
                for (const [key, value] of params) {
                    // console.log(key, value);
                    jsonParams[key] = value;
                }
                if (jsonParams.tgWebAppData) {
                    const params2 = new URLSearchParams(jsonParams.tgWebAppData);
                    params2.sort();
                    const hash = params2.get("hash");
                    const start_param = params2.get("start_param");
                    if (start_param) {
                        app.ClientConfigManager().GetClientConfig.agentID = start_param
                    }
                    params2.delete("hash");
                    let dataToCheck = ""//[...initData.entries()].map(([key2, value2]) => key2 + "=" + value2).join("\n");
                    let jsonParams2 = {};
                    for (const [key, value] of params2) {
                        // console.log(key, value);
                        jsonParams2[key] = value;
                        dataToCheck += "\n"
                        dataToCheck += key
                        dataToCheck += "="
                        dataToCheck += value
                    }
                    dataToCheck = dataToCheck.substring(1)
                    jsonParams.tgWebAppData = jsonParams2
                    jsonParams.tgWebAppData.user = JSON.parse(jsonParams2.user);
                    app.Client.OnEvent(a.GameEventDefine.Telegram_LOGIN_SUCCESS, {
                        nickname: jsonParams.tgWebAppData.user.first_name + "" + jsonParams.tgWebAppData.user.last_name,
                        third_token: jsonParams.tgWebAppData.user.id,
                        login_type: 6,
                        dataToCheck: dataToCheck,
                        hash: hash,
                    })
                }
                else {
                    if (isLoginSign) {
                        app.FormManager().IsFormShow(p.UINameDefine.UILoginSign) || app.HallManager().ShowHallForm(p.UINameDefine.UILoginSign, 1);
                    }
                    else
                    {
                        this.OnVisitorLogin({})
                    }
                    this.OnVisitorLogin({})
                }
            }
            else {
                if (isLoginSign) {
                    app.FormManager().IsFormShow(p.UINameDefine.UILoginSign) || app.HallManager().ShowHallForm(p.UINameDefine.UILoginSign, 1);
                }
                else
                {
                    this.OnVisitorLogin({})
                }
            }

        }
        ,
        t.prototype.OnVisitorLogin = function (e) {

            e = {
                "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEwMTcxNjM4LCJ1c2VybmFtZSI6IjE3Mi43MS4yMTUuOTMiLCJleHAiOjE3MzA5NjEwMTEsImlzcyI6ImdhbWUifQ.AzNYsKbs9wKejpKgXS2t_0J0zRpAMVx5rgTjFuHCj2Q",
                "uid": 10171638,
                "headimg": "1",
                "sex": 1,
                "tel": "",
                "account": "569188417@Gmail.com",
                "nickname": "player_10171638",
                "third_token": "",
                "third_headimg": "",
                "bank_account": "",
                "bank_name": "",
                "bank_code": "",
                "cardholder_name": "",
                "ifsc_code": "",
                "upi": "",
                "branch_bank": "",
                "cardholder_tel": "1881529206",
                "email": "569188418@Gmail.com",
                "ali_account": "",
                "taxid": "12345678912",
                "account_type": 0,
                "account_digit": "",
                "pix_key": "ZHAOYANGKUN",
                "pix_type": "EMAIL",
                "is_new": 0,
                "fb_award": 0,
                "tel_award": 0,
                "user_wallet": 0,
                "prepay_type": 0,
                "province": "",
                "city": "",
                "gcash_number": 0,
                "beneficiary_name": "",
                "area": 55,
                "pay_maya_account": "",
                "is_official_account": 1,
                "vip_id": 2,
                "current_game": "",
                "current_game_time": 0,
                "total_recharge": 50,
                "gold": 9704011122,
                "ton": "2.36",
                "is_bind_wallet": false,
                "user_config": {
                    "game_arr": [
                        100,
                        200,
                        300
                    ],
                    "show_arr": "",
                    "is_open_debug": 0,
                    "agent_sub_level": 3,
                    "vip_begin_level": 0
                },
                "is_keep_level": 1,
                "keep_level_conf": 0,
                "birthday": "",
                "is_guide": 0,
                "first_gold": 0,
                "day_first_login": 0,
                "pay_rfc": "",
                "repay_rfc": "",
                "repay_curp": "",
                "repay_card_debit": "",
                "repay_card_phone": "",
                "repay_card_clabe": "",
                "colombia_idType": "",
                "colombia_idNumber": "",
                "bankAccountType": "",
                "channel": "default",
                "reg_time": ""
            }


            e.is_official_account = 1
            e.third_token = ""
            e.tel = ""
            e.account = ""
            e.email = ""

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
            this.AddLoginParam(e, 1),
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
                , n = this.AddLoginParam(t, 4);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.THIRD_LOGIN, n)
        }
        ,
        t.prototype.onGoogleLoginSuccess = function (e) {
            var t = e
                , n = this.AddLoginParam(t);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.THIRD_LOGIN, n)
        },
        t.prototype.onTelegramLoginSuccess = function (e) {
            var t = e
                , n = this.AddLoginParam(t);
            app.HttpServerManager().SendHttpPack(r.HttpAPI.THIRD_LOGIN, n)
        }
        ,
        t.prototype.AddLoginParam = function (e, login_type) {//login_type  0普通帐号 1游客 2Email 3手机号 4facebook 5google6Telegram小程序
            e.click_id = app.ClientConfigManager().GetClientConfig.click_id,
                e.ttclid = app.ClientConfigManager().GetClientConfig.ttclid,
                e.channel_id = app.ClientConfigManager().GetClientConfig.channel_id,
                login_type && (e.login_type = login_type),
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
            // n && 
            (e.agentid = n),
                o && (e.gaid = o),
                i && (e.ajtrackerName = i),
                a && (e.aj_gaid = a),
                cc.sys.platform && (e.Type = cc.sys.platform),
                e.source = "10",
                e.Type = cc.sys.platform
            e.os = cc.sys.os
            e.ioswebclip = 1 == Number(app.ClientConfigManager().getLocalUrlDataByName("ioswebclip")) ? 1 : 0

            if (isgoServer) {
                if (("undefined" != typeof androidOther)) {
                    e.isShell = 2
                }
                else if ((window.matchMedia('(display-mode: standalone)').matches)) {
                    e.isShell = 1
                }
                else {
                    e.isShell = 0
                }
            }
            else {
                e.isShell = app.ComTool().AndroidHybirdPlatform() ? 1 : 0
            }

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
            if (isgoServer) {
                if (e.agentid == "") {
                    e.agentid = "0"
                }
                if (!e.password) {
                    e.password = e.pwd
                }
            }
            return d && (e.agentid = d),
                e.pixelid = e.agentid,
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
            // this.UserInfo.account=''
            var t = this;
            if (e.code != l.ReqFailCode.IP_DEVICE_LIMIT) {
                if (e.code == l.ReqFailCode.LOGIN_FAILED_VERIFICATION)
                    return app.GoogleReCaptChaManager().showDiv(),
                        void (this.isVerification = true);

                if (isgoServer) {
                    if (e.channel) {

                        app.ClientConfigManager().GetClientConfig.channel_id = e.channel
                        // app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_channelList, {})
                        let TempChannelList = app.ClientConfigManager().GetClientConfig.TempChannelList
                        if (TempChannelList) {
                            channelIDNewbieBonusShow = false
                            for (let index = 0; index < TempChannelList.length; index++) {
                                if (TempChannelList[index] == app.ClientConfigManager().GetClientConfig.channel_id) {
                                    channelIDNewbieBonusShow = true
                                }
                            }
                        }


                    }
                    if (!e.user_config.show_arr) {
                        e.user_config.show_arr = require("Http_login").user_config.show_arr
                        //   e.user_config.game_arr = require("Http_login").user_config.game_arr
                    }
                    if (e.is_official_account == 1) {
                        e.is_official_account = 0
                        e.third_token = ""
                        e.tel = ""
                        e.account = ""
                        e.email = ""
                    }
                    else {
                        e.is_official_account = 1
                    }
                    if (e.is_bind_wallet == false) {
                        e.is_bind_wallet = true
                    }
                    else {
                        e.is_bind_wallet = false
                    }
                    // e.total_recharge=1
                    if (e.reg_time == null) {
                        e.reg_time = "2004-05-17 19:05:10"
                        e.reg_time = Math.floor(new Date(e.reg_time).getTime() / 1000)
                    }
                    app.GameConfigManager().GetGameConfig().FirstChargeUpgradeTimeAs = Math.floor(e.reg_time) + 2 * 60 * 60
                }
                else {
                    e.user_config.game_arr.push(1051)
                }
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
                            e ? app.HallManager().EnterRoomGame(Number(e)) :
                                t.reconRoomMode ? t.ReconnectGame() :
                                    t.userAuth ? (app.RoomManager().LoadBundleAndRequestRoomInfo(t.userAuth.GameId, t.userAuth.RoomNo, t.userAuth.GameVenue), t.userAuth = null) :
                                        app.ClientConfigManager().StartRouter(),
                            app.EventTrackManager().LogEvent(s.default.AJ_CONSUMEEVENT)
                    }),
                    this.LoginGS(),
                    Number(app.GameConfigManager().GetGameConfig().ngs_switch) && this.LoginGoGs()
            } else
                app.LoginManager().VisitorLogin()

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
            if (channelID == 2) {
                return app.LocalDataManager().GetConfigObject("loginCode" + channelID) || {
                    code: "57",
                    mark: "",
                    nation: "Colombia",
                    phone_account: "",
                    mail_account: "",
                    phone_password: "",
                    mail_password: ""
                }
            }
            else {
                return app.LocalDataManager().GetConfigObject("loginCode" + channelID) || {
                    code: "55",
                    mark: "",
                    nation: "Brazil",
                    phone_account: "",
                    mail_account: "",
                    phone_password: "",
                    mail_password: ""
                }
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
            app.LocalDataManager().SetConfigObject("loginCode" + channelID, e)
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