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
            return t.titlelabel = null,
                t.newDirectMembers = null,
                t.firstChargeUsers = null,
                t.firstRechargeAmount = null,
                t.rechargeUsers = null,
                t.rechargeAmount = null,
                t.withdrawUsers = null,
                t.withdrawAmount = null,
                t.validBets = null,
                t.discount = null,
                t.performance = null,
                t.profitLoss = null,
                t.commission = null,
                t.totalUsers = null,
                t.directUsers = null,
                t.otherUsers = null,
                t.totalPerformance = null,
                t.directPerformance = null,
                t.otherPerformance = null,
                t.totalCommission = null,
                t.directCommission = null,
                t.otherCommission = null,
                t.accumulatedCommission = null,
                t.received = null,
                t.notReceived = null,
                t.accumulatedRecharge = null,
                t.cumulativeWithdrawal = null,
                t.cumulativeCollection = null,
                t.cumulativeValidBets = null,
                t.cumulativeProfitLoss = null,

                t.toggle_All = null,
                t.btn_helpNode = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UImyData"
                this.RegEvent(i.GameEventDefine.newagent_myPeriodData, this.onNewagent_myPeriodData)
                this.RegEvent(i.GameEventDefine.newagent_myTotalData, this.onNewagent_myTotalData)
                this.toggle_All = this.GetWndComponent("scrollview/time/today", cc.Toggle)
            }
            ,
            t.prototype.OnEnable = function () {
                this.toggle_All.check()
                app.PromoteMainManager().ReqNewagent_myPeriodData(this.getTime(Number(1)))
                app.PromoteMainManager().ReqNewagent_myTotalData()
                this.newDirectMembers.string = ""
                this.firstChargeUsers.string = ""
                this.firstRechargeAmount.string = ""
                this.rechargeUsers.string = ""
                this.rechargeAmount.string = ""
                this.withdrawUsers.string = ""
                this.withdrawAmount.string = ""
                this.validBets.string = ""
                this.discount.string = ""
                this.performance.string = ""
                this.profitLoss.string = ""
                this.commission.string = ""
                this.totalUsers.string = ""
                this.directUsers.string = ""
                this.otherUsers.string = ""
                this.totalPerformance.string = ""
                this.directPerformance.string = ""
                this.otherPerformance.string = ""
                this.totalCommission.string = ""
                this.directCommission.string = ""
                this.otherCommission.string = ""
                this.accumulatedCommission.string = ""
                this.received.string = ""
                this.notReceived.string = ""
                this.accumulatedRecharge.string = ""
                this.cumulativeWithdrawal.string = ""
                this.cumulativeCollection.string = ""
                this.cumulativeValidBets.string = ""
                this.cumulativeProfitLoss.string = ""
            }
            ,
            t.prototype.onNewagent_myPeriodData = function (e) {
                this.newDirectMembers.string = "" + e.direct_num.toFixed(0)
                this.firstChargeUsers.string = "" + e.newpay_num.toFixed(0)
                this.firstRechargeAmount.string = "" + e.total_newpay.toFixed(2)
                this.rechargeUsers.string = "" + e.total_ordercount.toFixed(0)
                this.rechargeAmount.string = "" + e.total_pay.toFixed(2)
                this.withdrawUsers.string = "" + e.total_drawoutcount.toFixed(0)
                this.withdrawAmount.string = "" + e.total_drawout.toFixed(2)
                this.validBets.string = "" + e.total_bet.toFixed(2)
                this.discount.string = "" + e.total_award.toFixed(2)
                this.performance.string = "" + e.total_desem.toFixed(2)
                this.profitLoss.string = "" + e.total_win.toFixed(2)
                if (e.total_win >= 0) {
                    this.profitLoss.node.color = cc.color(234, 78, 61)
                }
                else {
                    this.profitLoss.node.color = cc.color(6, 176, 5)
                }
                this.commission.string = "" + e.total_comiss.toFixed(2)

                this.titlelabel.string = e.start_date + " ~ " + e.end_date
                //this.titlelabel.string = new Date(app.GameConfigManager().GetAsTime() * 1000);
            },
            t.prototype.onNewagent_myTotalData = function (e) {
                this.totalUsers.string = "" + e.team_num.toFixed(0)
                this.directUsers.string = "" + e.direct_num.toFixed(0)
                this.otherUsers.string = "" + e.other_num.toFixed(0)
                this.totalPerformance.string = "" + e.total_desem.toFixed(2)
                this.directPerformance.string = "" + e.direct_desem.toFixed(2)
                this.otherPerformance.string = "" + e.other_desem.toFixed(2)
                this.totalCommission.string = "" + e.total_comm.toFixed(2)
                this.directCommission.string = "" + e.direct_comm.toFixed(2)
                this.otherCommission.string = "" + e.other_comm.toFixed(2)
                this.accumulatedCommission.string = "" + e.total_comm.toFixed(2)
                this.received.string = "" + e.send_score.toFixed(2)
                this.notReceived.string = "" + e.noget_score.toFixed(2)
                this.accumulatedRecharge.string = "" + e.total_pay.toFixed(2)
                this.cumulativeWithdrawal.string = "" + e.total_drawout.toFixed(2)
                this.cumulativeCollection.string = "" + e.total_ordercount.toFixed(2)
                this.cumulativeValidBets.string = "" + e.total_bet.toFixed(2)
                this.cumulativeProfitLoss.string = "" + e.total_win.toFixed(2)
                if (e.total_win >= 0) {
                    this.cumulativeProfitLoss.node.color = cc.color(234, 78, 61)
                }
                else {
                    this.cumulativeProfitLoss.node.color = cc.color(6, 176, 5)
                }
            }
            ,
            t.prototype.OnClick = function (e, t, n) {
                if ("btn_help" == e) {
                    this.btn_helpNode.active = !this.btn_helpNode.active
                }
                else if ("btn_helpClose" == e) {
                    this.btn_helpNode.active = false
                }
                else if ("newDirectMembers" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 4)
                }
                else if ("rechargeUsers" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 0)
                }
                else if ("validBets" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 5)
                }
                else if ("discount" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 0)
                }
                else if ("performance" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 2)
                }
                else if ("directUsers" == e) {
                    app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 4)
                }
                else if ("all" == e || "today" == e || "yesterday" == e || "week" == e || "week_last" == e || "month" == e || "month_last" == e) {
                    app.PromoteMainManager().ReqNewagent_myPeriodData(this.getTime(Number(n)))
                }
                else {

                }
            }
            ,
            t.prototype.getTime = function (DateType) {
                var formattedStartDate = ""
                var formattedEndDate = "";
                // 获取当前日期
                var today = new Date(app.GameConfigManager().GetAsTime() * 1000);

                // 获取昨天
                var yesterday = new Date(today);
                yesterday.setDate(today.getDate() - 1);

                // 获取这周的开始和结束（周一为一周开始）
                var thisWeekStart = new Date(today);
                thisWeekStart.setDate(today.getDate() - today.getDay() + 1);

                // 获取上周的开始和结束
                var lastWeekStart = new Date(thisWeekStart);
                lastWeekStart.setDate(thisWeekStart.getDate() - 7);
                var lastWeekEnd = new Date(lastWeekStart);
                lastWeekEnd.setDate(lastWeekStart.getDate() + 6);

                // 获取这月的开始和结束
                var thisMonthStart = new Date(today);
                thisMonthStart.setDate(1);

                // 获取上月的开始和结束
                var lastMonthStart = new Date(thisMonthStart);
                lastMonthStart.setMonth(thisMonthStart.getMonth() - 1);
                var lastMonthEnd = new Date(thisMonthStart);
                lastMonthEnd.setDate(0);

                switch (DateType) {
                    case 0:
                        formattedStartDate = new Date(today.getTime() - 864e5 * (1000 - 1)).format("yyyy-MM-dd")
                        formattedEndDate = today.format("yyyy-MM-dd")
                        break;
                    case 1:
                        formattedStartDate = today.format("yyyy-MM-dd")
                        formattedEndDate = today.format("yyyy-MM-dd")
                        break;
                    case 2:
                        formattedStartDate = yesterday.format("yyyy-MM-dd")
                        formattedEndDate = yesterday.format("yyyy-MM-dd")
                        break;
                    case 3:
                        formattedStartDate = thisWeekStart.format("yyyy-MM-dd")
                        formattedEndDate = today.format("yyyy-MM-dd")
                        break;
                    case 4:
                        formattedStartDate = lastWeekStart.format("yyyy-MM-dd")
                        formattedEndDate = lastWeekEnd.format("yyyy-MM-dd")
                        break;
                    case 5:
                        formattedStartDate = thisMonthStart.format("yyyy-MM-dd")
                        formattedEndDate = today.format("yyyy-MM-dd")
                        break;
                    case 6:
                        formattedStartDate = lastMonthStart.format("yyyy-MM-dd")
                        formattedEndDate = lastMonthEnd.format("yyyy-MM-dd")
                        break;
                }

                // 返回结果对象
                return {
                    start: formattedStartDate,
                    end: formattedEndDate
                };
            }
            ,
            __decorate([s(cc.Label)], t.prototype, "titlelabel", undefined),
            __decorate([s(cc.Label)], t.prototype, "newDirectMembers", undefined),
            __decorate([s(cc.Label)], t.prototype, "firstChargeUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "firstRechargeAmount", undefined),
            __decorate([s(cc.Label)], t.prototype, "rechargeUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "rechargeAmount", undefined),
            __decorate([s(cc.Label)], t.prototype, "withdrawUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "withdrawAmount", undefined),
            __decorate([s(cc.Label)], t.prototype, "validBets", undefined),
            __decorate([s(cc.Label)], t.prototype, "discount", undefined),
            __decorate([s(cc.Label)], t.prototype, "performance", undefined),
            __decorate([s(cc.Label)], t.prototype, "profitLoss", undefined),
            __decorate([s(cc.Label)], t.prototype, "commission", undefined),

            __decorate([s(cc.Label)], t.prototype, "totalUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "directUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "otherUsers", undefined),
            __decorate([s(cc.Label)], t.prototype, "totalPerformance", undefined),
            __decorate([s(cc.Label)], t.prototype, "directPerformance", undefined),
            __decorate([s(cc.Label)], t.prototype, "otherPerformance", undefined),
            __decorate([s(cc.Label)], t.prototype, "totalCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "directCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "otherCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "accumulatedCommission", undefined),
            __decorate([s(cc.Label)], t.prototype, "received", undefined),
            __decorate([s(cc.Label)], t.prototype, "notReceived", undefined),
            __decorate([s(cc.Label)], t.prototype, "accumulatedRecharge", undefined),
            __decorate([s(cc.Label)], t.prototype, "cumulativeWithdrawal", undefined),
            __decorate([s(cc.Label)], t.prototype, "cumulativeCollection", undefined),
            __decorate([s(cc.Label)], t.prototype, "cumulativeValidBets", undefined),
            __decorate([s(cc.Label)], t.prototype, "cumulativeProfitLoss", undefined),
            __decorate([s(cc.Node)], t.prototype, "btn_helpNode", undefined),
            __decorate([r], t)
    }(o.default);
n.default = c,
    module.exports = n