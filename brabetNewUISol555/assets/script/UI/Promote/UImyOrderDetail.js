var BaseForm = require("BaseForm")
var GameEventDefine = require("../../../Common/Define/GameEventDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
        this.cloneItem = cc.find("bg/scrollview/view/li", this.node)
        this.parentNode = cc.find("bg/scrollview/view/content", this.node)
        this.RegEvent(GameEventDefine.GameEventDefine.newagent_directOrderDetail, this.onNewagent_directOrderDetail)
        this.cloneItem.active = false
    },
    OnShow() {
        this.dataRoot = arguments[0]
        this.dataRoot.platename = "All"
        app.PromoteMainManager().ReqNewagent_directOrderDetail(this.dataRoot)
    },
    onNewagent_directOrderDetail(data) {
        this.ShowData = data
        if (!data.record_list) {
            data.record_list = []
        }
        if (!data.platename_list) {
            data.platename_list = []
        }
        this.UpdateDirectOrderDetail(data)
        //   cc.find("bg/title/uid", this.node).getComponent(cc.Label).string = data.uid
        cc.find("bg/title/record_time", this.node).getComponent(cc.Label).string = data.record_time
        cc.find("bg/bottom/validBetTotal/validBetTotal", this.node).getComponent(cc.Label).string = data.total_bet
        cc.find("bg/bottom/totalBetCount/totalBetCount", this.node).getComponent(cc.Label).string = data.total_betcount
        cc.find("bg/bottom/profitTotal/profitTotal", this.node).getComponent(cc.Label).string = data.total_win
        this.setTypeNode()
    }
    ,
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
            app.PromoteMainManager().ReqNewagent_directOrderDetail(dataRoot)
        }
    },
    UpdateDirectOrderDetail(data) {
        if (data.page == 1) {
            this.n_page = 1
            this.parentNode.removeAllChildren()
        }
        if (data.record_list.length >= 15) {
            this.n_IsSend = true;
        }
        else {
            this.n_IsSend = false;
        }
        // this.parentNode.removeAllChildren();
        for (var e = 0; e < data.record_list.length; e++) {
          //  if (data.platename == "All" || data.record_list[e].platename == data.platename) {
                var t = data.record_list[e]
                    , n = cc.instantiate(this.cloneItem);
                if (e % 2) {
                    n.color = cc.color(28, 30, 35)
                } else {
                    n.color = cc.color(32, 35, 41)
                }
                n.getChildByName("VIP").getChildByName("VIP").getComponent(cc.Label).string = "V" + t.vip
                n.getChildByName("id").getChildByName("id").getComponent(cc.Label).string = t.uid
                n.getChildByName("record_time").getChildByName("record_time").getComponent(cc.Label).string = t.record_time
                n.getChildByName("platform").getChildByName("platform").getComponent(cc.Label).string = t.platename
                n.getChildByName("name").getChildByName("name").getComponent(cc.Label).string = t.gamename
                n.getChildByName("validBets").getChildByName("validBets").getComponent(cc.Label).string = t.user_bet
                n.getChildByName("memberProfit").getChildByName("memberProfit").getComponent(cc.Label).string = t.user_win
                if (t.user_win >= 0) {
                    n.getChildByName("memberProfit").getChildByName("memberProfit").color = cc.color(171, 63, 53)
                }
                else {
                    n.getChildByName("memberProfit").getChildByName("memberProfit").color = cc.color(6, 176, 5)
                }
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
          //  }
        }
    }
    ,
    copyClickEvent(t, element) {
        app.NativeMgr().copyToClipBoard(element)
    },
    setTypeNode() {
        var e = this
            , t = cc.find("bg/btn_select/toggleContainer", this.node);
        t.childrenCount > 0 || this.ShowData.platename_list.forEach(function (n) {
            var o = cc.instantiate(cc.find("bg/btn_select/toggle1", e.node));
            cc.find("Background/lbl", o).getComponent(cc.Label).string = n,
                cc.find("checkmark/lbl", o).getComponent(cc.Label).string = n;
            var i = new cc.Component.EventHandler;
            i.target = e.node,
                i.component = e.JS_Name,
                i.handler = "SelectItemToggleCallBack",
                i.customEventData = n,
                o.getComponent(cc.Toggle).checkEvents = [],
                o.getComponent(cc.Toggle).checkEvents.push(i),
                o.active = true,
                t.addChild(o)
        })
    },
    openBtnLayerNode() {
        var e = cc.find("bg/btn_select/toggleContainer", this.node);
        e.active = !e.active
    },
    SelectItemToggleCallBack(e, t) {
        cc.find("bg/btn_select/toggleContainer", this.node).active = false
        cc.find("bg/btn_select/lbl", this.node).getComponent(cc.Label).string = t.substring(0, 7) + "..."
        //  this.UpdateDirectOrderDetail(t)
        let dataRoot = this.dataRoot
        dataRoot.page = 1
        dataRoot.platename = t
        app.PromoteMainManager().ReqNewagent_directOrderDetail(dataRoot)
    },
    OnClick(e) {
        if ("btn_select" == e)
            this.openBtnLayerNode()
        else {

        }
    }
});
