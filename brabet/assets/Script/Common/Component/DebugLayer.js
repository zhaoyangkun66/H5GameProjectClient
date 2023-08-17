let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/UIBaseComponent")
  , i = require("../Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.btnDebug = null,
        t.UIDebug = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        var e = this;
        this.JS_Name = "DebugLayer",
        this.btnDebug = this.GetWndNode("Debug"),
        this.btnDebug.active = false,
        this.btnDebug.on(cc.Node.EventType.TOUCH_MOVE, function(t) {
            e.btnDebug.x += t.getDeltaX(),
            e.btnDebug.y += t.getDeltaY()
        }),
        this.RegEvent(i.GameEventDefine.SHOW_DEBUG_FORM, this.onShowDebugForm)
    }
    ,
    t.prototype.OnEnable = function() {
        app.ClientConfigManager().GetGlobalConfig.debug && (this.btnDebug.active = true)
    }
    ,
    t.prototype.onShowDebugForm = function(e) {
        this.btnDebug.active = e
    }
    ,
    t.prototype.OnClick = function(e) {
        var t = this;
        if ("BtnShowDebug" != e)
            "BtnHideDebug" != e || (this.node.active = false);
        else if (this.UIDebug)
            this.UIDebug.active = true;
        else
            try {
                app.ControlManager().CreateLoadPromise("Launch/Prefab/UIDebug", cc.Prefab, false).then(function(e) {
                    t.UIDebug = cc.instantiate(e),
                    cc.isValid(t.node) && t.node.addChild(t.UIDebug)
                })
            } catch (n) {}
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
