let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.noDataNode = null,
        t.allContent = null,
        t.item = null,
        t.itemNum = 20,
        t
    }
    return __extends(t, e),
    t.prototype.init = function(e) {
        if (this.noDataNode.active = 0 == e.length,
        this.allContent.active = 0 != e.length,
        this.allContent.removeAllChildren(),
        0 != e.length)
            for (var t = 0; t < e.length; t++) {
                if (t > this.itemNum - 1)
                    return;
                var n = cc.instantiate(this.item);
                this.itemInfo(n, e[t]),
                this.allContent.addChild(n)
            }
    }
    ,
    t.prototype.BackPushData = function(e) {
        var t = null
          , n = 1
          , o = this.allContent.children[0];
        o && (n = o.zIndex - this.itemNum),
        this.allContent.children.length >= this.itemNum ? (t = this.allContent.children[this.itemNum - 1]).zIndex = n : ((t = cc.instantiate(this.item)).zIndex = n,
        this.allContent.addChild(t),
        this.noDataNode.active = false,
        this.allContent.active = true),
        this.itemInfo(t, e)
    }
    ,
    t.prototype.itemInfo = function(e) {
        e.active = true
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "noDataNode", undefined),
    __decorate([r(cc.Node)], t.prototype, "allContent", undefined),
    __decorate([r(cc.Node)], t.prototype, "item", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
