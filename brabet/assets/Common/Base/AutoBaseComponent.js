let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./BaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.JS_Name = "AutoBaseComponent",
        t
    }
    return __extends(t, e),
    t.prototype.AutoBindButtonEvent = function(e, t, n, o) {
        undefined === o && (o = "");
        var i = new cc.Component.EventHandler;
        i.target = e.node,
        i.component = e.JS_Name,
        i.handler = n,
        i.customEventData = o,
        t ? (t.clickEvents = [],
        t.clickEvents.push(i)) : e.ErrLog("\u6309\u94ae\u6ca1\u6709\u6302\u5728\u63a7\u4ef6\u4e0a")
    }
    ,
    t.prototype.AutoBindToggleEvent = function(e, t, n, o) {
        undefined === o && (o = ""),
        this.Log("BindToggleEvent");
        var i = new cc.Component.EventHandler;
        i.target = e.node,
        i.component = e.JS_Name,
        i.handler = n,
        i.customEventData = o,
        t ? (t.checkEvents = [],
        t.checkEvents.push(i)) : e.ErrLog("\u6309\u94ae\u6ca1\u6709\u6302\u5728\u63a7\u4ef6\u4e0a")
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
