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
        t.prefabArr = [],
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        var e = new cc.Component.EventHandler;
        e.target = this.node,
        e.component = this.JS_Name,
        e.handler = "ToggleCallBack",
        e.customEventData = "",
        this.ui.node_content.getComponent(cc.ToggleContainer).checkEvents = [],
        this.ui.node_content.getComponent(cc.ToggleContainer).checkEvents.push(e),
        this.RegEvent(i.GameEventDefine.WITHDRAW_CLICK, this.OnWithdrawClick)
    }
    ,
    t.prototype.OnEnable = function() {
        this.ChoseIndex = 0;
        var e = app.UserManager().GetUserWallet()
          , t = "1" == e.usdt_switch && "1" == e.withdraw_switch;
        this.ui.node_content.active = t,
        "0" == e.withdraw_switch && "1" == e.usdt_switch && (this.ChoseIndex = 1),
        this.ShowUI()
    }
    ,
    t.prototype.ToggleCallBack = function(e) {
        if (e.node == this.ui.toggle_bank) {
            if (0 == this.ChoseIndex)
                return;
            this.ChoseIndex = 0
        } else if (e.node == this.ui.toggle_usdt) {
            if (1 == this.ChoseIndex)
                return;
            this.ChoseIndex = 1
        }
        this.ShowUI()
    }
    ,
    t.prototype.ShowUI = function() {
        this.ui.node_p.removeAllChildren();
        var e = 4 == this.ChoseIndex ? 2 : this.ChoseIndex;
        this.prefabArr && this.prefabArr[e] && (this.ui.node_p.addChild(cc.instantiate(this.prefabArr[e])),
        4 != this.ChoseIndex && 2 != this.ChoseIndex || app.Client.OnEvent(i.GameEventDefine.BankNext, 4 == this.ChoseIndex))
    }
    ,
    t.prototype.OnWithdrawClick = function(e) {
        this.ChoseIndex = e,
        this.ShowUI()
    }
    ,
    t.prototype.OnClick = function(e) {
        e != this.ui.toggle_bank.name ? e != this.ui.toggle_usdt.name || this.ui.toggle_usdt.getComponent(cc.Toggle).check() : this.ui.toggle_bank.getComponent(cc.Toggle).check()
    }
    ,
    __decorate([c([cc.Prefab])], t.prototype, "prefabArr", undefined),
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIWithdraw_V")], t)
}(o.default);
n.default = l,
module.exports = n
