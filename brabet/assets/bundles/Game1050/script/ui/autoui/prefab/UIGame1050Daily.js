let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
  , o = require("../../../../../../Common/Component/ListView")
  , a = require("../../../Game1050Define")
  , r = require("./UIGame1050DailyItem")
  , s = cc._decorator
  , l = s.ccclass
  , p = s.menu
  , d = s.property
  , h = function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.myhistoryItem = null,
        e.roomMgr = null,
        e.lbl_title = null,
        e.lbl_amount = null,
        e.lbl_winAndloss = null,
        e.Node_Nodata = null,
        e.n_IsSend = true,
        e.data = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGame1050Daily",
        this.RegEvent(a.Game1050HttpAPI.BetOneDayHistory, this.OnMyHistory),
        this.listView = new o.ListView({
            scrollview: this.GetWndComponent("bet_daily/scrollview", cc.ScrollView),
            mask: this.GetWndNode("bet_daily/scrollview/view"),
            item_tpl: this.myhistoryItem,
            gap_y: 0,
            left: 0,
            item_setter: function(t, e) {
                t.getComponent(r.default).SetItemData(e)
            }
        }),
        this.lbl_title = this.GetWndComponent("bet_daily/label_title", cc.Label),
        this.lbl_amount = this.GetWndComponent("bet_daily/scrollview/total/label_num_amount", cc.Label),
        this.lbl_winAndloss = this.GetWndComponent("bet_daily/scrollview/total/label_num_winandloss", cc.Label),
        this.Node_Nodata = this.GetWndNode("bet_daily/scrollview/view/no_data")
    }
    ,
    e.prototype.OnShow = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e];
        if (this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
        this.lbl_amount.string = "",
        this.lbl_winAndloss.string = "",
        this.listView.set_data([]),
        this.data = t[0],
        this.n_page = 1,
        this.n_IsSend = true,
        this.data) {
            var i = new Date(1e3 * this.data.day)
              , n = i.getFullYear()
              , o = i.getMonth() + 1
              , a = i.getDate();
            this.lbl_title.string = n + "-" + o + "-" + a,
            this.roomMgr.RequestBetOneDayHistory({
                page: this.n_page,
                day: this.data.day
            })
        }
        this.Node_Nodata.active = false
    }
    ,
    e.prototype.OnMyHistory = function() {
        var t, e = this.roomMgr.DailyList;
        if (e) {
            if (e.list.length <= 0)
                return this.n_IsSend = false,
                void (this.n_page <= 1 && (this.listView.set_data(e.list),
                this.Node_Nodata.active = true));
            this.n_IsSend ? this.listView.set_data(e.list) : (this.n_IsSend = true,
            this.n_page > 1 ? (t = this.listView).append_data.apply(t, e.list) : this.listView.set_data(e.list)),
            this.lbl_amount.string = this.roomMgr.addThousandSeparator(e.statistics.total_bet_gold),
            this.lbl_winAndloss.string = this.roomMgr.addThousandSeparator(e.statistics.total_change_gold),
            this.Node_Nodata.active = 1 == this.n_page && 0 == e.list.length
        }
    }
    ,
    e.prototype.scrollEvents = function(t) {
        Number(t.getScrollOffset().y) / Number(t.getMaxScrollOffset().y) > .8 && this.n_IsSend && (this.n_page += 1,
        this.n_IsSend = false,
        this.RequestDayRecord())
    }
    ,
    e.prototype.RequestDayRecord = function() {
        this.roomMgr.RequestBetOneDayHistory({
            page: this.n_page,
            day: this.data.day
        })
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
    __decorate([l, p("UI/prefab/UIGame1050Daily")], e)
}(n.default);
i.default = h,
module.exports = i
