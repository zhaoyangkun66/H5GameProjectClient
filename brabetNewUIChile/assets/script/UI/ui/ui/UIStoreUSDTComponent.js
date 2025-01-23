let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.menu
  , c = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.BIND_USER_WALLET, this.OnBindUserWallet)
    }
    ,
    t.prototype.OnEnable = function() {
        this.ui.editbox_branch.placeholder = app.i18n.t("UI_ViPay_ERNum"),
        this.SetBindBankUserData()
    }
    ,
    t.prototype.SetBindBankUserData = function() {
        var e = app.UserManager().GetUserInfo;
        e && (this.ui.editbox_branch.string = "",
        e.user_wallet && "" !== e.user_wallet && (this.ui.editbox_branch.string = e.user_wallet))
    }
    ,
    t.prototype.UpdateParams = function() {
        var e = app.UserManager().GetUserInfo;
        e && e.user_wallet && this.ui.editbox_branch.string == e.user_wallet ? this.OnBindUserWallet() : app.CashOutManager().RequstBindUserWallet({
            token: app.UserManager().GetUserInfo.token,
            wallet: this.ui.editbox_branch.string
        })
    }
    ,
    t.prototype.OnBindUserWallet = function() {
        app.Client.OnEvent(i.GameEventDefine.WITHDRAW_CLICK, 4)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_confirm || this.UpdateParams()
    }
    ,
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIUSDTComponent_V")], t)
}(o.default));
n.default = c,
module.exports = n
