let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Define/ShareDefine")
  , a = require("../../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIBetBonusGold",
        this.nodeHintLabel = cc.find("/Node/lbl", this.node).getComponent(cc.Label)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        app.FormManager().IsFormShow(a.UINameDefine.UIHall) || this.CloseForm(),
        this.InitTypeNode()
    }
    ,
    t.prototype.InitTypeNode = function() {
        this.data.type == i.SelTypeNode.BetBonus ? this.nodeHintLabel.string = app.i18n.t("UI_betBonus_goldlbl") : this.data.type == i.SelTypeNode.vip && (this.nodeHintLabel.string = app.i18n.t("UI_GoVipReceiveAwardHint"))
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("Recharge" == e)
            return this.data.type == i.SelTypeNode.BetBonus ? app.FormManager().ShowForm(a.UINameDefine.UIBetBonus, {
                isBet: false
            }) : this.data.type == i.SelTypeNode.vip && app.FormManager().ShowForm(a.UINameDefine.UIVIP),
            void this.CloseForm()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.FormManager().ShowNextQueueForm("hall")
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
