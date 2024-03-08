let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./Base/BaseComponent")
  , i = require("./Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.MoveStatus = true,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.JS_Name = "UIRoot",
        app.Client.RegEvent(i.GameEventDefine.UpdateMoveStatus, this.OnUpdateMoveStatus, this)
    }
    ,
    t.prototype.OnUpdateMoveStatus = function(e) {
        this.MoveStatus = e
    }
    ,
    t.prototype.OnMouseDown = function(e) {
        app.Client.OnEvent(i.GameEventDefine.OnMouseDown, e)
    }
    ,
    t.prototype.OnMouseUp = function(e) {
        app.Client.OnEvent(i.GameEventDefine.OnMouseUp, e)
    }
    ,
    t.prototype.OnMouseMove = function(e) {
        this.MoveStatus && app.Client.OnEvent(i.GameEventDefine.OnMouseMove, e)
    }
    ,
    t.prototype.OnMouseWheel = function(e) {
        app.Client.OnEvent(i.GameEventDefine.OnMouseWheel, e)
    }
    ,
    t.prototype.InitLayer = function() {
        this.node.on(cc.Node.EventType.TOUCH_START, this.OnMouseDown, this, true),
        this.node.on(cc.Node.EventType.TOUCH_END, this.OnMouseUp, this, true),
        this.node.on(cc.Node.EventType.TOUCH_CANCEL, this.OnMouseUp, this, true),
        this.node.on(cc.Node.EventType.MOUSE_MOVE, this.OnMouseMove, this, true)
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
