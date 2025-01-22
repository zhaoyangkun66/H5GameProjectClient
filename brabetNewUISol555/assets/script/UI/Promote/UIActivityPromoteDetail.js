var BaseForm = require("BaseForm")
var GameEventDefine = require("../../../Common/Define/GameEventDefine")
var UINameDefine = require("../../../Common/Define/UINameDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
        this.cloneItem = cc.find("bg/scrollview/view/li", this.node)
        this.parentNode = cc.find("bg/scrollview/view/content", this.node)
        this.icon_zw = cc.find("bg/scrollview/view/icon_zw", this.node)
        this.searchUid = cc.find("bg/editboxNode/editbox", this.node).getComponent(cc.EditBox)
        this.RegEvent(GameEventDefine.GameEventDefine.newagent_ActivityPromoteDetail, this.onNewagent_ActivityPromoteDetail)
        this.cloneItem.active = false
    }
    ,
    OnShow() {
        var today = new Date();
        this.dataRoot = {
            start_date: new Date(today.getTime() - 864e5 * (1000 - 1)).format("yyyy-MM-dd"),
            end_date: today.format("yyyy-MM-dd"),
            isvalidType: 2,
            searchUid: 0
        }
        app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(this.dataRoot)
    }
    ,
    onNewagent_ActivityPromoteDetail(data) {
        if (!data.record_list) {
            data.record_list = []
        }
        if (!data.platename_list) {
            data.platename_list = []
        }
        this.UpdateDirectOrderDetail(data)
        this.setTypeNode()
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
            app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(dataRoot)
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
        this.icon_zw.active = ((data.record_list.length == 0) && (data.page == 1))
        // this.parentNode.removeAllChildren();
        for (var e = 0; e < data.record_list.length; e++) {
            var t = data.record_list[e]
                , n = cc.instantiate(this.cloneItem);
            if (e % 2) {
                n.color = cc.color(28, 30, 35)
            } else {
                n.color = cc.color(32, 35, 41)
            }
            n.getChildByName("name").getChildByName("name").getComponent(cc.Label).string = t.uid
            if (t.isvalid == 1) {
                n.getChildByName("isEffective").getChildByName("isEffective").color = cc.color(6, 176, 5)
                n.getChildByName("isEffective").getChildByName("isEffective").getComponent(cc.Label).string = "Sim"

            }
            else {
                n.getChildByName("isEffective").getChildByName("isEffective").color = cc.color(171, 63, 53)
                n.getChildByName("isEffective").getChildByName("isEffective").getComponent(cc.Label).string = "Não"
            }
            n.getChildByName("createTime").getChildByName("createTime").getComponent(cc.Label).string = t.record_time
            {
                let details = n.getChildByName("details").getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "ActivityPromoteDetail2ClickEvent"
                EventHandler.customEventData = JSON.stringify({ taskstate: t.taskstate, taskname_list: data.taskname_list })
                details.clickEvents = []
                details.clickEvents.push(EventHandler)
            }
            n.active = true
            this.parentNode.addChild(n)
        }
    },
    ActivityPromoteDetail2ClickEvent(t, element) {
        var json = JSON.parse(element)
        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityPromoteDetail2, json);
    },
    setTypeNode() {
        let list = ["Válido ou não", "Válido", "Inválido"]
        var e = this
            , t = cc.find("bg/btn_select/toggleContainer", this.node);
        t.childrenCount > 0 || list.forEach(function (n) {
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
        if (t.length > 7) {
            cc.find("bg/btn_select/lbl", this.node).getComponent(cc.Label).string = t.substring(0, 7) + "..."
        }
        else {
            cc.find("bg/btn_select/lbl", this.node).getComponent(cc.Label).string = t
        }
        if (t == "Válido ou não") {
            this.dataRoot.isvalidType = 2
            this.dataRoot.page = 1
            app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(this.dataRoot)
        }
        else if (t == "Válido") {
            this.dataRoot.isvalidType = 0
            this.dataRoot.page = 1
            app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(this.dataRoot)
        }
        else if (t == "Inválido") {
            this.dataRoot.isvalidType = 1
            this.dataRoot.page = 1
            app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(this.dataRoot)
        }
    },
    onsearchUid() {
        this.dataRoot.searchUid = this.searchUid.string
        this.dataRoot.page = 1
        app.PromoteMainManager().ReqNewagent_ActivityPromoteDetail(this.dataRoot)
    },
    OnClick(e) {
        if ("btn_select" == e)
            this.openBtnLayerNode()
        else if ("icon_search" == e) {
            this.onsearchUid()
        }
    }
});