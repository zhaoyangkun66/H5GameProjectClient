let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../../Common/Base/BaseComponent")
  , i = cc._decorator.ccclass
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.UIExperience = this.node,
        this.spr_bg = this.GetWndNode("node/introduce/spr_bg"),
        this.spr_img = this.GetWndNode("node/introduce/game/spr_img"),
        this.lb_name = this.GetWndComponent("node/introduce/info/lb_name", cc.Label),
        this.lb_firm = this.GetWndComponent("node/introduce/info/lb_firm", cc.Label),
        this.btn_fun = this.GetWndNode("node/introduce/btn_fun"),
        this.btn_Real = this.GetWndNode("node/introduce/btn_Real"),
        this.btn_view = this.GetWndNode("node/game/more/btn_view"),
        this.game_node = this.GetWndNode("node/game")
    }
    ,
    t.URL = "db://assets/resources/Hall/Prefab/UIExperience.prefab",
    __decorate([i], t)
}(o.default);
n.default = a,
module.exports = n
