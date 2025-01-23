let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/AutoBaseComponent")
  , o = cc._decorator.ccclass
  , a = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.onLoad = function() {
        // this.layer_help = this.node,
        // this.label_paytable = this.GetWndComponent("head/label_paytable", cc.Label),
        // this.btn_back = this.GetWndNode("head/btn_back"),
        // this.label_tit = this.GetWndComponent("scrollview/view/content/label_tit", cc.Label),
        // this.label_num = this.GetWndComponent("scrollview/view/content/wild/label_num", cc.Label),
        // this.label_wild = this.GetWndComponent("scrollview/view/content/label_wild", cc.Label),
        // this.label_tit_fortune = this.GetWndComponent("scrollview/view/content/label_tit_fortune", cc.Label),
        // this.spr_multiplier = this.GetWndNode("scrollview/view/content/spr_multiplier"),
        // this.spr_packet2 = this.GetWndNode("scrollview/view/content/spr_multiplier/spr_packet2"),
        // this.label_during1 = this.GetWndComponent("scrollview/view/content/label_during1", cc.Label),
        // this.label_during2 = this.GetWndComponent("scrollview/view/content/label_during2", cc.Label),
        // this.label_during3 = this.GetWndComponent("scrollview/view/content/label_during3", cc.Label),
        // this.label_during4 = this.GetWndComponent("scrollview/view/content/label_during4", cc.Label),
        // this.spr_prop = this.GetWndNode("scrollview/view/content/spr_multiplier/award/prop_c1/spr_prop"),
        // this.label_multiplier1 = this.GetWndComponent("scrollview/view/content/label_multiplier1", cc.Label),
        // this.label_multiplier2 = this.GetWndComponent("scrollview/view/content/label_multiplier2", cc.Label),
        // this.spr_line = this.GetWndNode("scrollview/view/content/spr_line"),
        // this.label_winning1 = this.GetWndComponent("scrollview/view/content/label_winning1", cc.Label),
        // this.label_winning2 = this.GetWndComponent("scrollview/view/content/label_winning2", cc.Label),
        // this.label_winning3 = this.GetWndComponent("scrollview/view/content/label_winning3", cc.Label)
    }
    ,
    e.prototype.AutoBindEvent = function() {}
    ,
    e.URL = "db://assets/bundles/Game1052/prefab/Game_1052Help.prefab",
    __decorate([o], e)
}(n.default);
i.default = a,
module.exports = i
