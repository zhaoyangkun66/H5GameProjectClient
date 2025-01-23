let i = {}
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
    , h = function (t) {
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
            e.prototype.OnCreateInit = function () {
                this.JS_Name = "UIGame1050Daily",
                    this.RegEvent(a.Game1050HttpAPI.BetOneDayHistory, this.OnMyHistory),
                    this.listView = new o.ListView({
                        scrollview: this.GetWndComponent("bet_daily/scrollview", cc.ScrollView),
                        mask: this.GetWndNode("bet_daily/scrollview/view"),
                        item_tpl: this.myhistoryItem,
                        gap_y: 0,
                        left: 0,
                        item_setter: function (t, e) {
                            t.getComponent(r.default).SetItemData(e)
                        }
                    }),
                    this.lbl_title = this.GetWndComponent("bet_daily/label_titleTime", cc.Label),
                    this.lbl_title2 = this.GetWndComponent("bet_daily/total/label_titleTime", cc.Label),
                    this.labelRecords = this.GetWndComponent("bet_daily/total/labelRecords", cc.Label),
                    this.lbl_amount = this.GetWndComponent("bet_daily/total/label_num_amount", cc.Label),
                    this.lbl_winAndloss = this.GetWndComponent("bet_daily/total/label_num_winandloss", cc.Label),
                    this.Node_Nodata = this.GetWndNode("bet_daily/scrollview/view/no_data")

                this.UIlbl_bet = this.GetWndComponent("bet_daily/li/lbl_bet", cc.Label)
                this.UIlbl_WinAndLose = this.GetWndComponent("bet_daily/li/lbl_WinAndLose", cc.Label)
                this.UIllbl_date = this.GetWndComponent("bet_daily/li/lbl_date", cc.Label)
                var i = app.GameConfigManager().GetCurrency;
                this.UIlbl_bet.string = app.i18n.t("HallGame_Bet_State") + "(" + i + ")"
                this.UIlbl_WinAndLose.string = app.i18n.t("Double_profit") + "(" + i + ")"

                var offsetMinutes = new Date().getTimezoneOffset();
                var offsetHours = Math.abs(Math.floor(offsetMinutes / 60)); // 将偏差值转换为小时
                var offsetSign = offsetMinutes < 0 ? "+" : "-"; // 根据时区偏差的正负号确定东西半球
                var offsetMinutes = Math.abs(offsetMinutes % 60); // 获取分钟偏差
                this.UIllbl_date.string = app.i18n.t("Bao_Dian_Time") + "\n(GMT" + offsetSign + offsetHours.toString().padStart(2, '0') + ":" + offsetMinutes.toString().padStart(2, '0') + ")";

            }
            ,
            e.prototype.OnShow = function () {
                for (var t = [], e = 0; e < arguments.length; e++)
                    t[e] = arguments[e];
                this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
                    this.lbl_amount.string = "",
                    this.lbl_winAndloss.string = "",
                    this.listView.set_data([]),
                    this.n_page = 1,
                    this.n_IsSend = true,

                    this.lbl_title.string = new Date().format("yyyy/MM/dd") + " - " + new Date().format("yyyy/MM/dd"),
                    this.lbl_title2.string = new Date().format("yyyy/MM/dd") + " - " + new Date().format("yyyy/MM/dd"),
                    this.roomMgr.RequestBetOneDayHistory({
                        page: this.n_page,
                        startDay: new Date().format("yyyy-MM-dd"),
                        endDay: new Date().format("yyyy-MM-dd")
                    })

                this.Node_Nodata.active = false
            }
            ,
            e.prototype.OnMyHistory = function (send) {
                this.sendData = send
                if (send.page == 1) {
                    this.n_page = 1
                }
                this.lbl_title.string = send.startDay.replace(new RegExp("-", 'g'), "/") + " - " + send.endDay.replace(new RegExp("-", 'g'), "/")
                this.lbl_title2.string = send.startDay.replace(new RegExp("-", 'g'), "/") + " - " + send.endDay.replace(new RegExp("-", 'g'), "/")
                var t, e = this.roomMgr.DailyList;
                if (e) {
                    if (e.list.length <= 0)
                        return this.n_IsSend = false,
                            void (this.n_page <= 1 && (this.listView.set_data(e.list),
                                this.Node_Nodata.active = true));
                    this.n_IsSend ? this.listView.set_data(e.list) : (this.n_IsSend = true,
                        this.n_page > 1 ? (t = this.listView).append_data.apply(t, e.list) : this.listView.set_data(e.list)),
                        this.lbl_amount.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(e.statistics.total_bet_gold)
                    if (e.statistics.total_change_gold < 0) {
                        this.lbl_winAndloss.string = "-" + app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(-e.statistics.total_change_gold)
                    }
                    else {
                        this.lbl_winAndloss.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(e.statistics.total_change_gold)
                    }
                    this.labelRecords.string = e.list.length + " " + app.i18n.t("UI_Game1051_HistoryRecords")
                    this.Node_Nodata.active = 1 == this.n_page && 0 == e.list.length
                }
            }
            ,
            e.prototype.scrollEvents = function (t) {
                Number(t.getScrollOffset().y) / Number(t.getMaxScrollOffset().y) > .8 && this.n_IsSend && (this.n_page += 1,
                    this.n_IsSend = false,
                    this.RequestDayRecord())
            }
            ,
            e.prototype.RequestDayRecord = function () {
                this.roomMgr.RequestBetOneDayHistory({
                    page: this.n_page,
                    startDay: this.sendData.startDay,
                    endDay: this.sendData.endDay
                })
            }
            ,
            e.prototype.OnClick = function (t) {
                if (t == "btn_calender") {
                    app.FormManager().ShowForm(a.Game1050UIName.UIGame1050SelectDateRange)
                }
            }
            ,
            e.prototype.OnClose = function () {
                for (var t = [], e = 0; e < arguments.length; e++)
                    t[e] = arguments[e]
            }
            ,
            __decorate([d(cc.Prefab)], e.prototype, "myhistoryItem", void 0),
            __decorate([l, p("UI/prefab/UIGame1050Daily")], e)
    }(n.default);
i.default = h,
    module.exports = i
