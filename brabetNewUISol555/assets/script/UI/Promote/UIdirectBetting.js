var UIBaseComponent = require("../../../Common/Base/UIBaseComponent")
var i = require("../../../Common/Define/GameEventDefine")
var UINameDefine = require("../../../Common/Define/UINameDefine")
cc.Class({
    extends: UIBaseComponent.default,
    properties: {
        Item: { default: null, type: cc.Node },
        content: { default: null, type: cc.Node },
        icon_zw: { default: null, type: cc.Node },
        lbl_StartTime: { default: null, type: cc.Label },
        lbl_EndTime: { default: null, type: cc.Label },
        memberID: { default: null, type: cc.EditBox },
        CalendarView: { default: null, type: cc.Node },
        InitDateStr: "0000-00-00",
        toggle_All: null,
    },
    OnLoadInit() {
        this.RegEvent(i.GameEventDefine.newagent_directOrder, this.onNewagent_directOrder)
        this.toggle_All = this.GetWndComponent("scrollview/time/today", cc.Toggle)
        this.nodebottom = this.GetWndNode("nodebottom")
    },
    OnEnable() {
        this.Item.active = false
        this.CalendarView.active = false,
            this.toggle_All.check()
        app.PromoteMainManager().ReqNewagent_directOrder(this.getTime(Number(1)))
    },
    onNewagent_directOrder(dataRoot) {
        if (!dataRoot.record_list) {
            dataRoot.record_list = []
        }
        if (dataRoot.isOtherView) {
            app.FormManager().ShowForm(UINameDefine.UINameDefine.UIdirectBettingOut, dataRoot);
            return
        }

        if (dataRoot.page == 1) {
            this.n_page = 1
            this.content.removeAllChildren()
        }
        this.dataRoot = dataRoot

        this.icon_zw.active = ((dataRoot.record_list.length == 0) && (dataRoot.page == 1))
        var data = dataRoot.record_list
        if (data.length >= 15) {
            this.n_IsSend = true;
        }
        else {
            this.n_IsSend = false;
        }
        // this.content.removeAllChildren()
        for (let index = 0; index < data.length; index++) {
            const element = data[index];
            let Item = cc.instantiate(this.Item);
            if (index % 2) {
                Item.color = cc.color(28, 30, 35)
            } else {
                Item.color = cc.color(32, 35, 41)
            }
    
            Item.getChildByName("VIP").getChildByName("VIP").getChildByName("VIP").getComponent(cc.Label).string = "V" + element.vip
            Item.getChildByName("id").getChildByName("id").getComponent(cc.Label).string = element.uid
            if (element.agent_count > 0) {
                let subordinate = Item.getChildByName("subordinate").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "directOrderClickEvent"
                EventHandler.customEventData = JSON.stringify({ start: dataRoot.start_date, end: dataRoot.end_date, memberID: element.uid, isOtherView: true })
                subordinate.clickEvents = []
                subordinate.clickEvents.push(EventHandler)
                Item.getChildByName("subordinate").getComponent(cc.RichText).string = "Subordinados Dele <color=#DCB154><u>" + element.agent_count + "</u></color>"
            }
            else {
                Item.getChildByName("subordinate").getComponent(cc.RichText).string = "Subordinados Dele <color=#FFFFFF>" + element.agent_count + "</color>"
            }
            if (element.total_bet > 0) {
                let validBets = Item.getChildByName("validBets").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "OrderClickEvent"
                element.start_date = dataRoot.start_date
                element.end_date = dataRoot.end_date
                EventHandler.customEventData = JSON.stringify(element)
                validBets.clickEvents = []
                validBets.clickEvents.push(EventHandler)
                Item.getChildByName("validBets").getComponent(cc.RichText).string = "Apostas Válidas <color=#DCB154><u>" + element.total_bet + "</u></color><color=#FFFFFF> (" + element.total_betcount + "Vezes)</color>"
            }
            else {
                Item.getChildByName("validBets").getComponent(cc.RichText).string = "Apostas Válidas <color=#FFFFFF>" + element.total_bet + "</color><color=#FFFFFF> (" + element.total_betcount + "Vezes)</color>"
            }
            Item.getChildByName("profitTotal").getChildByName("profitTotal").getComponent(cc.Label).string = element.total_win;
            if (element.total_win >= 0) {
                Item.getChildByName("profitTotal").getChildByName("profitTotal").color = cc.color(171, 63, 53)
            }
            else {
                Item.getChildByName("profitTotal").getChildByName("profitTotal").color = cc.color(6, 176, 5)
            }
            {
                let btn_copy = Item.getChildByName("id").getChildByName("btn_copy").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "copyClickEvent"
                EventHandler.customEventData = JSON.stringify(element.uid)
                btn_copy.clickEvents = []
                btn_copy.clickEvents.push(EventHandler)
            }
            Item.active = true
            Item.parent = this.content
        }
        {
            this.nodebottom.active = data.length != 0

            this.nodebottom.getChildByName("directValidBet").getComponent(cc.Label).string = dataRoot.directbet_total.toFixed(2)
            this.nodebottom.getChildByName("otherValidBet").getComponent(cc.Label).string = dataRoot.otherbet_total.toFixed(2)
            this.nodebottom.getChildByName("totoalValidOrderAmount").getComponent(cc.Label).string = dataRoot.bet_total.toFixed(2)

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
            app.PromoteMainManager().ReqNewagent_directOrder({ start: dataRoot.start_date, end: dataRoot.end_date, memberID: dataRoot.uid, isOtherView: false, page: this.n_page })
        }
    },
    OrderClickEvent(t, element) {
        var json = JSON.parse(element)
        app.FormManager().ShowForm(UINameDefine.UINameDefine.UImyOrderDetail, json);
    },
    directOrderClickEvent(t, element) {
        var json = JSON.parse(element)
        app.PromoteMainManager().ReqNewagent_directOrder(json)
    },
    copyClickEvent(t, element) {
        app.NativeMgr().copyToClipBoard(element)
    },
    OnClick(e, t, n) {
        if ("start_date" == e || "end_date" == e) {
            var o = new Date;
            return "start_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_StartTime.getComponent(cc.Label).string = new Date(o.getTime() - 864e5).format("yyyy-MM-dd")),
                "end_date" == e && t.getComponent(cc.Label).string == this.InitDateStr && (this.lbl_EndTime.getComponent(cc.Label).string = o.format("yyyy-MM-dd")),
                void this.OnCalendarView(t.getComponent(cc.Label))
        }
        if ("all" == e || "today" == e || "yesterday" == e || "week" == e || "week_last" == e || "month" == e || "month_last" == e) {
            app.PromoteMainManager().ReqNewagent_directOrder(this.getTime(Number(n)))
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
                app.PromoteMainManager().ReqNewagent_directOrder({
                    start: i,
                    end: a,
                    memberID: this.memberID.string
                })
            }
        }
    },
    OnCalendarView(e) {
        ///  var t = this.node;
        // t.getComponent(cc.Layout).enabled = false,
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
            end: formattedEndDate,
            memberID: this.memberID.string
        };
    }
});