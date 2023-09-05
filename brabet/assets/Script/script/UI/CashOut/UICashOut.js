let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Component/EditBoxRegExp")
  , a = require("../../../Common/DB/Hall/CashOutManager")
  , r = require("../../../Common/Define/GameEventDefine")
  , s = require("../../../Common/Define/ShareDefine")
  , c = require("../../../Common/Define/UINameDefine")
  , l = require("./UICashOutAccount")
  , p = cc._decorator
  , d = p.ccclass
  , h = p.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.gold = 0,
        t.gold_ali = 0,
        t.lableGold = null,
        t.availabilityGold = null,
        t.AmountNumberLabel = null,
        t.WithdrawVia = null,
        t.MyAccount = null,
        t.BindBankBtnString = null,
        t.SliderNode = null,
        t.rateLabelNode = null,
        t.retepercentNode = null,
        t.isAgentTx = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UICashOut",
        this.Lbl_Multiple_unitNode = this.GetWndNode("/view/content/amount/label"),
        this.nodeUsdt = this.GetWndNode("/view/content/node_usdt"),
        this.label_usdt = this.GetWndComponent("label_usdt", cc.Label, this.nodeUsdt),
        this.lbl_multiple_UnitK = this.GetWndComponent("/view/content/amount/label_symbol", cc.Label),
        this.RegEvent(r.GameEventDefine.BIND_USER_WALLET, this.onBindUserWallet),
        this.RegEvent(r.GameEventDefine.GET_USER_WALLET, this.onGetUserWallet),
        this.RegEvent(r.GameEventDefine.BIND_BANK_ACCOUNT, this.onBindBankAccount),
        this.RegEvent(r.GameEventDefine.GET_TX, this.onGetTx),
        this.RegEvent(r.GameEventDefine.GET_AGENTTX, this.onGetAgentTx),
        this.AmountNumberLabel.getComponent(cc.EditBox).addComponent(i.default).initRegExp(i.RegExpType.NUM_And_Zero, this.ChangeNumToInt, this)
    }
    ,
    t.prototype.OnEnable = function() {
        app.CashOutManager().SetCurrentCashOutType(a.CashOutType.Bank),
        this.cash_rate = 0,
        this.rateLabelNode.string = "",
        this.label_usdt.string = app.i18n.t("UI_CashOut_Actual_USDT", {
            gold: 0
        }),
        this.gold = app.UserManager().GetUserInfo.gold,
        this.initLayer()
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        this.Log(e),
        "btn_service" != e ? "toggle1" != e && "toggle2" != e ? "button_withdraw" != e && "btn_Withdraw" != e ? "btn_help" != e || app.FormManager().ShowForm(c.UINameDefine.UIWithdrawDesc) : this.txRequest() : this.toggleSwitchCallBack(t, n) : cc.systemEvent.emit("open_help_panel")
    }
    ,
    t.prototype.initLayer = function() {
        this.AmountNumberLabel.getComponent(cc.EditBox).string = "",
        cc.find("/view/content/content", this.node).active = false,
        app.UserManager().RequstUserWallet({
            type: this.isAgentTx ? 2 : 1
        }),
        cc.find("view/content/content/toggle1", this.node).getComponent(cc.Toggle).isChecked = true
    }
    ,
    t.prototype.toggleSwitchCallBack = function(e, t) {
        app.CashOutManager().SetCurrentCashOutType(Number(t)),
        this.SwtichCashType()
    }
    ,
    t.prototype.initCashLayer = function() {
        var e = cc.find("/view/content/content", this.node);
        if ("1" == this.UserWallerData.usdt_switch && "1" == this.UserWallerData.withdraw_switch)
            e.active = true;
        else if ("0" == this.UserWallerData.usdt_switch && "1" == this.UserWallerData.withdraw_switch) {
            e.active = false,
            app.CashOutManager().SetCurrentCashOutType(a.CashOutType.Bank);
            var t = this.isAgentTx ? this.UserWallerData.agent_percent : this.UserWallerData.percent;
            this.cash_rate = Number(t) / 100
        } else if ("1" == this.UserWallerData.usdt_switch && "0" == this.UserWallerData.withdraw_switch) {
            e.active = false,
            app.CashOutManager().SetCurrentCashOutType(a.CashOutType.USDT);
            var n = this.isAgentTx ? this.UserWallerData.agent_usdt_percent : this.UserWallerData.usdt_percent;
            this.cash_rate = Number(n) / 100
        }
        app.Client.OnEvent(r.GameEventDefine.GUIDE_WITHDRAW, e.active),
        cc.find("/view/content/layout/huilv/label", this.node).getComponent(cc.Label).string = "" + this.UserWallerData.rate_text,
        cc.find("/view/content/layout/huilv/label1", this.node).getComponent(cc.Label).string = app.i18n.t("UI_Shop_USDT_Tether") + " " + app.GameConfigManager().GetCurrency + " " + this.UserWallerData.rate
    }
    ,
    t.prototype.SwtichCashType = function() {
        var e = cc.find("/view/content/layout/huilv", this.node);
        this.rateLabelNode.string = "",
        this.label_usdt.string = app.i18n.t("UI_CashOut_Actual_USDT", {
            gold: 0
        }),
        this.AmountNumberLabel.getComponent(cc.EditBox).string = "";
        var t = app.GameConfigManager().GetCurrency;
        if (this.Lbl_Multiple_unitNode.getComponent(cc.Label).string = t,
        app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.Bank) {
            e.active = false,
            this.nodeUsdt.active = false;
            var n = this.UserWallerData && this.UserWallerData.multiple_unit ? this.UserWallerData.multiple_unit : "";
            this.lbl_multiple_UnitK.string = n;
            var o = this.isAgentTx ? this.UserWallerData.agent_percent : this.UserWallerData.percent;
            this.cash_rate = Number(o) / 100,
            cc.find("view/content/content/toggle1", this.node).getComponent(cc.Toggle).check()
        } else if (app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.USDT) {
            e.active = true,
            this.nodeUsdt.active = true,
            this.lbl_multiple_UnitK.string = "";
            var i = this.isAgentTx ? this.UserWallerData.agent_usdt_percent : this.UserWallerData.usdt_percent;
            this.cash_rate = Number(i) / 100,
            cc.find("view/content/content/toggle2", this.node).getComponent(cc.Toggle).check()
        }
        var r = cc.find("view/content/node_ratio", this.node);
        this.UserWallerData.withdraw_tips ? (r.getChildByName("label_radio").getComponent(cc.Label).string = this.UserWallerData.withdraw_tips,
        r.active = true) : r.active = false//,this.node.getComponent(l.default).OnUpdateShowType()
    }
    ,
    t.prototype.AmountSliderEvents = function(e) {
        var t = Math.floor(e.progress * Math.floor(app.UserManager().GetUserInfo.cash));
        this.AmountNumberLabel.getComponent(cc.EditBox).string = "" + (t - t % 50)
    }
    ,
    t.prototype.ChangeNumToInt = function() {
        var e = Number(this.AmountNumberLabel.getComponent(cc.EditBox).string);
        if (Number(e)) {
            if (this.cash_rate) {
                this.rateLabelNode.string = app.GameConfigManager().GetCurrency + " " + (Number(e) * this.cash_rate).toFixed(2);
                var t = (Number(e) * (1 - this.cash_rate) / Number(this.UserWallerData.rate)).toFixed(2);
                this.label_usdt.string = app.i18n.t("UI_CashOut_Actual_USDT", {
                    gold: t
                })
            }
        } else
            this.rateLabelNode.string = "",
            this.label_usdt.string = app.i18n.t("UI_CashOut_Actual_USDT", {
                gold: 0
            })
    }
    ,
    t.prototype.AllBtnCallBack = function() {
        var e = Math.floor(app.UserManager().GetUserInfo.cash);
        this.AmountNumberLabel.getComponent(cc.EditBox).string = "" + (e - e % 50)
    }
    ,
    t.prototype.SetAmountBtnCallBack = function(e, t) {
        app.ComUtil().playBoxOpenSound(),
        t && (this.AmountNumberLabel.getComponent(cc.EditBox).string = t)
    }
    ,
    t.prototype.txRequest = function() {
        app.UserManager().GetUserWallet();
        var e = cc.find("view/content/li_Encrypted/editbox", this.node).getComponent(cc.EditBox).string;
        if (app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.Bank) {
            if (!this.node.getComponent(l.default).isAccountChange())
                return void this.node.getComponent(l.default).SendBindBankNumBtnCallBack()
        } else if (app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.USDT && app.UserManager().GetUserInfo.user_wallet != e)
            return void this.node.getComponent(l.default).SendBindBankNumBtnCallBack();
        if ("" != this.AmountNumberLabel.getComponent(cc.EditBox).string) {
            var t = Number(this.AmountNumberLabel.getComponent(cc.EditBox).string);
            if (this.isAgentTx) {
                var n = app.ScoreUtil().fix_float_number(app.PromoteMainManager().GetShareData.agent_commission);
                if (n <= 0 || t > n)
                    return void app.SysNotifyManager().ShowToast("UI.System_10")
            } else {
                if (t <= 0 || t > this.gold)
                    return void app.SysNotifyManager().ShowToast("UI.System_10");
                if (t > Math.floor(app.UserManager().GetUserInfo.cash))
                    return void app.SysNotifyManager().ShowToast("UI.System_10")
            }
            if (!this.CashTipSwitch && !this.isTXTime)
                return this.CashTipSwitch = 1,
                void this.cashTipReq();
            this.CashTipSwitch = 0;
            var o = 0;
            app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.USDT && (o = 1),
            this.isAgentTx ? app.CashOutManager().RequestAgentTx({
                channel: 4,
                amount: t,
                is_usdt: o
            }) : app.CashOutManager().RequestTx({
                channel: 4,
                amount: t,
                is_usdt: o
            })
        } else
            app.SysNotifyManager().ShowToast("UI.System_14")
    }
    ,
    t.prototype.onGetTx = function(e) {
        app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmOK, e.msg, null, function() {}, null, this),
        this.gold = e.gold,
        this.initLayer()
    }
    ,
    t.prototype.onGetAgentTx = function(e) {
        e && app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmOK, e.msg, null, function() {}, null, this),
        this.CallInitIsAngentTx()
    }
    ,
    t.prototype.cashTipReq = function() {
        this.isTXTime || this.WaitForConfirm(s.ConfirmType.ConfirmYN, this.UserWallerData.withdraw_time_text, [])
    }
    ,
    t.prototype.OnConFirm = function() {
        this.onBtncashSure()
    }
    ,
    t.prototype.OnCancel = function() {
        this.CashTipSwitch = 0
    }
    ,
    t.prototype.onBtncashSure = function() {
        this.txRequest()
    }
    ,
    t.prototype.onBindUserWallet = function() {
        this.txRequest()
    }
    ,
    t.prototype.onGetUserWallet = function() {
        var e = app.UserManager().GetUserWallet();
        this.cash_rate = Number(e.percent) / 100;
        var t = e && e.multiple_unit ? e.multiple_unit : "";
        this.Lbl_Multiple_unitNode.getComponent(cc.Label).string = t;
        var n = 0;
        app.PromoteMainManager().GetShareData && (n = app.ScoreUtil().fix_float_number(app.PromoteMainManager().GetShareData.agent_commission));
        var o = this.isAgentTx ? n : e.withdraw_gold;
        cc.find("view/content/node_withdrawable/lbl_number", this.node).getComponent(cc.Label).string = "" + o,
        this.UserWallerData = e,
        this.isTXTime = 0 == this.UserWallerData.withdraw_time_limit,
        this.initCashLayer(),
        this.SwtichCashType()
    }
    ,
    t.prototype.onBindBankAccount = function() {
        app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.Bank && (app.UserManager().setUserWallet_allow_bind(0),
        this.txRequest())
    }
    ,
    t.prototype.CallInitIsAngentTx = function() {
        cc.find("view/content/node_withdrawable/btn_help", this.node).active = !this.isAgentTx;
        var e = app.UserManager().GetUserWallet();
        if (e) {
            var t = 0;
            app.PromoteMainManager().GetShareData && (t = app.ScoreUtil().fix_float_number(app.PromoteMainManager().GetShareData.agent_commission));
            var n = this.isAgentTx ? t : e.withdraw_gold;
            cc.find("view/content/node_withdrawable/lbl_number", this.node).getComponent(cc.Label).string = "" + n
        }
    }
    ,
    __decorate([h(cc.Node)], t.prototype, "lableGold", undefined),
    __decorate([h(cc.Node)], t.prototype, "availabilityGold", undefined),
    __decorate([h(cc.Node)], t.prototype, "AmountNumberLabel", undefined),
    __decorate([h(cc.Node)], t.prototype, "WithdrawVia", undefined),
    __decorate([h(cc.Node)], t.prototype, "MyAccount", undefined),
    __decorate([h(cc.Node)], t.prototype, "BindBankBtnString", undefined),
    __decorate([h(cc.Node)], t.prototype, "SliderNode", undefined),
    __decorate([h(cc.Label)], t.prototype, "rateLabelNode", undefined),
    __decorate([h(cc.Label)], t.prototype, "retepercentNode", undefined),
    __decorate([d], t)
}(o.default);
n.default = u,
module.exports = n
