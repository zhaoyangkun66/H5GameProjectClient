let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GameHistoryListBase = undefined;
var o = require("../../Common/Base/UIBaseComponent")
  , i = require("../../Common/Component/NodePool")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.content = null,
        t.item = null,
        t.itemHeight = 0,
        t.itemNum = 12,
        t.nodePool = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "GameHistoryListBase",
        this.nodePool = this.node.addComponent(i.default),
        this.nodePool && this.nodePool.initPool(this.item, 10),
        this.itemHeight = this.item.height
    }
    ,
    t.prototype.OnEnable = function() {
        this.OnRemoverChildren()
    }
    ,
    t.prototype.OnRemoverChildren = function() {
        this.content.stopAllActions(),
        this.content.removeAllChildren()
    }
    ,
    t.prototype.initView = function(e) {
        var t = this.nodePool.createNode();
        t.setPosition(0, this.itemHeight),
        this.OnItemInfo(t, e),
        this.content.addChild(t),
        t.active = true,
        this.OnPlayAnim()
    }
    ,
    t.prototype.OnItemInfo = function() {}
    ,
    t.prototype.OnPlayAnim = function() {
        var e = this;
        if (this.content.childrenCount > 0)
            for (var t = this.content.childrenCount, n = 0; n < t; n++) {
                var o = this.content.children[n];
                cc.tween(o).to(.2, {
                    position: cc.v3(0, -(t - 1 - n) * this.itemHeight)
                }, {
                    easing: cc.easing.sineOut
                }).call(function(t) {
                    t.y <= -e.itemHeight * e.itemNum && (t.active = false,
                    t.stopAllActions(),
                    e.nodePool.recycleNode(t))
                }, o).start()
            }
    }
    ,
    __decorate([s(cc.Node)], t.prototype, "content", undefined),
    __decorate([s(cc.Node)], t.prototype, "item", undefined),
    __decorate([r], t)
}(o.default);
n.GameHistoryListBase = c,
module.exports = n
