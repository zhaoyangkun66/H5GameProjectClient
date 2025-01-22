let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("./BaseDefaultNodeSetSelect"), a = cc._decorator, r = a.ccclass, s = a.executeInEditMode, c = a.disallowMultiple, l = a.menu, p = a.property;
(function(e) {
    e[e.White = 0] = "White",
    e[e.SupportTitle = 1] = "SupportTitle",
    e[e.SupportText = 2] = "SupportText",
    e[e.ItemTitle = 3] = "ItemTitle",
    e[e.BottomService = 4] = "BottomService",
    e[e.BtnLabel = 5] = "BtnLabel",
    e[e.TitleToggle = 6] = "TitleToggle",
    e[e.TitleToggleCheck = 7] = "TitleToggleCheck"
}
)(o || (o = {}));
var d = ["#FFFFFF", "#FFFFFF", "#B8D7FF", "#59677C", "#59677C", "#FFFFFF", "#59677C", "#FFFFFF"]
  , h = [0, 0, 0, 0, 0, 0, 0, 0]
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._colorType = o.White,
        t
    }
    return __extends(t, e),
    Object.defineProperty(t.prototype, "colorType", {
        get: function() {
            return this._colorType
        },
        set: function(e) {
            this._colorType = e,
            this.SetColor()
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.onLoad = function() {
        this.SetColor()
    }
    ,
    t.prototype.SetColor = function() {
        var t = d[this.colorType];
        e.prototype.SetColorAndFontSize.call(this, t, h[this.colorType])
    }
    ,
    __decorate([p()], t.prototype, "_colorType", undefined),
    __decorate([p({
        //tooltip: false,
        type: cc.Enum(o)
    })], t.prototype, "colorType", null),
    __decorate([r, c(), s, l("Art/DefaultNodeSupport")], t)
}(i.default);
n.default = u,
module.exports = n
