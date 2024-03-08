let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/UIBaseComponent")
  , o = require("../../../Game1050Define")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.menu,
a.property,
function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.lbl_date = null,
        e.lbl_SingleDayBetAmount = null,
        e.lbl_WinAndLose = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnLoadInit = function() {
        this.JS_Name = "UIGame1050DailyItem",
        this.lbl_date = this.GetWndComponent("label_time", cc.Label),
        this.lbl_SingleDayBetAmount = this.GetWndComponent("label_order", cc.Label),
        this.lbl_WinAndLose = this.GetWndComponent("label_winlose", cc.Label)
    }
    ,
    e.prototype.SetItemData = function(t) {
        this.data = t,
        this.lbl_date.string = new Date(1e3 * this.data.time).toLocaleString(),
        this.lbl_SingleDayBetAmount.string = this.data.order_id,
        this.lbl_WinAndLose.string = app.RoomManager().GetCurHttpGameMgr().addThousandSeparator(this.data.change_gold),
        this.GetWndNode("label_order").color = 2 == t.type ? new cc.Color(255,210,0) : new cc.Color(155,173,203);
        var e = this.data.change_gold > 0 ? cc.Color.WHITE : new cc.Color(155,173,203);
        0 == this.data.change_gold && (e = new cc.Color(155,173,203)),
        this.GetWndNode("label_winlose").color = e
    }
    ,
    e.prototype.OnClick = function(t) {
        "li" != t || app.FormManager().ShowForm(o.Game1050UIName.UIGame1050BetDetails, this.data)
    }
    ,
    __decorate([r], e)
}(n.default));
i.default = s,
module.exports = i
