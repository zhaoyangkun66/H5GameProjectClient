let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Click = function(e, t) {
        var n = t.indexOf("link_:");
        if (n > -1)
            return t = t.replace("link_:", ""),
            void app.InteractionMgr().SendWndEvent(Number(t));
        (n = t.indexOf("url_:")) > -1 && (t = t.replace("url_:", ""),
        cc.sys.openURL(t))
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
