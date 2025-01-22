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
        return t.Vertical_Angle = 15,
        t.Horizontal_Angle = 45,
        t.isNest = true,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        app.Client.RegEvent(o.GameEventDefine.SCROLLVIEW_DIRECTION, this._ScrollViewEnabled, this)
    }
    ,
    t.prototype._onTouchBegan = function(t, n) {
        this.startPosition = t.touch.getLocation(),
        e.prototype._onTouchBegan.call(this, t, n)
    }
    ,
    t.prototype._onTouchMoved = function(t, n) {
        var o = t.touch.getLocation()
          , i = this.horizontal ? this.GetIsVertical(o) : this.GetIsHorizontal(o);
        this._ScrollViewEnabled(!i),
        e.prototype._onTouchMoved.call(this, t, n)
    }
    ,
    t.prototype.GetIsVertical = function(e) {
        var t = app.MathUtil().angle(this.startPosition, e);
        return 90 - Math.abs(t) <= this.Vertical_Angle
    }
    ,
    t.prototype.GetIsHorizontal = function(e) {
        var t = app.MathUtil().angle(this.startPosition, e);
        return Math.abs(t) <= this.Horizontal_Angle
    }
    ,
    t.prototype._ScrollViewEnabled = function(e) {
        this.isNest && (this.enabled = e)
    }
    ,
    __decorate([r({
        tooltip: "\u6c34\u5e73\u6a21\u5f0f\u7684\u5782\u76f4\u6ed1\u52a8\u7684\u89d2\u5ea6\u8303\u56f4"
    })], t.prototype, "Vertical_Angle", undefined),
    __decorate([r({
        tooltip: "\u5782\u76f4\u6a21\u5f0f\u7684\u6c34\u5e73\u6ed1\u52a8\u7684\u89d2\u5ea6\u8303\u56f4"
    })], t.prototype, "Horizontal_Angle", undefined),
    __decorate([r({
        tooltip: "\u662f\u5426\u5d4c\u5957\u6a21\u5f0f,\u652f\u63014\u4e2a\u65b9\u5411\u6ed1\u52a8,\u9ed8\u8ba4\u5d4c\u5957"
    })], t.prototype, "isNest", undefined),
    __decorate([a, s(), c("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/UIScrollViewItem")], t)
}(cc.ScrollView);
n.default = l,
module.exports = n
