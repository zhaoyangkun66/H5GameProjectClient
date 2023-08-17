let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.TicketsLbl = null,
        t.Anim_ticket = null,
        t.cb = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnEnable = function() {
        var e = this
          , t = this.Anim_ticket.getComponent(cc.Animation);
        t.play(),
        t.once("finished", function() {
            e.OnClose()
        })
    }
    ,
    t.prototype.setInfo = function(e, t) {
        this.cb = null,
        this.cb = t,
        this.TicketsLbl.string = "" + e
    }
    ,
    t.prototype.OnClose = function() {
        this.cb && this.cb(),
        this.Anim_ticket.getComponent(cc.Animation).stop(),
        this.node.active = false,
        this.node.removeFromParent()
    }
    ,
    __decorate([r(cc.Label)], t.prototype, "TicketsLbl", undefined),
    __decorate([r(cc.Node)], t.prototype, "Anim_ticket", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
