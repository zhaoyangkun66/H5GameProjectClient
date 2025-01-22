var BaseForm = require("BaseForm")
var UINameDefine = require("UINameDefine")
var GameEventDefine = require("GameEventDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },

    OnCreateInit() {
        this.RegEvent(GameEventDefine.GameEventDefine.GetGongGaoDetail, this.onGetGongGaoDetail)
        this.Item = cc.find("bg/scrollview/Item", this.node)
        this.content = cc.find("bg/scrollview/content", this.node)
        this.icon_zw = cc.find("bg/scrollview/icon_zw", this.node)
        this.Item.active = false
    },
    OnShow() {
        let data = arguments[0]
        this.data = data
        this.updateGongGaoAll()
    },
    onGetGongGaoDetail(send) {
        for (let index = 0; index < this.data.length; index++) {
            const element = this.data[index];
            if (send.id == element.id) {
                element.status = 1
                break
            }
        }
        this.updateGongGaoAll()
    },
    updateGongGaoAll() {
        let data = this.data
        this.content.removeAllChildren()
        this.icon_zw.active = data.length == 0
        for (var index = 0; index < data.length; index++) {
            let element = data[index]
            let Item = cc.instantiate(this.Item);
            Item.getChildByName("title").getChildByName("title").getComponent(cc.RichText).string = element.content

            // this.Item.node.x = this.txtContentview.width
            // let width = this.txtContentview.width + this.Item.node.width
            // let moveact = []
            // moveact[0] = cc.moveBy(width / 70, cc.v2(-width, 0))
            // moveact[1] = cc.callFunc(this.RunTxtAct, this)

            // this.txtContent.node.runAction(cc.sequence(
            //     moveact[0], moveact[1]))

            Item.getChildByName("time").getComponent(cc.Label).string = element.create_time
            if (element.status == 1) {
                Item.getChildByName("RedDot").active = false
                Item.getChildByName("isRead").color = cc.color(104, 112, 112)
                Item.getChildByName("isRead").getComponent(cc.Label).string = "Lidos"
            }
            else {
                Item.getChildByName("RedDot").active = true
                Item.getChildByName("isRead").color = cc.color(255, 255, 255)
                Item.getChildByName("isRead").getComponent(cc.Label).string = "Não lidos"
            }
            {
                let ItemEvent = Item.getComponent(cc.Button)
                let EventHandler = new cc.Component.EventHandler;
                EventHandler.target = this.node
                EventHandler.component = this.JS_Name
                EventHandler.handler = "onItemEvent"
                EventHandler.customEventData = JSON.stringify(element)
                ItemEvent.clickEvents = []
                ItemEvent.clickEvents.push(EventHandler)
            }
            Item.active = true
            this.content.addChild(Item)
        }
    },
    onItemEvent(t, element) {
        var json = JSON.parse(element)
        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIGongGao, json);
    },
    OnClick(e) {

    },
});
