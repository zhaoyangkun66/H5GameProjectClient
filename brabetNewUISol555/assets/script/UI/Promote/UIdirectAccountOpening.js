let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , LoginManager = require("../../../Common/DB/LoginManager")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.property
    , c = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.mail_account = null,
                t.password = null,
                t.btnEye = null,
                t.btnEyeHide = null,
                t.account = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIdirectAccountOpening",
                    this.RegEvent(i.GameEventDefine.newagent_createaccount, this.onNewagent_createaccount)
            }
            ,
            t.prototype.OnEnable = function () {

            }
            ,
            t.prototype.onNewagent_createaccount = function (data) {
                app.FormManager().ShowForm(UINameDefine.UINameDefine.UIdirectAccountOpeningBack, data);
            },
            t.prototype.OnClick = function (e, t, n) {
                if ("btn_Login" == e) {
                    var t = this.mail_account.string
                        , n = this.password.string
                    if (!t)
                        return void app.SysNotifyManager().ShowToast("UI.System_45");
                    if (!/^\w+((.\w+)|(-\w+))@[A-Za-z0-9]+((.|-)[A-Za-z0-9]+).[A-Za-z0-9]+$/.test(t))
                        return void app.SysNotifyManager().ShowToast("UI_Login_prompt5")
                    app.PromoteMainManager().ReqNewagent_createaccount({
                        account: t,
                        password: n
                    })
                }
                else if ("btn_eye" == e) {
                    this.renderEye(true);
                }
                else if ("btn_eye_close" == e) {
                    this.renderEye(false);
                }
                else if ("btn_clean_mail" == e) {
                    this.mail_account.string = "";
                }
            },
            t.prototype.renderEye = function (e) {
                this.password.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD,
                    this.btnEye.active = !e,
                    this.btnEyeHide.active = e
            }
            ,
            t.prototype.ChangedText = function () {
                this.mail_account.string && (this.mail_account.string = this.mail_account.string.replace(new RegExp(/\s/g), "")),
                    this.mail_account.string && (this.mail_account.string = this.mail_account.string.replace(new RegExp("[\u4e00-\u9fff]+", "g"), ""));
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
                        for (var o = 0; o < LoginManager.websiteTypeArr.length; o++) {
                            var i = cc.instantiate(t);
                            i.active = true,
                                n.addChild(i),
                                this.GetWndNode("mail/lb_text", i).getComponent(cc.Label).string = e;
                            var r = this.GetWndNode("mail/lb_mailcom", i).getComponent(cc.Label);
                            r.string = "@" + LoginManager.websiteTypeArr[o] + ".com",
                                i.on("click", this.AccountItemClick.bind(this, o, this.mail_account.string + r.string), this)
                        }
                    }
                else
                    this.account.active = false
            }
            ,
            t.prototype.AccountItemClick = function (e, t) {
                this.account.active = false,
                    this.mail_account.string = t
            }
            ,
            __decorate([s(cc.EditBox)], t.prototype, "mail_account", undefined),
            __decorate([s(cc.EditBox)], t.prototype, "password", undefined),
            __decorate([s(cc.Node)], t.prototype, "btnEye", undefined),
            __decorate([s(cc.Node)], t.prototype, "btnEyeHide", undefined),
            __decorate([s(cc.Node)], t.prototype, "account", undefined),
            __decorate([r], t)
    }(o.default);
n.default = c,
    module.exports = n