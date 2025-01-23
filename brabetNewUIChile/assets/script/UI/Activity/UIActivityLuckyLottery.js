let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UIYesterdayLotteryDraw = require("./Item/UIYesterdayLotteryDraw")
    , UITodayDepositHistory = require("./Item/UITodayDepositHistory")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.UIYesterdayLotteryDraw = null,
                t.UITodayDepositHistory = null,
                t.allContent = null,
                t.item = null,
                t.itemKong = null,
                t.rewardcnt = [],
                t.txt_Item2 = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_LuckyLottery, this.onGetLuckyLottery)
                this.RegEvent(i.GameEventDefine.GET_LuckyLotteryinfo, this.onGetLuckyLotteryinfo)
                this.RegEvent(i.GameEventDefine.GET_LuckyLotteryReceive, this.onGetLuckyLotteryReceive)
            }
            ,
            t.prototype.OnShow = function (e) {

                //this.node.active = false
                this.UIYesterdayLotteryDraw.getComponent(UIYesterdayLotteryDraw.default).setOldRoundsData()
                this.UIYesterdayLotteryDraw.getComponent(UIYesterdayLotteryDraw.default).setIsRequest(false)
                // this.UIYesterdayLotteryDraw.getComponent(UIYesterdayLotteryDraw.default).GetInitRequest()
                this.UITodayDepositHistory.getComponent(UITodayDepositHistory.default).setOldRoundsData()
                this.UITodayDepositHistory.getComponent(UITodayDepositHistory.default).setIsRequest(false)
                // this.UITodayDepositHistory.getComponent(UITodayDepositHistory.default).GetInitRequest()

                app.ActivityManager().RequestLuckyLottery()
                app.ActivityManager().RequestLuckyLotteryinfo()
                // let data = [
                //     {
                //         "id": "240508xxx12123",
                //         "depositAmount": 8,                                //提现金额
                //         "depositTime": "2024-5-8 16:08:21",
                //         "bet": 1,
                //         "lotteryPrizes": 500,
                //         "totalBonus": 500,
                //         "state": 1,
                //     },
                //     {
                //         "id": "240508xxx12123",
                //         "depositAmount": 8,                                //提现金额
                //         "depositTime": "2024-5-8 16:08:21",
                //         "bet": 1,
                //         "lotteryPrizes": 500,
                //         "totalBonus": 500,
                //         "state": 1,
                //     }
                // ]
                // this.onGetLuckyLottery(data)
            }
            ,
            t.prototype.onGetLuckyLottery = function (data) {
                this.data = data
                this.node.active = true
                this.itemsData = []
                this.allContent.removeAllChildren()
                for (let index = 0; index < data.length; index++) {
                    let itemData = data[index]
                    let item = cc.instantiate(this.item)
                    item.active = true
                    this.GetWndComponent("id", cc.Label, item).string = data[index].id
                    this.GetWndComponent("depositAmount", cc.Label, item).string = app.GameConfigManager().GetCurrency + " " + data[index].depositAmount
                    this.GetWndComponent("depositTime", cc.Label, item).string = data[index].depositTime
                    this.GetWndComponent("bet", cc.Label, item).string = data[index].bet + " bilhete de loteria"
                    this.GetWndComponent("lotteryPrizes", cc.Label, item).string = app.GameConfigManager().GetCurrency + " " + data[index].lotteryPrizes
                    this.GetWndComponent("totalBonus", cc.Label, item).string = app.GameConfigManager().GetCurrency + " " + data[index].totalBonus
                    if (data[index].state == 0) {
                        this.GetWndComponent("state", cc.Button, item).interactable = true
                        this.GetWndComponent("state/state", cc.Label, item).string = app.i18n.t("UI.MakeMoney_0_main_17")

                        var d = new cc.Component.EventHandler;
                        d.target = this.node
                        d.component = "UIActivityLuckyLottery"
                        d.handler = "reqGetStateAward"
                        d.customEventData = JSON.stringify(itemData)
                        this.GetWndComponent("state", cc.Button, item).clickEvents = []
                        this.GetWndComponent("state", cc.Button, item).clickEvents.push(d);

                    }
                    else if (data[index].state == 1) {
                        this.GetWndComponent("state", cc.Button, item).interactable = false
                        this.GetWndComponent("state/state", cc.Label, item).string = app.i18n.t("UI_Player_Vip_Received")
                    }
                    this.allContent.addChild(item);
                    itemData.item = item
                    this.itemsData.push(itemData)
                }
                for (let index = data.length; index < 5; index++) {
                    let itemKong = cc.instantiate(this.itemKong)
                    itemKong.active = true
                    this.allContent.addChild(itemKong);
                }
            },
            t.prototype.onGetLuckyLotteryinfo = function (data) {


                this.rewardcnt[0].string = data.rewardcnt1 + " pessoa"
                this.rewardcnt[1].string = data.rewardcnt2 + " pessoa"
                this.rewardcnt[2].string = data.rewardcnt3 + " pessoa"
                this.rewardcnt[3].string = data.rewardcnt4 + " pessoa"
                this.rewardcnt[4].string = data.rewardcnt5 + " pessoa"
                this.rewardcnt[5].string = data.rewardcnt6 + " pessoa"
                this.rewardcnt[6].string = data.rewardcnt7 + " pessoa"
                this.rewardcnt[7].string = data.rewardcnt8 + " pessoa"
                //"Horário da atividade: 10/05/2024 00:00-10/06/2024 23:59:59 UTC-3"
                this.txt_Item2.string = "Horário da atividade: " + data.starttime + "-" + data.endtime + " UTC-3"

            },
            t.prototype.onGetLuckyLotteryReceive = function (data) {
                if (data.type == 0) {
                    for (let index = 0; index < this.itemsData.length; index++) {
                        if (this.itemsData[index].id == data.id) {
                            this.GetWndComponent("state", cc.Button, this.itemsData[index].item).interactable = false
                            this.GetWndComponent("state/state", cc.Label, this.itemsData[index].item).string = app.i18n.t("UI_Player_Vip_Received")
                        }
                    }
                }
                else if (data.type == 1) {
                    for (let index = 0; index < this.itemsData.length; index++) {
                        this.GetWndComponent("state", cc.Button, this.itemsData[index].item).interactable = false
                        this.GetWndComponent("state/state", cc.Label, this.itemsData[index].item).string = app.i18n.t("UI_Player_Vip_Received")
                    }
                }
                app.GoldRewardManager().FormGoldReward({
                    gold: data.gold,
                    source: app.i18n.t("UI_Reward")
                })
                app.RedDotManager().OnLoadHallSuccess()
            },
            t.prototype.reqGetStateAward = function (e, t) {
                t = JSON.parse(t)
                app.ActivityManager().RequestLuckyLotteryReceive(0, t.id)
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                // if (this.data.canReceive == 0) {
                //     app.SysNotifyManager().ShowToast("UI.UIStoreAndCashCompletethe")
                // }
                // else {
                app.ActivityManager().RequestLuckyLotteryReceive(1, 0)
                // }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Node)], t.prototype, "UIYesterdayLotteryDraw", undefined),
            __decorate([c(cc.Node)], t.prototype, "UITodayDepositHistory", undefined),
            __decorate([c(cc.Node)], t.prototype, "allContent", undefined),
            __decorate([c(cc.Node)], t.prototype, "item", undefined),
            __decorate([c(cc.Node)], t.prototype, "itemKong", undefined),
            __decorate([c([cc.Label])], t.prototype, "rewardcnt", undefined),
            __decorate([c(cc.RichText)], t.prototype, "txt_Item2", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
