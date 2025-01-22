let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/DB/Hall/StoreManager")
  , a = require("../../../../Common/Define/GameEventDefine")
  , r = require("../../../../Common/Define/HttpServerDefine")
  , s = require("../../../../Common/Define/UINameDefine")
  , c = cc._decorator
  , l = c.ccclass
  , p = c.menu
  , d = c.property
  , h = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.PayPrefabItem = null,
        t.UIAccMessage = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(a.GameEventDefine.RECHARGE_ITEM_CLICK, this.OnRechargeItemClick),
        this.RegEvent(a.GameEventDefine.GOODS_PAY, this.OnGoodsPay),
        this.RegEvent(a.GameEventDefine.BANK_CODE_CLICK, this.UpdateBank)
    }
    ,
    t.prototype.InitInfo = function() {
        this._payChannelItem = app.Store2Manager().GetChoseChannel();
        var e = app.Store2Manager().GetChoseTypeItem();
        this._payTypeInfo = e,
        this.ui.label_pay.string = e.type_name,
        this.ui.label_red.string = app.i18n.t("UI_ViPay_MinimumDepositLimit") + e.amount_min + "\uff01",
        this.ui.label_red.node.active = true,
        this.ui.label_astrictNum.string = e.amount_min + "~" + e.amount_max,
        this.BankInfo(),
        this.NodeRatioInfo(),
        this.NodeConversion(),
        this.RechargeListInfo(),
        this.UpdateBelow(),
        this.UpdateExtraGold(),
        this.InitEditBoxStr()
    }
    ,
    t.prototype.BankInfo = function() {
        var e = false
          , t = app.Store2Manager().GetChoseTypeItem();
        t.pay_type != r.PayType.Pay_Type_USDT && t.pay_type != r.PayType.Pay_Type_BANK || (e = true),
        this.ui.node_bank.active = e,
        app.Store2Manager().PayChoseBankId = -1,
        app.Store2Manager().ChoseUsdtId = -1
    }
    ,
    t.prototype.UpdateBank = function(e) {
        var t = ""
          , n = app.Store2Manager().GetChoseTypeItem();
        n.pay_type == r.PayType.Pay_Type_BANK ? t = e.bank_name : n.pay_type == r.PayType.Pay_Type_USDT && (t = e.name),
        this.ui.label_bank.string = t
    }
    ,
    t.prototype.NodeRatioInfo = function() {
        this._payChannelItem.recharge_tips ? (this.ui.label_radio.string = this._payChannelItem.recharge_tips,
        this.ui.node_ratio.active = true) : this.ui.node_ratio.active = false
    }
    ,
    t.prototype.RechargeListInfo = function() {
        this.ui.node_NumItem.removeAllChildren();
        var e = app.Store2Manager().GetChoseNewChannelList();
        if (e && e.act_send) {
            var t = this.ui.toggle_check.getComponent(cc.Toggle).isChecked
              , n = e.act_send
              , o = app.Store2Manager().GetChoseSubChannel();
            this.ui.label_symbol.string = o.multiple_unit;
            var i = app.GameConfigManager().GetCurrency;
            this._payTypeInfo.pay_type == r.PayType.Pay_Type_USDT && (i = app.i18n.t("UI_Shop_USDT_TetherText")),
            this.ui.label_prefix.string = i;
            for (var a = 0; a < n.length; a++) {
                var s = cc.instantiate(this.PayPrefabItem);
                this.ui.node_NumItem.addChild(s),
                s.getComponent(this.PayPrefabItem.name).InitInfo(n[a], o, a, t)
            }
        }
    }
    ,
    t.prototype.NodeConversion = function() {
        this.ui.node_conversion.active = false
    }
    ,
    t.prototype.UpdateBelow = function() {
        this.ui.label_below.string = this._payChannelItem.show_desc,
        this.ui.node_ratio.active = true,
        this._payChannelItem.recharge_tips && (this.ui.label_radio.string = this._payChannelItem.recharge_tips)
    }
    ,
    t.prototype.GoPay = function(e) {
        if ("" != e) {
            var t = app.Store2Manager().GetChoseSubChannel();
            if (this._payTypeInfo.pay_type != r.PayType.Pay_Type_USDT || 2 != this._payChannelItem.usdt_type)
                if (t.type != i.StorePayType.GooglePay)
                    this.ShowRechargeInfoForm(e);
                else {
                    var n = {
                        token: app.UserManager().GetUserInfo.token,
                        channel_id: this._payChannelItem.id,
                        id: this._payChannelItem.id,
                        amount: e,
                        type: t.type
                    };
                    app.StoreManager().RequstPayGood(n)
                }
            else
                this.ShowRechargeInfoForm(e)
        } else
            app.SysNotifyManager().ShowToast("UI.System_22")
    }
    ,
    t.prototype.ShowRechargeInfoForm = function(e) {
        var t = app.Store2Manager().GetChoseNewChannelList()
          , n = Number(e);
        if (n > Number(t.max_amount))
            app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_26") + t.max_amount);
        else if (n < Number(t.min_amount))
            app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_27") + t.min_amount);
        else {
            var o = 1 == this.ui.toggle_check.getComponent(cc.Toggle).isChecked ? 1 : 0
              , i = 0;
            0 != o && (i = app.Store2Manager().GetPercentNum(n));
            var a = app.Store2Manager().GetChoseChannel()
              , r = {
                channel_id: a.id,
                id: a.id,
                amount: n,
                send_percent: i,
                is_sale: 0,
                pay_type: app.Store2Manager().ChosePayTypeId,
                bank_id: app.Store2Manager().PayChoseBankId,
                usdt_target_type: app.Store2Manager().ChoseUsdtId
            };
            this.ui.node_btnNode.active && (r.join_activity = o),
            app.FormManager().ShowForm(s.UINameDefine.UIRechargeInfo, r)
        }
    }
    ,
    t.prototype.EditboxEnded = function() {
        var e = this.ui.editbox_phone.getComponent(cc.EditBox).string
          , t = app.Store2Manager().GetChoseSubChannel();
        this.ui.label_red.node.active = Number(t.min_amount) > Number(e);
        var n = 0;
        this.ui.toggle_check.getComponent(cc.Toggle).isChecked && (n = app.Store2Manager().GetPercentGold(e)),
        this.UpdateExtraGold(n),
        app.Client.OnEvent(a.GameEventDefine.ONLINE_PAY_EDITOBX_ENDED, e)
    }
    ,
    t.prototype.OnRechargeItemClick = function(e) {
        this.ui.editbox_phone.getComponent(cc.EditBox).string = e.amount;
        var t = app.Store2Manager().GetChoseSubChannel();
        this.ui.label_red.node.active = Number(t.min_amount) > Number(e.amount),
        app.Client.OnEvent(a.GameEventDefine.ONLINE_PAY_EDITOBX_ENDED, e.amount),
        this.UpdateExtraGold(e.Percentgold)
    }
    ,
    t.prototype.UpdateExtraGold = function(e) {
        undefined === e && (e = 0);
        var t = this.ui.toggle_check.getComponent(cc.Toggle).isChecked;
        if (this.ui.lb_Extra.node.active = t,
        t) {
            var n = e > 0;
            if (this.ui.lb_Extra.node.active = n,
            n) {
                var o = app.Store2Manager().GetChoseSubChannel();
                this.ui.lb_Extra.string = app.i18n.t("UI_UIStore_Extra") + "+" + e + o.multiple_unit
            }
        }
        this.UpdateActivity()
    }
    ,
    t.prototype.UpdateActivity = function() {
        this.ui.node_UIAccMessage.removeAllChildren(),
        this.ui.node_UIAccMessage.height = 0;
        var e = app.Store2Manager().GetChoseNewChannelList()
          , t = this.ui.editbox_phone.getComponent(cc.EditBox).string
          , n = app.Store2Manager().GetActSendPercent(e, t)
          , o = this.ui.toggle_check.getComponent(cc.Toggle).isChecked;
        if (this.ui.node_UIAccMessage.active = false,
        o && n) {
            var i = app.Store2Manager().GetChoseSubChannel();
            n.activity_info && (this.ui.node_UIAccMessage.active = true,
            this.AddAccMessage(n.activity_info, i));
            var a = n.channel_recharge_activity_info;
            if (a) {
                a.length > 0 && (this.ui.node_UIAccMessage.active = true);
                for (var r = 0; r < a.length; r++) {
                    var s = a[r];
                    this.AddAccMessage(s, i)
                }
            }
        }
    }
    ,
    t.prototype.AddAccMessage = function(e, t) {
        var n = cc.instantiate(this.UIAccMessage);
        this.ui.node_UIAccMessage.addChild(n),
        this.ui.node_UIAccMessage.height += n.height,
        n.getComponent(this.UIAccMessage.name).UpdateActivity(e, t)
    }
    ,
    t.prototype.OnGoodsPay = function(e) {
        var t = app.StoreManager().GetPayGoodResult();
        t && (this._payTypeInfo.pay_type == r.PayType.Pay_Type_USDT ? app.FormManager().ShowForm(s.UINameDefine.UIStoreQRUSDT, e.amount, this._payChannelItem.usdt_desc) : app.FormManager().ShowForm(s.UINameDefine.UIStoreQR, t))
    }
    ,
    t.prototype.InitEditBoxStr = function() {
        app.GameConfigManager().GetGameConfig().recharge_default ? (this.ui.editbox_phone.string = app.GameConfigManager().GetGameConfig().recharge_default,
        this.EditboxEnded()) : this.ui.editbox_phone.string = ""
    }
    ,
    t.prototype.EditBoxGoldNumEnd = function() {
        this.EditboxEnded()
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (e == this.ui.toggle_check.name) {
            var n = this.ui.toggle_check.getComponent(cc.Toggle).isChecked;
            return this.UpdateExtraGold(),
            void app.Client.OnEvent(a.GameEventDefine.ACTIVITY_BONUS_CLICK, n)
        }
        if (t != this.ui.btn_buy) {
            if (t == this.ui.btn_bank) {
                var o = []
                  , i = app.Store2Manager().GetChoseTypeItem();
                return i.pay_type == r.PayType.Pay_Type_BANK ? o = i.banks : i.pay_type == r.PayType.Pay_Type_USDT && (o = app.Store2Manager().GetChoseTypeItem().protocol),
                void app.FormManager().ShowForm(s.UINameDefine.UIViBankName, {
                    data: o
                })
            }
        } else {
            var c = this.ui.editbox_phone.getComponent(cc.EditBox).string;
            this.GoPay(c)
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.ui.node_NumItem.removeAllChildren()
    }
    ,
    __decorate([d(cc.Prefab)], t.prototype, "PayPrefabItem", undefined),
    __decorate([d(cc.Prefab)], t.prototype, "UIAccMessage", undefined),
    __decorate([l, p("UI/Vietnam_DepositWithdraw/UIOnlinePay_V")], t)
}(o.default);
n.default = h,
module.exports = n
