let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = require("../../../Common/Define/UINameDefine")
    , s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.account = null,
                t.code = null,
                t.codeLabel = null,
                t.countdown = null,
                t.btnSendValidate = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.RegEvent(i.GameEventDefine.GET_CODE_SUCCESS, this.OnGetCodeSuccess),
                    this.RegEvent(i.GameEventDefine.NATION_PHONE_CODE, this.OnSelectNation)
            }
            ,
            t.prototype.OnEnable = function () {
                this.account.string = "",
                    this.code.string = "",
                    this.btnSendValidate.active = true,
                    this.countdown.node.active = false,
                    this.countdown.string = "";
                var e = app.LoginManager().getUserLoginCode();
                if (this.codeLabel.string = "+" + e.code,
                    !e.code) {
                    var t = app.LoginManager().GetDefaultAreaCode();
                    t ? this.codeLabel.string = "+" + t.code : this.ErrLog("OnGetAreaCode error")
                }
            }
            ,
            t.prototype.OnSelectNation = function (e) {
                this.codeLabel.string = "+" + e.code
            }
            ,
            t.prototype.OnClick = function (e) {
                "btn_otp" != e ? "btn_clean" != e ? "btn_code" != e || app.FormManager().ShowForm(r.UINameDefine.UINationPhoneCode, {
                    type: a.NationPhoneNumberType.BindPhone
                }) : this.account.string = "" : this.onResetCode()
            }
            ,
            t.prototype.OnGetCodeSuccess = function (e) {
                this.countdown.node.active = true,
                    this.btnSendValidate.active = false,
                    this.countTime = e,
                    this.schedule(this._callback, 1)
            }
            ,
            t.prototype._callback = function () {
                this.countTime = this.countTime - 1,
                    this.countdown.string = this.countTime + "s",
                    this.countTime <= 0 && (this.unscheduleAllCallbacks(),
                        this.countdown.node.active = false,
                        this.btnSendValidate.active = true,
                        this.countdown.string = "")
            }
            ,
            t.prototype.onResetCode = function () {
                if ("" != this.account.string) {
                    var e = app.UserManager().UserInfo
                        , t = this.codeLabel.string.replace("+", "");
                    app.UserManager().fetchValidateCode({
                        token: e.token,
                        tel: Number(t + "" + this.account.string),
                        type: 1,
                        area: t
                    })
                } else
                    app.SysNotifyManager().ShowToast("UI.System_inputPhone")
            }
            ,
            t.prototype.onResetBindPhone = function () {
                if ("" != this.account.string)
                // if ("" != this.code.string) 
                {
                    var e = this.codeLabel.string.replace("+", "")
                        , t = {
                            token: app.UserManager().UserInfo.token,
                            tel: this.account.string,
                            code: this.code.string,
                            area: e
                        };
                    app.UserManager().RequestBingTel(t)
                }
                //else
                //  app.SysNotifyManager().ShowToast("UI_BindPhone1");
                else
                    app.SysNotifyManager().ShowToast("UI.System_inputPhone")
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
                // app.ComTool().H5Platform() || 
                (this.GetWndComponent("text_otp/editbox_enter_otp/PLACEHOLDER_LABEL", cc.Label).fontSize = e,
                    this.GetWndComponent("text_otp/editbox_enter_otp/TEXT_LABEL", cc.Label).fontSize = e)
            }
            ,
            t.prototype.OnDisable = function () {
                this.unscheduleAllCallbacks()
            }
            ,
            __decorate([l(cc.EditBox)], t.prototype, "account", undefined),
            __decorate([l(cc.EditBox)], t.prototype, "code", undefined),
            __decorate([l(cc.Label)], t.prototype, "codeLabel", undefined),
            __decorate([l(cc.RichText)], t.prototype, "countdown", undefined),
            __decorate([l(cc.Node)], t.prototype, "btnSendValidate", undefined),
            __decorate([c], t)
    }(o.default);
n.default = p,
    module.exports = n
