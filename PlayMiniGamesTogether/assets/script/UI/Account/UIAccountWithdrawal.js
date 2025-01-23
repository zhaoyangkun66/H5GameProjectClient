let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/DB/PageTrackManager")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/TrackEventName")
    , c = require("../../../Common/Define/UINameDefine")
    , p = cc._decorator
    , d = p.ccclass
    , h = p.property
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.nickname = null,
                t.labelTon = null,
                t.contentWithdrawal = null,
                t.cloneWithdrawal = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.GET_USER_WALLET, this.OnInitMyInfo)
                this.RegEvent(a.GameEventDefine.getWithdrawal, this.onGetWithdrawal)
                this.RegEvent(a.GameEventDefine.UnbindWallet, this.onUnbindWallet)
            }
            ,
            t.prototype.OnShow = function () {
                this.nickname.string = app.UserManager().GetUserInfo.nickname
                this.labelTon.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.ton)
                app.UserManager().RequestUserGetWithdrawal(0, 0)
            },
            t.prototype.OnInitMyInfo = function () {
                this.nickname.string = app.UserManager().GetUserInfo.nickname
                this.labelTon.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.ton)
            },
            t.prototype.onGetWithdrawal = function (data) {
                if (data.describe) {
                    app.GoldRewardManager().FormGoldReward({
                        gold: 0,
                        describe: data.describe,
                        type: 2//0金币 1ton
                    })
                    if (data.withdrawalList.length == 0) {
                        app.UserManager().RequestUserGetWithdrawal(0, 0)
                    }
                }
                let withdrawalList = data.withdrawalList
                this.contentWithdrawal.removeAllChildren();
                for (let index = 0; index < withdrawalList.length; index++) {
                    const element = withdrawalList[index];
                    let cloneWithdrawal = cc.instantiate(this.cloneWithdrawal);
                    cloneWithdrawal.active = true
                    cloneWithdrawal.getChildByName("labelTon").getComponent(cc.Label).string = element.ton + " TON"
                    cloneWithdrawal.maxNumberOfTimes = element.maxNumberOfTimes
                    if (element.maxNumberOfTimes == -1) {
                        cloneWithdrawal.getChildByName("numberOfTimes").active = false
                    }
                    else {
                        cloneWithdrawal.getChildByName("numberOfTimes").active = true
                        cloneWithdrawal.getChildByName("numberOfTimes").getComponent(cc.Label).string = element.numberOfTimes + "/" + element.maxNumberOfTimes
                    }
                    if (element.unlockTime == "" || element.unlockTime == "0") {
                        cloneWithdrawal.getChildByName("unlockTime").active = false
                    } else {
                        cloneWithdrawal.getChildByName("unlockTime").active = true
                        cloneWithdrawal.getChildByName("numberOfTimes").active = false
                        cloneWithdrawal.getChildByName("unlockTime").getComponent(cc.Label).string = ""
                    }
                    cloneWithdrawal.EndTime = Number(element.unlockTime) + Number(app.GameConfigManager().GetAsTime())
                    cloneWithdrawal.unlockTime = cloneWithdrawal.getChildByName("unlockTime").getComponent(cc.Label)

                    cloneWithdrawal.getChildByName("des").getComponent(cc.Label).string = element.des
                    var EventHandler = new cc.Component.EventHandler;
                    EventHandler.target = this.node
                    EventHandler.component = "UIAccountWithdrawal"
                    EventHandler.handler = "reqWithdrawal"
                    EventHandler.customEventData = JSON.stringify(element)
                    cloneWithdrawal.getComponent(cc.Button).clickEvents = []
                    cloneWithdrawal.getComponent(cc.Button).clickEvents.push(EventHandler);
                    this.contentWithdrawal.addChild(cloneWithdrawal)
                }
                var self = this;
                this.UpdateSeconds()
                this.unscheduleAllCallbacks()
                this.schedule(function () {
                    self.UpdateSeconds()
                }, 1)
            },
            t.prototype.UpdateSeconds = function () {
                let have = false
                for (let index = 0; index < this.contentWithdrawal.children.length; index++) {
                    const element = this.contentWithdrawal.children[index];
                    if (element.EndTime > 0) {
                        var e = app.GameConfigManager().GetAsTime()
                            , t = Number(element.EndTime) - e;
                        if (t < 1) {
                            element.EndTime = 0
                            element.getChildByName("unlockTime").active = false
                            if (element.maxNumberOfTimes >= 0) {
                                element.getChildByName("numberOfTimes").active = true
                            }
                        }
                        else {
                            element.unlockTime.string = app.TimeUtil().FormatTimeWithNum(t)
                        }
                        have = true
                    }
                }
                if (have == false) {
                    this.unscheduleAllCallbacks()
                }
            },
            t.prototype.onUnbindWallet = function (data) {
                app.UserManager().GetUserInfo.is_bind_wallet = false//表示绑定
                app.FormManager().ShowForm(c.UINameDefine.UIAccount)
                if (CC_BUILD) {
                    if (true) {
                        if (tonConnectUI && tonConnectUI.wallet) {
                            async function disconnect() {
                                const connectedWallet = await tonConnectUI.disconnect();
                                // Do something with connectedWallet if needed
                                console.log(connectedWallet);
                            }
                            // Call the function
                            disconnect().catch(error => {
                                // console.error("Error connecting to wallet:", error);
                            });
                        }
                    }

                    // var tonconnect = document.createElement("div");
                    // tonconnect.id = "ton-connect"
                    // tonconnect.style.position = "absolute"
                    // tonconnect.style.right = "60px"
                    // tonconnect.style.top = "0px"
                    // document.body.appendChild(tonconnect);
                    // tonConnectUI = new TON_CONNECT_UI.TonConnectUI({
                    //     manifestUrl: 'https://zhaoyangkun66.github.io/test/tonconnect-manifest.json',
                    //     buttonRootId: 'ton-connect'
                    // });
                    // tonConnectUI.uiOptions = {
                    //     twaReturnUrl: 'https://t.me/qwewqeTetrisBot/minitestapp'
                    // };
                    // tonConnectUI.onStatusChange(wallet => {
                    //     if (!wallet) {
                    //         return;
                    //     }

                    //     const tonProof = wallet.connectItems?.tonProof;

                    //     if (tonProof) {
                    //         if ('proof' in tonProof) {
                    //             // send proof to your backend
                    //             // e.g. myBackendCheckProof(tonProof.proof, wallet.account);
                    //             return;
                    //         }

                    //         console.error(tonProof.error);
                    //     }
                    // });
                }
            },
            t.prototype.reqWithdrawal = function (e, data) {
                data = JSON.parse(data)
                app.UserManager().RequestUserGetWithdrawal(1, data.id)
            },
            t.prototype.OnClick = function (e) {
                if ("btn_UnlinkWallet" == e) {
                    app.UserManager().RequestUserUnbindWallet()
                }
            }
            ,
            __decorate([h(cc.Label)], t.prototype, "nickname", undefined),
            __decorate([h(cc.Label)], t.prototype, "labelTon", undefined),
            __decorate([h(cc.Node)], t.prototype, "contentWithdrawal", undefined),
            __decorate([h(cc.Node)], t.prototype, "cloneWithdrawal", undefined),
            __decorate([d], t)
    }(o.default);
n.default = u,
    module.exports = n
