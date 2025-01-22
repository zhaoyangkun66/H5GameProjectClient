let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = o.property
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.mul = 10,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.node.on(cc.Node.EventType.MOUSE_WHEEL, this._onMouseWheel, this, true)
    }
    ,
    t.prototype._onMouseWheel = function(e) {
        e.setScrollData(e.getScrollX(), e.getScrollY() * this.mul)
    }
    ,
    __decorate([a({
        tooltip: "\u6539\u53d8\u6eda\u8f6e\u79fb\u52a8\u8ddd\u79bb\u7684\u500d\u6570"
    })], t.prototype, "mul", undefined),
    __decorate([i], t)
}(cc.Component);
n.default = r,
module.exports = n
