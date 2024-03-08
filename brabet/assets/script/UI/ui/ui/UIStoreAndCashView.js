let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("../../../../Common/Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.menu
  , l = r.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.prefabArr = [],
        t.isLoading = false,
        t.UIContain = [],
        t.isAwaitGo = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        var e = this;
        this.RegEvent(i.GameEventDefine.COMPANY_PAYMENT, function() {
            e.CloseForm()
        }),
        this.RegEvent(i.GameEventDefine.GET_USER_WALLET, this.OnGetUserWallet)
    }
    ,
    t.prototype.OnLoad = function() {
        var e = new cc.Component.EventHandler;
        e.target = this.node,
        e.component = this.JS_Name,
        e.handler = "SelectItemToggleCallBack",
        e.customEventData = "",
        this.ui.node_toggleContainer.getComponent(cc.ToggleContainer).checkEvents = [],
        this.ui.node_toggleContainer.getComponent(cc.ToggleContainer).checkEvents.push(e)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        var n = e[0];
        this.isAwaitGo = false,
        app.CashOutManager().isAgentTx = !!n && n.AgentTx,
        app.UserManager().RequstUserWallet({
            type: app.CashOutManager().isAgentTx ? 2 : 1
        }),
        this.showtype = n && n.ShowType ? n.ShowType : a.WIN_TYPE.STORE,
        this.showtype == a.WIN_TYPE.STORE ? (this.ui.toggle_deposit.getComponent(cc.Toggle).check(),
        this.ShowUI()) : app.UserManager().GetUserWallet() ? (this.ui.toggle_withdraw.getComponent(cc.Toggle).check(),
        this.ShowUI()) : this.isAwaitGo = true
    }
    ,
    t.prototype.OnGetUserWallet = function() {
        this.isAwaitGo && (this.ui.toggle_withdraw.getComponent(cc.Toggle).check(),
        this.ShowUI())
    }
    ,
    t.prototype.ShowUI = function() {
        var e = this.showtype;
        this.ui.node_p.removeAllChildren(),
        this.prefabArr && this.prefabArr[e] && this.ui.node_p.addChild(cc.instantiate(this.prefabArr[e]))
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_close || this.CloseForm()
    }
    ,
    t.prototype.SelectItemToggleCallBack = function(e) {
        e.node == this.ui.toggle_deposit ? this.showtype = a.WIN_TYPE.STORE : e.node == this.ui.toggle_withdraw && (this.showtype = a.WIN_TYPE.CASHOUT),
        this.ShowUI()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.ui.node_p.removeAllChildren()
    }
    ,
    __decorate([l([cc.Prefab])], t.prototype, "prefabArr", undefined),
    __decorate([s, c("UI/TaskBonus/UIStoreAndCashView")], t)
}(o.default);
n.default = p,
module.exports = n
