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
        this.UIAccountBirthday = this.node,
        this.btn_close = this.GetWndNode("layer/top/btn_close"),
        this.btn_yy = this.GetWndNode("layer/birthday_layer/btn_yy"),
        this.lb_yy = this.GetWndComponent("layer/birthday_layer/btn_yy/lb_yy", cc.Label),
        this.btn_mm = this.GetWndNode("layer/birthday_layer/btn_mm"),
        this.lb_mm = this.GetWndComponent("layer/birthday_layer/btn_mm/lb_mm", cc.Label),
        this.btn_dd = this.GetWndNode("layer/birthday_layer/btn_dd"),
        this.lb_dd = this.GetWndComponent("layer/birthday_layer/btn_dd/lb_dd", cc.Label),
        this.btn_set = this.GetWndNode("layer/btn_set"),
        this.scrollview_date = this.GetWndNode("scrollview_date")
    }
    ,
    t.prototype.AutoBindEvent = function(e) {
        this.AutoBindButtonEvent(e, this.btn_close.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(e, this.btn_yy.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(e, this.btn_mm.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(e, this.btn_dd.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(e, this.btn_set.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    t.URL = "db://assets/resources/Hall/Prefab/Account/UIAccountBirthday_V.prefab",
    __decorate([i], t)
}(o.default);
n.default = a,
module.exports = n
