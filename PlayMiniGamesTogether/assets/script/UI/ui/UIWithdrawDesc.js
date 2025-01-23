let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/TextDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.value = null,
        t.bet_Pro = null,
        t.bet_Node = null,
        t.lbl_bet = null,
        t.lbl_can_withdraw = null,
        t.lbl_not_withdraw = null,
        t.tagname = "user_center_withdraw_desc",
        t.gold_icon = null,
        t.gold_icon1 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(i.GameEventDefine.GET_USER_AndOrder, this.OnInitView),
        this.gold_icon = this.GetWndNode("general/top/right/btn_withdraw/node_amount/label_symbol/spr_icon"),
        this.gold_icon1 = this.GetWndNode("general/top/right/node_amount/label_symbol/spr_icon")
    }
    ,
    t.prototype.OnShow = function() {
        app.UserManager().RequestUserAndOrder(0, 20, 1);
        var e = app.TextManager().GetTextInfo(a.TextDefine.user_center_withdraw);
        e && this.getLbl(e);
        var t = app.GameConfigManager().GetGoldIcomCondition;
        this.gold_icon.active = t,
        this.gold_icon1.active = t
    }
    ,
    t.prototype.OnInitView = function() {
        var e = app.UserManager().GetUserAndOrderInfo;
        this.bet_Node.getChildByName("label").getComponent(cc.Label).string = e.user_info.current_bet.toFixed(2),
        this.bet_Node.getChildByName("total").getComponent(cc.Label).string = e.user_info.all_bet.toFixed(2),
        this.bet_Node.active = true;
        var t = 0 == e.user_info.all_bet ? 0 : Number(e.user_info.current_bet) / Number(e.user_info.all_bet);
        this.bet_Pro.progress = t,
        this.bet_Pro.node.active = true,
        this.lbl_bet.string = (100 * t).toFixed(2) + "%",
        this.lbl_bet.node.active = true;
        var n = app.GameConfigManager().GetCurrency;
        this.lbl_can_withdraw.string = n + " " + e.user_info.can_withdraw.toFixed(2),
        this.lbl_not_withdraw.string = n + " " + e.user_info.not_withdraw.toFixed(2)
    }
    ,
    t.prototype.getLbl = function(e) {
        this.value.string = app.ComTool().htmlRestore(e) || ""
    }
    ,
    __decorate([c(cc.RichText)], t.prototype, "value", undefined),
    __decorate([c(cc.ProgressBar)], t.prototype, "bet_Pro", undefined),
    __decorate([c(cc.Node)], t.prototype, "bet_Node", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_bet", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_can_withdraw", undefined),
    __decorate([c(cc.Label)], t.prototype, "lbl_not_withdraw", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
