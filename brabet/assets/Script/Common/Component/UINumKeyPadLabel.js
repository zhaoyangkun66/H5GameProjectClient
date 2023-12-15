let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Define/UINameDefine"),
    i = require("../Define/GameEventDefine"),
    a = require("../Define/ShareDefine"),
    r = cc._decorator,
    s = r.ccclass,
    c = r.property,
    l = r.disallowMultiple,
    p = r.menu,
    d = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.label = null,
                t.normal = null,
                t.moveNode = null,
                t.enterType = a.EnterType.other,
                t.limit = 0,
                t.CustomEvent = -99,
                t
        }
        return __extends(t, e),
            t.prototype.onLoad = function () {
                if (app.UserManager().GetUserInfo) {
                    var e = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().GetUserInfo.roomMode);
                    e && (this.limit = app.GameConfigManager().GameBetLimit(e.GID))
                }
                this.node.on(cc.Node.EventType.TOUCH_END, this.OnBtnBetEnter, this)
            },
            t.prototype.OnNodeShow = function () {
                this.normal && (this.normal.active = 0 == this.label.string.length)
            },
            t.prototype.setCustomEvent = function (e) {
                this.CustomEvent = e
            },
            t.prototype.OnBtnBetEnter = function () {
                this.label ? (app.FormManager().ShowForm(o.UINameDefine.UIKeyBoard, {
                    label: this.label,
                    limit: this.limit,
                    type: this.enterType,
                    moveNode: this.moveNode
                }),
                    this.normal && (this.normal.active = false), -99 != this.CustomEvent && app.Client.OnEvent(i.GameEventDefine.GetButtonKey, this.CustomEvent)) : cc.error("faild this.label")
            },
            __decorate([c({
                type: cc.Label,
                tooltip: "输入文本"
            })], t.prototype, "label", undefined),
            __decorate([c({
                type: cc.Node,
                tooltip: "默认显示的文本"
            })], t.prototype, "normal", undefined),
            __decorate([c({
                type: cc.Node,
                tooltip: "弹出自定义键盘时 需要移动的节点"
            })], t.prototype, "moveNode", undefined),
            __decorate([c({
                type: cc.Enum(a.EnterType),
                tooltip: "输入类型0其他 1:下注金额,2赔率 3轮数 */"
            })], t.prototype, "enterType", undefined),
            __decorate([c({
                tooltip: "按钮key值用来传参,默认-99"
            })], t.prototype, "CustomEvent", undefined),
            __decorate([s, l(), p("自定义组件/UINumKeyPadLabel")], t)
    }(cc.Component);
n.default = d,
    module.exports = n
