let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.property
    , c = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.Item = null,
                t.content = null,
                t.TypeItem = null,
                t.Typecontent = null,
                t.btn_helpNode = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIreturnCommissionProportion",
                    this.RegEvent(i.GameEventDefine.newagent_commissionsconfig, this.onNewagent_commissionsconfig)
            }
            ,
            t.prototype.OnEnable = function () {
                app.PromoteMainManager().ReqNewagent_commissionsconfig()
            }
            ,
            t.prototype.onNewagent_commissionsconfig = function (data) {
                if (!data) {
                    data = []
                }
                this.data = data

                this.Typecontent.removeAllChildren()
                let have = false
                for (const key in data) {
                    if (Object.prototype.hasOwnProperty.call(data, key)) {
                        let i = cc.instantiate(this.TypeItem);
                        i.getChildByName("Label").getComponent(cc.Label).string = key
                        i.getChildByName("checkmark").getChildByName("Label").getComponent(cc.Label).string = key
                        var EventHandler = new cc.Component.EventHandler;
                        EventHandler.target = this.node
                        EventHandler.component = this.JS_Name
                        EventHandler.handler = "SelectItemToggleCallBack"
                        EventHandler.customEventData = key
                        i.getComponent(cc.Toggle).checkEvents = []
                        i.getComponent(cc.Toggle).checkEvents.push(EventHandler)
                        i.active = true
                        i.parent = this.Typecontent
                        if (have == false) {
                            have = true
                            i.getComponent(cc.Toggle).isChecked = true
                            this.update_commissionsconfig(key)
                        }
                    }
                }
            },
            t.prototype.update_commissionsconfig = function (typeName) {
                let data = this.data
                this.content.removeAllChildren()
                for (var n = 0; n < data[typeName].length; n++) {
                    var o = data[typeName][n]
                    let i = cc.instantiate(this.Item);
                    if (n % 2) {
                        i.color = cc.color(28, 30, 35)
                    } else {
                        i.color = cc.color(32, 35, 41)
                    }
                    i.getChildByName("Valid").getComponent(cc.Label).string = o.usercount
                    i.getChildByName("performance").getComponent(cc.Label).string = o.betvalue / 10000
                    i.getChildByName("perRebateAmount").getComponent(cc.Label).string = o.ratevalue * 10000
                    i.active = true
                    i.parent = this.content
                }

            },
            e.prototype.SelectItemToggleCallBack = function (t, element) {
                this.update_commissionsconfig(element)
            },
            t.prototype.OnClick = function (e, t, n) {
                if ("btn_help" == e) {
                    this.btn_helpNode.active = !this.btn_helpNode.active
                }
                else if ("btn_helpClose" == e) {
                    this.btn_helpNode.active = false
                }
            }
            ,
            __decorate([s(cc.Node)], t.prototype, "Item", undefined),
            __decorate([s(cc.Node)], t.prototype, "content", undefined),
            __decorate([s(cc.Node)], t.prototype, "TypeItem", undefined),
            __decorate([s(cc.Node)], t.prototype, "Typecontent", undefined),
            __decorate([s(cc.Node)], t.prototype, "btn_helpNode", undefined),
            __decorate([r], t)
    }(o.default);
n.default = c,
    module.exports = n