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
                t.labelGold = null,
                t.img_ItemCheck = [],
                t.SpinNode = null,
                t.nodeRecord = null,
                t.contentRecord = null,
                t.cloneRecord = null,
                t.moreNode = null,
                t.createTimerbtn_SPINState = false,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.GET_USER_WALLET, this.OnInitMyInfo),
                    this.RegEvent(a.GameEventDefine.getGoldAndTonRecord, this.onGetRecord)
                this.RegEvent(a.GameEventDefine.clickSPIN, this.onClickSPIN)
                this.RegEvent(a.GameEventDefine.BindWallet, this.onBindWallet)
            }
            ,
            t.prototype.OnShow = function () {
                this.nodeRecord.active = false
                this.SpinNode.active = true

                this.nickname.string =  "ID: " + app.UserManager().GetUserInfo.uid
                this.labelTon.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.ton)
                this.labelGold.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.gold)

                for (let index = 0; index < this.img_ItemCheck.length; index++) {
                    this.img_ItemCheck[index].active = false
                }
                this.page = 1
                this.type = 0
                app.UserManager().RequestUserGoldAndTonRecord(this.type, 20, this.page)
                app.Client.OnEvent(a.GameEventDefine.SELECT_TOPTOOGLE, 2)
            },
            t.prototype.OnInitMyInfo = function () {
                this.nickname.string = "ID: " + app.UserManager().GetUserInfo.uid
                this.labelTon.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.ton)
                this.labelGold.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.gold)
            },
            t.prototype.onGetRecord = function (data) {
                this.data = data
                this.node.active = true
                let recordList = data
                if (1 == this.page) {
                    if (recordList.length < 8) {
                        this.nodeRecord.getComponent(cc.Layout).enabled = false
                        this.nodeRecord.height = 1174
                    }
                    else {
                        this.nodeRecord.getComponent(cc.Layout).enabled = true
                    }
                    this.contentRecord.removeAllChildren();
                }
                for (let index = 0; index < recordList.length; index++) {
                    const element = recordList[index];
                    let cloneRecord = cc.instantiate(this.cloneRecord);
                    cloneRecord.active = true
                    cloneRecord.getChildByName("title").getComponent(cc.Label).string = element.title
                    if (element.type == 1) {
                        cloneRecord.getChildByName("icon1").active = true
                        cloneRecord.getChildByName("icon2").active = false
                    }
                    else {
                        cloneRecord.getChildByName("icon1").active = false
                        cloneRecord.getChildByName("icon2").active = true
                    }
                    if (element.score > 0) {
                        cloneRecord.getChildByName("score").getComponent(cc.Label).string = "+" + element.score
                        cloneRecord.getChildByName("score").color = cc.color().fromHEX("#51D17F")
                    } else {
                        cloneRecord.getChildByName("score").getComponent(cc.Label).string = element.score
                        cloneRecord.getChildByName("score").color = cc.color().fromHEX("#FF0000")
                    }
                    cloneRecord.getChildByName("recordtime").getComponent(cc.Label).string = new Date(Number(element.recordtime) * 1000).format("yyyy/MM/dd hh:mm:ss") //new Date(element.recordtime).format("yyyy/MM/dd hh:mm:ss")
                    this.contentRecord.addChild(cloneRecord)
                }
                this.OnsetPage(recordList.length)
            },
            t.prototype.OnsetPage = function (e) {
                //this.Records.parent.getComponent(cc.Layout).enabled = true,
                //   this.OnUpdateLayout(this.Records.parent),
                //  this.icon_zw.active = 0 == e && 1 == this.page,
                this.moreNode.active = e >= 10
                this.page > 1 && (this.page = e >= 10 ? this.page : this.page--)
            },
            t.prototype.onClickSPIN = function (data) {
                app.UserManager().GetUserInfo.gold = app.UserManager().GetUserInfo.gold - 10000
                this.labelGold.string = app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.gold)
                let self = this
                let spinItemIndex = 0
                let SPINItemTime = 0
                clearInterval(self.createTimerbtn_SPIN)
                self.createTimerbtn_SPINState = true
                self.createTimerbtn_SPIN = setInterval(function () {
                    //clearInterval(self.createTimerbtn_SPIN)
                    for (let index = 0; index < self.img_ItemCheck.length; index++) {
                        self.img_ItemCheck[index].active = false
                    }
                    self.img_ItemCheck[spinItemIndex].active = true
                    if (SPINItemTime >= 24 && spinItemIndex == data.spinItemIndex) {
                        clearInterval(self.createTimerbtn_SPIN)
                        if (data.ton > 0) {
                            app.GoldRewardManager().FormGoldReward({
                                gold: data.ton,
                                type: 1
                            })
                        }
                        self.createTimerbtn_SPINState = false
                    }
                    else {
                        SPINItemTime += 1
                        spinItemIndex += 1
                        if (spinItemIndex >= self.img_ItemCheck.length) {
                            spinItemIndex = 0
                        }
                    }
                }, 100)
                app.RedDotManager().OnLoadHallSuccess()
            },
            t.prototype.onBindWallet = function (data) {
                app.UserManager().GetUserInfo.is_bind_wallet = true
                app.FormManager().ShowForm(c.UINameDefine.UIAccountWithdrawal)
            },
            t.prototype.OnClick = function (e) {
                if ("btn_SPIN" == e) {
                    if (!this.createTimerbtn_SPINState) {
                        app.UserManager().RequestUserClickSPIN()
                    }
                }
                else if ("btn_Record" == e) {
                    if (this.nodeRecord.active) {
                        this.nodeRecord.active = false
                        this.SpinNode.active = true
                    }
                    else {
                        this.nodeRecord.active = true
                        this.SpinNode.active = false
                    }
                }
                else if ("btn_copy" == e) {
                    app.NativeMgr().copyToClipBoard("" + app.UserManager().GetUserInfo.uid);
                }
                else if ("btn_Withdrawal" == e) {
                    // app.UserManager().RequestUserBindWallet({
                    //     "address": "0:e07daf57a8eaff38a675a3b98f10c20fac62b2c5b2c6edb693fbe7e166dc7c6d",
                    //     "chain": "-239",
                    //     "walletStateInit": "te6cckECFgEAArEAAgE0ARUBFP8A9KQT9LzyyAsCAgEgAw4CAUgEBQLc0CDXScEgkVuPYyDXCx8gghBleHRuvSGCEHNpbnS9sJJfA+CCEGV4dG66jrSAINchAdB01yH6QDD6RPgo+kQwWL2RW+DtRNCBAUHXIfQFgwf0Dm+hMZEw4YBA1yFwf9s84DEg10mBAoC5kTDgcOIREAIBIAYNAgEgBwoCAW4ICQAZrc52omhAIOuQ64X/wAAZrx32omhAEOuQ64WPwAIBSAsMABezJftRNBx1yHXCx+AAEbJi+1E0NcKAIAAZvl8PaiaECAoOuQ+gLAEC8g8BHiDXCx+CEHNpZ2668uCKfxAB5o7w7aLt+yGDCNciAoMI1yMggCDXIdMf0x/TH+1E0NIA0x8g0x/T/9cKAAr5AUDM+RCaKJRfCtsx4fLAh98Cs1AHsPLQhFEluvLghVA2uvLghvgju/LQiCKS+ADeAaR/yMoAyx8BzxbJ7VQgkvgP3nDbPNgRA/btou37AvQEIW6SbCGOTAIh1zkwcJQhxwCzji0B1yggdh5DbCDXScAI8uCTINdKwALy4JMg1x0GxxLCAFIwsPLQiddM1zkwAaTobBKEB7vy4JPXSsAA8uCT7VXi0gABwACRW+Dr1ywIFCCRcJYB1ywIHBLiUhCx4w8g10oSExQAlgH6QAH6RPgo+kQwWLry4JHtRNCBAUHXGPQFBJ1/yMoAQASDB/RT8uCLjhQDgwf0W/LgjCLXCgAhbgGzsPLQkOLIUAPPFhL0AMntVAByMNcsCCSOLSHy4JLSAO1E0NIAURO68tCPVFAwkTGcAYEBQNch1woA8uCO4sjKAFjPFsntVJPywI3iABCTW9sx4ddM0ABRgAAAAD///4jFSoOVcUnePU8qYFDEUPPtIpJ5vms3woKZNmhz731wOCAK4yNe",
                    //     "publicKey": "8a95072ae293bc7a9e54c0a188a1e7da4524f37cd66f8505326cd0e7defae070"
                    // })
                    // app.FormManager().ShowForm(c.UINameDefine.UIAccountWithdrawal)
                    if (!app.UserManager().GetUserInfo.is_bind_wallet) {
                        if (CC_BUILD) {
                            if (!tonConnectUI) {
                                tonConnectUI = new TON_CONNECT_UI.TonConnectUI({
                                    manifestUrl: 'https://zhaoyangkun66.github.io/test/tonconnect-manifest.json'
                                });
                                tonConnectUI.uiOptions = {
                                    twaReturnUrl: 'https://t.me/qwewqeTetrisBot/minitestapp'
                                };
                            }
                            const currentWallet = tonConnectUI.wallet;
                            const currentWalletInfo = tonConnectUI.walletInfo;
                            const currentAccount = tonConnectUI.account;
                            const currentIsConnectedStatus = tonConnectUI.connected;
                            if (currentWallet) {
                                app.UserManager().RequestUserBindWallet(tonConnectUI.account)
                                // app.FormManager().ShowForm(c.UINameDefine.UIAccountWithdrawal)
                            }
                            else {
                                async function connectToWallet() {
                                    const connectedWallet = await tonConnectUI.connectWallet();
                                    // Do something with connectedWallet if needed
                                    console.log(connectedWallet);
                                    app.UserManager().RequestUserBindWallet(tonConnectUI.account)
                                }
                                // Call the function
                                connectToWallet().catch(error => {
                                    // console.error("Error connecting to wallet:", error);
                                });
                            }

                        }
                        else {
                            app.FormManager().ShowForm(c.UINameDefine.UIAccountWithdrawal)
                        }
                    }
                    else {
                        app.FormManager().ShowForm(c.UINameDefine.UIAccountWithdrawal)
                    }

                }
                else if ("toggle1" == e) {
                    this.page = 1
                    this.type = 0
                    app.UserManager().RequestUserGoldAndTonRecord(this.type, 20, this.page)
                }
                else if ("toggle2" == e) {
                    this.page = 1
                    this.type = 2
                    app.UserManager().RequestUserGoldAndTonRecord(this.type, 20, this.page)
                }
                else if ("toggle3" == e) {
                    this.page = 1
                    this.type = 1
                    app.UserManager().RequestUserGoldAndTonRecord(this.type, 20, this.page)
                }
                else if ("more" == e) {
                    this.page++
                    app.UserManager().RequestUserGoldAndTonRecord(this.type, 20, this.page)
                }
            }
            ,
            __decorate([h(cc.Label)], t.prototype, "nickname", undefined),
            __decorate([h(cc.Label)], t.prototype, "labelTon", undefined),
            __decorate([h(cc.Label)], t.prototype, "labelGold", undefined),
            __decorate([h([cc.Node])], t.prototype, "img_ItemCheck", undefined),
            __decorate([h(cc.Node)], t.prototype, "SpinNode", undefined),
            __decorate([h(cc.Node)], t.prototype, "nodeRecord", undefined),
            __decorate([h(cc.Node)], t.prototype, "contentRecord", undefined),
            __decorate([h(cc.Node)], t.prototype, "cloneRecord", undefined),
            __decorate([h(cc.Node)], t.prototype, "moreNode", undefined),
            __decorate([d], t)
    }(o.default);
n.default = u,
    module.exports = n
