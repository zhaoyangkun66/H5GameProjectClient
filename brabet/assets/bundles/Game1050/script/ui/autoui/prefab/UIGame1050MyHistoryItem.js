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
        this.JS_Name = "UIGame1050MyHistoryItem",
        this.lbl_date = this.GetWndComponent("lbl_date", cc.Label),
        this.lbl_SingleDayBetAmount = this.GetWndComponent("lbl_SingleDayBetAmount", cc.Label),
        this.lbl_WinAndLose = this.GetWndComponent("lbl_WinAndLose", cc.Label)
    }
    ,
    e.prototype.SetItemData = function(t) {
        this.data = t;
        var e = new Date(1e3 * this.data.day)
          , i = e.getFullYear()
          , n = e.getMonth() + 1
          , o = e.getDate();
        this.lbl_date.string = i + "-" + n + "-" + o,
        this.lbl_SingleDayBetAmount.string = app.RoomManager().GetCurHttpGameMgr().addThousandSeparator(this.data.bet_gold),
        this.lbl_WinAndLose.string = app.RoomManager().GetCurHttpGameMgr().addThousandSeparator(this.data.change_gold);
        var a = this.data.change_gold > 0 ? cc.Color.WHITE : new cc.Color(155,173,203);
        0 == this.data.change_gold && (a = new cc.Color(155,173,203)),
        this.GetWndNode("lbl_WinAndLose").color = a
    }
    ,
    e.prototype.OnClick = function(t) {
        "li" != t || app.FormManager().ShowForm(o.Game1050UIName.UIGame1050Daily, this.data)
    }
    ,
    __decorate([r], e)
}(n.default));
i.default = s,
module.exports = i
