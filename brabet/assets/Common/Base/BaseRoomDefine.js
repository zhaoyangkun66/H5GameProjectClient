let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BaseRoomRouterType = n.BaseRoomDefine = undefined;
var o = function() {
    function e() {}
    return e.UserAuth = "gate.user.auth",
    e.UserKick = "gate.user.kick",
    e
}();
n.BaseRoomDefine = o,
function(e) {
    e[e.JoinRoom = 0] = "JoinRoom",
    e[e.GetRoomInfo = 1] = "GetRoomInfo",
    e[e.LeaveRoom = 2] = "LeaveRoom"
}(n.BaseRoomRouterType || (n.BaseRoomRouterType = {}))

module.exports = n
