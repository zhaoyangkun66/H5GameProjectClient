let global = {
    GameTypeGlobal: 1,//1巴西2智利
    isArraybuffer: true,
    //  ws: "ws://47.104.201.19:9016/dtsws"
    // ws: "ws://127.0.0.1:9016"
    ws: "ws://192.168.1.36:9000",
    isPush: false,
}
let GameTypeGlobal = 1
if (global.isPush) {
    if (GameTypeGlobal == 1) {
        global.ws = "wss://game.yotuwin.com:9003"  //bigerwin
    }
    else if (GameTypeGlobal == 2) {
        global.ws = "wss://game.yotuwin.com:9005"  //sol555
    }
    else if (GameTypeGlobal == 3) {
        global.ws = "wss://game.yotuwin.com:9004"  //luckyjuego
    }
}
else {

}

export {
    global
}
