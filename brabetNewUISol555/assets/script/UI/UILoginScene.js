let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UILoginScene",
        this.RegEvent(i.GameEventDefine.UILoginClose, this.OnLoginClose)
    }
    ,
    t.prototype.OnLoginClose = function() {
        app.LoginManager().StartLogin()
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
