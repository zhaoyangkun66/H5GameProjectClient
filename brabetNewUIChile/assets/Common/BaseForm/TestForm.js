let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
