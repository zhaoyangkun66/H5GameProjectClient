let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
  , i = require("../../Common/Component/EditBox")
  , a = require("../../Common/DB/LoginManager")
  , r = require("../../Common/Define/GameEventDefine")
  , s = require("../../Common/Define/ShareDefine")
  , c = require("../../Common/Define/TrackEventName")
  , l = require("../../Common/Define/UINameDefine")
  , p = cc._decorator
  , d = p.ccclass
  , h = p.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.phone_account = null,
        t.mail_account = null,
        t.password = null,
        t.codeLabel = null,
        t.btnEye = null,
        t.btnEyeHide = null,
        t.ToggleRemember = null,
        t.login_ani = null,
        t.account = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UILogin",
        this.RegEvent(r.GameEventDefine.NATION_PHONE_CODE, this.OnSelectNation),
        this.RegEvent(r.GameEventDefine.STOP_LOGIN_ANIM, this.OnStopLoginAnim),
        this.RegEvent(r.GameEventDefine.GOOGLRECAPTCHAFINISH, this.GoogleRecaptChaFinsh),
        this.account = this.GetWndNode("account")
    }
    ,
    t.prototype.OnEnable = function() {
        this.renderEye(false),
        this.ToggleRemember.isChecked = app.LoginManager().IsRememberPass;
        var e = app.LoginManager().getUserLoginCode();
        this.myCode = e,
        app.LoginManager().GetIsLoginAnimPlay && this.onCreateLoginAnim(this.GetWndNode("btn_Login/bg/layout"))
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (this.Log(e),
        "btn_forget" != e)
            if ("btn_code" != e)
                if ("btn_clean_phone" != e)
                    if ("btn_clean_mail" != e)
                        if ("btn_eye" != e)
                            if ("btn_eye_close" != e)
                                if ("btn_Login" != e)
                                    if ("btn_Remember" != e)
                                        ;
                                    else {
                                        var n = t;
                                        app.LoginManager().setLocalRememberPass(n.isChecked)
                                    }
                                else
                                    app.LoginManager().GetIsLoginAnimPlay || this.onBtnClickLogin(t);
                            else
                                this.renderEye(false);
                        else
                            this.renderEye(true);
                    else
                        this.mail_account.string = "";
                else
                    this.phone_account.string = "";
            else
                app.FormManager().ShowForm(l.UINameDefine.UINationPhoneCode, {
                    type: s.NationPhoneNumberType.Login,
                    scale: this.node.getParent().getParent().scale
                });
        else {
            var o = this.phone_account.node.parent.active ? 1 : 0;
            app.FormManager().ShowForm(l.UINameDefine.UIForgetPassword, o)
        }
    }
    ,
    t.prototype.OnSelectNation = function(e) {
        this.setAreaCode(e)
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
    t.prototype.onBtnClickLogin = function(e) {
        app.EventTrackManager().LogEvent(c.default.CLICK_BTN_LOGIN);
        var t = this.phone_account.node.parent.active ? this.phone_account.string : this.mail_account.string
          , n = this.password.string
          , o = 3;
        if (t || !this.phone_account.node.parent.active)
            if (n) {
                if (!this.phone_account.node.parent.active) {
                    if (o = 2,
                    !t)
                        return void app.SysNotifyManager().ShowToast("UI.System_45");
                    if (!/^\w+((.\w+)|(-\w+))@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+).[A-Za-z0-9]+$/.test(t))
                        return void app.SysNotifyManager().ShowToast("UI_Login_prompt5")
                }
                var i = this.codeLabel.string.replace("+", "")
                  , a = this.phone_account.node.parent.active ? Number(i + "" + t) : t;
                app.LoginManager().RequestLogin({
                    account: a,
                    password: n,
                    area: i,
                    login_type: o
                }),
                this.onCreateLoginAnim(this.GetWndNode("bg/layout", e))
            } else
                app.SysNotifyManager().ShowToast("UI.System_4");
        else
            app.SysNotifyManager().ShowToast("UI.System_2")
    }
    ,
    t.prototype.renderEye = function(e) {
        this.password.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD,
        this.btnEye.active = !e,
        this.btnEyeHide.active = e
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
    t.prototype.GoogleRecaptChaFinsh = function() {
        if (!app.LoginManager().GetIsLoginAnimPlay) {
            var e = (app.ComTool().H5Platform(),
            this.GetWndNode("UILogin/btn_Login"));
            this.onBtnClickLogin(e)
        }
    }
    ,
    t.prototype.OnStopLoginAnim = function() {
        var e = this.GetWndNode("btn_Login/bg/layout/login_ani");
        e && (e.getComponent(cc.Animation).stop(),
        e.active = false),
        app.LoginManager().SetIsLoginAnimPlay(false),
        this.unscheduleAllCallbacks()
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
                for (var o = 0; o < a.websiteTypeArr.length; o++) {
                    var i = cc.instantiate(t);
                    i.active = true,
                    n.addChild(i),
                    this.GetWndNode("mail/lb_text", i).getComponent(cc.Label).string = e;
                    var r = this.GetWndNode("mail/lb_mailcom", i).getComponent(cc.Label);
                    r.string = "@" + a.websiteTypeArr[o] + ".com",
                    i.on("click", this.AccountItemClick.bind(this, o, this.mail_account.string + r.string), this)
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
    __decorate([h(i.default)], t.prototype, "mail_account", undefined),
    __decorate([h(cc.EditBox)], t.prototype, "password", undefined),
    __decorate([h(cc.Label)], t.prototype, "codeLabel", undefined),
    __decorate([h(cc.Node)], t.prototype, "btnEye", undefined),
    __decorate([h(cc.Node)], t.prototype, "btnEyeHide", undefined),
    __decorate([h(cc.Toggle)], t.prototype, "ToggleRemember", undefined),
    __decorate([d], t)
}(o.default);
n.default = u,
module.exports = n
