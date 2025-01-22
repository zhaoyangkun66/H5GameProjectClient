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
        this.RegEvent(i.GameEventDefine.PAY_CHANNEL_TYPES, this.AddNodeToggle),
        this.RegEvent(i.GameEventDefine.PAY_ITEM_CLICK, this.OnPayItemClick),
        this.RegEvent(i.GameEventDefine.ONLINE_PAY_CLOSE, this.OnOnlineClose),
        this.RegEvent(i.GameEventDefine.PAY_CHENNEL_CLICK, this.OnPayChennelClick)
    }
    ,
    t.prototype.OnEnable = function() {
        app.Store3Manager().SendPayChannelTypes()
    }
    ,
    t.prototype.AddNodeToggle = function() {
        this.ui.node_Toggle.removeAllChildren();
        for (var e = app.Store3Manager().PayChannelList, t = 0; t < e.length; t++) {
            app.Store3Manager().ChosePayTypeId = e[0].id;
            var n = e[t]
              , o = cc.instantiate(this.TogglePrefabItem);
            this.ui.node_Toggle.addChild(o),
            o.getComponent(this.TogglePrefabItem.name).InitInfo(n)
        }
        this.AddNodePayItem()
    }
    ,
    t.prototype.OnPayChennelClick = function() {
        this.AddNodePayItem()
    }
    ,
    t.prototype.AddNodePayItem = function() {
        this.ui.node_PayItem.removeAllChildren();
        for (var e = app.Store3Manager().GetChoseType(), t = 0; t < e.channel_lists.length; t++) {
            app.Store3Manager().ChosePayChannelId = e.channel_lists[0].id;
            var n = cc.instantiate(this.PayPrefabItem);
            this.ui.node_PayItem.addChild(n);
            var o = e.channel_lists[t];
            n.getComponent(this.PayPrefabItem.name).InitInfo(o)
        }
    }
    ,
    t.prototype.OnPayItemClick = function() {
        var e = app.Store3Manager().GetChoseChannelItem();
        if (this.ui.node_next.removeAllChildren(),
        e) {
            var t = cc.instantiate(this.OnlinePayPrefab);
            this.ui.node_next.addChild(t),
            t.getComponent(this.OnlinePayPrefab.name).InitInfo()
        }
    }
    ,
    t.prototype.ShowNodePayItem = function(e) {
        this.ui.node_PayItem.active = e,
        this.ui.node_next.active = !e
    }
    ,
    t.prototype.OnOnlineClose = function() {
        this.ShowNodePayItem(true)
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.ui.node_next.removeAllChildren(),
        this.ui.node_PayItem.removeAllChildren(),
        this.ui.node_Toggle.removeAllChildren()
    }
    ,
    __decorate([c(cc.Prefab)], t.prototype, "TogglePrefabItem", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "PayPrefabItem", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "OnlinePayPrefab", undefined),
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIDepositComponent")], t)
}(o.default);
n.default = l,
module.exports = n
