let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
  , i = require("../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnEnable = function() {
        app.Client.OnEvent(i.GameEventDefine.UpdateMoveStatus, false)
    }
    ,
    t.prototype.OnDisable = function() {
        app.Client.OnEvent(i.GameEventDefine.UpdateMoveStatus, true)
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
