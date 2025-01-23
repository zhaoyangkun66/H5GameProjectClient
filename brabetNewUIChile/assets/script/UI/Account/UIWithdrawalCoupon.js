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
            return t.couponBalance = null,
                t.contentLayout = null,
                t.nodeItem = null,
                t.nodeItemRecord = null,
                t.icon_zw = null,
                t.ToggleContainer = null,
                t.nodeItem1 = null,
                t.nodeItem2 = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIWithdrawalCoupon"
                this.RegEvent(a.GameEventDefine.WithdrawalCoupon_getDetailList, this.getDetailList)
                this.RegEvent(a.GameEventDefine.WithdrawalCoupon_receive, this.receive)
                this.RegEvent(a.GameEventDefine.WithdrawalCoupon_bill, this.bill)
                this.RegEvent(a.GameEventDefine.WithdrawalCoupon_Share, this.Share)
                this.RegEvent(a.GameEventDefine.GET_USER_WALLET, this.onUpdateUserInfo)
                this.nodeItem.active = false
                this.nodeItemRecord.active = false
            },
            t.prototype.OnShow = function () {
                this.node.active = false
                this.ToggleContainer.toggleItems[0].getComponent(cc.Toggle).check();
                app.ActivityManager().RequestWithdrawalCoupon_getDetailList()
                this.onUpdateUserInfo()
            },
            t.prototype.Share = function () {
                app.ActivityManager().RequestWithdrawalCoupon_getDetailList()
            },
            t.prototype.onUpdateUserInfo = function () {
                this.couponBalance.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.saldo)
            },
            t.prototype.getDetailList = function (data) {
                data.sort(function (e, t) {
                    return t.state - e.state
                })
                this.nodeItem1.active = true
                this.nodeItem2.active = true
                this.node.active = true
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
                    let tempNode = cc.instantiate(this.nodeItem);
                    this.GetWndComponent("activityName", cc.Label, tempNode).string = element.activityName
                    this.GetWndComponent("WithdrawalCouponAmount", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold

                    {
                        let btn_Collect = this.GetWndComponent("btn_Collect", cc.Button, tempNode)
                        let btn_CollectLabel = this.GetWndComponent("btn_Collect/Label", cc.Label, tempNode)
                        if (element.state == 0) {
                            btn_Collect.node.color = cc.color().fromHEX("#F4D942")
                            btn_CollectLabel.string = app.i18n.t("UI.UIAllActivityBonus4")
                        }
                        else if (element.state == 1) {
                            btn_Collect.node.color = cc.color().fromHEX("#409A24")
                            btn_CollectLabel.string = app.i18n.t("UIRedeemCode_Receive")
                        }
                        let EventHandler = new cc.Component.EventHandler;
                        EventHandler.target = this.node
                        EventHandler.component = this.JS_Name
                        EventHandler.handler = "Onbtn_Collect"
                        EventHandler.customEventData = JSON.stringify(element)
                        btn_Collect.clickEvents = []
                        btn_Collect.clickEvents.push(EventHandler)
                    }
                    // ths.GetWndNode("nodeWaitingMore", tempNode).active = true
                    //  UI.UIAllActivityBonus4
                    tempNode.active = true
                    this.contentLayout.addChild(tempNode)
                }
            },
            t.prototype.bill = function (data) {
                this.nodeItem1.active = false
                this.nodeItem2.active = false
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
                    let tempNode = cc.instantiate(this.nodeItemRecord);
                    this.GetWndComponent("activityName", cc.Label, tempNode).string = element.activityName
                    this.GetWndComponent("WithdrawalCouponAmountNum", cc.Label, tempNode).string = app.GameConfigManager().GetCurrency + " " + element.giveGold
                    this.GetWndComponent("WithdrawalCouponTime", cc.Label, tempNode).string = element.time
                    tempNode.active = true
                    this.contentLayout.addChild(tempNode)
                }
            },
            t.prototype.receive = function (data) {
                app.GoldRewardManager().FormGoldReward({
                    gold: data.gold,
                    source: app.i18n.t("UI.UIWithdrawalCoupon1")
                })
                app.ActivityManager().RequestWithdrawalCoupon_getDetailList()

            },
            t.prototype.OnClick = function (e) {
                if ("btn_Help" == e) {
                    app.FormManager().ShowForm(i.UINameDefine.UIWithdrawalCouponDes);
                }
                else if ("btn_Help2" == e) {
                    app.FormManager().ShowForm(i.UINameDefine.UIGameProgressView);
                }
                else if ("btn_WithdrawalCoupon" == e) {
                    app.ActivityManager().RequestWithdrawalCoupon_getDetailList()
                }
                else if ("btn_Record" == e) {
                    app.ActivityManager().WithdrawalCoupon_bill()
                }
                else if ("btn_Wheel" == e) {
                    app.FormManager().ShowForm(i.UINameDefine.UIWithdrawalCouponCashWheel);
                }
            },
            t.prototype.Onbtn_Collect = function (t, data) {
                data = JSON.parse(data)
                if (data.state == 0) {
                    if (data.id == 1) {

                    }
                    else if (data.id == 2) {
                        app.FormManager().ShowForm(i.UINameDefine.UICashWheelShare);
                    }
                    else if (data.id == 3) {
                        app.NativeMgr().FaceBookShare(JSON.stringify({
                            des: shareTextGlobal,
                            url: location.origin + location.pathname + "?agentid=" + app.UserManager().UserInfo.uid + "&time=" + new Date().getTime()
                        }))
                        app.ActivityManager().WithdrawalCoupon_Share()
                    }
                }
                else {
                    app.ActivityManager().WithdrawalCoupon_receive(data.id)
                }
            },
            t.prototype.OnClose = function () {

            },
            __decorate([l(cc.Label)], t.prototype, "couponBalance", undefined),
            __decorate([l(cc.Node)], t.prototype, "contentLayout", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeItem", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeItemRecord", undefined),
            __decorate([l(cc.Node)], t.prototype, "icon_zw", undefined),
            __decorate([l(cc.ToggleContainer)], t.prototype, "ToggleContainer", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeItem1", undefined),
            __decorate([l(cc.Node)], t.prototype, "nodeItem2", undefined),
            __decorate([c], t)
    }(r.default);
n.default = p,
    module.exports = n
