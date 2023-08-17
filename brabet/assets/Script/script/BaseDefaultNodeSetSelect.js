let n ={}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = (o.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.SetColorAndFontSize = function(e, t) {
        if (e) {
            if (this.node.color = cc.Color.WHITE.fromHEX(e),
            this.node.getComponent(cc.Label) && t && (this.node.getComponent(cc.Label).fontSize = t),
            this.node.getComponent(cc.Label)) {
                var n = function(e) {
                    return e && (e.getComponent(cc.Button) || e.getComponent(cc.Toggle))
                }
                  , o = n(this.node.parent) || n(this.node.parent.parent);
                o && o.target == this.node && o.transition == cc.Button.Transition.COLOR && (o.normalColor = this.node.color)
            }
            var i = this.node.getChildByName("underline");
            i && (i.color = cc.Color.WHITE.fromHEX(e))
        }
    }
    ,
    __decorate([i], t)
}(cc.Component));
n.default = a
module.exports = n 