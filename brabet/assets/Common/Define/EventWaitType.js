let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.EventWaitType = undefined,
function(e) {
    e[e.WaitLoading = 0] = "WaitLoading",
    e[e.RemoveLoading = 1] = "RemoveLoading",
    e[e.OpenNet = 2] = "OpenNet",
    e[e.ReceiveNet = 3] = "ReceiveNet",
    e[e.OpenCenterNet = 4] = "OpenCenterNet",
    e[e.ReceiveCenterNet = 5] = "ReceiveCenterNet",
    e[e.OpenRoomNet = 6] = "OpenRoomNet",
    e[e.ReceiveRoomNet = 7] = "ReceiveRoomNet",
    e[e.OpenAppStorePay = 8] = "OpenAppStorePay",
    e[e.CloseAppStorePay = 9] = "CloseAppStorePay",
    e[e.CreateRoomBegin = 10] = "CreateRoomBegin",
    e[e.CreateRoomEnd = 11] = "CreateRoomEnd",
    e[e.CreateFormBegin = 12] = "CreateFormBegin",
    e[e.CreateFormEnd = 13] = "CreateFormEnd",
    e[e.LoadSceneBegin = 14] = "LoadSceneBegin",
    e[e.LoadSceneEnd = 15] = "LoadSceneEnd",
    e[e.OpenAdvertising = 16] = "OpenAdvertising",
    e[e.CloseAdvertising = 17] = "CloseAdvertising",
    e[e.OpenWaitLogin = 18] = "OpenWaitLogin",
    e[e.CloseWaitLogin = 19] = "CloseWaitLogin",
    e[e.OpenNetNow = 20] = "OpenNetNow",
    e[e.ReceiveNetNow = 21] = "ReceiveNetNow",
    e[e.Close = 100] = "Close"
}(n.EventWaitType || (n.EventWaitType = {})),
module.exports = n
