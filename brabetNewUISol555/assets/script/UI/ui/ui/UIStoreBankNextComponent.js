let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("../../../../Common/Define/ShareDefine")
  , r = require("../../../../Common/Define/UINameDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.menu
  , p = (s.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.cash_rate = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.GET_TX, this.OnGetTx),
        this.RegEvent(i.GameEventDefine.GET_AGENTTX, this.OnGetAgentTx),
        this.RegEvent(i.GameEventDefine.BankNext, this.UpdateView),
        this.RegEvent(i.GameEventDefine.GET_USER_WALLET, this.UpdateInfo)
    }
    ,
    t.prototype.UpdateView = function(e) {
        this.isUSDT = e,
        this.InitStr(),
        this.UpdateInfo()
    }
    ,
    t.prototype.UpdateInfo = function() {
        var e = app.UserManager().GetUserWallet()
          , t = app.UserManager().GetUserInfo
          , n = app.CashOutManager().GetWithdrawGold();
        this.ui.label_number.string = n.toString();
        var o = e && e.multiple_unit ? e.multiple_unit : "";
        this.ui.label_edit.string = o;
        var i = app.CashOutManager().isAgentTx;
        if (this.isUSDT) {
            this.ui.node_conversion.active = false,
            this.ui.node_conversion_USDT.active = true;
            var a = i ? e.agent_usdt_percent : e.usdt_percent;
            this.cash_rate = Number(a) / 100,
            this.ui.label_edit.string = app.i18n.t("UI_Shop_USDT_TetherText"),
            this.ui.label_unit.string = ""
        } else {
            var r = app.GameConfigManager().GetCurrency;
            this.ui.label_edit.string = r;
            var s = e && e.multiple_unit ? e.multiple_unit : "";
            this.ui.label_unit.string = s,
            this.ui.node_conversion.active = true,
            this.ui.node_conversion_USDT.active = false;
            var c = i ? e.agent_percent : e.percent;
            this.cash_rate = Number(c) / 100
        }
        this.ui.node_account.active = false,
        this.ui.node_bankName.active = false,
        this.ui.node_branch.active = false,
        this.ui.node_cardholderName.active = false,
        this.ui.node_usdt.active = false,
        this.isUSDT ? (this.ui.node_usdt.active = true,
        this.ui.label_usdt.string = t.user_wallet) : ("" != t.bank_account && (this.ui.node_account.active = true,
        this.ui.label_account.string = t.bank_account),
        "" != t.bank_name && (this.ui.node_bankName.active = true,
        this.ui.label_bankName.string = t.bank_name),
        "" != t.branch_bank && (this.ui.node_branch.active = true,
        this.ui.label_branch.string = t.branch_bank),
        "" != t.cardholder_name && (this.ui.node_cardholderName.active = true,
        this.ui.label_cardholderName.string = t.cardholder_name))
    }
    ,
    t.prototype.OnChanged = function(e) {
        Number(e) ? (this.ui.editbox_phone.string = Number(e) + "",
        this.cash_rate && (this.ui.label_02.string = Number(1e3 * e).toString(),
        this.ui.label_serviceNum.string = (Number(e) * this.cash_rate).toFixed(2),
        this.ui.label_practicalNum.string = (Number(e) * (1 - this.cash_rate)).toFixed(2),
        this.ui.label_num.string = this.ui.label_serviceNum.string)) : this.InitStr()
    }
    ,
    t.prototype.InitStr = function() {
        this.ui.editbox_phone.string = "",
        this.ui.label_02.string = "0",
        this.ui.label_serviceNum.string = "0",
        this.ui.label_practicalNum.string = "0",
        this.ui.label_num.string = "0"
    }
    ,
    t.prototype.OnGetTx = function(e) {
        this.OnGetAgentTx(e)
    }
    ,
    t.prototype.OnGetAgentTx = function(e) {
        e && app.ConfirmManager().ShowConfirm(a.ConfirmType.ConfirmOK, e.msg, null, function() {}, null, this),
        app.UserManager().RequstUserWallet({
            type: app.CashOutManager().isAgentTx ? 2 : 1
        })
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (t != this.ui.btn_help)
            if (t != this.ui.btn_withdraw)
                ;
            else {
                var n = this.isUSDT ? 1 : 0
                  , o = {
                    channel: 4,
                    amount: Number(this.ui.editbox_phone.string),
                    is_usdt: n
                };
                app.CashOutManager().RequestTX(o)
            }
        else
            app.FormManager().ShowForm(r.UINameDefine.UIWithdrawDesc)
    }
    ,
    __decorate([c, l("UI/Vietnam_DepositWithdraw/UIBankNextComponent_V")], t)
}(o.default));
n.default = p,
module.exports = n
