let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("./BaseDefaultNodeSetSelect"), a = cc._decorator, r = a.ccclass, s = a.executeInEditMode, c = a.disallowMultiple, l = a.menu, p = a.property;
(function(e) {
    e[e.White = 0] = "White",
    e[e.Black = 1] = "Black",
    e[e.LoginText = 2] = "LoginText",
    e[e.MenuText = 3] = "MenuText",
    e[e.MenuToggleNormal = 4] = "MenuToggleNormal",
    e[e.MenuToggleCheck = 5] = "MenuToggleCheck",
    e[e.Language = 6] = "Language",
    e[e.LanguageCheck = 7] = "LanguageCheck",
    e[e.TabNomal = 8] = "TabNomal",
    e[e.TabCheck = 9] = "TabCheck",
    e[e.BottomTitle = 10] = "BottomTitle",
    e[e.BottomText = 11] = "BottomText",
    e[e.MailTitle = 12] = "MailTitle",
    e[e.MailText = 13] = "MailText",
    e[e.MailHide = 14] = "MailHide",
    e[e.TypeItemViewAll = 15] = "TypeItemViewAll",
    e[e.TypeItemTitle = 16] = "TypeItemTitle",
    e[e.TypeItemMore = 17] = "TypeItemMore",
    e[e.HallTypeToggle = 18] = "HallTypeToggle",
    e[e.HallTypeToggleCheck = 19] = "HallTypeToggleCheck",
    e[e.TypeIcon = 20] = "TypeIcon",
    e[e.TypeIconCheck = 21] = "TypeIconCheck",
    e[e.Nodate = 22] = "Nodate",
    e[e.LoadMore = 23] = "LoadMore",
    e[e.HallListLabel = 24] = "HallListLabel",
    e[e.HallListTitle = 25] = "HallListTitle",
    e[e.MenuLight = 26] = "MenuLight",
    e[e.MenuDark = 27] = "MenuDark"
}
)(o || (o = {}));
var d = ["#FFFFFF", "#000000", "#6751EB", "#B8D7FF", "#59677C", "#B8D7FF", "#59677C", "#B8D7FF", "#59677C", "#9DB8EF", "#B8D7FF", "#59677C", "#59677C", "#FFFFFF", "#59677C", "#67778E", "#99ACD3", "#59677C", "#59677C", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#1C2532", "#59677C", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#59677C"]
  , h = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
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
    __decorate([r, c(), s, l("Art/DefaultNodeSetSelect")], t)
}(i.default);
n.default = u,
module.exports = n
