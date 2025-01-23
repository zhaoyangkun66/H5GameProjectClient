let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Define/GameEventDefine")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = i.disallowMultiple
  , c = i.menu
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.scrollSpeed = 1,
        t.scrollY = 0,
        t.onceTag = false,
        t.beginTime = 0,
        t.down = false,
        t._deltaMove = new cc.Vec2(0,0),
        t
    }
    return __extends(t, e),
    t.prototype._onTouchEnded = function(t, n) {
        app.Client.OnEvent(o.GameEventDefine.SCROLLVIEW_DIRECTION, true),
        e.prototype._onTouchEnded.call(this, t, n)
    }
    ,
    t.prototype._onTouchCancelled = function(t, n) {
        app.Client.OnEvent(o.GameEventDefine.SCROLLVIEW_DIRECTION, true),
        e.prototype._onTouchCancelled.call(this, t, n)
    }
    ,
    __decorate([r(cc.Integer)], t.prototype, "scrollSpeed", undefined),
    __decorate([a, s(), c("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/UIScrollView")], t)
}(cc.ScrollView);
n.default = l,
module.exports = n
