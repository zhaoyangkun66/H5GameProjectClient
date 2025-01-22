let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/AutoBaseComponent")
  , o = cc._decorator.ccclass
  , a = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.onLoad = function() {
        this.layer_common = this.node,
        this.btn_respin = this.GetWndNode("bet_details/btn_respin"),
        this.label_gameplay = this.GetWndComponent("bet_details/btn_respin/gameplay/label_gameplay", cc.Label),
        this.label_gameplayDate = this.GetWndComponent("bet_details/btn_respin/label_gameplayDate", cc.Label),
        this.label_tr_num = this.GetWndComponent("bet_details/total/label_tr_num", cc.Label),
        this.label_bet_num = this.GetWndComponent("bet_details/total/label_bet_num", cc.Label),
        this.label_bet = this.GetWndComponent("bet_details/total/label_bet", cc.Label),
        this.label_profit = this.GetWndComponent("bet_details/total/label_profit", cc.Label),
        this.label_pr_num = this.GetWndComponent("bet_details/total/label_pr_num", cc.Label),
        this.label_balance = this.GetWndComponent("bet_details/total/label_balance", cc.Label),
        this.label_ba_num = this.GetWndComponent("bet_details/total/label_ba_num", cc.Label),
        this.label_size = this.GetWndComponent("bet_details/scrollview/view/content/game/bet/label_size", cc.Label),
        this.label_level = this.GetWndComponent("bet_details/scrollview/view/content/game/bet/label_level", cc.Label),
        this.btn_left = this.GetWndNode("bet_details/btn_left"),
        this.btn_right = this.GetWndNode("bet_details/btn_right"),
        this.label_win = this.GetWndComponent("bet_details/scrollview/view/content/li_multiplier/label_win", cc.Label),
        this.label_num = this.GetWndComponent("bet_details/scrollview/view/content/li_multiplier/label_num", cc.Label),
        this.spr_border2 = this.GetWndNode("bet_details/scrollview/view/content/li_line/project/border/line1/spr_border2"),
        this.btn_tips = this.GetWndNode("bet_details/scrollview/view/content/li_line/project/btn_tips"),
        this.label_line = this.GetWndComponent("bet_details/scrollview/view/content/li_line/project/label_line", cc.Label),
        this.label_tips = this.GetWndComponent("bet_details/scrollview/view/content/li_line/layer_tips/label_tips", cc.Label),
        this.btn_back = this.GetWndNode("btn_back")
    }
    ,
    e.prototype.AutoBindEvent = function(t) {
        this.AutoBindButtonEvent(t, this.btn_respin.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_left.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_right.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_tips.getComponent(cc.Button), "OnClick_BtnWnd"),
        this.AutoBindButtonEvent(t, this.btn_back.getComponent(cc.Button), "OnClick_BtnWnd")
    }
    ,
    e.URL = "db://assets/bundles/Game1052/prefab/UIGame1052BetDetails.prefab",
    __decorate([o], e)
}(n.default);
i.default = a,
module.exports = i
