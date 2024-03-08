let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/DB/Hall/WheelManager")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.noDataNode = null,
        t.allContent = null,
        t.item = null,
        t.Myitem = null,
        t.historyDate = [],
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {}
    ,
    t.prototype.start = function() {}
    ,
    t.prototype.int = function() {
        this.noDataNode.active = 0 == this.historyDate.length,
        this.allContent.active = 0 != this.historyDate.length,
        this.allContent.removeAllChildren();
        var e = this.historytype == o.WheelRecordType.Allrecord ? this.item : this.Myitem;
        if (0 != this.historyDate.length)
            for (var t = 1; t <= this.historyDate.length; t++) {
                var n = cc.instantiate(e);
                if (n.active = true,
                n.zIndex = t,
                this.itemInfo(n, this.historyDate[t - 1]),
                this.allContent.addChild(n),
                t > 19)
                    break
            }
    }
    ,
    t.prototype.BackPushData = function(e) {
        var t = null
          , n = 1
          , o = this.allContent.children[0];
        o && (n = o.zIndex - 20),
        this.allContent.children.length >= 20 ? (t = this.allContent.children[19]).zIndex = n : ((t = cc.instantiate(this.item)).active = true,
        t.zIndex = n,
        this.allContent.addChild(t),
        this.noDataNode.active = false,
        this.allContent.active = true),
        this.itemInfo(t, e)
    }
    ,
    t.prototype.itemInfo = function(e, t) {
        this.historytype == o.WheelRecordType.Allrecord ? (cc.find("content/player/label_name", e).getComponent(cc.Label).string = t.nickname,
        cc.find("content/rewards/label", e).getComponent(cc.Label).string = "" + t.gold,
        app.ImageUtil().LoadHead(cc.find("content/player/face/mask/tx", e), t.headimg)) : (cc.find("content/time/label", e).getComponent(cc.Label).string = t.create_time,
        cc.find("content/rewards/label", e).getComponent(cc.Label).string = "" + t.gold)
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "noDataNode", undefined),
    __decorate([r(cc.Node)], t.prototype, "allContent", undefined),
    __decorate([r(cc.Node)], t.prototype, "item", undefined),
    __decorate([r(cc.Node)], t.prototype, "Myitem", undefined),
    __decorate([a], t)
}(cc.Component);
n.default = s,
module.exports = n
