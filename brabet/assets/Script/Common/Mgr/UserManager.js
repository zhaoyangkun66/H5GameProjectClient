let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.UserManager = n.ReqUpdateUserInfo = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("../Define/HttpServerDefine")
    , r = require("../Define/ShareDefine")
    , s = require("../Define/TrackEventName")
    , c = require("../Define/UINameDefine");
n.ReqUpdateUserInfo = function (e, t, n) {
    this.token = e,
        null != t && (this.nickname = t),
        null != n && (this.headimg = n)
}
    ;
var l = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.UserWallet = null,
            t.UserInfo = null,
            t.UserAndOrderInfo = null,
            t.GameRatio = null,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "UserManager",
                this.Log("Init"),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USER_WALLET, this.onGetUserWallet, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USERINFO, this.onGetUserInfo, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_CODE, this.onGetCode, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_EMAILCODE, this.onGetEmailCode, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.UPDATE_USER_INFO, this.onUpdateUserInfo, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USER_AndOrder, this.onGetUserAndOrder, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_GAMERATIO, this.onGetGameratio, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_CHANGE_PWD, this.onGetChangePwd, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USER_BING_ACCOUNT, this.onGetUserBingAccount, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USER_BING_TEL, this.onGetUserBingTel, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.CHANGE_BIRTHDAY, this.onChangeBirthday, this)
        }
        ,
        t.prototype.onChangeBirthday = function (e) {
            this.UserInfo.birthday = e.birthday,
                app.Client.OnEvent(i.GameEventDefine.CHANGE_BIRTHDAY)
        }
        ,
        t.prototype.onGetUserBingTel = function (e) {
            this.UserInfo.tel = e.tel,
                this.UserInfo.area = e.area,
                app.Client.OnEvent(i.GameEventDefine.GET_BIND_TEL)
        }
        ,
        t.prototype.RequestBingTel = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USER_BING_TEL, e)
        }
        ,
        t.prototype.onGetUserBingAccount = function (e) {
            this.UserInfo.account = e.account,
                app.Client.OnEvent(i.GameEventDefine.GET_BIND_EMAIL)
        }
        ,
        t.prototype.RequestBingAccount = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USER_BING_ACCOUNT, e)
        }
        ,
        t.prototype.onGetChangePwd = function (e, t) {
            app.LoginManager().GetChangePaw(e.token, t.new_pwd)
        }
        ,
        t.prototype.RequestChangePwd = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_CHANGE_PWD, e)
        }
        ,
        t.prototype.onGetUserAndOrder = function (e, t) {
            this.UserAndOrderInfo = e,
                0 == t.type ? app.Client.OnEvent(i.GameEventDefine.GET_USER_AndOrder) : 3 == t.type ? app.Client.OnEvent(i.GameEventDefine.GET_AndOrder_REC) : 2 == t.type && app.Client.OnEvent(i.GameEventDefine.GET_AndOrder_WITH)
        }
        ,
        t.prototype.onGetGameratio = function (e) {
            this.GameRatio = e,
                app.Client.OnEvent(i.GameEventDefine.GET_GAMERATIO)
        }
        ,
        t.prototype.RequestGetGamerati = function () {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_GAMERATIO, {
                token: app.UserManager().GetUserInfo.token
            })
        }
        ,
        Object.defineProperty(t.prototype, "GetUserAndOrderInfo", {
            get: function () {
                return this.UserAndOrderInfo
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.RequestUserAndOrder = function (e, t, n, o, i) {
            if (isgoServer) {
                var time1 = new Date()
                if (!o) {
                    o = new Date(time1.getTime() - 864e5*10).format("yyyy-MM-dd")
                }
                if (!i) {
                    i = time1.format("yyyy-MM-dd");
                }
            }
            var r = {
                token: app.UserManager().GetUserInfo.token,
                type: e,
                limit: t,
                page: n
            };
            o && (r.start_date = o),
                i && (r.end_date = i),
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USER_AndOrder, r)
        }
        ,
        t.prototype.RequstUserWallet = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USER_WALLET, {
                token: app.UserManager().GetUserInfo.token,
                type: e ? e.type : null
            })
        }
        ,
        t.prototype.onGetUserWallet = function (e) {
            this.UserWallet = e,
                this.UserInfo.cash = e.withdraw_gold,
                this.UserInfo.gold = Number(e.gold),
                app.Client.OnEvent(i.GameEventDefine.GET_USER_WALLET)
        }
        ,
        t.prototype.GetUserWallet = function () {
            return this.UserWallet
        }
        ,
        t.prototype.setUserWallet_allow_bind = function (e) {
            this.UserWallet.is_allow_bind = e
        }
        ,
        t.prototype.RequestUpdateUserInfo = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.UPDATE_USER_INFO, e)
        }
        ,
        t.prototype.onUpdateUserInfo = function (e) {
            e.nickname && (this.UserInfo.nickname = e.nickname),
                e.headimg && (this.UserInfo.headimg = String(e.headimg)),
                app.SysNotifyManager().ShowToast("Sc_Successfully_modified"),
                app.FormManager().CloseForm(c.UINameDefine.UIPlayerEditInfo),
                app.Client.OnEvent(i.GameEventDefine.UPDATE_USER_INFO)
        }
        ,
        t.prototype.RequestUserInfo = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USERINFO, e)
        }
        ,
        t.prototype.onGetUserInfo = function (e, t) {
            var n = e.code;
            if (n)
                return n === r.ReqFailCode.IP_DEVICE_LIMIT ? void app.FormManager().ShowForm(c.UINameDefine.UILoginSign, 1) : void this.ErrLog("onGetUserInfo fail, code: " + e.code + ", msg: " + e.msg);
            t.pkgName ? (app.EventTrackManager().LogEvent(s.default.TOKEN_LOGIN_END),
                app.LoginManager().SetUserInfoAndLoginGS(e)) : (this.UserInfo.total_recharge = e.total_recharge,
                    this.UserInfo.keep_level_conf = e.keep_level_conf,
                    this.UserInfo.is_keep_level = e.is_keep_level,
                    app.Client.OnEvent(i.GameEventDefine.UPDATE_TOTAL_RECHARGE))
        }
        ,
        t.prototype.SetUserInfo = function (e) {
            this.UserInfo = e
            if (isgoServer) {
                let user_config = require("Http_login").user_config
                this.UserInfo.user_config.show_arr = require("Http_login").user_config.show_arr
            }
            this.UserInfo.gold = e.gold || 0,
                this.UserInfo.user_config.is_open_debug && app.Client.InitDebug(true),
                0 == e.user_config.game_arr.length && app.SysNotifyManager().ShowToast("Get User Configuration Failed."),
                this.SaveLoginUser(e),
                app.ExternGameManager().RequestGameDown(),
                app.GameConfigManager().RequestGameList(),
                app.HGameManager().RequestAllInfo(),
                app.HNoticeManager().RequestDeskNotice(),
                app.Client.OnEvent(i.GameEventDefine.GET_USER_INFO),
                e.first_login && (app.NativeMgr().AdjustlogEvent(s.default.USER_REGISTER),
                    app.NativeMgr().FacebooklogEvent(s.default.USER_REGISTER),
                    app.EventTrackManager().LogEvent(s.default.USER_REGISTER))
        }
        ,
        Object.defineProperty(t.prototype, "GetUserInfo", {
            get: function () {
                return this.UserInfo
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetUserRechargeActivity", {
            get: function () {
                return this.UserInfo.recharge_activity
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetUserInfoConfig", {
            get: function () {
                return this.UserInfo ? this.UserInfo.user_config : null
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetRefreshFreeShow", {
            get: function () {
                return 0 == Number(this.UserInfo.total_recharge) || Number(this.UserInfo.total_recharge) < app.GameConfigManager().GetGameConfig().experience_recharge_limit
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.UpdateGold = function (e) {
            return this.UserInfo.gold = Big(e).plus(this.UserInfo.gold).toNumber()
        }
        ,
        t.prototype.UpdateUserInfo = function (e) {
            this.UserInfo.ip = e.ip,
                this.UserInfo.card_num = e.card_num,
                this.UserInfo.gold = e.gold,
                this.UserInfo.room_no = null == e.room_no ? 0 : e.room_no,
                this.UserInfo.is_reconned = this.UserInfo.room_no > 0,
                this.UserInfo.roomMode || (this.UserInfo.roomMode = e.roomMode),
                this.SaveCurrentUser()
        }
        ,
        t.prototype.getIsOfficialAccount = function (e) {
            var t = "" === (e = e || this.UserInfo).third_token && "" === e.tel && "" === e.account && "" === e.email;
            return 1 == Number(e.is_official_account) && (t = false),
                !t
        }
        ,
        t.prototype.GetQuestAccount = function () {
            for (var e = this.GetLoginUserList(), t = 0; t < e.length; t++) {
                var n = e[t];
                if (!this.getIsOfficialAccount(n))
                    return n
            }
            return null
        }
        ,
        t.prototype.GetIsOfficialPopup = function () {
            return !this.getIsOfficialAccount() && !app.GameConfigManager().IsExperienceServer && (app.FormManager().ShowForm(c.UINameDefine.UILoginSign, 1),
                true)
        }
        ,
        t.prototype.GetKeyLoginUserList = function () {
            return app.GameConfigManager().IsExperienceServer ? "practice_login_user_data_v2" : "login_user_data"
        }
        ,
        t.prototype.GetNormalLoginUserList = function () {
            return app.LocalDataManager().GetConfigObject("login_user_data") || []
        }
        ,
        t.prototype.GetLoginUserList = function () {
            var e = this.GetKeyLoginUserList();
            return app.LocalDataManager().GetConfigObject(e) || []
        }
        ,
        t.prototype.SaveLoginUserList = function (e) {
            var t = this.GetKeyLoginUserList();
            return app.LocalDataManager().SetConfigObject(t, e)
        }
        ,
        t.prototype.SaveLoginUser = function (e) {
            for (var t = e.uid, n = this.GetLoginUserList(), o = -1, i = 0, a = n.length; i < a; i++)
                if (n[i].uid == t) {
                    o = i;
                    break
                }
            o > -1 ? (n.splice(o, 1),
                n.unshift(e)) : n.unshift(e),
                this.SaveLoginUserList(n)
        }
        ,
        t.prototype.GetLastLoginUser = function (e) {
            undefined === e && (e = false);
            var t = e ? this.GetNormalLoginUserList() : this.GetLoginUserList();
            return t.length > 0 ? t[0] : null
        }
        ,
        t.prototype.RemoveLastLoginUser = function () {
            var e = this.GetLastLoginUser();
            e && this.RemoveLoginUser(e.uid)
        }
        ,
        t.prototype.RemoveLoginUser = function (e) {
            for (var t = this.GetLoginUserList(), n = 0, o = t.length; n < o; n++)
                if (t[n].uid == e) {
                    var i = t.splice(n, 1);
                    return this.SaveLoginUserList(t),
                        i
                }
            return true
        }
        ,
        t.prototype.RemoveCurrentUser = function () {
            var e = this.GetKeyUserData();
            app.LocalDataManager().Remove(e),
                this.RemoveLastLoginUser()
        }
        ,
        t.prototype.SaveCurrentUser = function () {
            var e = this.GetKeyUserData();
            app.LocalDataManager().SetConfigObject(e, this.UserInfo)
        }
        ,
        t.prototype.GetKeyUserData = function () {
            return app.GameConfigManager().IsExperienceServer ? "practice_user_data_v2" : "userdata"
        }
        ,
        t.prototype.fetchValidateCode = function (e) {
            app.ClickInterceptorHelp().checkClickAllow(2e3) && app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_CODE, e)
        }
        ,
        t.prototype.onGetCode = function (e) {
            app.SysNotifyManager().ShowToast("SuccessfullySent"),
                app.Client.OnEvent(i.GameEventDefine.GET_CODE_SUCCESS, e)
        }
        ,
        t.prototype.RequestEmailCode = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_EMAILCODE, e)
        }
        ,
        t.prototype.onGetEmailCode = function (e) {
            app.Client.OnEvent(i.GameEventDefine.GET_EMAIL_CODE_SUCCESS, e)
        }
        ,
        t
}(o.Singleton);
n.UserManager = l,
    module.exports = n
