let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Component/ListView")
  , a = require("../../../Common/Define/GameEventDefine")
  , r = require("./UIBankNameItem")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.itemPrefabName = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIBankName",
        this.RegEvent(a.GameEventDefine.GET_NIGERIA, this.onNigeria),
        this.RegEvent(a.GameEventDefine.BANK_CODE_CLICK, this.OnBankCode),
        this.listView = new i.ListView({
            scrollview: this.GetWndComponent("scrollview", cc.ScrollView),
            mask: this.GetWndNode("scrollview/view"),
            item_tpl: this.itemPrefabName,
            gap_y: 0,
            left: 10,
            item_setter: function(e, t) {
                e.getComponent(r.default).setItemData(t)
            }
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.CashOutManager().NigeriaData ? this.listView.set_data(app.CashOutManager().NigeriaData, false) : app.CashOutManager().RequestNigeria()
    }
    ,
    t.prototype.OnBankCode = function() {
        this.listView.set_data(app.CashOutManager().NigeriaData, false)
    }
    ,
    t.prototype.onNigeria = function() {
        this.listView.set_data(app.CashOutManager().NigeriaData, true)
    }
    ,
    __decorate([l(cc.Prefab)], t.prototype, "itemPrefabName", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
