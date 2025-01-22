let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.IAutoBetInfo = n.MinesNode = n.gzStatus = n.Game550EventName = n.Game550HttpAPI = n.ImageUrl = void 0,
n.ImageUrl = {
    0: "icon_nomal",
    1: "icon_gold",
    2: "icon_boom",
    3: "icon_gold0",
    4: "icon_boom0",
    5: "icon_red"
};
var o = function() {
    function t() {}
    return t.MINES_SHOW_RESULT = "/single_game.sw_game/show_result",
    t.MINES_START_DEFAULT = "/single_game.sw_game/startDefault",
    t.MINES_BET = "/single_game.sw_game/bet",
    t.MINES_OPEN_POS = "/single_game.sw_game/open_position",
    t
}();
n.Game550HttpAPI = o;
var i, a = function() {
    function t() {}
    return t.MINES_BET_ERROR = "MINES_BET_ERROR",
    t
}();
n.Game550EventName = a,
function(t) {
    t[t.DEFAULT = 0] = "DEFAULT",
    t[t.OPENSTATUS = 1] = "OPENSTATUS",
    t[t.STAMPSTATUS = 2] = "STAMPSTATUS"
}(i = n.gzStatus || (n.gzStatus = {}));
var s = function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.isStatus = i.DEFAULT,
        e
    }
    return __extends(e, t),
    e
}(cc.Node);
n.MinesNode = s;
n.IAutoBetInfo = function() {}
,
module.exports = n
