let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.account = null,
        t.code = null,
        t.countdown = null,
        t.btnSendValidate = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.GET_EMAIL_CODE_SUCCESS, this.OnGetCodeSuccess)
    }
    ,
    t.prototype.OnEnable = function() {
        this.account.string = "",
        this.code.string = "",
        this.btnSendValidate.active = true,
        this.countdown.node.active = false,
        this.countdown.string = ""
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_mail" != e ? "btn_clean" != e || (this.account.string = "") : this.onResetCode()
    }
    ,
    t.prototype.OnGetCodeSuccess = function(e) {
        this.countdown.node.active = true,
        this.btnSendValidate.active = false,
        this.countTime = e,
        this.schedule(this._callback, 1)
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
    t.prototype.onResetCode = function() {
        "" != this.account.string ? app.UserManager().RequestEmailCode({
            token: app.UserManager().UserInfo.token,
            email: this.account.string,
            type: 1
        }) : app.SysNotifyManager().ShowToast("UI.System_45")
    }
    ,
    t.prototype.onResetBindEmail = function() {
        if ("" != this.account.string)
            if ("" != this.code.string) {
                var e = {
                    token: app.UserManager().UserInfo.token,
                    account: this.account.string,
                    code: this.code.string
                };
                app.UserManager().RequestBingAccount(e)
            } else
                app.SysNotifyManager().ShowToast("UI_BindEmail1");
        else
            app.SysNotifyManager().ShowToast("UI.System_45")
    }
    ,
    t.prototype.OnDisable = function() {
        this.unscheduleAllCallbacks()
    }
    ,
    __decorate([s(cc.EditBox)], t.prototype, "account", undefined),
    __decorate([s(cc.EditBox)], t.prototype, "code", undefined),
    __decorate([s(cc.RichText)], t.prototype, "countdown", undefined),
    __decorate([s(cc.Node)], t.prototype, "btnSendValidate", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
