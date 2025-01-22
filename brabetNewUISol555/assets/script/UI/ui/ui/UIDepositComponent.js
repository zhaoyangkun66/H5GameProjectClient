let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.menu
  , c = a.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.TogglePrefabItem = null,
        t.PayPrefabItem = null,
        t.OnlinePayPrefab = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.PAY_CHANNEL_TYPES, this.AddChannelItem),
        this.RegEvent(i.GameEventDefine.PAY_ITEM_CLICK, this.AddNodePayItem),
        this.RegEvent(i.GameEventDefine.PAY_CHENNEL_CLICK, this.AddOnlineUI)
    }
    ,
    t.prototype.OnEnable = function() {
        app.Store2Manager().SendPayChannelTypes()
    }
    ,
    t.prototype.AddChannelItem = function() {
        this.ui.node_channel.removeAllChildren();
        for (var e = app.Store2Manager().PayChannelList, t = 0; t < e.length; t++) {
            app.Store2Manager().ChosePayChennelId = e[0].id;
            var n = e[t]
              , o = cc.instantiate(this.PayPrefabItem);
            this.ui.node_channel.addChild(o),
            o.getComponent(this.PayPrefabItem.name).InitInfo(n)
        }
        this.AddNodePayItem()
    }
    ,
    t.prototype.AddNodePayItem = function() {
        this.ui.node_PayItem.removeAllChildren();
        for (var e = app.Store2Manager().GetChoseChannel(), t = 0; t < e.type_lists.length; t++) {
            app.Store2Manager().ChosePayTypeId = e.type_lists[0].type_id;
            var n = cc.instantiate(this.TogglePrefabItem);
            this.ui.node_PayItem.addChild(n);
            var o = e.type_lists[t];
            n.getComponent(this.TogglePrefabItem.name).InitInfo(o)
        }
    }
    ,
    t.prototype.AddOnlineUI = function() {
        if (this.ui.node_next.children.length > 0 && this.ui.node_next.removeAllChildren(),
        app.Store2Manager().GetChoseTypeItem()) {
            var e = cc.instantiate(this.OnlinePayPrefab);
            this.ui.node_next.addChild(e),
            e.getComponent(this.OnlinePayPrefab.name).InitInfo()
        }
    }
    ,
    t.prototype.ShowNodePayItem = function(e) {
        this.ui.node_PayItem.active = e,
        this.ui.label_method.node.active = e,
        this.ui.node_next.active = !e
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.ui.node_next.removeAllChildren(),
        this.ui.node_PayItem.removeAllChildren(),
        this.ui.node_channel.removeAllChildren()
    }
    ,
    __decorate([c(cc.Prefab)], t.prototype, "TogglePrefabItem", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "PayPrefabItem", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "OnlinePayPrefab", undefined),
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIDepositComponent")], t)
}(o.default);
n.default = l,
module.exports = n
