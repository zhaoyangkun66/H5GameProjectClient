let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("../../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.menu
  , l = (r.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.SelectBankCodeData = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.BANK_CODE_CLICK, this.OnSetBankCode),
        this.RegEvent(i.GameEventDefine.BIND_BANK_ACCOUNT, this.OnBindBankAccount)
    }
    ,
    t.prototype.OnEnable = function() {
        this.SetBindBankEditBoxList(),
        this.SetBindBankUserData()
    }
    ,
    t.prototype.SetBindBankEditBoxList = function() {
        var e = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay
          , t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.weight;
        if (e && t) {
            this.ui.node_branch.active = 1 == e.branch_bank,
            this.ui.node_branch.zIndex = -1 * Number(t.branch_bank),
            this.ui.node_name.active = 1 == e.name,
            this.ui.node_name.zIndex = -1 * Number(t.name),
            this.ui.node_account.active = 1 == e.account,
            this.ui.node_account.zIndex = -1 * Number(t.account),
            this.ui.node_bank.active = false;
            var n = app.UserManager().GetUserWallet();
            n && "1" == n.v_position || (this.ui.node_bank.active = 1 == e.bank,
            this.ui.node_bank.zIndex = -1 * Number(t.bank))
        }
    }
    ,
    t.prototype.SetBindBankUserData = function() {
        var e = app.UserManager().GetUserInfo;
        this.ui.editbox_branch.placeholder = app.i18n.t("UI_ViPay_EGCity"),
        this.ui.editbox_account.placeholder = app.i18n.t("UI_ViPay_EGNum"),
        this.ui.editbox_name.placeholder = app.i18n.t("UI_RealNameAndSurname"),
        e && (this.ui.editbox_branch.string = "",
        e.branch_bank && "" !== e.branch_bank && (this.ui.editbox_branch.string = e.branch_bank),
        this.ui.editbox_account.string = "",
        e.bank_account && "" !== e.bank_account && (this.ui.editbox_account.string = e.bank_account),
        this.ui.editbox_name.string = "",
        e.cardholder_name && "" !== e.cardholder_name && (this.ui.editbox_name.string = e.cardholder_name),
        e.bank_name && "" !== e.bank_name && (this.ui.label_bank.string = e.bank_name))
    }
    ,
    t.prototype.OnSetBankCode = function(e) {
        this.SelectBankCodeData = e,
        this.ui.label_bank.string = e.bank_name
    }
    ,
    t.prototype.UpdateParams = function() {
        var e = app.UserManager().GetUserWallet()
          , t = e ? e.v_position : 1
          , n = app.UserManager().GetUserInfo
          , o = {
            type: t,
            token: app.UserManager().GetUserInfo.token,
            bank_account: this.ui.editbox_account.string,
            bank_name: this.ui.label_bank.string,
            branch_bank: this.ui.editbox_branch.string,
            cardholder_name: this.ui.editbox_name.string,
            bank_code: n ? n.bank_code : ""
        };
        this.SelectBankCodeData && (o.bank_code = this.SelectBankCodeData.bank_code,
        o.bank_name = this.SelectBankCodeData.bank_name),
        n && o.bank_account == n.bank_account && o.bank_name == n.bank_name && o.branch_bank == n.branch_bank && o.cardholder_name == n.cardholder_name && o.bank_code == n.bank_code ? this.OnBindBankAccount() : app.CashOutManager().RequstBindBankAccount(o)
    }
    ,
    t.prototype.OnBindBankAccount = function() {
        app.Client.OnEvent(i.GameEventDefine.WITHDRAW_CLICK, 2)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_confirm ? t != this.ui.btn_arrow || app.FormManager().ShowForm(a.UINameDefine.UIBankName) : this.UpdateParams()
    }
    ,
    __decorate([s, c("UI/Vietnam_DepositWithdraw/UIBankComponent_V")], t)
}(o.default));
n.default = l,
module.exports = n
