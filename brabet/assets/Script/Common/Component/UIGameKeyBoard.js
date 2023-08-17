let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.KeyBoardType = undefined;
var o = require("../Base/UIBaseComponent")
  , i = require("../Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.showLabel = null,
        t.obNode = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        var e = this;
        this.JS_Name = "UIGameKeyBoard",
        this.node.children.forEach(function(t) {
            e.BindButtonEvent(t.getComponent(cc.Button), "OnClick_BtnWnd")
        })
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.SetObNode = function(e) {
        this.obNode = e.node,
        this.showLabel = e.label
    }
    ,
    t.prototype.OnClick = function(e) {
        if (this.Log(e),
        "button_close" === e)
            return this.node.active = false,
            void this.obNode.emit(i.GameEventDefine.KEYBOARD_DOWN, c.CLOSE);
        if ("button_del" !== e) {
            var t = e.charAt(e.length - 1);
            if (this.showLabel) {
                var n = this.showLabel.string + t;
                "0" == n[0] && (n = n.substring(1, n.length)),
                n.length <= 8 && (this.showLabel.string = n)
            }
            this.obNode.emit(i.GameEventDefine.KEYBOARD_DOWN, Number(t))
        } else {
            if (this.showLabel) {
                var o = this.showLabel.string;
                this.showLabel.string = o.substring(0, o.length - 1),
                0 == this.showLabel.string.length && (this.showLabel.string = "0")
            }
            this.obNode.emit(i.GameEventDefine.KEYBOARD_DOWN, c.DEL)
        }
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s;
var c = function() {
    function e() {}
    return e.DEL = -1,
    e.CLOSE = -2,
    e
}();
n.KeyBoardType = c,
module.exports = n
