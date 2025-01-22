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
        this.btn_bg = this.GetWndNode("btn_bg")
    }
    ,
    t.prototype.AutoBindEvent = function(e) {
        this.AutoBindButtonEvent(e, this.btn_bg.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    t.URL = "db://assets/resources/Hall/Prefab/Vietnam_DepositWithdraw_2/UIViBankNameItem_2.prefab",
    __decorate([i], t)
}(o.default);
n.default = a,
module.exports = n
