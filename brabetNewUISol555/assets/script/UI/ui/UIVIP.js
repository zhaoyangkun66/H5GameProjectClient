let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIVIP",
        this.RegEvent(i.GameEventDefine.VIP_LOADEND, this.OnVipLoadEnd)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0]
    }
    ,
    t.prototype.OnVipLoadEnd = function() {
        this.data && this.data.isjump && this.scheduleOnce(function() {
            app.Client.OnEvent(i.GameEventDefine.JUMP_SCROLL_PERCENT, .2)
        }, .5)
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
