let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.UniversalType = undefined;
var o, i = require("../../../Common/Base/BaseForm"), a = cc._decorator, r = a.ccclass, s = a.property;
(function(e) {
    e[e.BetCoefficient = 0] = "BetCoefficient",
    e[e.InvitationBonus = 1] = "InvitationBonus"
}
)(o = n.UniversalType || (n.UniversalType = {}));
var c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.layerWin = [],
        t.cloneItem = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIUniversalList",
        this.cloneItem = cc.find("bg/con/scrollview/view/li", this.node),
        this.parentNode = cc.find("bg/con/scrollview/view/content", this.node)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        this.ResolvData(),
        this.InitList()
    }
    ,
    t.prototype.InitList = function() {
        if (this.ShowData) {
            this.parentNode.removeAllChildren();
            for (var e = 0; e < this.ShowData.data.length; e++) {
                var t = this.ShowData.data[e]
                  , n = cc.instantiate(this.cloneItem);
                cc.find("Number/label", n).getComponent(cc.Label).string = "" + t.name,
                cc.find("bg_table/label", n).getComponent(cc.Label).string = "" + t.num,
                n.active = true,
                this.parentNode.addChild(n)
            }
            cc.find("bg/top/title_code_bili", this.node).getComponent(cc.Label).string = app.i18n.t(this.ShowData.TitleList[0]),
            cc.find("bg/con/title/bg_table/label", this.node).getComponent(cc.Label).string = app.i18n.t(this.ShowData.TitleList[1]),
            cc.find("bg/con/title/bg_table2/label", this.node).getComponent(cc.Label).string = app.i18n.t(this.ShowData.TitleList[2])
        }
    }
    ,
    t.prototype.ResolvData = function() {
        var e = {};
        e.type = this.data.type,
        e.TitleList = [],
        this.data.type == o.InvitationBonus ? (e.getName = ["count", "gold"],
        e.TitleList = ["UI_Share_InvitesBonus", "UI_Share_Numberofinvites", "UI.MakeMoney_4_Promotion_3"]) : this.data.type == o.BetCoefficient && (e.TitleList = ["UI_Account_BetCoefficient", "UI.MakeMoney_3_MyCommission_10", "UI_Account_Coefficient"],
        e.getName = ["name", "ratio"]),
        e.data = [];
        for (var t = 0; t < this.data.list.length; t++) {
            var n = this.data.list[t]
              , i = this.data.type == o.InvitationBonus ? app.GameConfigManager().GetCurrency + n[e.getName[1]] : n[e.getName[1]]
              , a = {
                name: n[e.getName[0]],
                num: i
            };
            if (this.data.type == o.BetCoefficient) {
                var r = app.GameConfigManager().GetBottomFastGameByGid(n.gid);
                a.sort = r ? r.game_sort : 0
            }
            e.data.push(a)
        }
        this.data.type == o.BetCoefficient && e.data.sort(function(e, t) {
            return t.sort - e.sort
        }),
        this.ShowData = e
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    __decorate([s(cc.Node)], t.prototype, "layerWin", undefined),
    __decorate([r], t)
}(i.default);
n.default = c,
module.exports = n
