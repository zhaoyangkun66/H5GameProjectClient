let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.LoginType = undefined;
var o, i = require("../../../Common/Define/UINameDefine"), a = require("../../../Common/Define/GameEventDefine"), r = require("../../../Common/Base/BaseForm");
(function (e) {
    e.Email = "email",
        e.Mobile = "mobile"
}
)(o = n.LoginType || (n.LoginType = {}));
var s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.EffectiveBetAmount = null,
                t.BonusToBeUnfrozen = null,
                t.nodeFAQMore = null,
                t.nodeJianTou = null,
                t.labelJianTous = null,
                t.contentLayout = null,
                t.nodeEmprogresso = null,
                t.nodeWaiting = null,
                t.nodeThawed = null,
                t.nodeThawedBill = null,
                t.icon_zw = null,
                t.ToggleContainer = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIBonusUnfrozen"
                this.RegEvent(a.GameEventDefine.BonusUnfrozen_getDetailList, this.getDetailList)
                this.RegEvent(a.GameEventDefine.BonusUnfrozen_receive, this.receive)
                this.RegEvent(a.GameEventDefine.BonusUnfrozen_bill, this.bill)
                this.RegEvent(a.GameEventDefine.BonusUnfrozen_set, this.set)
                this.nodeWaiting.active = false
                this.nodeEmprogresso.active = false
                this.nodeThawed.active = false
                this.nodeThawedBill.active = false
            },
            t.prototype.OnShow = function () {
                this.node.active = false
                this.ToggleContainer.toggleItems[0].getComponent(cc.Toggle).check();
                app.ActivityManager().RequestBonusUnfrozen_getDetailList()
            },
            t.prototype.getDetailList = function (data) {
                data.notDefrostedList.sort(function (e, t) {
                    return t.state - e.state
                })
                this.NotDefrostedListData = data
                this.node.active = true
                this.EffectiveBetAmount.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(data.effectiveBetAmount)
                this.BonusToBeUnfrozen.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(data.bonusToBeUnfrozen)
                this.contentLayout.removeAllChildren()
                if (data.notDefrostedList.length > 0) {
                    this.contentLayout.active = true
                    this.icon_zw.active = false
                }
                else {
                    this.contentLayout.active = false
                    this.icon_zw.active = true

                }
                for (let index = 0; index < data.notDefrostedList.length; index++) {
                    const element = data.notDefrostedList[index];
                    if (element.state == 0) {
                        let tempNode = cc.instantiate(this.nodeWaiting);
                        this.GetWndComponent("nodeWaiting/activityName", cc.Label, tempNode).string = element.activityName
                        this.GetWndComponent("nodeWaiting/BonusAmountNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold
                        this.GetWndComponent("nodeWaitingMore/TaskProgressNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold + " * " + element.maMultiple
                        this.GetWndComponent("nodeWaitingMore/RemainingTimeNum", cc.Label, tempNode).string = new Date(element.endMills).format("yyyy/MM/dd HH:mm:ss")

                        {
                            let btn_set = this.GetWndComponent("nodeWaiting/btn_set", cc.Button, tempNode)
                            let EventHandler = new cc.Component.EventHandler;
                            EventHandler.target = this.node
                            EventHandler.component = this.JS_Name
                            EventHandler.handler = "Onbtn_set"
                            EventHandler.customEventData = element.billNo
                            btn_set.clickEvents = []
                            btn_set.clickEvents.push(EventHandler)
                        }
                        {
                            let btn_JianTou = this.GetWndComponent("nodeJianTou/btn_JianTou", cc.Button, tempNode)
                            let EventHandler = new cc.Component.EventHandler;
                            EventHandler.target = this.node
                            EventHandler.component = this.JS_Name
                            EventHandler.handler = "Onbtn_JianTou"
                            EventHandler.customEventData = element.billNo
                            btn_JianTou.clickEvents = []
                            btn_JianTou.clickEvents.push(EventHandler)
                            tempNode.billNo = element.billNo
                        }

                        // this.GetWndNode("nodeWaitingMore", tempNode).active = true

                        tempNode.active = true
                        this.contentLayout.addChild(tempNode)
                    }
                    else if (element.state == 1) {
                        let tempNode = cc.instantiate(this.nodeEmprogresso);
                        this.GetWndComponent("activityName", cc.Label, tempNode).string = element.activityName
                        this.GetWndComponent("BonusAmountNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold
                        this.GetWndComponent("TaskProgressNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold + " * " + element.maMultiple
                        this.GetWndComponent("RemainingTimeNum", cc.Label, tempNode).string = new Date(element.endMills).format("yyyy/MM/dd HH:mm:ss")

                        this.GetWndComponent("LabelBet", cc.Label, tempNode).string = element.betGold + "/" + (element.giveGold * element.maMultiple)
                        let ProgressBet = 100 * element.betGold / (element.giveGold * element.maMultiple)
                        if (ProgressBet > 100) {
                            ProgressBet = 100
                        }
                        this.GetWndComponent("progressBarBet/LabelProgressBet", cc.Label, tempNode).string = app.ScoreUtil().toFixed(ProgressBet) + "%"
                        this.GetWndComponent("progressBarBet", cc.ProgressBar, tempNode).progress = element.betGold / (element.giveGold * element.maMultiple)
                        tempNode.active = true
                        this.contentLayout.addChild(tempNode)
                    }
                    else if (element.state == 2) {
                        let tempNode = cc.instantiate(this.nodeThawed);
                        this.GetWndComponent("activityName", cc.Label, tempNode).string = element.activityName
                        this.GetWndComponent("BonusAmountNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold

                        {
                            let btn_Collect = this.GetWndComponent("btn_Collect", cc.Button, tempNode)
                            let EventHandler = new cc.Component.EventHandler;
                            EventHandler.target = this.node
                            EventHandler.component = this.JS_Name
                            EventHandler.handler = "Onbtn_Collect"
                            EventHandler.customEventData = element.billNo
                            btn_Collect.clickEvents = []
                            btn_Collect.clickEvents.push(EventHandler)
                        }

                        tempNode.active = true
                        this.contentLayout.addChild(tempNode)
                    }
                }
            },
            t.prototype.bill = function (data) {
                this.contentLayout.removeAllChildren()
                if (data.length > 0) {
                    this.contentLayout.active = true
                    this.icon_zw.active = false
                }
                else {
                    this.contentLayout.active = false
                    this.icon_zw.active = true

                }
                for (let index = 0; index < data.length; index++) {
                    const element = data[index];
                    let tempNode = cc.instantiate(this.nodeThawedBill);
                    this.GetWndComponent("activityName", cc.Label, tempNode).string = element.activityName
                    this.GetWndComponent("BonusAmountNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold
                    tempNode.active = true
                    this.contentLayout.addChild(tempNode)
                }
            },
            t.prototype.receive = function (data) {
                app.GoldRewardManager().FormGoldReward({
                    gold: data.gold,
                    source: app.i18n.t("UI_Balance")
                })
                app.ActivityManager().RequestBonusUnfrozen_getDetailList()

            },
            t.prototype.set = function (billNo) {
                app.ActivityManager().RequestBonusUnfrozen_getDetailList()
                // for (let index = 0; index < this.NotDefrostedListData.notDefrostedList.length; index++) {
                //     const element = this.NotDefrostedListData.notDefrostedList[index];
                //     if (element.state == 1) {
                //         element.state = 0
                //     }
                //     if (element.billNo == billNo) {
                //         element.state = 1
                //     }
                // }
                // // this.NotDefrostedListData.notDefrostedList.sort(function (e, t) {
                // //     return t.state - e.state
                // // })
                // this.getDetailList(this.NotDefrostedListData)

            },
            t.prototype.OnClick = function (e) {
                if ("btn_JianTou" == e) {
                    if (this.nodeFAQMore.active == true) {
                        this.nodeFAQMore.active = false
                        this.nodeJianTou.scaleY = 1
                        this.labelJianTous.string = "Clique para expandir"
                    }
                    else {
                        this.nodeFAQMore.active = true
                        this.nodeJianTou.scaleY = -1
                         this.labelJianTous.string = "Clique para colapsar"
                    }
                }
                else if ("btn_notDefrost" == e) {
                    app.ActivityManager().RequestBonusUnfrozen_getDetailList()
                }
                else if ("btn_Thawed" == e) {
                    app.ActivityManager().BonusUnfrozen_bill()
                }
            },
            t.prototype.Onbtn_JianTou = function (t, billNo) {
                for (let index = 0; index < this.contentLayout.children.length; index++) {
                    if (this.contentLayout.children[index].billNo == billNo) {
                        let nodeWaitingMore = this.GetWndNode("nodeWaitingMore", this.contentLayout.children[index])
                        if (nodeWaitingMore.active == true) {
                            nodeWaitingMore.active = false
                            this.GetWndNode("nodeJianTou", this.contentLayout.children[index]).scaleY = 1
                        }
                        else {
                            nodeWaitingMore.active = true
                            this.GetWndNode("nodeJianTou", this.contentLayout.children[index]).scaleY = -1
                        }
                    }

                }
            },
            t.prototype.Onbtn_set = function (t, billNo) {
                app.ActivityManager().BonusUnfrozen_set(billNo)
            },
            t.prototype.Onbtn_Collect = function (t, billNo) {
                app.ActivityManager().BonusUnfrozen_receive(billNo)
            },
            t.prototype.OnClose = function () {

            },
            __decorate([l(cc.Label)], t.prototype, "EffectiveBetAmount", undefined),
            __decorate([l(cc.Label)], t.prototype, "BonusToBeUnfrozen", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeFAQMore", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeJianTou", undefined),
            __decorate([l(cc.Label)], t.prototype, "labelJianTous", undefined),
            __decorate([l(cc.Node)], t.prototype, "contentLayout", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeEmprogresso", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeWaiting", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeThawed", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeThawedBill", undefined),
            __decorate([l(cc.Node)], t.prototype, "icon_zw", undefined),
            __decorate([l(cc.ToggleContainer)], t.prototype, "ToggleContainer", undefined),
            __decorate([c], t)
    }(r.default);
n.default = p,
    module.exports = n
