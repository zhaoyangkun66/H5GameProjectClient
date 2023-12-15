let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
    }
    ,
    t.prototype.OnShow = function(e) {
      
    },
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
