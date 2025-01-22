let n ={} 
Object.defineProperty(n, "__esModule", {
    value: !0
});
var o = cc._decorator
  , i = o.ccclass
  , a = o.property
  , r = o.executionOrder
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.designResolution = cc.size(750, 1334),
        t
    }
    return __extends(t, e),
    t.prototype.onEnable = function() {
        app.ComTool().DesktopPlatform() ? (this.node.parent.on(cc.Node.EventType.SIZE_CHANGED, this.fitHeight, this),
        this.fitHeight()) : (this.node.parent.on(cc.Node.EventType.SIZE_CHANGED, this.fitWidth, this),
        this.fitWidth())
    }
    ,
    t.prototype.fitHeight = function() {
        this.node.scale = this.node.parent.height / this.designResolution.height;
        for (var e = this.node.parent; e; )
            this.node.scale /= e.scale,
            e = e.parent
    }
    ,
    t.prototype.fitWidth = function() {
        var e = this.node.parent.width / this.node.parent.height;
        this.designResolution.width / this.designResolution.height < e ? this.fitHeight() : this.node.scale = 1
    }
    ,
    t.prototype.onDisable = function() {
        app.ComTool().DesktopPlatform() ? this.node.parent.off(cc.Node.EventType.SIZE_CHANGED, this.fitHeight, this) : this.node.parent.off(cc.Node.EventType.SIZE_CHANGED, this.fitWidth, this)
    }
    ,
    __decorate([a(cc.Size)], t.prototype, "designResolution", void 0),
    __decorate([i, r(1)], t)
}(cc.Component);
n.default = s,
module.exports = n
