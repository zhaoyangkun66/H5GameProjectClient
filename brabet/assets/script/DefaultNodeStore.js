let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("./BaseDefaultNodeSetSelect"), a = cc._decorator, r = a.ccclass, s = a.executeInEditMode, c = a.disallowMultiple, l = a.menu, p = a.property;
(function(e) {
    e[e.White = 0] = "White",
    e[e.TopToggle = 1] = "TopToggle",
    e[e.TopToggleCheck = 2] = "TopToggleCheck",
    e[e.TextLight = 3] = "TextLight",
    e[e.TextDark = 4] = "TextDark",
    e[e.TextSpecial = 5] = "TextSpecial",
    e[e.MessageLabel = 6] = "MessageLabel",
    e[e.MessageNum = 7] = "MessageNum",
    e[e.BtnLabel = 8] = "BtnLabel",
    e[e.InputLabel = 9] = "InputLabel",
    e[e.StoreLeft = 10] = "StoreLeft",
    e[e.StoreLeftCheck = 11] = "StoreLeftCheck",
    e[e.TileToggle = 12] = "TileToggle",
    e[e.TileToggleCheck = 13] = "TileToggleCheck",
    e[e.ScrollNumItem = 14] = "ScrollNumItem"
}
)(o || (o = {}));
var d = ["#FFFFFF", "#59677C", "#FFFFFF", "#FFFFFF", "#59677C", "#B8D7FF", "#FFFFFF", "#00FF2E", "#FFFFFF", "#59677C", "#8C83C8", "#FFFFFF", "#59677C", "#FFFFFF", "#FFFFFF"]
  , h = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
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
    __decorate([r, c(), s, l("Art/DefaultNodeStore")], t)
}(i.default);
n.default = u,
module.exports = n
