
var BaseForm = require("BaseForm")
cc.Class({
    extends: BaseForm.default,

    properties: {
    },

    OnCreateInit() {
        this.Item = cc.find("bg/scrollview/view/Item", this.node)
        this.content = cc.find("bg/scrollview/view/content", this.node)
        this.Item.active = false
    },
    OnShow() {
        let data = arguments[0]
        this.dataRoot = data
        cc.find("bg/title/Data", this.node).getComponent(cc.Label).string = data.start_date + " ~ " + data.end_date
        cc.find("bg/titleLable", this.node).getComponent(cc.Label).string = data.uid + " do subordinado"
        this.initView(data)
    },
    initView(dataRoot) {
        if (dataRoot.page == 1) {
            this.n_page = 1
            this.content.removeAllChildren()
        }
        let data = dataRoot.record_list
        if (data.length >= 15) {
            this.n_IsSend = true;
        }
        else {
            this.n_IsSend = false;
        }
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
            if (element.online == 1) {
                Item.getChildByName("id").getChildByName("state").getComponent(cc.Label).string = "Online"
                Item.getChildByName("id").getChildByName("state").color = cc.color(6, 176, 5)
            }
            else {
                Item.getChildByName("id").getChildByName("state").getComponent(cc.Label).string = "Offline"
                Item.getChildByName("id").getChildByName("state").color = cc.color(255, 255, 255)
            }
            if (element.agent_count > 0) {
                let subordinate = Item.getChildByName("subordinate").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "directReportClickEvent"
                EventHandler.customEventData = JSON.stringify({ start: dataRoot.start_date, end: dataRoot.end_date, memberID: element.uid, isOtherView: true })
                subordinate.clickEvents = []
                subordinate.clickEvents.push(EventHandler)
                Item.getChildByName("subordinate").getComponent(cc.RichText).string = "Subordinados Dele <color=#DCB154><u>" + element.agent_count + "</u></color>"
            }
            else {
                Item.getChildByName("subordinate").getComponent(cc.RichText).string = "Subordinados Dele <color=#FFFFFF>" + element.agent_count + "</color>"
            }
            Item.getChildByName("recharge").getChildByName("recharge").getComponent(cc.Label).string = element.agent_total_pay
            Item.getChildByName("validBets").getChildByName("validBets").getComponent(cc.Label).string = element.total_bet_gold;
            if (element.account_state == 0) {
                Item.getChildByName("bettingStatus").getComponent(cc.RichText).string = "Estado <color=#06B005>Normal</color>"
            }
            else if (element.account_state == 1) {
                Item.getChildByName("bettingStatus").getComponent(cc.RichText).string = "Estado <color=#C12929>Proibido de entrar no jogo</color>"
            }
            else if (element.account_state == 2) {
                Item.getChildByName("bettingStatus").getComponent(cc.RichText).string = "Estado <color=#C12929>Retiradas proibidas</color>"
            }
            else if (element.account_state == 3) {
                Item.getChildByName("bettingStatus").getComponent(cc.RichText).string = "Estado <color=#C12929>Proibição de receber bônus</color>"
            }
            Item.getChildByName("loginDate").getChildByName("loginDate").getComponent(cc.Label).string = element.login_time;
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
        this.content.getComponent(cc.Layout).updateLayout()
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
            app.PromoteMainManager().ReqNewagent_directReport({ start: dataRoot.start_date, end: dataRoot.end_date, memberID: dataRoot.uid, isOtherView: true, page: this.n_page })
        }
    },
    directReportClickEvent(t, element) {
        var json = JSON.parse(element)
        app.PromoteMainManager().ReqNewagent_directReport(json)
    },
    copyClickEvent(t, element) {
        app.NativeMgr().copyToClipBoard(element)
    },
    OnClick() {

    }
});
