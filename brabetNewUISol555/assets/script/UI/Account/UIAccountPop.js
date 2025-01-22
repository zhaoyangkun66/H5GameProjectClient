let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("./UIBindEmail")
  , a = require("./UIBindPhone")
  , r = require("./UIChangePassword")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.BindPhone = null,
        t.BindEmail = null,
        t.UIPassword = null,
        t.topLbl = null,
        t.btnLbl = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {}
    ,
    t.prototype.OnShow = function(e) {
        this.type = e,
        this.BindPhone.active = 0 == e,
        this.BindEmail.active = 1 == e,
        this.UIPassword.active = 2 == e,
        this.topLbl.string = 0 == e ? app.i18n.t("UI_Account_POP1") : 1 == e ? app.i18n.t("UI_Account_POP2") : app.i18n.t("UI_Account_POP3"),
        this.btnLbl.string = 0 == e ? app.i18n.t("UI_Account_POP6") : 1 == e ? app.i18n.t("UI_Account_POP7") : app.i18n.t("UI_Create_account")
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_Reset" != e || (2 == this.type ? this.UIPassword.getComponent(r.default).onResetPassword() : 1 == this.type ? this.BindEmail.getComponent(i.default).onResetBindEmail() : 0 == this.type && this.BindPhone.getComponent(a.default).onResetBindPhone())
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "BindPhone", undefined),
    __decorate([l(cc.Node)], t.prototype, "BindEmail", undefined),
    __decorate([l(cc.Node)], t.prototype, "UIPassword", undefined),
    __decorate([l(cc.Label)], t.prototype, "topLbl", undefined),
    __decorate([l(cc.Label)], t.prototype, "btnLbl", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
