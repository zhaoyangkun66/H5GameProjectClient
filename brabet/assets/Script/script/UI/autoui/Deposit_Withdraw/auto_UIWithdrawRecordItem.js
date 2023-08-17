let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/AutoBaseComponent")
  , i = cc._decorator.ccclass
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.item = this.node,
        this.lb_id = this.GetWndComponent("id/lb_id", cc.Label),
        this.lb_amount = this.GetWndComponent("amount/lb_amount", cc.Label),
        this.lb_times = this.GetWndComponent("times/lb_times", cc.Label),
        this.lb_staus = this.GetWndComponent("staus/lb_staus", cc.Label),
        this.btn_details = this.GetWndNode("btn_details"),
        this.lb_details = this.GetWndComponent("btn_details/lb_details", cc.Label)
    }
    ,
    t.prototype.AutoBindEvent = function(e) {
        this.AutoBindButtonEvent(e, this.btn_details.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    t.URL = "db://assets/resources/Hall/Prefab/Deposit_Withdraw/UIWithdrawRecordItem.prefab",
    __decorate([i], t)
}(o.default);
n.default = a,
module.exports = n
