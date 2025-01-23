let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
  , o = require("../../autoui/prefab/auto_Game_1050Help")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.menu
  , l = (a.property,
function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.ui = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnCreateInit = function() {
        this.JS_Name = "Game_1050Help"
    }
    ,
    e.prototype.OnLoad = function() {
        this.ui = this.node.addComponent(o.default),
        this.ui.AutoBindEvent(this)
    }
    ,
    e.prototype.OnShow = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e]
    }
    ,
    e.prototype.OnClick = function() {}
    ,
    e.prototype.OnClose = function() {
        for (var t = [], e = 0; e < arguments.length; e++)
            t[e] = arguments[e]
    }
    ,
    __decorate([r, s("UI/prefab/Game_1050Help")], e)
}(n.default));
i.default = l,
module.exports = i
