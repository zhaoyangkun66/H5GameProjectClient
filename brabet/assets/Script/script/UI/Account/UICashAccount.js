let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
  , i = require("../../../Common/Define/UINameDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("./UIUniversalList")
  , s = require("../../../Common/Base/UIBaseComponent")
  , c = require("../../../Common/Define/TrackEventName")
  , l = cc._decorator
  , p = l.ccclass
  , d = l.property
  , h = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.topNode = null,
        t.bet_Pro = null,
        t.bet_Node = null,
        t.lbl_bet = null,
        t.lbl_can_withdraw = null,
        t.lbl_not_withdraw = null,
        t.Recharge = null,
        t.Withdrawal = null,
        t.icon_zw = null,
        t.CalendarView = null,
        t.moreNode = null,
        t.salNum = null,
        t.UIAccMessage = null,
        t.page = 1,
        t.type = 1,
        t.defaultStartTime = "",
        t.defaultEndTime = "",
        t.isPlay = false,
        t.gold_icon = null,
        t.gold_icon1 = null,
        t.gold_icon2 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        var e = this;
        this.RegEvent(o.GameEventDefine.GET_USER_AndOrder, this.OnInitView),
        this.RegEvent(o.GameEventDefine.GET_AndOrder_REC, this.OnRecharge),
        this.RegEvent(o.GameEventDefine.GET_AndOrder_WITH, this.OnWithdrawal),
        this.RegEvent(o.GameEventDefine.UPDATE_USER_INFO, this.OnUpdateUserInfo),
        this.RegEvent(o.GameEventDefine.GET_GAMERATIO, this.OnGameRatio),
        this.RegEvent(o.GameEventDefine.UserCenterActivities, this.OnAccMessage),
        this.UIAccMessage = this.GetWndNode("UIAccMessage"),
        this.RegEvent(o.GameEventDefine.COMPANY_PAYMENT, function() {
            app.ActivityManager().RequestUserCenterActivities()
        }),
        this.RegEvent(o.GameEventDefine.UICashAccountClick, function(t) {
            t === a.SubClickType.DepositHistory ? (e.GetWndNode("toggleContainer/toggle").getComponent(cc.Toggle).isChecked = true,
            e.OnToggleView(3, true)) : t === a.SubClickType.WithdrawalHistory && (e.GetWndNode("toggleContainer/toggle1").getComponent(cc.Toggle).isChecked = true,
            e.OnToggleView(2, false))
        }),
        this.gold_icon = this.GetWndNode("node/saldo/node_amount/label_symbol/spr_icon"),
        this.gold_icon1 = this.GetWndNode("top/right/btn_withdraw/node_amount/label_symbol/spr_icon"),
        this.gold_icon2 = this.GetWndNode("top/right/node_amount/label_symbol/spr_icon")
    }
    ,
    t.prototype.setIsPay = function(e) {
        this.isPlay = e
    }
    ,
    t.prototype.OnEnable = function() {
        this.WithdrawalVisible(),
        this.GetWndNode("toggleContainer/toggle").getComponent(cc.Toggle).isChecked = true,
        this.type = 3,
        this.OnInit(),
        app.UserManager().RequestUserAndOrder(0, 20, this.page),
        this.setBalance();
        var e = this.Recharge.getChildByName("layout");
        e.removeAllChildren(),
        this.OnUpdateLayout(e);
        var t = this.Withdrawal.getChildByName("layout");
        t.removeAllChildren(),
        this.OnUpdateLayout(t),
        this.bet_Node.active = false,
        this.OnRequestActivities();
        var n = app.GameConfigManager().GetGoldIcomCondition;
        this.gold_icon.active = n,
        this.gold_icon1.active = n,
        this.gold_icon2.active = n
    }
    ,
    t.prototype.WithdrawalVisible = function() {
        var e = 1 == app.UserManager().GetUserInfoConfig.show_arr[a.VisibleBtnTag.Withdrawal];
        this.topNode.active = e,
        this.GetWndNode("toggleContainer/toggle1").active = e
    }
    ,
    t.prototype.OnRequestActivities = function() {
        this.UIAccMessage && app.ActivityManager().RequestUserCenterActivities()
    }
    ,
    t.prototype.setBalance = function() {
        var e = app.GameConfigManager().GetCurrency;
        this.salNum.string = e + app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.gold)
    }
    ,
    t.prototype.OnAccMessage = function() {
        var e = app.ActivityManager().getUserActivities().activitie;
        this.UIAccMessage.active = e.length > 0,
        this.CalendarView.y = this.UIAccMessage.active ? -1038 : -950
    }
    ,
    t.prototype.OnUpdateUserInfo = function() {
        app.UserManager().RequestUserAndOrder(0, 20, 1),
        this.setBalance()
    }
    ,
    t.prototype.OnInit = function() {
        this.page = 1,
        this.defaultStartTime = "",
        this.defaultEndTime = "",
        this.CalendarView.active = false;
        var e = this.node;
        e.getComponent(cc.Layout).enabled = true,
        this.OnUpdateLayout(e)
    }
    ,
    t.prototype.OnInitView = function() {
        var e = this
          , t = app.UserManager().GetUserAndOrderInfo;
        this.bet_Node.getChildByName("label").getComponent(cc.Label).string = t.user_info.current_bet.toFixed(2),
        this.bet_Node.getChildByName("total").getComponent(cc.Label).string = t.user_info.all_bet.toFixed(2),
        this.bet_Node.active = true;
        var n = 0 == t.user_info.all_bet ? 0 : Number(t.user_info.current_bet) / Number(t.user_info.all_bet);
        this.bet_Pro.progress = n,
        this.bet_Pro.node.active = true,
        this.lbl_bet.string = (100 * n).toFixed(2) + "%",
        this.lbl_bet.node.active = true;
        var o = app.GameConfigManager().GetCurrency;
        this.lbl_can_withdraw.string = o + " " + t.user_info.can_withdraw.toFixed(2),
        this.lbl_not_withdraw.string = o + " " + t.user_info.not_withdraw.toFixed(2),
        this.isPlay && (this.scheduleOnce(function() {
            e.topNode.getComponent(cc.Animation).play()
        }, .1),
        this.isPlay = false),
        this.OnInit(),
        this.OnDateView(t.start_date, t.end_date),
        this.onCountView(3 == this.type),
        3 == this.type ? this.OnRecharge() : this.OnWithdrawal()
    }
    ,
    t.prototype.OnDateView = function(e, t) {
        var n = this.GetWndNode("date");
        n.getChildByName("start_date").getComponent(cc.Label).string = e,
        this.defaultStartTime = e,
        n.getChildByName("end_date").getComponent(cc.Label).string = t,
        this.defaultEndTime = t
    }
    ,
    t.prototype.OnRecharge = function() {
        var e = app.UserManager().GetUserAndOrderInfo.recharge_list
          , t = this.Recharge.getChildByName("layout");
        1 == this.page && (t.removeAllChildren(),
        this.OnUpdateLayout(t));
        for (var n = 0; n < e.length; n++) {
            var o = e[n]
              , i = cc.instantiate(this.Recharge.getChildByName("li"));
            i.getChildByName("id").getChildByName("lbl").getComponent(cc.Label).string = o.out_trade_no,
            i.getChildByName("id").getChildByName("btn_copy").getComponent(cc.Button).clickEvents[0].customEventData = o.out_trade_no,
            i.getChildByName("date").getChildByName("lbl").getComponent(cc.Label).string = o.create_time,
            i.getChildByName("valor").getChildByName("lbl").getComponent(cc.Label).string = o.gold,
            i.getChildByName("bonus").getChildByName("lbl").getComponent(cc.Label).string = o.send_gold,
            i.getChildByName("real").getChildByName("lbl").getComponent(cc.Label).string = o.amount;
            var a = i.getChildByName("state").getChildByName("lbl");
            a.getComponent(cc.Label).string = o.status,
            a.color = 1 == o.color_type ? cc.color(0, 255, 45) : cc.color(218, 42, 67),
            i.active = true,
            i.parent = t
        }
        this.OnsetPage(e.length)
    }
    ,
    t.prototype.OnWithdrawal = function() {
        var e = app.UserManager().GetUserAndOrderInfo.withdraw_list
          , t = this.Withdrawal.getChildByName("layout");
        1 == this.page && (t.removeAllChildren(),
        this.OnUpdateLayout(t));
        for (var n = 0; n < e.length; n++) {
            var o = e[n]
              , i = cc.instantiate(this.Withdrawal.getChildByName("li"));
            i.getChildByName("id").getChildByName("lbl").getComponent(cc.Label).string = o.out_trade_no,
            i.getChildByName("id").getChildByName("btn_copy").getComponent(cc.Button).clickEvents[0].customEventData = o.out_trade_no,
            i.getChildByName("date").getChildByName("lbl").getComponent(cc.Label).string = o.create_time,
            i.getChildByName("valor").getChildByName("lbl").getComponent(cc.Label).string = o.gold,
            i.getChildByName("taxa").getChildByName("lbl").getComponent(cc.Label).string = o.pump_amount;
            var a = i.getChildByName("state").getChildByName("lbl");
            a.getComponent(cc.Label).string = o.status,
            a.color = 1 == o.color_type ? cc.color(0, 255, 45) : 3 == o.color_type ? cc.Color.WHITE : cc.color(218, 42, 67),
            i.getChildByName("btnDetails").DetailsId = o.id,
            i.active = true,
            i.parent = t
        }
        this.OnsetPage(e.length)
    }
    ,
    t.prototype.OnsetPage = function(e) {
        this.Recharge.parent.getComponent(cc.Layout).enabled = true,
        this.OnUpdateLayout(this.Recharge.parent),
        this.icon_zw.active = 0 == e && 1 == this.page,
        this.moreNode.active = 20 == e,
        this.page > 1 && (this.page = 20 == e ? this.page : this.page--)
    }
    ,
    t.prototype.OnUpdateLayout = function(e) {
        e.getComponent(cc.Layout).updateLayout()
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        if ("btn_withdraw" != e && "btn_arrow" != e)
            if ("toggle" != e)
                if ("toggle1" != e)
                    if ("start_date" != e && "end_date" != e) {
                        if ("btn_search" == e)
                            return this.page = 1,
                            void this.OnSearch();
                        if ("btn_copy" != e) {
                            if ("btn_view" == e)
                                return this.page++,
                                void this.OnSearch();
                            if ("btnDetails" != e)
                                if ("btn_email" != e)
                                    "btn_help" != e ? "btn_Wallet" != e || app.StoreManager().ShowStoreUI({
                                        in_type: c.default.PAGETRACK_EVENT_WITHDRAW_USERCENTER
                                    }) : app.UserManager().GameRatio ? this.OnGameRatio() : app.UserManager().RequestGetGamerati();
                                else {
                                    if (app.UserManager().GetIsOfficialPopup())
                                        return;
                                    app.FormManager().ShowForm(i.UINameDefine.UIChat)
                                }
                            else
                                app.FormManager().ShowForm(i.UINameDefine.UICashDetails, {
                                    DetailsId: t.DetailsId,
                                    is_usdt: 0
                                })
                        } else
                            app.NativeMgr().copyToClipBoard(n)
                    } else
                        this.OnCalendarView(t.getComponent(cc.Label));
                else
                    this.OnToggleView(2, false);
            else
                this.OnToggleView(3, true);
        else
            app.StoreManager().ShowStoreUI({
                ShowType: a.WIN_TYPE.CASHOUT,
                in_type: c.default.PAGETRACK_EVENT_WITHDRAW_USERCENTER
            })
    }
    ,
    t.prototype.OnGameRatio = function() {
        app.FormManager().ShowForm(i.UINameDefine.UIUniversalList, {
            type: r.UniversalType.BetCoefficient,
            list: app.UserManager().GameRatio
        })
    }
    ,
    t.prototype.OnCalendarView = function(e) {
        var t = this.node;
        t.getComponent(cc.Layout).enabled = false,
        t.height = t.height > 1400 ? t.height : 1400,
        this.CalendarView.active = true,
        this.CalendarView.getComponent("UICalendarView").setCurrent(e)
    }
    ,
    t.prototype.OnToggleView = function(e, t) {
        this.page = 1,
        this.type = e,
        this.onCountView(t),
        t ? this.Withdrawal.getChildByName("layout").removeAllChildren() : this.Recharge.getChildByName("layout").removeAllChildren(),
        this.defaultEndTime && this.defaultStartTime && (app.UserManager().RequestUserAndOrder(this.type, 20, this.page, this.defaultStartTime, this.defaultEndTime),
        this.OnDateView(this.defaultStartTime, this.defaultEndTime))
    }
    ,
    t.prototype.OnSearch = function() {
        for (var e = this.GetWndNode("date/start_date").getComponent(cc.Label), t = e.string.split("-"), n = "", o = 0; o < t.length; o++)
            n += t[o];
        var i = this.GetWndNode("date/end_date").getComponent(cc.Label)
          , a = i.string.split("-")
          , r = "";
        for (o = 0; o < a.length; o++)
            r += a[o];
        Number(n) > Number(r) ? this.Log("\u65f6\u95f4\u4e0d\u5bf9") : app.UserManager().RequestUserAndOrder(this.type, 20, this.page, e.string, i.string)
    }
    ,
    t.prototype.onCountView = function(e) {
        this.Recharge.active = e,
        this.Withdrawal.active = !e
    }
    ,
    __decorate([d(cc.Node)], t.prototype, "topNode", undefined),
    __decorate([d(cc.ProgressBar)], t.prototype, "bet_Pro", undefined),
    __decorate([d(cc.Node)], t.prototype, "bet_Node", undefined),
    __decorate([d(cc.Label)], t.prototype, "lbl_bet", undefined),
    __decorate([d(cc.Label)], t.prototype, "lbl_can_withdraw", undefined),
    __decorate([d(cc.Label)], t.prototype, "lbl_not_withdraw", undefined),
    __decorate([d(cc.Node)], t.prototype, "Recharge", undefined),
    __decorate([d(cc.Node)], t.prototype, "Withdrawal", undefined),
    __decorate([d(cc.Node)], t.prototype, "icon_zw", undefined),
    __decorate([d(cc.Node)], t.prototype, "CalendarView", undefined),
    __decorate([d(cc.Node)], t.prototype, "moreNode", undefined),
    __decorate([d(cc.Label)], t.prototype, "salNum", undefined),
    __decorate([p], t)
}(s.default);
n.default = h,
module.exports = n
