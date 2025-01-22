let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("./BaseDefaultNodeSetSelect"), a = cc._decorator, r = a.ccclass, s = a.executeInEditMode, c = a.disallowMultiple, l = a.menu, p = a.property;
(function(e) {
    e[e.White = 0] = "White",
    e[e.TitleToggle = 1] = "TitleToggle",
    e[e.TitleToggleCheck = 2] = "TitleToggleCheck",
    e[e.ListLight = 3] = "ListLight",
    e[e.ListDark = 4] = "ListDark",
    e[e.ListSpecail = 5] = "ListSpecail",
    e[e.TextClink = 6] = "TextClink",
    e[e.BtnLabel = 7] = "BtnLabel",
    e[e.PopupTitle = 8] = "PopupTitle",
    e[e.PopupText = 9] = "PopupText",
    e[e.InfoLight = 10] = "InfoLight",
    e[e.InfoDark = 11] = "InfoDark",
    e[e.LevelLabel = 12] = "LevelLabel",
    e[e.InviteTip = 13] = "InviteTip",
    e[e.InviteBouns = 14] = "InviteBouns",
    e[e.InviteBounsNum = 15] = "InviteBounsNum",
    e[e.BetBonusVIP = 16] = "BetBonusVIP",
    e[e.PopupLightTips = 17] = "PopupLightTips"
}
)(o || (o = {}));
var d = ["#FFFFFF", "#59677C", "#FFFFFF", "#FFFFFF", "#B8D7FF", "#3085FF", "#3085FF", "#FFFFFF", "#FFFFFF", "#59677C", "#B8D7FF", "#59677C", "#FFFFFF", "#B8D7FF", "#B8D7FF", "#FFFFFF", "#FFFFFF", "#B8D7FF"]
  , h = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
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
    __decorate([r, c(), s, l("Art/DefaultNodeList")], t)
}(i.default);
n.default = u,
module.exports = n
