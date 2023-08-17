let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Define/UINameDefine")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Base/UIBaseComponent")
  , r = require("../../Common/Define/TrackEventName")
  , s = require("../../Common/Define/ShareDefine")
  , c = require("../../Common/Component/EditBox")
  , l = require("../../Common/DB/LoginManager")
  , p = cc._decorator
  , d = p.ccclass
  , h = p.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.phone_account = null,
        t.mail_account = null,
        t.validateCode = null,
        t.password = null,
        t.countdown = null,
        t.btnSendValidate = null,
        t.codeLabel = null,
        t.btnEye = null,
        t.btnEye1 = null,
        t.Toggle_terms = null,
        t.Toggle_mainR = null,
        t.countTime = 0,
        t.is_phone = false,
        t.login_ani = null,
        t.account = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UISignUp",
        this.RegEvent(i.GameEventDefine.NATION_PHONE_CODE, this.OnSelectNation),
        this.RegEvent(i.GameEventDefine.GET_CODE_SUCCESS, this.OnGetCodeSuccess),
        this.RegEvent(i.GameEventDefine.STOP_LOGIN_ANIM, this.OnStopLoginAnim),
        this.RegEvent(i.GameEventDefine.GOOGLRECAPTCHAFINISH, this.GoogleRecaptChaFinsh),
        this.account = this.GetWndNode("account")
    }
    ,
    t.prototype.OnEnable = function() {
        var e = app.LoginManager().getUserLoginCode();
        this.myCode = e,
        this.setShow(false),
        this.phone_account.string = "",
        this.mail_account.string = "",
        this.validateCode.string = "",
        this.password.string = "",
        this.btnSendValidate.active = true,
        this.countdown.node.active = false,
        this.countdown.string = "",
        this.Toggle_terms.isChecked = false,
        this.Toggle_mainR.isChecked = false,
        this.account.active = false,
        app.LoginManager().GetIsLoginAnimPlay && this.onCreateLoginAnim(this.GetWndNode("btn_regist/bg/layout"))
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (this.Log(e),
        "btn_code" != e) {
            if ("btn_clean_phone" == e)
                return this.phone_account.string = "",
                void (this.mail_account.string = "");
            if ("btn_otp" != e)
                if ("btn_eye" != e)
                    if ("btn_eye_close" != e)
                        if ("btn_regist" != e)
                            if ("terms" != e)
                                ;
                            else {
                                var n = app.GameConfigManager().GetGameConfig().user_agreement;
                                cc.sys.openURL(n)
                            }
                        else
                            app.LoginManager().GetIsLoginAnimPlay || this.onTelRegisLogin(t);
                    else
                        this.setShow(false);
                else
                    this.setShow(true);
            else
                this.onFetchValidateCode()
        } else
            app.FormManager().ShowForm(o.UINameDefine.UINationPhoneCode, {
                type: s.NationPhoneNumberType.SignUp,
                scale: this.node.getParent().getParent().scale
            })
    }
    ,
    t.prototype.setAreaCode = function(e) {
        this.myCode = {
            mark: e.mark,
            code: e.code
        },
        this.codeLabel.string = "+" + e.code
    }
    ,
    t.prototype.OnSelectNation = function(e) {
        this.myCode = {
            mark: e.mark,
            code: e.code
        },
        this.codeLabel.string = "+" + e.code
    }
    ,
    t.prototype.onTelRegisLogin = function(e) {
        var t = this;
        this.Toggle_terms.isChecked ? this.phone_account.node.parent.active || this.Toggle_mainR.isChecked ? !this.phone_account.node.parent.active || this.validateCode.string || 1 != app.GameConfigManager().GetGameConfig().user_mobile_reg_switch ? (app.EventTrackManager().LogEvent(r.default.CLICK_BTN_REGISTER),
        this.indiaTelRegisLogin(function() {
            t.onRegisEvent()
        }),
        this.onCreateLoginAnim(this.GetWndNode("bg/layout", e))) : app.SysNotifyManager().ShowToast("UI_Login_prompt3") : app.SysNotifyManager().ShowToast("UI_Login_prompt2") : app.SysNotifyManager().ShowToast("UI_Login_prompt1")
    }
    ,
    t.prototype.onRegisEvent = function() {
        var e = this.phone_account.node.parent.active ? this.phone_account.string : this.mail_account.string
          , t = this.validateCode.string
          , n = this.password.string
          , o = this.codeLabel.string.replace("+", "")
          , i = this.phone_account.node.parent.active ? 1 : 2;
        if (app.StringUtil().isLegal(n)) {
            if (!this.phone_account.node.parent.active) {
                if (!e)
                    return void app.SysNotifyManager().ShowToast("UI.System_45");
                if (!/^\w+((.\w+)|(-\w+))@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+).[A-Za-z0-9]+$/.test(e))
                    return void app.SysNotifyManager().ShowToast("UI_Login_prompt5")
            }
            var a = {
                area: o,
                tel: Number(o + "" + e),
                code: t,
                pwd: n,
                channel_id: app.ClientConfigManager().GetClientConfig.channel_id,
                account: e,
                login_type: i
            };
            app.LoginManager().RequestRegister(a)
        } else
            app.SysNotifyManager().ShowToast("UI_Login_prompt7")
    }
    ,
    t.prototype.indiaTelRegisLogin = function(e) {
        app.ComTool().CheckPlatform() ? e() : (cc.sys.localStorage.setItem("is_first_launch", true),
        e())
    }
    ,
    t.prototype._callback = function() {
        this.countTime = this.countTime - 1,
        this.countdown.string = this.countTime + "s",
        this.countTime <= 0 && (this.unscheduleAllCallbacks(),
        this.countdown.node.active = false,
        this.btnSendValidate.active = true,
        this.countdown.string = "")
    }
    ,
    t.prototype.onFetchValidateCode = function() {
        var e = this.myCode.code ? this.myCode.code : this.codeLabel.string.replace("+", "")
          , t = this.phone_account.string
          , n = app.UserManager().GetUserInfo && null != app.UserManager().GetUserInfo.token ? app.UserManager().GetUserInfo.token : "";
        app.UserManager().fetchValidateCode({
            token: n,
            tel: Number(e + "" + t),
            type: 0,
            area: e
        })
    }
    ,
    t.prototype.OnGetCodeSuccess = function(e) {
        this.countdown.node.active = true,
        this.btnSendValidate.active = false,
        this.countTime = e,
        this.schedule(this._callback, 1)
    }
    ,
    t.prototype.setShow = function(e) {
        this.password.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD,
        this.btnEye.active = !e,
        this.btnEye1.active = e
    }
    ,
    t.prototype.setLoginAnimPra = function(e) {
        this.login_ani = e
    }
    ,
    t.prototype.onCreateLoginAnim = function(e) {
        var t = this
          , n = this.GetWndNode("login_ani", e);
        n || ((n = cc.instantiate(this.login_ani)).y = -5,
        n.parent = e),
        n.active = true,
        n.getComponent(cc.Animation).play(),
        app.LoginManager().SetIsLoginAnimPlay(true),
        this.scheduleOnce(function() {
            t.OnStopLoginAnim()
        }, 5)
    }
    ,
    t.prototype.OnStopLoginAnim = function() {
        var e = this.GetWndNode("btn_regist/bg/layout/login_ani");
        e && (e.getComponent(cc.Animation).stop(),
        e.active = false),
        app.LoginManager().SetIsLoginAnimPlay(false),
        this.unscheduleAllCallbacks()
    }
    ,
    t.prototype.GoogleRecaptChaFinsh = function() {
        if (!app.LoginManager().GetIsLoginAnimPlay) {
            var e = (app.ComTool().H5Platform(),
            this.GetWndNode("UISignUp/btn_regist"));
            this.onTelRegisLogin(e)
        }
    }
    ,
    t.prototype.OnDisable = function() {
        this.OnStopLoginAnim()
    }
    ,
    t.prototype.ChangedText = function() {
        this.mail_account.string && (this.mail_account.string = this.mail_account.string.replace(new RegExp(/\s/g), "")),
        this.mail_account.string && (this.mail_account.string = this.mail_account.string.replace(new RegExp("[\u4e00-\u9fff]+","g"), ""));
        var e = this.mail_account.string;
        if ("" != e)
            if (this.account.active = true,
            e.indexOf("@") > -1)
                this.account.active = false;
            else {
                var t = this.GetWndNode("account/account_mail/item")
                  , n = this.GetWndNode("account/account_mail/content");
                n.removeAllChildren(),
                e.length > 14 && (e = e.substring(0, 14) + "....");
                for (var o = 0; o < l.websiteTypeArr.length; o++) {
                    var i = cc.instantiate(t);
                    i.active = true,
                    n.addChild(i),
                    this.GetWndNode("mail/lb_text", i).getComponent(cc.Label).string = e;
                    var a = this.GetWndNode("mail/lb_mailcom", i).getComponent(cc.Label);
                    a.string = "@" + l.websiteTypeArr[o] + ".com",
                    i.on("click", this.AccountItemClick.bind(this, o, this.mail_account.string + a.string), this)
                }
            }
        else
            this.account.active = false
    }
    ,
    t.prototype.AccountItemClick = function(e, t) {
        this.account.active = false,
        this.mail_account.string = t
    }
    ,
    t.prototype.DidEnded = function() {
        var e = this;
        setTimeout(function() {
            e.account.active = false
        }, 200)
    }
    ,
    __decorate([h(cc.EditBox)], t.prototype, "phone_account", undefined),
    __decorate([h(c.default)], t.prototype, "mail_account", undefined),
    __decorate([h(cc.Label)], t.prototype, "validateCode", undefined),
    __decorate([h(cc.EditBox)], t.prototype, "password", undefined),
    __decorate([h(cc.RichText)], t.prototype, "countdown", undefined),
    __decorate([h(cc.Node)], t.prototype, "btnSendValidate", undefined),
    __decorate([h(cc.Label)], t.prototype, "codeLabel", undefined),
    __decorate([h(cc.Node)], t.prototype, "btnEye", undefined),
    __decorate([h(cc.Node)], t.prototype, "btnEye1", undefined),
    __decorate([h(cc.Toggle)], t.prototype, "Toggle_terms", undefined),
    __decorate([h(cc.Toggle)], t.prototype, "Toggle_mainR", undefined),
    __decorate([d], t)
}(a.default);
n.default = u,
module.exports = n
