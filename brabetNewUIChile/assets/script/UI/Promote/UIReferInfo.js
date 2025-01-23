let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.property
    , c = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.TotalCommission = null,
                t.NumberofTeammembers = null,
                t.NumberofDIRECTmembers = null,
                t.CommissionWithdrawal = null,
                t.CommissionTransfer = null,
                t.BettingCommission = null,
                t.InvitationConquest = null,
                t.InvitationBonus = null,
                t.Subordinate = null,
                t.total_pay = null,
                t.lbl_StartTime = null,
                t.lbl_EndTime = null,
                t.CalendarView = null,
                t.InitDateStr = "0000-00-00",
                t.toggle_All = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIReferInfo",
                    this.RegEvent(i.GameEventDefine.GET_AGENTREPORT, this.onSpreadWayInfoData),
                    this.toggle_All = this.GetWndComponent("time/all", cc.Toggle)
                // this.toggle_All = this.GetWndComponent("Promote/con/time/all", cc.Toggle)
            }
            ,
            t.prototype.OnEnable = function () {
                this.CalendarView.active = false,
                    this.toggle_All.check(),
                    // app.PromoteMainManager().ReqAgentReport(),
                    app.PromoteMainManager().ReqAgentReport(this.getTime(Number(0)))
                this.TotalCommission.string = "",
                    this.NumberofTeammembers.string = "",
                    this.NumberofDIRECTmembers.string = "",
                    this.CommissionWithdrawal.string = "",
                    this.CommissionTransfer.string = "",
                    this.BettingCommission.string = "",
                    this.InvitationConquest.string = "",
                    this.InvitationBonus.string = "",
                    this.Subordinate.string = "",
                    this.total_pay.string = "",
                    this.setStartEndtimeLabel()
            }
            ,
            t.prototype.setStartEndtimeLabel = function () {
                new Date,
                    this.lbl_StartTime.getComponent(cc.Label).string = this.InitDateStr,
                    this.lbl_EndTime.getComponent(cc.Label).string = this.InitDateStr
            }
            ,
            t.prototype.onSpreadWayInfoData = function (e) {
                e && (this.TotalCommission.string = "" + e.total_cash,
                    this.NumberofTeammembers.string = "" + e.team_num,
                    this.NumberofDIRECTmembers.string = "" + e.direct_num,
                    this.CommissionWithdrawal.string = "" + e.cash_withdraw,
                    this.CommissionTransfer.string = "" + e.cash_transfer,
                    this.BettingCommission.string = "" + e.sub_cash,
                    this.InvitationConquest.string = "" + e.share_box,
                    this.InvitationBonus.string = "" + e.sub_first_recharge,
                    this.Subordinate.string = "" + e.sub_total_users,
                    this.total_pay.string = "" + e.total_pay)
            }
            ,
            t.prototype.OnClick = function (e, t, n) {
                if ("start_date" == e || "end_date" == e) {
                    var o = new Date;
                    return "start_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_StartTime.getComponent(cc.Label).string = new Date(o.getTime() - 864e5).format("yyyy-MM-dd")),
                        "end_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_EndTime.getComponent(cc.Label).string = o.format("yyyy-MM-dd")),
                        void this.OnCalendarView(t.getComponent(cc.Label))
                }
                if ("all" != e && "today" != e && "week" != e && "week_last" != e && "month" != e)
                    if ("btn_search" != e)
                        ;
                    else {
                        var i = this.lbl_StartTime.getComponent(cc.Label).string
                            , a = this.lbl_EndTime.getComponent(cc.Label).string;
                        if (i == this.InitDateStr || a == this.InitDateStr)
                            return;
                        app.PromoteMainManager().ReqAgentReport({
                            start: i,
                            end: a
                        })
                    }
                else
                    app.PromoteMainManager().ReqAgentReport(this.getTime(Number(n)))
            }
            ,
            t.prototype.OnCalendarView = function (e) {
                var t = this.node;
                t.getComponent(cc.Layout).enabled = false,
                    t.height = t.height > 1200 ? t.height : 1200,
                    this.CalendarView.active = true,
                    this.CalendarView.getComponent("UICalendarView").setCurrent(e)
            }
            ,
            t.prototype.getTime = function (e) {
                // if (0 == e)
                //     return this.lbl_StartTime.getComponent(cc.Label).string = this.InitDateStr,
                //         this.lbl_EndTime.getComponent(cc.Label).string = this.InitDateStr,
                //         null;
                var t = new Date
                    , n = t.getDay() ? t.getDay() : 7
                    , o = this.getDays(t.getFullYear(), t.getMonth() - 1)
                    , i = t.getDate()
                    , a = [1000, 0, n, n + 7, o + i]
                    , r = new Date(t.getTime() - 864e5 * a[e]).format("yyyy-MM-dd")
                    , s = t.format("yyyy-MM-dd");
                return 0 == e ? r = new Date(t.getTime() - 864e5 * (a[e] - 1)).format("yyyy-MM-dd") : 2 == e ? r = new Date(t.getTime() - 864e5 * (a[e] - 1)).format("yyyy-MM-dd") : 3 == e ? (r = new Date(t.getTime() - 864e5 * (a[e] - 1)).format("yyyy-MM-dd"),
                    s = new Date(t.getTime() - 864e5 * n).format("yyyy-MM-dd")) : 4 == e && (r = new Date(t.getTime() - 864e5 * (a[e] - 1)).format("yyyy-MM-dd"),
                        s = new Date(t.getTime() - 864e5 * i).format("yyyy-MM-dd")),
                    this.lbl_StartTime.getComponent(cc.Label).string = r,
                    this.lbl_EndTime.getComponent(cc.Label).string = s,
                {
                    start: r,
                    end: s
                }
            }
            ,
            t.prototype.getDays = function (e, t) {
                var n = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                return e % 4 != 0 || e % 100 == 0 && e % 400 != 0 || (n[1] = 29),
                    n[t]
            }
            ,
            __decorate([s(cc.Label)], t.prototype, "TotalCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "NumberofTeammembers", undefined),
            __decorate([s(cc.Label)], t.prototype, "NumberofDIRECTmembers", undefined),
            __decorate([s(cc.Label)], t.prototype, "CommissionWithdrawal", undefined),
            __decorate([s(cc.Label)], t.prototype, "CommissionTransfer", undefined),
            __decorate([s(cc.Label)], t.prototype, "BettingCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "InvitationConquest", undefined),
            __decorate([s(cc.Label)], t.prototype, "InvitationBonus", undefined),
            __decorate([s(cc.Label)], t.prototype, "Subordinate", undefined),
            __decorate([s(cc.Label)], t.prototype, "total_pay", undefined),
            __decorate([s(cc.Label)], t.prototype, "lbl_StartTime", undefined),
            __decorate([s(cc.Label)], t.prototype, "lbl_EndTime", undefined),
            __decorate([s(cc.Node)], t.prototype, "CalendarView", undefined),
            __decorate([r], t)
    }(o.default);
n.default = c,
    module.exports = n
