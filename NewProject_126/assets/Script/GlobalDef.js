//window.channelPlatform = 0
window.clientVersion = 25
window.channelPlatformName = "Test"
window.PlatformID = 0
window.channelID = 4 //1微信2百度3微信马甲包4手机注册网页版本5qq小游戏6oppo小游戏7quickSDKH58quickSDKH5微端9趣头条10彩猫11今日头条12微信小游戏公众号登入13微信小游戏android登入  50苹果100google登入 
window.display = cc.winSize
window.hideShopBuy = false
window.hideExchangeRedPacket2 = false
window.hideExchangeRedPacket = true
window.hideFirstPay = false
window.canUpdateElapsed = false
window.RoomOffLine = false //房间断线
window.RoomNeedUpdateData = false //刷新房间数据
//window.networkConnections = new Date().getTime() - 5000
window.onLoginTimeInterval = new Date().getTime() - 5000
window.GameLobbySceneHouTai = false //注册是否切换后台
window.FishFightSceneHouTai = false //注册是否切换后台
window.shareIndexType = 0 //0无1新手福利
window.GameLobbySceneHouTaiTime = new Date().getTime()
window.platformVersionOppo = '' //oppo平台版本号
window.ChannelPlatformType = 0 //用户系统类型
window.AutoCheckRedPacketTypeIndex = 0 //用户自动打开红包
window.wxSmallProgramPayWxappid = 'wxd26d0ab0df6307e5' //小程序跳转id
window.NewUserWelfareLayerSubscribeMessage = false //小程序跳转id
window.RedPacketOpenEffectViewShowAni = false
window.newPlayRedpacketRoomID = 1901
window.G_isOffline = false //房间断线未知原因
window.G_isOfflineCC = false //房间断线客户端网络原因
window.G_isOfflineHT = false //房间断线客户端退出后台原因
window.onOfflineTimeInterval = new Date().getTime() - 5000
window.G_shopOrdersWeChat = []
window.G_shopOrdersWeChatCheck = []
window.G_ETHWithdrawalAndRecharge = true
window.G_LanguageType = "zh"
window.G_LanguageType = "en"

if (G_ETHWithdrawalAndRecharge == true) {
    hideExchangeRedPacket = false
}
if (channelID == 4) {
    PlatformID = 4
    channelPlatformName = "H5"
}
else if (channelID == 7) {
    PlatformID = 7
    channelPlatformName = "quickSDK"
}
else if (channelID == 8) {
    PlatformID = 8
    channelPlatformName = "quickSDKMicro"
}
else if (channelID == 9) {
    PlatformID = 9
    channelPlatformName = "QTT"
}
else if (channelID == 10) {
    PlatformID = 10
    channelPlatformName = "CM"
}
else if (channelID == 12) {
    PlatformID = 12
    channelPlatformName = "WeCHatH5"
}

if (cc.sys.platform == cc.sys.WECHAT_GAME) {
    window.PayServerAddr = 'https://wxauth.11478.com:2013/'
    window.LobbyServerAddr = 'wss://wxauth.11478.com:2011'
    if (channelID == 0) {
        channelID = 1
    }
    channelID = 1
}
else {
    if (cc.sys.isBrowser) {
        // hideShopBuy = true
        //hideExchangeRedPacket = true
        hideFirstPay = true
        window.PayServerAddr = 'https://wxauth.11478.com:2013/'
        window.LobbyServerAddr = 'wss://wxauth.11478.com:2011'
       // window.LobbyServerAddr = 'ws://fish.qiquwa.com:1011'
        //window.PayServerAddr = 'http://127.0.0.1:8080/'
        //window.LobbyServerAddr = 'ws://127.0.0.1:1011'
    }
    else {
        window.PayServerAddr = 'https://wxauth.11478.com:2013/'
        window.LobbyServerAddr = 'ws://fish.qiquwa.com:1011'
        //  window.PayServerAddr = 'http://127.0.0.1:8080/'
        //  window.LobbyServerAddr = 'ws://127.0.0.1:1011'
    }
}
