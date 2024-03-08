let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.nation = null,
        t.nation2 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIBankNameItem"
    }
    ,
    t.prototype.OnClick = function(e) {
        this.Log(e),
        "item" != e || this.onBtnClick()
    }
    ,
    t.prototype.onBtnClick = function() {
        app.CashOutManager().SetNigeriaDataSelected(this.record.id),
        app.Client.OnEvent(i.GameEventDefine.BANK_CODE_CLICK, this.record),
        app.FormManager().CloseForm(a.UINameDefine.UIBankName)
    }
    ,
    t.prototype.setItemData = function(e) {
        this.record = e,
        this.nation.string = app.ComUtil().cutStr(e.bank_name, 40),
        this.nation2.string = app.ComUtil().cutStr(e.bank_name, 40),
        this.RenderSelected(this.record.selected)
    }
    ,
    t.prototype.RenderSelected = function(e) {
        var t = !!e;
        cc.find("Background", this.node).active = !t,
        cc.find("checkmark", this.node).active = t
    }
    ,
    __decorate([c(cc.Label)], t.prototype, "nation", undefined),
    __decorate([c(cc.Label)], t.prototype, "nation2", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
