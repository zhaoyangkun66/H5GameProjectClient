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
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(a.GameEventDefine.RECHARGE_ITEM_CLICK, this.OnRechargeItemClick),
        this.RegEvent(a.GameEventDefine.GOODS_PAY, this.OnGoodsPay),
        this.RegEvent(a.GameEventDefine.BANK_CODE_CLICK, this.UpdateBank)
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.InitInfo = function() {
        var e = app.Store3Manager().GetChoseSubChannel();
        this.ui.label_pay.string = e.name,
        this.ui.label_red.string = app.i18n.t("UI_ViPay_MinimumDepositLimit") + e.min_amount + "\uff01",
        this.ui.label_red.node.active = true,
        this.ui.label_astrictNum.string = e.min_amount + "~" + e.max_amount,
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
          , t = app.Store3Manager().GetChoseChannelItem();
        t.pay_type != r.PayType.Pay_Type_USDT && t.pay_type != r.PayType.Pay_Type_BANK || (e = true),
        this.ui.node_bank.active = e,
        app.Store3Manager().PayChoseBankId = -1,
        app.Store3Manager().ChoseUsdtId = -1
    }
    ,
    t.prototype.UpdateBank = function(e) {
        var t = ""
          , n = app.Store3Manager().GetChoseChannelItem();
        n.pay_type == r.PayType.Pay_Type_BANK ? t = e.bank_name : n.pay_type == r.PayType.Pay_Type_USDT && (t = e.name),
        this.ui.label_bank.string = t
    }
    ,
    t.prototype.NodeRatioInfo = function() {
        var e = app.Store3Manager().GetChoseChannelItem();
        e.recharge_tips ? (this.ui.label_radio.string = e.recharge_tips,
        this.ui.node_ratio.active = true) : this.ui.node_ratio.active = false
    }
    ,
    t.prototype.RechargeListInfo = function() {
        var e = this.ui.toggle_check.getComponent(cc.Toggle).isChecked;
        this.ui.node_NumItem.removeAllChildren();
        var t = app.Store3Manager().GetChoseSubChannel();
        this.ui.label_symbol.string = t.multiple_unit;
        var n = app.GameConfigManager().GetCurrency;
        1 == app.Store3Manager().GetChoseChannelItem().is_usdt && (n = app.i18n.t("UI_Shop_USDT_TetherText")),
        this.ui.label_prefix.string = n;
        for (var o = app.Store3Manager().GetChoseNewChannelList().act_send, i = 0; i < o.length; i++) {
            var a = cc.instantiate(this.PayPrefabItem);
            this.ui.node_NumItem.addChild(a),
            a.getComponent(this.PayPrefabItem.name).InitInfo(o[i], t, i, e)
        }
    }
    ,
    t.prototype.NodeConversion = function() {
        this.ui.node_conversion.active = false
    }
    ,
    t.prototype.UpdateBelow = function() {
        var e = app.Store3Manager().GetChoseChannelItem();
        this.ui.label_below.string = e.show_desc,
        this.ui.node_ratio.active = true,
        e.recharge_tips && (this.ui.label_radio.string = e.recharge_tips)
    }
    ,
    t.prototype.GoPay = function(e) {
        if ("" != e) {
            var t = app.Store3Manager().GetChoseChannelItem();
            if (t.is_usdt && 2 == t.usdt_type)
                this.showRechargeInfoForm(e);
            else {
                var n = app.Store3Manager().GetChoseSubChannel();
                if (n.type != i.StorePayType.GooglePay)
                    this.showRechargeInfoForm(e);
                else {
                    var o = {
                        token: app.UserManager().GetUserInfo.token,
                        channel_id: t.id,
                        id: t.id,
                        amount: e,
                        type: n.type
                    };
                    app.StoreManager().RequstPayGood(o)
                }
            }
        } else
            app.SysNotifyManager().ShowToast("UI.System_22")
    }
    ,
    t.prototype.showRechargeInfoForm = function(e) {
        var t = app.Store3Manager().GetChoseNewChannelList()
          , n = Number(e);
        if (n > Number(t.max_amount))
            app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_26") + t.max_amount);
        else if (n < Number(t.min_amount))
            app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_27") + t.min_amount);
        else {
            var o = 1 == this.ui.toggle_check.getComponent(cc.Toggle).isChecked ? 1 : 0
              , i = 0;
            if (0 != o) {
                var a = app.Store3Manager().GetActSendPercent(t, n);
                a && (i = Number(a.send_percent))
            }
            var r = app.Store3Manager().GetChoseChannelItem()
              , c = {
                channel_id: r.id,
                id: r.id,
                amount: n,
                send_percent: i,
                is_sale: 0,
                pay_type: app.Store3Manager().ChosePayTypeId,
                bank_id: app.Store3Manager().PayChoseBankId,
                usdt_target_type: app.Store3Manager().ChoseUsdtId
            };
            this.ui.node_btnNode.active && (c.join_activity = o),
            app.FormManager().ShowForm(s.UINameDefine.UIRechargeInfo, c)
        }
    }
    ,
    t.prototype.EditboxEnded = function() {
        var e = this.ui.editbox_phone.getComponent(cc.EditBox).string;
        this.ui.label_red.node.active = Number(app.Store3Manager().GetChoseSubChannel().min_amount) > Number(e);
        var t = 0;
        this.ui.toggle_check.getComponent(cc.Toggle).isChecked && (t = app.Store3Manager().GetPercentGold(e)),
        this.UpdateExtraGold(t),
        app.Client.OnEvent(a.GameEventDefine.ONLINE_PAY_EDITOBX_ENDED, e)
    }
    ,
    t.prototype.OnRechargeItemClick = function(e) {
        this.ui.editbox_phone.getComponent(cc.EditBox).string = e.amount,
        this.ui.label_red.node.active = Number(app.Store3Manager().GetChoseSubChannel().min_amount) > Number(e.amount),
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
                var o = app.Store3Manager().GetChoseSubChannel();
                this.ui.lb_Extra.string = app.i18n.t("UI_UIStore_Extra") + "+" + e + o.multiple_unit
            }
        }
        this.UpdateActivity()
    }
    ,
    t.prototype.UpdateActivity = function() {
        var e = this.ui.node_UIAccMessage
          , t = app.Store3Manager().GetChoseNewChannelList()
          , n = this.ui.editbox_phone.getComponent(cc.EditBox).string
          , o = app.Store3Manager().GetActSendPercent(t, n)
          , i = this.ui.toggle_check.getComponent(cc.Toggle).isChecked;
        if (o && o.activity_info && i && this.ui.toggle_check.active) {
            var a = o.activity_info.start_time_stamp
              , r = o.activity_info.end_time_stamp;
            a && r && this.CheckDateEvent(a, r, 1) && (this._SingleTimeData = o,
            this.schedule(this.UpdateTime, 1)),
            e.active = true,
            this.ui.lb_tit.string = o.activity_info.name;
            var s = o.activity_info.use_num + "/" + o.activity_info.total_num;
            this.ui.lb_activityNum.string = "" + s
        } else
            e.active = false
    }
    ,
    t.prototype.CheckDateEvent = function(e, t, n) {
        var o = app.Store3Manager().GetChoseSubChannel().sale.cur_time - Math.round(Date.now() / 1e3);
        o = o || 0;
        var i = Math.round(Date.now() / 1e3) + o;
        return !(0 == n || !e || !t || i > t || i < e)
    }
    ,
    t.prototype.UpdateTime = function() {
        if (this._SingleTimeData) {
            var e = app.Store3Manager().GetChoseSubChannel().sale.cur_time - Math.round(Date.now() / 1e3);
            e = e || 0;
            var t = this._SingleTimeData.activity_info.end_time_stamp - (Math.round(Date.now() / 1e3) + e);
            if (t < 1)
                return this.unscheduleAllCallbacks(),
                void (this.ui.node_UIAccMessage.active = false);
            this.ui.lb_tit.string = this._SingleTimeData.activity_info.name + "    " + app.TimeUtil().FormatTimeWithNum(t);
            var n = this._SingleTimeData.activity_info.use_num + "/" + this._SingleTimeData.activity_info.total_num;
            this.ui.lb_activityNum.string = "" + n
        }
    }
    ,
    t.prototype.OnGoodsPay = function(e) {
        var t = app.StoreManager().GetPayGoodResult();
        if (t) {
            var n = app.Store3Manager().GetChoseChannelItem();
            n.is_usdt ? app.FormManager().ShowForm(s.UINameDefine.UIStoreQRUSDT, e.amount, n.usdt_desc) : app.FormManager().ShowForm(s.UINameDefine.UIStoreQR, t)
        }
    }
    ,
    t.prototype.InitEditBoxStr = function() {
        app.GameConfigManager().GetGameConfig().recharge_default ? (this.ui.editbox_phone.string = app.GameConfigManager().GetGameConfig().recharge_default,
        this.EditboxEnded()) : this.ui.editbox_phone.string = ""
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
                  , i = app.Store3Manager().GetChoseChannelItem();
                return i.pay_type == r.PayType.Pay_Type_BANK ? o = i.banks : i.pay_type == r.PayType.Pay_Type_USDT && (o = app.Store3Manager().GetChoseType().protocol),
                void app.FormManager().ShowForm(s.UINameDefine.UIViBankName_2, {
                    data: o
                })
            }
        } else {
            var c = this.ui.editbox_phone.getComponent(cc.EditBox).string;
            this.GoPay(c)
        }
    }
    ,
    __decorate([d(cc.Prefab)], t.prototype, "PayPrefabItem", undefined),
    __decorate([l, p("UI/Vietnam_DepositWithdraw/UIOnlinePay_2_V")], t)
}(o.default);
n.default = h,
module.exports = n
