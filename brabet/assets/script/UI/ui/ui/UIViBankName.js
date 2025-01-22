let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Component/ListView")
  , a = require("./UIViBankNameItem")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.itemPrefabName = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.listView = new i.ListView({
            scrollview: this.GetWndComponent("scrollview", cc.ScrollView),
            mask: this.GetWndNode("scrollview/view"),
            item_tpl: this.itemPrefabName,
            gap_y: 0,
            left: 10,
            item_setter: function(e, t) {
                e.getComponent(a.default).SetItemData(t)
            }
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        var n = e[0];
        n ? this.listView.set_data(n.data, false) : this.OnClose()
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.button_bg || this.CloseForm()
    }
    ,
    __decorate([c(cc.Prefab)], t.prototype, "itemPrefabName", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
