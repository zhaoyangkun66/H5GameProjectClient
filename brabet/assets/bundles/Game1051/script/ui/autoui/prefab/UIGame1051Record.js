let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
  , o = require("../../../../../../Common/Component/ListView")
  , a = require("../../../Game1051Define")
  , r = require("./UIGame1051MyHistoryItem")
  , s = cc._decorator
  , l = s.ccclass
  , p = s.menu
  , d = s.property
  , h = function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.myhistoryItem = null,
        e.roomMgr = null,
        e.lbl_amount = null,
        e.lbl_winAndloss = null,
        e.Node_Nodata = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGame1051Record",
        this.RegEvent(a.Game1051HttpAPI.BetHistory, this.OnMyHistory),
        this.listView = new o.ListView({
            scrollview: this.GetWndComponent("bet_record/scrollview", cc.ScrollView),
            mask: this.GetWndNode("bet_record/scrollview/view"),
            item_tpl: this.myhistoryItem,
            gap_y: 0,
            left: 0,
            item_setter: function(t, e) {
                t.getComponent(r.default).SetItemData(e)
            }
        }),
        this.lbl_amount = this.GetWndComponent("bet_record/scrollview/total/label_num_amount", cc.Label),
        this.lbl_winAndloss = this.GetWndComponent("bet_record/scrollview/total/label_num_winlose", cc.Label),
        this.Node_Nodata = this.GetWndNode("bet_record/scrollview/view/no_data")
    }
    ,
    e.prototype.OnShow = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e];
        this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
        this.lbl_amount.string = "",
        this.lbl_winAndloss.string = "",
        this.roomMgr.RequestBetHistory(1),
        this.listView.set_data([]),
        this.Node_Nodata.active = false
    }
    ,
    e.prototype.OnMyHistory = function() {
        var t = this.roomMgr.MyHistory;
        t && (this.listView.set_data(t.list),
        this.lbl_amount.string = this.roomMgr.addThousandSeparator(t.statistics.total_bet_gold),
        this.lbl_winAndloss.string = this.roomMgr.addThousandSeparator(t.statistics.total_change_gold)),
        this.Node_Nodata.active = 0 == t.list.length
    }
    ,
    e.prototype.OnClick = function() {}
    ,
    e.prototype.OnClose = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e]
    }
    ,
    __decorate([d(cc.Prefab)], e.prototype, "myhistoryItem", void 0),
    __decorate([l, p("UI/prefab/UIGame1051Record")], e)
}(n.default);
i.default = h,
module.exports = i
