let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.safariTips = cc.find("line0", this.node)
    }
    ,
    t.prototype.start = function() {
        this.safariTips.active = !app.ComTool().isSafari()
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
