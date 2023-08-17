let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.MenuManager = undefined;
var o = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.FirstLogin = true,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "MenuManager",
        this.Log("Init")
    }
    ,
    Object.defineProperty(t.prototype, "GetFirstLogin", {
        get: function() {
            return this.FirstLogin && !app.ComTool().H5Platform()
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "SetFirstLogin", {
        set: function(e) {
            this.FirstLogin = e
        },
        enumerable: false,
        configurable: true
    }),
    t
}(require("../../Base/Singleton").Singleton);
n.MenuManager = o,
module.exports = n
