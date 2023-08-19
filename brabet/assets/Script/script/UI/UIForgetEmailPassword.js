let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.validate = null,
        t.redefining = null,
        t.password = null,
        t.show = null,
        t.show1 = null,
        t.hide = null,
        t.hide1 = null,
        t.lbl_mail_account = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIForgetEmailPassword"
    }
    ,
    t.prototype.OnShow = function(e) {
        var t = app.LoginManager().getUserLoginCode();
        t && (this.myCode = t),
        this.lbl_mail_account = e,
        this.initView()
    }
    ,
    t.prototype.initView = function() {
        this.onBtnEyeShow(false),
        this.onBtnEye1Show(false),
        this.validate.string = "",
        this.password.string = "",
        this.redefining.string = ""
    }
    ,
    t.prototype.OnClick = function(e) {
        this.Log(e),
        "btn_Reset" != e ? "btn_eye" != e ? "btn_eye_close" != e ? "btn_eye1" != e ? "btn_eye_close1" != e || this.onBtnEye1Show(false) : this.onBtnEye1Show(true) : this.onBtnEyeShow(false) : this.onBtnEyeShow(true) : this.onResetPassword()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.Client.OnEvent(i.GameEventDefine.SHOW_LOGIN_FORM)
    }
    ,
    t.prototype.onResetPassword = function() {
        var e = this.redefining.string
          , t = this.password.string
          , n = this.validate.string;
        if (t === e)
            if (app.StringUtil().isLegal(t)) {
                var o = {
                    pwd: t,
                    type: 2,
                    code: n,
                    account: this.lbl_mail_account,
                    login_type: 2
                };
                app.LoginManager().RequestResetPassword(o)
            } else
                app.SysNotifyManager().ShowToast("UI_Login_prompt7");
        else
            app.SysNotifyManager().ShowToast("UI_Login_prompt6")
    }
    ,
    t.prototype.onBtnEyeShow = function(e) {
        this.setShow(e, 1)
    }
    ,
    t.prototype.onBtnEye1Show = function(e) {
        this.setShow(e, 0)
    }
    ,
    t.prototype.setShow = function(e, t) {
        var n, o, i;
        t ? (n = this.password,
        o = this.show,
        i = this.hide) : (n = this.redefining,
        o = this.show1,
        i = this.hide1),
        n.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD,
        o.active = !e,
        i.active = e
    }
    ,
    __decorate([s(cc.EditBox)], t.prototype, "validate", undefined),
    __decorate([s(cc.EditBox)], t.prototype, "redefining", undefined),
    __decorate([s(cc.EditBox)], t.prototype, "password", undefined),
    __decorate([s(cc.Node)], t.prototype, "show", undefined),
    __decorate([s(cc.Node)], t.prototype, "show1", undefined),
    __decorate([s(cc.Node)], t.prototype, "hide", undefined),
    __decorate([s(cc.Node)], t.prototype, "hide1", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
