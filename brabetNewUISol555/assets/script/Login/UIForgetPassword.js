let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/UINameDefine")
  , r = require("../../Common/Define/ShareDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.mail_account = null,
        t.phone_account = null,
        t.validateCode = null,
        t.password = null,
        t.countdown = null,
        t.btnSendValidate = null,
        t.codeLabel = null,
        t.show = null,
        t.hide = null,
        t.myCode = null,
        t.countTime = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIForgetPassword",
        this.RegEvent(i.GameEventDefine.NATION_PHONE_CODE, this.OnSelectNation),
        this.RegEvent(i.GameEventDefine.GET_CODE_SUCCESS, this.OnGetCodeSuccess),
        this.RegEvent(i.GameEventDefine.GET_EMAIL_CODE_SUCCESS, this.OnGetEmailCodeSuccess)
    }
    ,
    t.prototype.OnShow = function(e) {
        var t = app.LoginManager().getUserLoginCode();
        this.myCode = t,
        this.codeLabel.string = "+" + t.code,
        t.code || this.OnGetAreaCode(),
        this.initView(1 == e)
    }
    ,
    t.prototype.initView = function(e) {
        this.setShow(false),
        this.mail_account.string = "",
        this.phone_account.string = "",
        this.validateCode.string = "",
        this.password.string = "",
        this.btnSendValidate.active = true,
        this.countdown.node.active = false,
        this.countdown.string = "",
        this.isPhone = e,
        cc.find("layer/UIPhone", this.node).active = this.isPhone,
        cc.find("layer/text_mail", this.node).active = !this.isPhone
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
    t.prototype.OnSelectNation = function(e) {
        this.myCode = {
            mark: e.mark,
            code: e.code
        },
        this.codeLabel.string = "+" + e.code
    }
    ,
    t.prototype.OnGetAreaCode = function() {
        var e = app.LoginManager().GetDefaultAreaCode();
        e ? this.setAreaCode(e) : this.ErrLog("OnGetAreaCode error")
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
    t.prototype.OnClick = function(e) {
        if (this.Log(e),
        "btn_Reset" != e) {
            if ("btn_otp" != e)
                return "btn_clean" == e ? (this.phone_account.string = "",
                void (this.mail_account.string = "")) : void ("btn_eye" != e ? "btn_eye_close" != e ? "btn_code" != e || app.FormManager().ShowForm(a.UINameDefine.UINationPhoneCode, {
                    type: r.NationPhoneNumberType.ChangePwd
                }) : this.setShow(false) : this.setShow(true));
            this.onFetchValidateCode()
        } else
            this.onResetPassword()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.Client.OnEvent(i.GameEventDefine.SHOW_LOGIN_FORM)
    }
    ,
    t.prototype.onResetPassword = function() {
        var e = this.myCode.code
          , t = this.isPhone ? this.phone_account.string : this.mail_account.string
          , n = this.validateCode.string
          , o = this.password.string;
        if (app.StringUtil().isLegal(o) || !this.isPhone)
            if (this.isPhone) {
                var i = {
                    area: e,
                    tel: Number(e + "" + t),
                    pwd: o,
                    type: 1,
                    code: n,
                    login_type: 3
                };
                app.LoginManager().RequestResetPassword(i)
            } else {
                if (!t)
                    return void app.SysNotifyManager().ShowToast("UI.System_45");
                app.UserManager().RequestEmailCode({
                    token: app.UserManager().UserInfo.token,
                    email: t,
                    type: 2
                }),
                this.CloseForm(),
                app.FormManager().ShowForm(a.UINameDefine.UIForgetEmailPassword, this.mail_account.string)
            }
        else
            app.SysNotifyManager().ShowToast("UI_Login_prompt7")
    }
    ,
    t.prototype.onFetchValidateCode = function() {
        var e = this.myCode.code
          , t = this.phone_account.string
          , n = app.UserManager().GetUserInfo && null != app.UserManager().GetUserInfo.token ? app.UserManager().GetUserInfo.token : "";
        app.UserManager().fetchValidateCode({
            token: n,
            tel: Number(e + "" + t),
            type: 2,
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
    t.prototype.OnGetEmailCodeSuccess = function() {}
    ,
    t.prototype.setShow = function(e) {
        this.password.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD,
        this.show.active = !e,
        this.hide.active = e
    }
    ,
    t.prototype.StartEnterCode = function() {
        this.StEnterCodeFontSize(75)
    }
    ,
    t.prototype.EndEnterCode = function() {
        this.StEnterCodeFontSize(37.84)
    }
    ,
    t.prototype.StEnterCodeFontSize = function(e) {
       // app.ComTool().H5Platform() || 
        (this.GetWndComponent("layer/UIPhone/text_otp/editbox_enter_otp/PLACEHOLDER_LABEL", cc.Label).fontSize = e,
        this.GetWndComponent("layer/UIPhone/text_otp/editbox_enter_otp/TEXT_LABEL", cc.Label).fontSize = e)
    }
    ,
    __decorate([l(cc.EditBox)], t.prototype, "mail_account", undefined),
    __decorate([l(cc.EditBox)], t.prototype, "phone_account", undefined),
    __decorate([l(cc.EditBox)], t.prototype, "validateCode", undefined),
    __decorate([l(cc.EditBox)], t.prototype, "password", undefined),
    __decorate([l(cc.RichText)], t.prototype, "countdown", undefined),
    __decorate([l(cc.Node)], t.prototype, "btnSendValidate", undefined),
    __decorate([l(cc.Label)], t.prototype, "codeLabel", undefined),
    __decorate([l(cc.Node)], t.prototype, "show", undefined),
    __decorate([l(cc.Node)], t.prototype, "hide", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
