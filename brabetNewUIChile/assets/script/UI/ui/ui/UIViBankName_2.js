let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.itemPrefabName = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {}
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        var n = e[0];
        if (n) {
            var o = this.GetWndNode("scrollview/view/content");
            o.removeAllChildren();
            for (var i = 0; i < n.data.length; i++) {
                var a = n.data[i]
                  , r = cc.instantiate(this.itemPrefabName);
                o.addChild(r);
                var s = r.getComponent(this.itemPrefabName.name);
                s.SetItemData(a)
            }
        } else
            this.OnClose()
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.button_bg || this.CloseForm()
    }
    ,
    __decorate([r(cc.Prefab)], t.prototype, "itemPrefabName", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
