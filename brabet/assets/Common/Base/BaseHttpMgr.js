let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BaseHttpMgr = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var t = [], n = 0; n < arguments.length; n++)
            t[n] = arguments[n];
        e.prototype.Init.call(this, t),
        this.JS_Name = "BaseHttpMgr"
    }
    ,
    t
}(require("./BaseGameMgr").BaseGameMgr);
n.BaseHttpMgr = o,

module.exports = n
