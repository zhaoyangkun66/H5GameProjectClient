let appFacade = require('FishFacade');
let UIManager = require('UIManager');

cc.Class({
    extends: cc.Component,

    properties: {
        turntableNode: { default: null, type: cc.Node },
    },

    onLoad: function () {
        // let frameSize = cc.view.getFrameSize();
        // let rtFrame = frameSize.width / frameSize.height;
        // let deFrame = 1136 / 640;
        // if (rtFrame > 1704 / 640 || rtFrame < 1136 / 960) {
        //     cc.view.setDesignResolutionSize(1136, 640, cc.ResolutionPolicy.SHOW_ALL);
        //     this.node.addComponent(cc.Mask);
        // }
        // else if (rtFrame < deFrame) {
        //     cc.view.setDesignResolutionSize(1136, 640, cc.ResolutionPolicy.FIXED_WIDTH);
        // } else {
        //     cc.view.setDesignResolutionSize(1136, 640, cc.ResolutionPolicy.FIXED_HEIGHT);
        // }
        appFacade.registerMediator(this);

    },
    onDestroy: function () {
        appFacade.removeMediator(this.name);
        cc.log("onDestroyGameLobbyScene")
    },
    start: function () {




    },
    listNotificationInterests: function () {
        return [{
            evtType: FishConstants.LOGIN_GAME_FINISH,
            callback: this.loginFinish
        },
        {
            evtType: FishConstants.ON_GameLobbyScene_updateInfo,
            callback: this.updateInfo
        },
        {
            evtType: FishConstants.ON_RefrushInfo,
            callback: this.updateUserInfo
        },
        {
            evtType: FishConstants.ON_FreeGoldLayer_update,
            callback: this.updateFreeGoldButton
        },
        {
            evtType: FishConstants.ON_NewUserWelfareLayer_update,
            callback: this.updateNewUserWelfare
        },
        {
            evtType: FishConstants.ON_NewUserMissionLayer_update,
            callback: this.updateNewUserMission
        },
        {
            evtType: FishConstants.ON_SetGuideStepIDResult_updateStepID0,
            callback: this.updateStepID0
        }];

    },
    onOpenUserInfo: function () {
        UIManager.openUI(100)
    },
    onRankBtn: function () {
        UIManager.openUI(101)
    },
    onShopBtn: function () {
        if (!hideShopBuy) {
            UIManager.openUI(103)
        }
    },
    onturntableBtn: function () {
        let turntableNode = this.turntableNode
        let Panel_oddOut = turntableNode.getChildByName("Panel_oddOut")
        let Panel_oddIn = Panel_oddOut.getChildByName("Panel_oddIn")
        // for (let i = 0 - 1; i <= 4 + 10 + 1; i++) {
        //     let item = Panel_oddIn.getChildByName("BitmapFontLabel_odd" + (i + 2)).getComponent(cc.Label);
        //     item.string = data.seaGodenlarge_odd[(i + 5) % 5]
        // }
        let zhuan = cc.moveBy(4, cc.v2(0, -1400))

        let e = cc.delayTime(0)
        let c = cc.sequence(e, zhuan, cc.callFunc(function () {
            Panel_oddIn.y = -300
        })).repeatForever()

        Panel_oddIn.runAction(c)


        // let Panel_enlargeOddOut = turntableNode.getChildByName("Panel_enlargeOddOut")
        // let Panel_enlargeOddIn = Panel_enlargeOddOut.getChildByName("Panel_enlargeOddIn")
        // for (let i = 0 - 1; i <= 4 + 15 + 1; i++) {
        //     let item = Panel_enlargeOddIn.getChildByName("BitmapFontLabel_enlargeOdd" + (i + 2)).getComponent(cc.Label);
        //     item.string = data.seaGodenlarge_enlargeOdd[(i + 5) % 5]
        // }
        // let zhuan2 = cc.moveBy(7, cc.v2(0, -1500 - 100 * data.index_enlargeOdd)).easing(cc.easeExponentialOut(3))
        // let delay = cc.delayTime(1)
        // let fun2 = cc.callFunc(() => {

        // });
        // let seq = cc.sequence(zhuan2, delay, fun2)
        // Panel_enlargeOddIn.runAction(seq)

    },

    onbtEmail() {
        UIManager.openUI(107)
    },

    onbuttonInvitation() {
        UIManager.openUI(122)
    },

    onSetBtn() {
        UIManager.openUI(16)
    },

    onbtnGuiZu() {
        UIManager.openUI(110)
    },

    onbtnFreeGold() {
        UIManager.openUI(111)
    },

    onbtNewUserWelfare() {

    },

    onbtnSignUp() {
        UIManager.openUI(116)
    },

    onbtPiggyBank() {
        UIManager.openUI(118)
    },

    onbtnfirstPay() {
        UIManager.openUI(119)
    },

    onbtNewUserMission() {
        UIManager.openUI(125)
    },

    onbtnCarveUpBonusPool() {
        // UIManager.openUI(126)
    },
    onIntoRoom: function (ccc, index) {

    },
    onIntoCompetitionRoom: function () {
        UIManager.openUI(27)
    },
    // onBack: function () {
    //     cc.director.loadScene('GameLobbyLoginScene')
    // },
    onfastIntoRoom: function () {

    },
    loginFinish: function () {
        cc.director.loadScene('GameLoadingScene');
    },
    updateInfo: function () {

    },
    updateFreeGoldButton: function (data) {

    },

    updateUserInfo: function () {

    },

    updateNewUserWelfare: function (data) {

    },

    updateNewUserMission: function (data) {

    },

    updateStepID0: function (data) {

    }
});
