let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = (o.property,
o.disallowMultiple)
  , r = o.menu
  , s = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {}
    ,
    t.prototype.IsOutGamePop = function() {
        return app.RoomManager().IsOutGoldGamePop()
    }
    ,
    __decorate([i, a(), r("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/DependentClickEvent")], t)
}(cc.Component);
n.default = s,
module.exports = n
