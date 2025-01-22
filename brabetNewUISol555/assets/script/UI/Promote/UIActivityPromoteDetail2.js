
var BaseForm = require("BaseForm")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
        this.cloneItem = cc.find("bg/scrollview/view/li", this.node)
        this.parentNode = cc.find("bg/scrollview/view/content", this.node)
        this.cloneItem.active = false
    },
    OnShow() {
        let data = arguments[0]
        this.parentNode.removeAllChildren()
        for (let index = 0; index < data.taskstate.length; index++) {
            const n = cc.instantiate(this.cloneItem);
            if (index % 2) {
                n.color = cc.color(28, 30, 35)
            } else {
                n.color = cc.color(32, 35, 41)
            }
            if (data.taskstate[index] == 1) {
                n.getChildByName("name").color = cc.color(6, 176, 5)
                n.getChildByName("name").getComponent(cc.Label).string = data.taskname_list[index]

            }
            else {
                n.getChildByName("name").color = cc.color(255, 255, 255)
                n.getChildByName("name").getComponent(cc.Label).string = data.taskname_list[index]
            }
            n.active = true
            this.parentNode.addChild(n)
        }
    }
});