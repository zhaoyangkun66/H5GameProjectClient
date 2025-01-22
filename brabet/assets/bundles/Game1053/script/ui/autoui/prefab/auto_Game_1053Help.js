let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/AutoBaseComponent")
  , o = cc._decorator.ccclass
  , a = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.onLoad = function() {

    }
    ,
    e.prototype.AutoBindEvent = function() {}
    ,
    e.URL = "db://assets/bundles/Game1053/prefab/Game_1053Help.prefab",
    __decorate([o], e)
}(n.default);
i.default = a,
module.exports = i
