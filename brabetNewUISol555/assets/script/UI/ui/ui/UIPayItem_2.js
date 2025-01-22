let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.menu
  , s = (i.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t
    }
    return __extends(t, e),
    t.prototype.InitInfo = function(e) {
        this.data = e;
        var t = e.channel_list[0];
        this.ui.label_pay.string = t.name,
        this.ui.label_num.string = t.min_amount + "~" + t.max_amount
    }
    ,
    __decorate([a, r("UI/Vietnam_DepositWithdraw/UIPayItem_2_V")], t)
}(o.default));
n.default = s,
module.exports = n
