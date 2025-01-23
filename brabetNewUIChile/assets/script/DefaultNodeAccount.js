let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("./BaseDefaultNodeSetSelect"), a = cc._decorator, r = a.ccclass, s = a.executeInEditMode, c = a.disallowMultiple, l = a.menu, p = a.property;
(function(e) {
    e[e.White = 0] = "White",
    e[e.Name = 1] = "Name",
    e[e.ID = 2] = "ID",
    e[e.infoText = 3] = "infoText",
    e[e.TitleToggle = 4] = "TitleToggle",
    e[e.TitleToggleCheck = 5] = "TitleToggleCheck",
    e[e.TextLight = 6] = "TextLight",
    e[e.TextDark = 7] = "TextDark",
    e[e.CardTopNum = 8] = "CardTopNum",
    e[e.CardNum = 9] = "CardNum",
    e[e.CardNumSmall = 10] = "CardNumSmall",
    e[e.ProgressNum = 11] = "ProgressNum",
    e[e.Title = 12] = "Title",
    e[e.Date = 13] = "Date",
    e[e.ItemLabel = 14] = "ItemLabel",
    e[e.InfoBonusNumL = 15] = "InfoBonusNumL",
    e[e.InfoBonusNumR = 16] = "InfoBonusNumR",
    e[e.InfoProNum = 17] = "InfoProNum",
    e[e.Percentum = 18] = "Percentum",
    e[e.AllRanks = 19] = "AllRanks",
    e[e.AccountVip = 20] = "AccountVip"
}
)(o || (o = {}));
var d = ["#FFFFFF", "#B8D7FF", "#59677C", "#AAC4EC", "#59677C", "#FFFFFF", "#FFFFFF", "#59677C", "#FFFFFF", "#29E649", "#6B708E", "#29E649", "#FFFFFF", "#59677C", "#BBCAE1", "#00FF2E", "#59677C", "#52B445", "#B8D7FF", "#3085FF", "#A03210"]
  , h = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
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
    __decorate([r, c(), s, l("Art/DefaultNodeAccount")], t)
}(i.default);
n.default = u,
module.exports = n
