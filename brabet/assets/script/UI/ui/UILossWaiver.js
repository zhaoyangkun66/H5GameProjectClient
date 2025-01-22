let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("./UILoseWaiverItem")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.item = null,
        t.content = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UILossWaiver",
        this.RegEvent(i.GameEventDefine.LOSEWLIST, this.onLoseWaiverData)
    }
    ,
    t.prototype.OnShow = function() {
        app.LoseWaiverManager().RequestLoseWaiver()
    }
    ,
    t.prototype.onLoseWaiverData = function(e) {
        for (var t = [], n = [], o = [], i = 0; i < e.length; i++) {
            var r = e[i];
            1 != r.is_get ? 0 == r.is_get && r.start_get_time - app.LoseWaiverManager().GetSeverTime <= 0 && r.lost <= 0 ? o.push(e[i]) : t.push(e[i]) : n.push(e[i])
        }
        e = t.concat(n, o),
        this.content.removeAllChildren();
        for (var s = 0; s < e.length; s++) {
            var c = e[s]
              , l = cc.instantiate(this.item);
            l.getComponent(a.default).RefreshData(c, s),
            l.active = true,
            this.content.addChild(l)
        }
        this.content.getComponent(cc.Layout).updateLayout()
    }
    ,
    __decorate([c(cc.Prefab)], t.prototype, "item", undefined),
    __decorate([c(cc.Node)], t.prototype, "content", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
