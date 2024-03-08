let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GameEventMgr = undefined;
var o = require("../Define/GameEventDefine")
  , i = function(e) {
    function t() {
        var t = e.call(this) || this;
        return t.InBackground = false,
        t.JS_Name = "GameEventMgr",
        t.Log("Init"),
        t.InBackground = false,
        cc.game.on(cc.game.EVENT_HIDE, function() {
            t.InBackground = true
        }),
        cc.game.on(cc.game.EVENT_SHOW, function() {
            t.InBackground && (t.InBackground = false,
            cc.systemEvent.emit(o.GameEventDefine.GAME_EVENT_SHOW))
        }),
        t
    }
    return __extends(t, e),
    Object.defineProperty(t.prototype, "GetInBackground", {
        get: function() {
            return this.InBackground
        },
        enumerable: false,
        configurable: true
    }),
    t
}(require("./Singleton").Singleton);
n.GameEventMgr = i,
module.exports = n
