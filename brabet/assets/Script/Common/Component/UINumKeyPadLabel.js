let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Define/UINameDefine")
  , i = require("../Define/GameEventDefine")
  , a = require("../Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = r.disallowMultiple
  , p = r.menu
  , d = function(e) {
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
    t.prototype.onLoad = function() {
        if (app.UserManager().GetUserInfo) {
            var e = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().GetUserInfo.roomMode);
            e && (this.limit = app.GameConfigManager().GameBetLimit(e.GID))
        }
        this.node.on(cc.Node.EventType.TOUCH_END, this.OnBtnBetEnter, this)
    }
    ,
    t.prototype.OnNodeShow = function() {
        this.normal && (this.normal.active = 0 == this.label.string.length)
    }
    ,
    t.prototype.setCustomEvent = function(e) {
        this.CustomEvent = e
    }
    ,
    t.prototype.OnBtnBetEnter = function() {
        this.label ? (app.FormManager().ShowForm(o.UINameDefine.UIKeyBoard, {
            label: this.label,
            limit: this.limit,
            type: this.enterType,
            moveNode: this.moveNode
        }),
        this.normal && (this.normal.active = false),
        -99 != this.CustomEvent && app.Client.OnEvent(i.GameEventDefine.GetButtonKey, this.CustomEvent)) : cc.error("faild this.label")
    }
    ,
    __decorate([c({
        type: cc.Label,
        tooltip: "\u8f93\u5165\u6587\u672c"
    })], t.prototype, "label", undefined),
    __decorate([c({
        type: cc.Node,
        tooltip: "\u9ed8\u8ba4\u663e\u793a\u7684\u6587\u672c"
    })], t.prototype, "normal", undefined),
    __decorate([c({
        type: cc.Node,
        tooltip: "\u5f39\u51fa\u81ea\u5b9a\u4e49\u952e\u76d8\u65f6 \u9700\u8981\u79fb\u52a8\u7684\u8282\u70b9"
    })], t.prototype, "moveNode", undefined),
    __decorate([c({
        type: cc.Enum(a.EnterType),
        tooltip: "\u8f93\u5165\u7c7b\u578b0\u5176\u4ed6 1:\u4e0b\u6ce8\u91d1\u989d,2\u8d54\u7387 3\u8f6e\u6570 */"
    })], t.prototype, "enterType", undefined),
    __decorate([c({
        tooltip: "\u6309\u94aekey\u503c\u7528\u6765\u4f20\u53c2,\u9ed8\u8ba4-99"
    })], t.prototype, "CustomEvent", undefined),
    __decorate([s, l(), p("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/UINumKeyPadLabel")], t)
}(cc.Component);
n.default = d,
module.exports = n
