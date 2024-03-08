let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.onRequestSent = n.onRequestReceived = void 0,
n.onRequestReceived = function(t, i) {
    var n = System.get("automation") && System.get("automation").GameData;
    n && n.emit("RequestReceived", {
        error: t,
        result: i
    })
}
,
n.onRequestSent = function() {
    var t = System.get("automation") && System.get("automation").GameData;
    t && t.emit("RequestSent")
}
,
module.exports = n
