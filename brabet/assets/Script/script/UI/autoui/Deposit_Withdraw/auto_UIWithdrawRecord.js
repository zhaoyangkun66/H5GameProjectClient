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
        this.UIWithdrawRecord = this.node,
        this.btn_setting = this.GetWndNode("general/btn_setting"),
        this.lb_id = this.GetWndComponent("general/title/lb_id", cc.Label),
        this.lb_amount = this.GetWndComponent("general/title/lb_amount", cc.Label),
        this.lb_times = this.GetWndComponent("general/title/lb_times", cc.Label),
        this.lb_staus = this.GetWndComponent("general/title/lb_staus", cc.Label),
        this.lb_details = this.GetWndComponent("general/title/lb_details", cc.Label)
    }
    ,
    t.prototype.AutoBindEvent = function(e) {
        this.AutoBindButtonEvent(e, this.btn_setting.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    t.URL = "db://assets/resources/Hall/Prefab/Deposit_Withdraw/UIWithdrawRecord.prefab",
    __decorate([i], t)
}(o.default);
n.default = a,
module.exports = n
