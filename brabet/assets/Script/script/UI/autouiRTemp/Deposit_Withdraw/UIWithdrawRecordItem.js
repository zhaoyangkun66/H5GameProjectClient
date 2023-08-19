let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/UINameDefine")
  , a = require("../../autoui/Deposit_Withdraw/auto_UIWithdrawRecordItem")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.menu
  , l = (r.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.strArr = ["Successful", "Cancelled", "In Process"],
        t.colorArr = ["#69FF90", "#FF315C", "#FFFFFF"],
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIWithdrawRecordItem",
        this.ui = this.node.addComponent(a.default),
        this.ui.AutoBindEvent(this)
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.SetItemData = function(e) {
        this.data = e,
        this.ui.lb_id.string = e.id.toString(),
        this.ui.lb_amount.string = e.amount,
        this.ui.lb_times.string = e.st_time,
        this.ui.lb_staus.string = e.status;
        for (var t = 0; t < this.strArr.length; t++) {
            var n = this.strArr[t];
            if (e.status == n)
                return void (this.ui.lb_staus.node.color = cc.Color.WHITE.fromHEX(this.colorArr[t]))
        }
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_details || app.FormManager().ShowForm(i.UINameDefine.UICashDetails, {
            DetailsId: this.data.id,
            is_usdt: this.data.is_usdt
        })
    }
    ,
    __decorate([s, c("UI/Deposit_Withdraw/UIWithdrawRecordItem")], t)
}(o.default));
n.default = l,
module.exports = n
