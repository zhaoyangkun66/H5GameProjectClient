var UIBaseComponent = require("UIBaseComponent")
var i = require("GameEventDefine")
var UINameDefine = require("UINameDefine")
cc.Class({
    extends: UIBaseComponent.default,
    properties: {
        PerformanceItem: { default: null, type: cc.Node },
        content: { default: null, type: cc.Node },
        icon_zw: { default: null, type: cc.Node },
        lbl_StartTime: { default: null, type: cc.Label },
        lbl_EndTime: { default: null, type: cc.Label },
        CalendarView: { default: null, type: cc.Node },
        InitDateStr: "0000-00-00",
        toggle_All: null,
    },
    OnLoadInit() {
        this.RegEvent(i.GameEventDefine.newagent_myCommission, this.onNewagent_myCommission)
        this.toggle_All = this.GetWndComponent("scrollview/time/today", cc.Toggle)
        this.nodebottom = this.GetWndNode("nodebottom")
    },
    OnEnable() {
        this.PerformanceItem.active = false
        this.CalendarView.active = false
        this.toggle_All.check()
        app.PromoteMainManager().ReqNewagent_myCommission(this.getTime(Number(1)))
    },
    onNewagent_myCommission(dataRoot) {
        var data = dataRoot.record_list
        if (!data) {
            data = []
        }
        this.dataRoot = dataRoot
        if (dataRoot.page == 1) {
            this.n_page = 1
            this.content.removeAllChildren()
        }
        if (data.length >= 15) {
            this.n_IsSend = true;
        }
        else {
            this.n_IsSend = false;
        }
        this.icon_zw.active = ((data.length == 0) && (dataRoot.page == 1))
        //this.content.removeAllChildren()
        for (var n = 0; n < data.length; n++) {
            var o = data[n]
                , i = cc.instantiate(this.PerformanceItem);
            if (n % 2) {
                i.color = cc.color(28, 30, 35)
            } else {
                i.color = cc.color(32, 35, 41)
            }
            o.direct_amount = o.direct_amount.toFixed(2)
            o.other_amount = o.other_amount.toFixed(2)
            o.total_amount = o.total_amount.toFixed(2)
            if (o.direct_amount > 0) {
                let directCommission = i.getChildByName("directCommission").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "CommissionClickEvent"
                EventHandler.customEventData = JSON.stringify({ record_time: o.record_time, type: 1 })
                directCommission.clickEvents = []
                directCommission.clickEvents.push(EventHandler)
                i.getChildByName("directCommission").getComponent(cc.RichText).string = "Comissão Direta <color=#DCB154><u>" + o.direct_amount + "</u></color> <color=#FFFFFF>(" + o.direct_count + ")</color>"
            }
            else {
                i.getChildByName("directCommission").getComponent(cc.RichText).string = "Comissão Direta <color=#FFFFFF>" + o.direct_amount + "</color> <color=#FFFFFF>(" + o.direct_count + ")</color>"
            }
            if (o.other_amount > 0) {
                let otherCommissions = i.getChildByName("otherCommissions").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "CommissionClickEvent"
                EventHandler.customEventData = JSON.stringify({ record_time: o.record_time, type: 2 })
                otherCommissions.clickEvents = []
                otherCommissions.clickEvents.push(EventHandler)
                i.getChildByName("otherCommissions").getComponent(cc.RichText).string = "Outra Comissão <color=#DCB154><u>" + o.other_amount + "</u></color> <color=#FFFFFF>(" + o.other_count + ")</color>"
            }
            else {
                i.getChildByName("otherCommissions").getComponent(cc.RichText).string = "Outra Comissão <color=#FFFFFF>" + o.other_amount + "</color> <color=#FFFFFF>(" + o.other_count + ")</color>"
            }

            i.getChildByName("settleDay").getChildByName("settleDay").getComponent(cc.Label).string = o.record_time;
            i.getChildByName("totalCount").getChildByName("totalCount").getComponent(cc.Label).string = o.total_amount
            i.active = true
            i.parent = this.content
        }
        {
            this.nodebottom.active = data.length != 0
            this.nodebottom.getChildByName("directPerformance").getComponent(cc.Label).string = dataRoot.direct_total.toFixed(2)
            this.nodebottom.getChildByName("otherPerformance").getComponent(cc.Label).string = dataRoot.other_total.toFixed(2)
            this.nodebottom.getChildByName("totalCommission").getComponent(cc.Label).string = dataRoot.total_value.toFixed(2)
            this.nodebottom.getChildByName("nodeJianTou").scaleY = -1
            this.nodebottom.getComponent(cc.Widget).updateAlignment()
        }
    },
    scrollEvents(t) {
        const currentScrollY = Number(t.getScrollOffset().y);
        const maxScrollY = Number(t.getMaxScrollOffset().y);

        // 计算滚动比例，判断是否超过80%
        const isScrolledPast80Percent = currentScrollY / maxScrollY > 0.8;

        // 检查是否满足发送请求的条件
        if (isScrolledPast80Percent && this.n_IsSend) {
            // 增加页面编号，准备请求下一页数据
            this.n_page += 1;

            // 设置发送请求的标志为false，防止重复请求
            this.n_IsSend = false;

            let dataRoot = this.dataRoot
            app.PromoteMainManager().ReqNewagent_myCommission({ start: dataRoot.start_date, end: dataRoot.end_date, page: this.n_page })
        }
    },
    CommissionClickEvent(t, element) {
        var json = JSON.parse(element)
        app.FormManager().ShowForm(UINameDefine.UINameDefine.UImyCommissionDetail, json);
    },
    OnClick(e, t, n) {
        if ("start_date" == e || "end_date" == e) {
            var o = new Date;
            return "start_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_StartTime.getComponent(cc.Label).string = new Date(o.getTime() - 864e5).format("yyyy-MM-dd")),
                "end_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_EndTime.getComponent(cc.Label).string = o.format("yyyy-MM-dd")),
                void this.OnCalendarView(t.getComponent(cc.Label))
        }
        if ("all" == e || "today" == e || "yesterday" == e || "week" == e || "week_last" == e || "month" == e || "month_last" == e) {
            app.PromoteMainManager().ReqNewagent_myCommission(this.getTime(Number(n)))
        }
        else if ("btn_JianTou" == e) {
            let nodeJianTou = this.nodebottom.getChildByName("nodeJianTou")
            if (nodeJianTou.scaleY == 1) {
                nodeJianTou.scaleY = -1
                cc.tween(this.nodebottom).by(0.1, { y: -100 }).start()
            }
            else {
                nodeJianTou.scaleY = 1
                cc.tween(this.nodebottom).by(0.1, { y: 100 }).start()
            }
        }
        else {
            if ("btn_search" != e)
                ;
            else {
                var i = this.lbl_StartTime.getComponent(cc.Label).string
                    , a = this.lbl_EndTime.getComponent(cc.Label).string;
                if (i == this.InitDateStr || a == this.InitDateStr)
                    return;
                app.PromoteMainManager().ReqNewagent_myCommission({
                    start: i,
                    end: a
                })
            }
        }
    },
    OnCalendarView(e) {
        //  var t = this.node;
        //  t.getComponent(cc.Layout).enabled = false,
        //    t.height = t.height > 1200 ? t.height : 1200,
        this.CalendarView.active = true,
            this.CalendarView.getComponent("UICalendarView").setCurrent(e)
    },
    getTime(DateType) {
        var formattedStartDate = ""
        var formattedEndDate = "";
        // 获取当前日期
        var today = new Date();

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
        this.lbl_StartTime.getComponent(cc.Label).string = formattedStartDate
        this.lbl_EndTime.getComponent(cc.Label).string = formattedEndDate
        // 返回结果对象
        return {
            start: formattedStartDate,
            end: formattedEndDate
        };
    }
});