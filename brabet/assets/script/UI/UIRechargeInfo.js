let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/HttpServerDefine")
  , r = require("../../Common/Define/UINameDefine")
  , s = require("../../Common/Define/EventWaitType")
  , c = require("../../Common/Define/TrackEventName")
  , l = require("../../Common/Define/TextDefine")
  , p = require("../../Common/Component/EditBoxRegExp")
  , d = cc._decorator
  , h = d.ccclass
  , u = d.property
  , _ = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.UserName_EditBox = null,
        t.Phone_EditBox = null,
        t.Email_EditBox = null,
        t.lblShopNum = null,
        t.lblAmountNum = null,
        t.NextPresented = null,
        t.Upid_EditBox = null,
        t.Taxid_EditBox = null,
        t.ZipCode_Editbox = null,
        t.Encrypted_EditBox = null,
        t.Upid_Node = null,
        t.BankUserName_Node = null,
        t.UserPhoneNumber_Node = null,
        t.UserEmail = null,
        t.Taxid_Node = null,
        t.lblCpfNode = null,
        t.ZipCode_Node = null,
        t.Encrypted_Node = null,
        t.RFC = null,
        t.RFC_EditBox = null,
        t.gold_icon = null,
        t.SendShopJson = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        var e = this;
        this.JS_Name = "UIRechargeInfo",
        this._urlIdx = 0,
        this.lblShopNum.string = "",
        this.lblAmountNum.string = "",
        this.UserName_EditBox.string = "",
        this.Phone_EditBox.string = "",
        this.Email_EditBox.string = "",
        this.RegEvent(i.GameEventDefine.COMPANY_PAYMENT, function() {
            e.CloseForm()
        }),
        this.gold_icon = this.GetWndNode("bg/layer/scrollview/view/content/bg_li/node_amount/label_symbol/spr_icon"),
        this.RFC_EditBox.addComponent(p.default).initRegExp(p.RegExpType.test)
    }
    ,
    t.prototype.OnShow = function(e) {
        var t = app.LocalDataManager().GetConfigObject("ShopAbroadPay");
        t && (this.UserName_EditBox.string = t.name ? t.name : "",
        this.Phone_EditBox.string = t.phone ? t.phone : "",
        this.Email_EditBox.string = t.email ? t.email : "",
        this.Taxid_EditBox.string = t.taxid ? app.ComUtil().translate(t.taxid) : "",
        this.ZipCode_Editbox.string = t.zipcode ? t.zipcode : "",
        this.Encrypted_EditBox.string = t.user_wallet ? t.user_wallet : "",
        this.RFC_EditBox.string = t.pay_rfc ? t.pay_rfc : ""),
        this.initJson(e),
        this.setData(e),
        app.ComTool().H5Platform() ? this.node.scale = 1 : this.node.scale = .7,
        this.onGetFaqInfo();
        var n = app.GameConfigManager().GetGoldIcomCondition;
        this.gold_icon.active = n
    }
    ,
    t.prototype.initJson = function(e) {
        if (this.SendShopJson = {
            account: "",
            channel_id: 0,
            amount: 0,
            Reward: 0,
            id: 0,
            name: "",
            phone: "",
            email: "",
            send_percent: 0,
            is_sale: 0,
            is_discount: 0,
            is_limited: 0,
            card_id: 0,
            taxid: "",
            zipcode: "",
            token: "",
            is_send: 0,
            user_wallet: "",
            join_activity: 0,
            is_limit_time: 0,
            pay_type: 0,
            bank_id: 0,
            usdt_target_type: 0,
            pay_rfc: ""
        },
        !e.id) {
            var t = app.StoreManager().GetDefaultChannel()
              , n = app.StoreManager().GetDefaultSubChannel();
            this.SendShopJson.channel_id = n.channel_id,
            this.SendShopJson.id = t.id
        }
    }
    ,
    t.prototype.setData = function(e) {
        for (var t in e)
            this.SendShopJson.hasOwnProperty(t) && (this.SendShopJson[t] = e[t]);
        app.StoreManager().ChosePayChennelId = this.SendShopJson.channel_id;
        var n = app.StoreManager().GetChannel(this.SendShopJson.channel_id)
          , o = app.StoreManager().GetSubChannel(this.SendShopJson.channel_id)
          , i = Number(this.SendShopJson.amount) + Number(this.SendShopJson.Reward);
        this.lblShopNum.string = "" + i;
        var a = app.GameConfigManager().GetCurrency;
        1 == n.is_usdt && (this.lblShopNum.string = "" + Big(i).times(Number(n.rate)).toNumber(),
        a = app.i18n.t("UI_Shop_USDT_TetherText")),
        this.lblAmountNum.string = a + this.SendShopJson.amount + o.multiple_unit,
        this.NextPresented && (this.SendShopJson.send_percent > 0 ? (i = Number(this.SendShopJson.amount) + Number(this.SendShopJson.amount) * Number(this.SendShopJson.send_percent) / 100,
        this.lblShopNum.string = "" + app.ScoreUtil().coinFixed2(i),
        this.NextPresented.getChildByName("label_chip_m").active = true,
        1 == n.is_usdt && (this.lblShopNum.string = "" + Big(i).times(Number(n.rate)).toNumber(),
        this.NextPresented.getChildByName("label_chip_m").active = false),
        this.NextPresented.getChildByName("label_plus").getComponent(cc.Label).string = "+" + this.SendShopJson.send_percent + "%",
        this.NextPresented.getChildByName("label_chip_m").getComponent(cc.Label).string = "" + this.SendShopJson.amount,
        this.NextPresented.active = true) : this.NextPresented.active = false);
        var r = app.GameConfigManager().GetGameConfig().pay_userinfo_fields;
        r && (this.Upid_Node.active = 1 == r.pay.upi,
        this.BankUserName_Node.active = !!r.pay.name,
        this.UserPhoneNumber_Node.active = !!r.pay.phone,
        this.UserEmail.active = !!r.pay.email,
        this.ZipCode_Node.active = 1 == r.pay.zipcode,
        this.Taxid_Node.active = !!r.pay.taxid,
        this.lblCpfNode.active = this.Taxid_Node.active && "" != r.cpf_tips,
        this.lblCpfNode.getComponent(cc.Label).string = r.cpf_tips,
        this.RFC.active = !!r.pay.rfc,
        this.Encrypted_Node.active = false),
        2 == n.usdt_type && n.is_usdt && (this.Upid_Node.active = false,
        this.BankUserName_Node.active = false,
        this.UserPhoneNumber_Node.active = false,
        this.UserEmail.active = false,
        this.RFC.active = false,
        this.ZipCode_Node.active = false,
        this.Taxid_Node.active = false,
        this.lblCpfNode.active = false,
        this.Encrypted_Node.active = true),
        0 == app.StoreManager().GetIsPop() && this.gotoPay()
    }
    ,
    t.prototype.gotoPay = function() {
        var e = this
          , t = app.StoreManager().GetChannel(this.SendShopJson.channel_id)
          , n = app.StoreManager().GetSubChannel(this.SendShopJson.channel_id);
        if (1 == app.StoreManager().GetIsPop()) {
            if (t.is_usdt && 2 == t.usdt_type) {
                if ("" == this.Encrypted_EditBox.string && this.Encrypted_Node.active)
                    return void app.SysNotifyManager().ShowToast("UI_Cash_USDT_inputEncryptedaccount")
            } else {
                if (this.BankUserName_Node.active) {
                    if ("" == this.UserName_EditBox.string)
                        return void app.SysNotifyManager().ShowToast("UI.System_17");
                    if (app.StringUtil().isSpecialChar(this.UserName_EditBox.string))
                        return void app.SysNotifyManager().ShowToast("UI.System_47")
                }
                if ("" == this.Phone_EditBox.string && this.UserPhoneNumber_Node.active)
                    return void app.SysNotifyManager().ShowToast("UI.System_18");
                if ("" == this.Email_EditBox.string && this.UserEmail.active)
                    return void app.SysNotifyManager().ShowToast("UI.System_19");
                if ("" == this.Taxid_EditBox.string && this.Taxid_Node.active)
                    return void app.SysNotifyManager().ShowToast("Code_PleaseEnterTaxid");
                if ("" == this.RFC_EditBox.string && this.RFC.active)
                    return void app.SysNotifyManager().ShowToast("UI_Rfc_Null");
                if ("" == this.ZipCode_Editbox.string && this.ZipCode_Node.active)
                    return void app.SysNotifyManager().ShowToast("Code_PleaseEnterZipCode");
                if (this.UserEmail.active && (this.Email_EditBox.string = this.Email_EditBox.string.replace(/\s+/g, ""),
                !/^[\w.\-]+@(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,3}$/.test(this.Email_EditBox.string)))
                    return void app.SysNotifyManager().ShowToast("UI.System_20")
            }
            this.SendShopJson.name = this.UserName_EditBox.string,
            this.SendShopJson.phone = this.Phone_EditBox.string,
            this.SendShopJson.email = this.Email_EditBox.string,
            this.SendShopJson.taxid = this.Taxid_EditBox.string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
            this.SendShopJson.zipcode = this.ZipCode_Editbox.string,
            this.SendShopJson.user_wallet = this.Encrypted_EditBox.string,
            this.RFC.active && (this.SendShopJson.pay_rfc = this.RFC_EditBox.string),
            app.LocalDataManager().SetConfigObject("ShopAbroadPay", this.SendShopJson)
        } else
            this.SendShopJson.name = "",
            this.SendShopJson.phone = "",
            this.SendShopJson.email = "",
            this.SendShopJson.taxid = "",
            this.SendShopJson.zipcode = "",
            this.SendShopJson.user_wallet = "",
            this.SendShopJson.pay_rfc = "";
        app.NativeMgr().AdjustlogEvent(c.default.OPEN_RECHARGE),
        app.EventTrackManager().LogEvent(c.default.OPEN_RECHARGE, {
            content_ids: this.SendShopJson.id,
            content_name: "PRODUCT_" + this.SendShopJson.amount,
            currency: "PHP",
            value: this.SendShopJson.amount
        });
        var o = 0;
        this.SendShopJson.send_percent > 0 && 0 == this.SendShopJson.is_sale && (o = 1);
        var l = app.GameConfigManager().GetGameConfig().pay_api_urls;
        l && l.length > 0 && (this.currentUrl = l[this._urlIdx],
        this._urlIdx++,
        this._urlIdx >= l.length && (this._urlIdx = 0));
        var p = (this.currentUrl ? this.currentUrl : app.ClientConfigManager().ApiUrl) + a.HttpAPI.GOODS_PAY + "?";
        if (this.SendShopJson.token = app.UserManager().GetUserInfo.token,
        this.SendShopJson.is_send = o,
        p += app.HttpRequest().formatParams(this.SendShopJson),
        t.is_usdt && 2 == t.usdt_type) {
            var d = {
                token: app.UserManager().GetUserInfo.token,
                channel_id: this.SendShopJson.channel_id,
                id: this.SendShopJson.channel_id,
                amount: this.SendShopJson.amount,
                type: n.type,
                is_send: this.SendShopJson.is_send ? 1 : 0,
                is_sale: this.SendShopJson.is_sale,
                user_wallet: this.Encrypted_EditBox.string,
                join_activity: this.SendShopJson.join_activity,
                pay_rfc: this.SendShopJson.pay_rfc
            };
            return app.StoreManager().RequstPayGood(d),
            void this.CloseForm()
        }
        var h = function() {
            app.Client.OnEvent(i.GameEventDefine.CLOSE_PAY),
            e.CloseForm()
        };
        return 2 == t.return_type ? (app.StoreManager().RequstPayGood(this.SendShopJson),
        app.Client.OnEvent("ModalLayer", s.EventWaitType.OpenNetNow),
        void h()) : 1 == t.return_type ? (h(),
        void cc.sys.openURL(encodeURI(p))) : void (3 == t.return_type ? (1 == app.GameConfigManager().GetGameConfig().is_open_browser ? cc.sys.openURL(encodeURI(p)) : app.ComTool().H5Platform() ? app.FormManager().ShowForm(r.UINameDefine.UIInsideWebView, {
            url: p
        }) : cc.sys.openURL(encodeURI(p)),
        h()) : cc.sys.openURL(encodeURI(p)))
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_service" != e ? "button_withdraw" == e && this.gotoPay() : cc.systemEvent.emit("open_help_panel")
    }
    ,
    t.prototype.TaxChangeTextStr = function(e) {
        if (e) {
            var t = app.ComUtil().translate(e);
            t && (this.Taxid_EditBox.string = t)
        }
    }
    ,
    t.prototype.TaxEndTextStr = function(e) {
        e.string && (/^[0-9.-]+$/.test(e.string) || (this.Taxid_EditBox.string = ""))
    }
    ,
    t.prototype.onGetFaqInfo = function() {
        var e = app.TextManager().GetTextInfo(l.TextDefine.usdt_withdraw);
        e && (this.GetWndNode("/bg/layer/scrollview/view/content/layout/li_Encrypted/lbl_encrypted", this.node).getComponent(cc.Label).string = e)
    }
    ,
    __decorate([u(cc.EditBox)], t.prototype, "UserName_EditBox", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "Phone_EditBox", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "Email_EditBox", undefined),
    __decorate([u(cc.Label)], t.prototype, "lblShopNum", undefined),
    __decorate([u(cc.Label)], t.prototype, "lblAmountNum", undefined),
    __decorate([u(cc.Node)], t.prototype, "NextPresented", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "Upid_EditBox", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "Taxid_EditBox", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "ZipCode_Editbox", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "Encrypted_EditBox", undefined),
    __decorate([u(cc.Node)], t.prototype, "Upid_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "BankUserName_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "UserPhoneNumber_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "UserEmail", undefined),
    __decorate([u(cc.Node)], t.prototype, "Taxid_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "lblCpfNode", undefined),
    __decorate([u(cc.Node)], t.prototype, "ZipCode_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "Encrypted_Node", undefined),
    __decorate([u(cc.Node)], t.prototype, "RFC", undefined),
    __decorate([u(cc.EditBox)], t.prototype, "RFC_EditBox", undefined),
    __decorate([h], t)
}(o.default);
n.default = _,
module.exports = n
