var BaseForm = require("BaseForm")
var GameEventDefine = require("GameEventDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {
    },

    OnCreateInit() {
        this.cloneItem = cc.find("bg/scrollview/view/li", this.node)
        this.parentNode = cc.find("bg/scrollview/view/content", this.node)
        this.RegEvent(GameEventDefine.GameEventDefine.newagent_myPerformanceDetail, this.onNewagent_myPerformanceDetail)
        this.cloneItem.active = false
    },
    OnShow() {
        this.dataRoot = arguments[0]
        app.PromoteMainManager().ReqNewagent_myPerformanceDetail(this.dataRoot)
    },
    onNewagent_myPerformanceDetail(data) {
        if (data.page == 1) {
            this.n_page = 1
            this.parentNode.removeAllChildren()
        }
        if (!data.record_list) {
            data.record_list = []
        }
        if (data.record_list.length >= 15) {
            this.n_IsSend = true;
        }
        else {
            this.n_IsSend = false;
        }
        // this.parentNode.removeAllChildren();
        for (var e = 0; e < data.record_list.length; e++) {
            var t = data.record_list[e]
                , n = cc.instantiate(this.cloneItem);
            if (e % 2) {
                n.color = cc.color(28, 30, 35)
            } else {
                n.color = cc.color(32, 35, 41)
            }
            n.getChildByName("VIP").getChildByName("VIP").getChildByName("VIP").getComponent(cc.Label).string = "V" + t.vip
            n.getChildByName("id").getChildByName("id").getComponent(cc.Label).string = t.uid
            n.getChildByName("myPerformance").getChildByName("myPerformance").getComponent(cc.Label).string = t.per_amount
            // n.getChildByName("memberProfitLoss").getChildByName("memberProfitLoss").getComponent(cc.Label).string = t.lucro_amount
            if (t.lucro_amount >= 0) {
                // n.getChildByName("memberProfitLoss").getChildByName("memberProfitLoss").color = cc.color(171, 63, 53)
                n.getChildByName("memberProfitLoss").getComponent(cc.RichText).string = "Lucro e perda de membro <color=#AB3F35>" + t.lucro_amount + "</color>"
            }
            else {
                // n.getChildByName("memberProfitLoss").getChildByName("memberProfitLoss").color = cc.color(6, 176, 5)
                n.getChildByName("memberProfitLoss").getComponent(cc.RichText).string = "Lucro e perda de membro <color=#06B005>" + t.lucro_amount + "</color>"
            }

            n.getChildByName("discount").getChildByName("discount").getComponent(cc.Label).string = t.resgatar_amount
            {
                let btn_copy = n.getChildByName("id").getChildByName("btn_copy").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "copyClickEvent"
                EventHandler.customEventData = JSON.stringify(t.uid)
                btn_copy.clickEvents = []
                btn_copy.clickEvents.push(EventHandler)
            }
            n.active = true
            this.parentNode.addChild(n)
        }
        cc.find("bg/title/settleDay", this.node).getComponent(cc.Label).string = data.record_time
        cc.find("bg/title/directPerformance", this.node).getComponent(cc.Label).string = data.total_amount
        this.parentNode.getComponent(cc.Layout).updateLayout()
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
            dataRoot.page = this.n_page
            app.PromoteMainManager().ReqNewagent_myPerformanceDetail(dataRoot)
        }
    },
    copyClickEvent(t, element) {
        app.NativeMgr().copyToClipBoard(element)
    },
    OnClick() {

    }
});
