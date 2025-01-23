let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.LoginType = undefined;
var o, i = require("../../Common/Base/BaseForm"), a = require("../../Common/Component/EditBox"), r = require("../../Common/Define/GameEventDefine"), s = require("../../Common/Define/ShareDefine"), c = require("../../Common/Define/TrackEventName"), l = require("../common_component/RichTextCallBack");
(function (e) {
    e.Email = "email",
        e.Mobile = "mobile"
}
)(o = n.LoginType || (n.LoginType = {}));
var p = cc._decorator
    , d = p.ccclass
    , h = p.property
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.UILogin = null,
                t.UISign = null,
                t.terms_login = null,
                t.btn_login = null,
                t.btn_sign = null,
                t.Toggle_login = null,
                t.Toggle_sign = null,
                t.mailNode = null,
                t.phoneNode = null,
                t.toggleContainer = null,
                t.lbl_bottom = null,
                t.login_ani = null,
                t.InterfaceType = 0,
                t.OnlineNumNode = null,
                t.lbl_tlt = null,
                t.btn_closeNode = null,
                t.btn_closeButton = null,
                t.OnlineNum = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                if (this.JS_Name = "UILoginSign",
                    this.RegEvent(r.GameEventDefine.GET_AREA_CODES, this.OnGetAreaCode),
                    this.lbl_tlt = app.ComTool().H5Platform() ? this.GetWndNode("layer/top/lb_text") : this.GetWndNode("layer/right/top/lb_text"),
                    this.InitLoginMethod(),
                    this.UILogin.getComponent("UILogin").setLoginAnimPra(this.login_ani),
                    this.UISign.getComponent("UISignUp").setLoginAnimPra(this.login_ani),
                    this.RegEvent(r.GameEventDefine.GET_ONLINE_NUM, this.OnGetOnline_Num),
                    this.OnlineNumNode = this.GetWndNode("/online"),
                    this.OnlineNumNode) {
                    var e = app.UserManager().GetUserInfoConfig;
                    e && 1 == e.show_arr[s.VisibleBtnTag.LoginOnline] ? this.OnlineNumNode.active = true : this.OnlineNumNode.active = false
                }
            }
            ,
            t.prototype.InitLoginMethod = function () {
                var e = app.GameConfigManager().GetGameConfig().reg_login_weight_conf;
                if (e) {
                    var t = e.length > 1;
                    this.toggleContainer.active = t;
                    var n = this.toggleContainer.parent.getComponent(cc.Sprite);
                    if (n && (n.enabled = t),
                        this.lbl_tlt.active = !t,
                        t)
                        for (var i = 0; i < e.length; i++) {
                            var a;
                            if (1 == (a = e[i]).status) {
                                var r = a.key == o.Email ? cc.instantiate(this.mailNode) : cc.instantiate(this.phoneNode);
                                0 == i && (r.getComponent(cc.Toggle).isChecked = true,
                                    this.InterfaceType = a.key == o.Email ? 0 : 1),
                                    r.active = true,
                                    r.parent = this.toggleContainer
                            }
                        }
                    else
                        (a = e[0]) && (this.lbl_tlt.getComponent(cc.Label).string = a.key == o.Email ? app.i18n.t("UI_LOGIN_Mail") : app.i18n.t("UI_LOGIN_Phone"),
                            this.InterfaceType = a.key == o.Email ? 0 : 1)
                } else
                    for (this.InterfaceType = 0,
                        i = 0; i < 2; i++)
                        r = 0 == i ? cc.instantiate(this.mailNode) : cc.instantiate(this.phoneNode),
                            0 == i && (r.getComponent(cc.Toggle).isChecked = true),
                            r.active = true,
                            r.parent = this.toggleContainer
            }
            ,
            t.prototype.OnShow = function (e) {
                if (undefined === e) {
                    if (this.btn_closeButton) {
                        this.btn_closeButton.enabled = false
                    }
                    this.btn_closeNode.active = false
                }
                else {
                    if (this.btn_closeButton) {
                        this.btn_closeButton.enabled = true
                    }
                    this.btn_closeNode.active = true
                }
                undefined === e && (e = 1);
                var t = app.LoginManager().getUserLoginCode();
                this.myCode = t,
                    t && this.onLoginCode(),
                    this.onLoginBtnSwitch(),
                    this.onLoginShow(1 == e),
                    app.GoogleLoginManager().WebGoogleLoginInit(),
                  //  app.LoginManager().RequestOnlineNum(),
                    this.schedule(this.onSetGoogleWebState, 1),
                    this.onRichtextClick()
            }
            ,
            t.prototype.onLoginBtnSwitch = function () {
   
            }
            ,
            t.prototype.onLoginShow = function (e) {
                this.Toggle_login.isChecked = e,
                    this.Toggle_sign.isChecked = !e,
                    this.UILogin.active = e,
                    this.terms_login.active = e,
                    this.btn_sign.active = e,
                    this.UISign.active = !e,
                    this.btn_login.active = !e;
                var t = e ? "UI_Dont_account" : "UI_have_account";
                this.lbl_bottom.string = app.i18n.t(t),
                    this.updateShowHied()
            }
            ,
            t.prototype.onLoginCode = function () {
                var e = this.UISign.getChildByName("text_phone").getChildByName("btn_code").getChildByName("label").getComponent(cc.Label)
                    , t = this.UILogin.getChildByName("text_phone").getChildByName("btn_code").getChildByName("label").getComponent(cc.Label);
                this.myCode.code || Number(e.string) && Number(t.string) ? (t.string = Number(t.string) ? t.string : "+" + this.myCode.code,
                    e.string = Number(e.string) ? e.string : "+" + this.myCode.code) : app.LoginManager().RequestAreaCodes()
            }
            ,
            t.prototype.OnClick = function (e) {
                if (this.Log(e),
                    "btn_mail" == e)
                    return this.InterfaceType = 0,
                        void this.updateShowHied();
                if ("btn_phone" == e)
                    return this.InterfaceType = 1,
                        void this.updateShowHied();
                if ("btn_login" != e)
                    if ("btn_sign_up" != e)
                        if ("terms" != e)
                            if ("login_Telegram" == e) {
                                app.LoginManager().VisitorLogin()
                            }
                            else {
                                "btn_fb_login" != e ? "login_google" != e ? "btn_free" != e || app.DemoServerManager().EnterGame() : app.LoginManager().GetIsLoginAnimPlay || this.GoogleLoginClick() : app.LoginManager().GetIsLoginAnimPlay || this.facebookLoginClick();
                            }
                        else {
                            var t = app.GameConfigManager().GetGameConfig().user_agreement;
                            cc.sys.openURL(t)
                        }
                    else
                        this.onLoginShow(false);
                else
                    this.onLoginShow(true)
            }
            ,
            t.prototype.GoogleLoginClick = function () {
                !app.ComTool().CheckPlatform() && app.NativeMgr().getApkVersion() < 1100 ? app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmYN, app.i18n.t("UI_GoogleLoginHintUpVersion"), null, function () {
                    var e = app.GameConfigManager().GetGameConfig().down_urls;
                    app.NativeMgr().downloadApp(e.android_download_url)
                }) : app.GoogleLoginManager().showTips()
            }
            ,
            t.prototype.facebookLoginClick = function () {
                app.EventTrackManager().LogEvent(c.default.CLICK_BTN_FB),
                    app.ComTool().CheckPlatform() ? app.FacebookManager().WebFacebookLogin() : this.indiaLogin(function () {
                        app.NativeMgr().loginFaceBook()
                    })
            }
            ,
            t.prototype.indiaLogin = function (e) {
                app.ComTool().CheckPlatform() ? app.LoginManager().VisitorLogin() : (null == cc.sys.localStorage.getItem("is_first_launch") && cc.sys.localStorage.setItem("is_first_launch", true),
                    e())
            }
            ,
            t.prototype.updateShowHied = function () {
                this.onLoginChildNodeShow(),
                    this.onSignChildNodeShow()
            }
            ,
            t.prototype.onLoginChildNodeShow = function () {
                if (this.UILogin.active) {
                    var e = this.UILogin.getChildByName("text_phone");
                    e.active = 0 != this.InterfaceType,
                        e.getChildByName("editbox_phone").getComponent(cc.EditBox).string = this.myCode.phone_account ? this.myCode.phone_account : "";
                    var t = this.UILogin.getChildByName("text_mail");
                    t.active = 0 == this.InterfaceType,
                        t.getChildByName("editbox_mail").getComponent(a.default).string = this.myCode.mail_account ? this.myCode.mail_account : "";
                    var n = this.UILogin.getChildByName("text_password")
                        , o = n.getChildByName("editbox_password").getComponent(cc.EditBox);
                    o.inputFlag = cc.EditBox.InputFlag.PASSWORD,
                        app.LoginManager().IsRememberPass || (this.myCode.phone_password = "",
                            this.myCode.mail_password = "",
                            app.LoginManager().setUserLoginCode(this.myCode)),
                        0 != this.InterfaceType ? o.string = this.myCode.phone_password ? this.myCode.phone_password : "" : o.string = this.myCode.mail_password ? this.myCode.mail_password : "",
                        n.getChildByName("btn_eye").active = true,
                        n.getChildByName("btn_eye_close").active = false,
                        this.UILogin.getComponent(cc.Layout).updateLayout()
                }
            }
            ,
            t.prototype.onSignChildNodeShow = function () {
                if (this.UISign.active) {
                    this.UISign.getChildByName("text_phone").active = 0 != this.InterfaceType;
                    var e = this.UISign.getChildByName("text_otp");
                    e.active = 0 != this.InterfaceType && 1 == app.GameConfigManager().GetGameConfig().user_mobile_reg_switch,
                        e.getChildByName("btn_otp").active = true,
                        e.getChildByName("label_time").getChildByName("richtext").active = false,
                        this.UISign.getChildByName("text_mail").active = 0 == this.InterfaceType;
                    var t = this.UISign.getChildByName("text_password");
                    t.getChildByName("editbox_password").getComponent(cc.EditBox).inputFlag = cc.EditBox.InputFlag.PASSWORD,
                        t.getChildByName("btn_eye").active = true,
                        t.getChildByName("btn_eye_close").active = false;
                    var n = this.GetWndNode("mainReceive/agree", this.UISign);
                    n.parent.active = 0 == this.InterfaceType,
                        n.getComponent(cc.Toggle).isChecked = true,
                        this.GetWndNode("terms_sign/agree", this.UISign).getComponent(cc.Toggle).isChecked = true,
                        this.UISign.getComponent(cc.Layout).updateLayout()
                }
            }
            ,
            t.prototype.OnGetAreaCode = function () {
                var e = app.LoginManager().GetDefaultAreaCode();
                e ? (this.myCode.code = e.code,
                    this.onLoginCode()) : this.ErrLog("OnGetAreaCode error")
            }
            ,
            t.prototype.onSetGoogleWebState = function () {
                app.NativeMgr().openInternalWindow(true)
            }
            ,
            t.prototype.onRichtextClick = function () {
                var e = this
                    , t = cc.find("layer/right/terms_login/rich_Text18", this.node) || cc.find("layer/terms_login/rich_Text18", this.node)
                    , n = cc.find("layer/right/UISignUp/terms_sign/rich_Text18", this.node) || cc.find("/layer/UISignUp/terms_sign/rich_Text18", this.node)
                    , o = {
                        str: "<b><color=#59677C >" + app.i18n.t("UI_BONTTOM_BYTIT") + ' </color></b><u><color=#6751EB><on click="handler">' + app.i18n.t("UI_Terms_of_Service") + "</on></color></u>",
                        callBack: function () {
                            e.OnClick("terms")
                        }
                    };
                t && t.getComponent(l.default).setRichtextStrCallBack(o),
                    n && n.getComponent(l.default).setRichtextStrCallBack(o)
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                app.LoginManager().SetIsLoginAnimPlay(false),
                    app.GoogleLoginManager().hideTips(),
                    app.GoogleReCaptChaManager().hideDiv(),
                    this.unschedule(this.onSetGoogleWebState),
                    app.NativeMgr().openInternalWindow(false),
                    app.Client.OnEvent(r.GameEventDefine.UILoginClose)
            }
            ,
            t.prototype.OnGetOnline_Num = function (e) {
                this.OnlineNum = Number(e),
                    this.OnlineNumNode && this.OnlineNumNode.active && (this.UpdateOnlineNum(),
                        this.unschedule(this.UpdateOnlineNum),
                        this.schedule(this.UpdateOnlineNum, 5))
            }
            ,
            t.prototype.UpdateOnlineNum = function () {
                var e = 2 * Number(this.OnlineNum) + app.ComTool().getRandomNumber(50, 100);
                this.OnlineNumNode.getChildByName("lb_num").getComponent(cc.Label).string = e.toFixed(0),
                    this.OnlineNumNode.active = true
            }
            ,
            t.prototype.StartEnterCode = function () {
                this.StEnterCodeFontSize(75)
            }
            ,
            t.prototype.EndEnterCode = function () {
                this.StEnterCodeFontSize(37.84)
            }
            ,
            t.prototype.StEnterCodeFontSize = function (e) {
                var t = app.ComTool().H5Platform() ? "layer" : "layer/right";
                this.GetWndComponent(t + "/UISignUp/text_otp/editbox_enter_otp/PLACEHOLDER_LABEL", cc.Label).fontSize = e,
                    this.GetWndComponent(t + "/UISignUp/text_otp/editbox_enter_otp/TEXT_LABEL", cc.Label).fontSize = e
            }
            ,
            __decorate([h(cc.Node)], t.prototype, "UILogin", undefined),
            __decorate([h(cc.Node)], t.prototype, "UISign", undefined),
            __decorate([h(cc.Node)], t.prototype, "terms_login", undefined),
            __decorate([h(cc.Node)], t.prototype, "btn_login", undefined),
            __decorate([h(cc.Node)], t.prototype, "btn_sign", undefined),
            __decorate([h(cc.Toggle)], t.prototype, "Toggle_login", undefined),
            __decorate([h(cc.Toggle)], t.prototype, "Toggle_sign", undefined),
            __decorate([h(cc.Node)], t.prototype, "mailNode", undefined),
            __decorate([h(cc.Node)], t.prototype, "phoneNode", undefined),
            __decorate([h(cc.Node)], t.prototype, "toggleContainer", undefined),
            __decorate([h(cc.Label)], t.prototype, "lbl_bottom", undefined),
            __decorate([h(cc.Prefab)], t.prototype, "login_ani", undefined),
            __decorate([h(cc.Node)], t.prototype, "btn_closeNode", undefined),
            __decorate([h(cc.Button)], t.prototype, "btn_closeButton", undefined),
            __decorate([d], t)
    }(i.default);
n.default = u,
    module.exports = n
