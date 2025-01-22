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
       // this.Canvas = this.node,
       // this.sprite_splash = this.GetWndNode("bg/sprite_splash"),
        // this.spr_prop1 = this.GetWndNode("game/prop_left/roll_l/spr_prop1"),
        // this.spr_prop2 = this.GetWndNode("game/prop_left/roll_l/spr_prop2"),
        // this.spr_prop3 = this.GetWndNode("game/prop_left/roll_l/spr_prop3"),
        // this.spr_prop4 = this.GetWndNode("game/prop_left/roll_l/spr_prop4"),
        // this.spr_prop5 = this.GetWndNode("game/prop_left/roll_l/spr_prop5"),
        // this.spr_prop6 = this.GetWndNode("game/prop_left/roll_l/spr_prop6"),
        // this.spr_prop7 = this.GetWndNode("game/prop_left/roll_l/spr_prop7"),
        // this.spr_prop8 = this.GetWndNode("game/prop_left/roll_l/spr_prop8"),
        // this.spr_prop9 = this.GetWndNode("game/prop_left/roll_l/spr_prop9"),
     //   this.label_gold = this.GetWndComponent("win_gold/label_gold", cc.Label),
      //  this.label_win = this.GetWndComponent("win_gold/label_win", cc.Label),
       // this.btn_help = this.GetWndNode("head/btn_help"),
        this.btn_add = this.GetWndNode("gameNode/operate/btn_add"),
        this.btn_minus = this.GetWndNode("gameNode/operate/btn_minus"),
        this.btn_auto = this.GetWndNode("gameNode/operate/btn_auto"),
        this.btn_turbo = this.GetWndNode("gameNode/operate/btn_turbo")
    }
    ,
    e.prototype.AutoBindEvent = function(t) {
       // this.AutoBindButtonEvent(t, this.btn_help.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_add.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_minus.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_auto.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_turbo.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    e.URL = "db://assets/bundles/Game1053/prefab/game_1053_V.prefab",
    __decorate([o], e)
}(n.default);
i.default = a,
module.exports = i
