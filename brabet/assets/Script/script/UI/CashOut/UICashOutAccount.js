let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Component/EditBoxRegExp")
  , a = require("../../../Common/DB/Hall/CashOutManager")
  , r = require("../../../Common/Define/GameEventDefine")
  , s = require("../../../Common/Define/ShareDefine")
  , c = require("../../../Common/Define/TextDefine")
  , l = require("../../../Common/Define/UINameDefine")
  , p = cc._decorator
  , d = p.ccclass
  , h = p.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.AccountNumber = null,
        t.IfSCCode = null,
        t.BankName = null,
        t.BranchBankName = null,
        t.Email = null,
        t.PhoneNumber = null,
        t.BankUserName = null,
        t.UpiNode = null,
        t.Account_Number_Node = null,
        t.Bank_name_Node = null,
        t.IFCS_Code_Node = null,
        t.Phone_Number_Node = null,
        t.Email_Address_Node = null,
        t.User_Name_Node = null,
        t.Texid_Node = null,
        t.lblCpfNode = null,
        t.ZipCode_Node = null,
        t.Account_Type = null,
        t.Account_digit = null,
        t.SelectBankName = null,
        t.UpiAllNode = null,
        t.Pixkey_Node = null,
        t.PixType_Node = null,
        t.BranchBankName_Node = null,
        t.li_Encrypted_Node = null,
        t.li_Encrypted_NodeEdit = null,
        t.scrollview_PixType = null,
        t.li_Bank_Gcash = null,
        t.li_Province = null,
        t.li_City = null,
        t.li_GcashNumber = null,
        t.li_BeneficiarvName = null,
        t.li_PayMayaPhilippines = null,
        t.li_rfc = null,
        t.li_card = null,
        t.lb_KindTip = null,
        t.lb_KindTip1 = null,
        t.lbl_PleaseTip = null,
        t.lbl_PleaseTip1 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(r.GameEventDefine.BIND_USER_WALLET, this.onBindUserWallet),
        this.RegEvent(r.GameEventDefine.BIND_BANK_ACCOUNT, this.onBindBankAccount),
        this.RegEvent(r.GameEventDefine.BANK_CODE_CLICK, this.onSetBankCode),
        this.lb_KindTip = this.GetWndComponent("view/content/layout_con/label_Kind_tips", cc.Label),
        this.lb_KindTip1 = this.GetWndComponent("view/content/li_Encrypted/label_Kind_tips", cc.Label),
        this.lbl_PleaseTip = this.GetWndComponent("view/content/layout_con/label_tips", cc.Label),
        this.lbl_PleaseTip1 = this.GetWndComponent("view/content/li_Encrypted/label_tips", cc.Label),
        this.rfcEditbox = this.GetWndComponent("view/content/layout_con/li_RFC/node_Rfc1/node/editbox", cc.EditBox),
        this.rfcEditbox.addComponent(i.default).initRegExp(i.RegExpType.test),
        this.curpEditbox = this.GetWndComponent("view/content/layout_con/li_RFC/node_Rfc2/node/editbox", cc.EditBox),
        this.curpEditbox.addComponent(i.default).initRegExp(i.RegExpType.test),
        this.debitEditbox = this.GetWndComponent("view/content/layout_con/li_Card/node_card1/node/editbox", cc.EditBox),
        this.debitEditbox.addComponent(i.default).initRegExp(i.RegExpType.test),
        this.phoneEditbox = this.GetWndComponent("view/content/layout_con/li_Card/node_card2/node/editbox", cc.EditBox),
        this.phoneEditbox.addComponent(i.default).initRegExp(i.RegExpType.test),
        this.clabeEditbox = this.GetWndComponent("view/content/layout_con/li_Card/node_card3/node/editbox", cc.EditBox),
        this.clabeEditbox.addComponent(i.default).initRegExp(i.RegExpType.test)
    }
    ,
    t.prototype.OnEnable = function() {
        this.OnUpdateShowType(),
        this.UpdateKindTip()
    }
    ,
    t.prototype.UpdateKindTip = function() {
        var e = app.TextManager().GetTextInfo(c.TextDefine.withdraw_add_text)
          , t = app.TextManager().GetTextInfo(c.TextDefine.withdraw_please_mask);
        e ? (this.lb_KindTip.node.active = true,
        this.lb_KindTip1.node.active = true,
        this.lb_KindTip.string = this.lb_KindTip1.string = e) : (this.lb_KindTip.node.active = false,
        this.lb_KindTip1.node.active = false),
        this.lbl_PleaseTip.string = this.lbl_PleaseTip1.string = t || app.i18n.t("UI.cashout_1_bank_14")
    }
    ,
    t.prototype.OnUpdateShowType = function() {
        if (this.SendAccountType = 1,
        this.SendPrepayType = Number(app.UserManager().GetUserInfo.prepay_type),
        !this.SendPrepayType) {
            var e = app.UserManager().GetUserWallet();
            e && (this.SendPrepayType = e.phl_default_bank)
        }
        app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.Bank ? (cc.find("/view/content/layout_con", this.node).active = true,
        this.li_Encrypted_Node.active = false) : (cc.find("/view/content/layout_con", this.node).active = false,
        this.li_Encrypted_Node.active = true),
        this.Email.getComponent(cc.EditBox).maxLength = 100,
        this.ClosePixTypeList(),
        this.setBindBankUserData(),
        this.setBindBankEditBoxList()
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        this.Log(e),
        "button_bind" != e ? "editbox_bank_name" != e ? "editbox_pix_type" != e ? "btn_close_pix_type" != e ? "toggle1" != e && "toggle2" != e ? "toggle1_Gcash" != e && "toggle2_Gcash" != e && "toggle3_Gcash" != e ? "CPF" != e && "CNPJ" != e && "PHONE" != e && "EMAIL" != e && "code_EVP" != e ? "toggleRfc_1" != e && "toggleRfc_2" != e ? "toggleCard_1" != e && "toggleCard_2" != e && "toggleCard_3" != e || this.CardTypeToggleCallBack(n) : this.RFCTypeToggleCallBack(n) : this.PixTypeCallBack(e) : this.PrepayTypeToggleCallBack(n) : this.AccountTypeToggleCallBack(n) : this.ClosePixTypeList() : this.openPixTypeList() : this.OpenBankCode() : this.SendBindBankNumBtnCallBack()
    }
    ,
    t.prototype.onBindUserWallet = function(e) {
        e || this.setBindBankUserData()
    }
    ,
    t.prototype.onBindBankAccount = function(e) {
        e || this.setBindBankUserData()
    }
    ,
    t.prototype.setBindBankUserData = function() {
        var e = app.UserManager().GetUserInfo;
        if (e) {
            if (this.AccountNumber.getComponent(cc.EditBox).string = "",
            this.BankUserName.getComponent(cc.EditBox).string = "",
            this.IfSCCode.getComponent(cc.EditBox).string = "",
            this.BankName.getComponent(cc.EditBox).string = "",
            this.BranchBankName.getComponent(cc.EditBox).string = "",
            this.PhoneNumber.getComponent(cc.EditBox).string = "",
            this.Email.getComponent(cc.EditBox).string = "",
            this.UpiNode.getComponent(cc.EditBox).string = "",
            this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.Account_digit.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.SelectBankName.getChildByName("editbox_bank_name").getComponent(cc.EditBox).string = "",
            this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = "",
            this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).string = "",
            this.li_Province.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.li_City.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string = "",
            this.rfcEditbox.string = "",
            this.curpEditbox.string = "",
            this.debitEditbox.string = "",
            this.phoneEditbox.string = "",
            this.clabeEditbox.string = "",
            e.bank_account && "" !== e.bank_account && (this.AccountNumber.getComponent(cc.EditBox).string = e.bank_account,
            this.AccountNumber.getComponent(cc.EditBox).placeholder = ""),
            e.cardholder_name && "" !== e.cardholder_name && (this.BankUserName.getComponent(cc.EditBox).string = e.cardholder_name,
            this.BankUserName.getComponent(cc.EditBox).placeholder = ""),
            e.ifsc_code && "" !== e.ifsc_code && (this.IfSCCode.getComponent(cc.EditBox).string = e.ifsc_code,
            this.IfSCCode.getComponent(cc.EditBox).placeholder = ""),
            e.branch_bank && "" !== e.branch_bank && (this.BranchBankName.getComponent(cc.EditBox).string = e.branch_bank,
            this.BranchBankName.getComponent(cc.EditBox).placeholder = ""),
            e.cardholder_tel && "" !== e.cardholder_tel && (this.PhoneNumber.getComponent(cc.EditBox).string = e.cardholder_tel,
            this.PhoneNumber.getComponent(cc.EditBox).placeholder = ""),
            e.email && "" !== e.email && (this.Email.getComponent(cc.EditBox).string = e.email,
            this.Email.getComponent(cc.EditBox).placeholder = ""),
            e.upi && "" !== e.upi && (this.UpiNode.getComponent(cc.EditBox).string = e.upi,
            this.UpiNode.getComponent(cc.EditBox).placeholder = ""),
            e.taxid && "" !== e.taxid && (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = app.ComUtil().translate(e.taxid + ""),
            this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.zipcode && "" !== e.zipcode && (this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e.zipcode,
            this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.account_digit && "" !== e.account_digit && (this.Account_digit.getChildByName("editbox").getComponent(cc.EditBox).string = e.account_digit,
            this.Account_digit.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
            e.account_type && "" !== e.account_type && (1 == Number(e.account_type) ? (this.SendAccountType = 1,
            cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
            cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).isChecked = false) : (this.SendAccountType = 2,
            cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).check(),
            cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).isChecked = false)),
            e.bank_name && "" !== e.bank_name ? (this.SelectBankCodeData = {
                bank_code: e.bank_code,
                bank_name: e.bank_name
            },
            this.SelectBankName.getChildByName("editbox_bank_name").getComponent(cc.EditBox).string = e.bank_name,
            this.SelectBankName.getChildByName("editbox_bank_name").getComponent(cc.EditBox).placeholder = "",
            this.BankName.getComponent(cc.EditBox).string = e.bank_name,
            this.BankName.getComponent(cc.EditBox).placeholder = "") : this.SelectBankCodeData = null,
            e.pix_key && "" !== e.pix_key) {
                var t = e.pix_key;
                "CPF" != e.pix_type && "CNPJ" != e.pix_type || (t = app.ComUtil().translate(e.pix_key + "")),
                this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = t,
                this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""
            }
            if (this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = "CPF",
            e.pix_type && "" !== e.pix_type) {
                this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = e.pix_type,
                this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).placeholder = "";
                for (var n = cc.find("/view/content/layout_con/li_pix_type/toggleContainer", this.node).children, o = 0; o < n.length; o++) {
                    var i = n[o];
                    i.name == e.pix_type ? i.getComponent(cc.Toggle).check() : i.getComponent(cc.Toggle).isChecked = false
                }
                app.CashOutManager().SetSendPixType(e.pix_type)
            }
            e.user_wallet && "" !== e.user_wallet && (this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).string = e.user_wallet,
            this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).placeholder = ""),
            e.province && "" !== e.province && (this.li_Province.getChildByName("editbox").getComponent(cc.EditBox).string = e.province,
            this.li_Province.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.city && "" !== e.city && (this.li_City.getChildByName("editbox").getComponent(cc.EditBox).string = e.city,
            this.li_City.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.gcash_number && "" !== e.gcash_number && (this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string = e.gcash_number,
            this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.pay_maya_account && "" !== e.pay_maya_account && (this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string = e.pay_maya_account,
            this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
            e.beneficiary_name && "" !== e.beneficiary_name && (this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string = e.beneficiary_name,
            this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).placeholder = "");
            var a = this.GetWndNode("node_rfcToggle/node/toggleContainer", this.li_rfc);
            this.SendRFCType = 0;
            var r = false;
            for (o = 0; o < a.children.length; o++) {
                var s = a.children[o]
                  , c = this.GetSubstr(s.name, "toggleRfc_");
                !r && s.active ? (r = true,
                this.SendRFCType = Number(c),
                s.getComponent(cc.Toggle).check()) : s.getComponent(cc.Toggle).isChecked = false
            }
            if (e.document_type >= 0) {
                var l = false;
                for (o = 0; o < a.children.length; o++)
                    (s = a.children[o]).getComponent(cc.Toggle).isChecked = false,
                    c = this.GetSubstr(s.name, "toggleRfc_"),
                    Number(c) == e.document_type && s.active && (l = true,
                    this.SendRFCType = Number(c),
                    s.getComponent(cc.Toggle).check());
                if (!l)
                    for (o = 0; o < a.children.length; o++)
                        (s = a.children[o]).active ? (c = this.GetSubstr(s.name, "toggleRfc_"),
                        l = true,
                        this.SendRFCType = Number(c),
                        s.getComponent(cc.Toggle).check()) : s.getComponent(cc.Toggle).isChecked = false
            }
            this.ShowRfcChildren(),
            e.repay_rfc && "" !== e.repay_rfc && (this.rfcEditbox.string = e.repay_rfc,
            this.rfcEditbox.placeholder = ""),
            e.repay_curp && "" !== e.repay_curp && (this.curpEditbox.string = e.repay_curp,
            this.curpEditbox.placeholder = "");
            var p = this.GetWndNode("node_cardToggle/node/toggleCard", this.li_card);
            this.SendCardType = 0;
            var d = false;
            for (o = 0; o < p.children.length; o++)
                s = p.children[o],
                !d && s.active ? (d = true,
                c = this.GetSubstr(s.name, "toggleCard_"),
                this.SendCardType = Number(c),
                s.getComponent(cc.Toggle).check()) : s.getComponent(cc.Toggle).isChecked = false;
            if (e.card_type >= 0) {
                for (l = false,
                o = 0; o < p.children.length; o++)
                    (s = p.children[o]).getComponent(cc.Toggle).isChecked = false,
                    c = this.GetSubstr(s.name, "toggleCard_"),
                    Number(c) == e.card_type && s.active && (l = true,
                    this.SendCardType = Number(c),
                    s.getComponent(cc.Toggle).check());
                if (!l)
                    for (o = 0; o < p.children.length; o++)
                        (s = p.children[o]).active ? (l = true,
                        c = this.GetSubstr(s.name, "toggleCard_"),
                        this.SendCardType = Number(c),
                        s.getComponent(cc.Toggle).check()) : s.getComponent(cc.Toggle).isChecked = false
            }
            this.ShowCardChildren(),
            e.repay_card_debit && "" !== e.repay_card_debit && (this.debitEditbox.string = e.repay_card_debit,
            this.debitEditbox.placeholder = ""),
            e.repay_card_phone && "" !== e.repay_card_phone && (this.phoneEditbox.string = e.repay_card_phone,
            this.phoneEditbox.placeholder = ""),
            e.repay_card_clabe && "" !== e.repay_card_clabe && (this.clabeEditbox.string = e.repay_card_clabe,
            this.clabeEditbox.placeholder = ""),
            this.PrepayTypeToggleCallBack(this.SendPrepayType)
        }
    }
    ,
    t.prototype.ChoseBankGcash = function(e) {
        var t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay;
        if (1 == t.prepay_type) {
            var n = [1 == t.bank_card_type, 1 == t.gcash_type, 1 == t.pay_maya_type]
              , o = true;
            if (n.forEach(function(e) {
                e && (o = false)
            }),
            o)
                this.SendPrepayType = 0;
            else {
                var i = Number(e);
                if (!n[i - 1])
                    for (var a = 0; a < n.length; a++)
                        if (n[a]) {
                            i = a + 1;
                            break
                        }
                this.Log("\u6700\u7ec8\u9009\u4e2d\u7684\u5f00\u5173\u4e3a\uff1a" + i);
                var r = this.GetWndNode("toggleContainer/toggle1_Gcash", this.li_Bank_Gcash)
                  , s = this.GetWndNode("toggleContainer/toggle2_Gcash", this.li_Bank_Gcash)
                  , c = this.GetWndNode("toggleContainer/toggle3_Gcash", this.li_Bank_Gcash);
                this.SendPrepayType = i,
                r.getComponent(cc.Toggle).isChecked = false,
                s.getComponent(cc.Toggle).isChecked = false,
                c.getComponent(cc.Toggle).isChecked = false,
                1 == i ? r.getComponent(cc.Toggle).check() : 2 == i ? s.getComponent(cc.Toggle).check() : 3 == i && c.getComponent(cc.Toggle).check()
            }
        } else
            this.SendPrepayType = 0
    }
    ,
    t.prototype.ShowRfcChildren = function() {
        for (var e = 1; e < this.li_rfc.children.length; e++) {
            var t = this.li_rfc.children[e]
              , n = this.GetSubstr(t.name, "node_Rfc");
            t.active = Number(n) == this.SendRFCType
        }
    }
    ,
    t.prototype.GetSubstr = function(e, t) {
        var n = e.indexOf(t);
        return -1 !== n ? e.substring(n + t.length) : null
    }
    ,
    t.prototype.ShowCardChildren = function() {
        for (var e = 1; e < this.li_card.children.length; e++) {
            var t = this.li_card.children[e]
              , n = this.GetSubstr(t.name, "node_card");
            t.active = Number(n) == this.SendCardType
        }
    }
    ,
    t.prototype.setBindBankEditBoxList = function() {
        var e = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay
          , t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.weight
          , n = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.cpf_tips;
        if (e && t) {
            if (this.Account_Number_Node.active = 1 == e.account,
            this.Account_Number_Node.zIndex = -1 * Number(t.account),
            this.IFCS_Code_Node.active = 1 == e.ifsc_code,
            this.IFCS_Code_Node.zIndex = -1 * Number(t.ifsc_code),
            this.Phone_Number_Node.active = "1" == e.tel,
            this.Phone_Number_Node.zIndex = -1 * Number(t.tel),
            this.Email_Address_Node.active = "1" == e.email,
            this.Email_Address_Node.zIndex = -1 * Number(t.email),
            this.User_Name_Node.active = 1 == e.name,
            this.User_Name_Node.zIndex = -1 * Number(t.name),
            this.Texid_Node.active = "1" == e.taxid,
            this.Texid_Node.zIndex = -1 * Number(t.taxid),
            this.lblCpfNode.active = "" != n,
            this.lblCpfNode.getComponent(cc.Label).string = n,
            this.Account_Type.active = 1 == e.account_type,
            this.Account_Type.zIndex = -1 * Number(t.account_type),
            this.ZipCode_Node.active = 1 == e.zipcode,
            this.ZipCode_Node.zIndex = -1 * Number(t.zipcode),
            this.Account_digit.active = 1 == e.account_digit,
            this.Account_digit.zIndex = -1 * Number(t.account_digit),
            this.UpiAllNode.active = 1 == e.upi,
            this.UpiAllNode.zIndex = -1 * Number(t.upi),
            this.Pixkey_Node.active = "1" == e.pix_key,
            this.Pixkey_Node.zIndex = -1 * Number(t.pix_key),
            this.PixType_Node.active = "1" == e.pix_type,
            this.PixType_Node.zIndex = -1 * Number(t.pix_type),
            this.BranchBankName_Node.active = 1 == e.branch_bank,
            this.BranchBankName_Node.zIndex = -1 * Number(t.branch_bank),
            this.li_Bank_Gcash.active = 1 == e.prepay_type,
            this.li_Bank_Gcash.zIndex = -1 * Number(t.prepay_type),
            1 == e.prepay_type) {
                var o = this.GetWndNode("toggleContainer/toggle1_Gcash", this.li_Bank_Gcash)
                  , i = this.GetWndNode("toggleContainer/toggle2_Gcash", this.li_Bank_Gcash)
                  , a = this.GetWndNode("toggleContainer/toggle3_Gcash", this.li_Bank_Gcash);
                o.active = 1 == e.bank_card_type,
                o.zIndex = -1 * Number(t.bank_card_type),
                i.active = 1 == e.gcash_type,
                i.zIndex = -1 * Number(t.gcash_type),
                a.active = 1 == e.pay_maya_type,
                a.zIndex = -1 * Number(t.pay_maya_type);
                var r = 0 == e.bank_card_type && 0 == e.gcash_type && 0 == e.pay_maya_type;
                this.li_Bank_Gcash.active = !r;
                var s = [];
                1 == e.bank_card_type && s.push(app.i18n.t("UI_Cash_TitleBankcard")),
                1 == e.gcash_type && s.push(app.i18n.t("UI_Cash_TitleGcash")),
                1 == e.pay_maya_type && s.push(app.i18n.t("UI_Cash_TitlePayMaya")),
                this.GetWndComponent("view/content/layout_con/li_Bank_Gcash/label", cc.Label).string = s.join("/")
            }
            if (this.li_Province.active = 1 == e.province,
            this.li_Province.zIndex = -1 * Number(t.province),
            this.li_City.active = 1 == e.city,
            this.li_City.zIndex = -1 * Number(t.city),
            this.li_GcashNumber.active = 1 == e.gcash_number,
            this.li_GcashNumber.zIndex = -1 * Number(t.gcash_number),
            this.li_PayMayaPhilippines.active = 1 == e.pay_maya_account,
            this.li_PayMayaPhilippines.zIndex = -1 * Number(t.pay_maya_account),
            this.li_rfc.active = "1" == e.document_type,
            this.li_rfc.zIndex = -1 * Number(t.document_type),
            this.li_rfc.active && ((c = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_1", this.li_rfc)).active = "1" == e.repay_rfc,
            c.zIndex = -1 * Number(t.repay_rfc),
            (l = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_2", this.li_rfc)).active = "1" == e.repay_curp,
            l.zIndex = -1 * Number(t.repay_curp)),
            this.li_card.active = "1" == e.card_type,
            this.li_card.zIndex = -1 * Number(t.card_type),
            this.li_card.active) {
                var c, l;
                (c = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_1", this.li_card)).active = "1" == e.repay_card_debit,
                c.zIndex = -1 * Number(t.repay_card_debit),
                (l = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_2", this.li_card)).active = "1" == e.repay_card_phone,
                l.zIndex = -1 * Number(t.repay_card_phone);
                var p = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_3", this.li_card);
                p.active = "1" == e.repay_card_clabe,
                p.zIndex = -1 * Number(t.repay_card_clabe)
            }
            this.li_BeneficiarvName.active = 1 == e.beneficiary_name,
            this.li_BeneficiarvName.zIndex = -1 * Number(t.beneficiary_name),
            this.SelectBankName.active = false,
            this.Bank_name_Node.active = false;
            var d = app.UserManager().GetUserWallet();
            if (d && "1" == d.v_position ? (this.Bank_name_Node.active = 1 == e.bank,
            this.Bank_name_Node.zIndex = -1 * Number(t.bank)) : (this.SelectBankName.active = 1 == e.bank,
            this.SelectBankName.zIndex = -1 * Number(t.bank)),
            d)
                for (var h = cc.find("/view/content/layout_con/li_pix_type/toggleContainer", this.node), u = 0; u < d.pix_type_list.length; u++) {
                    var _ = d.pix_type_list[u];
                    h.getChildByName(_).active = true
                }
            this.PrepayTypeToggleCallBack(this.SendPrepayType)
        }
    }
    ,
    t.prototype.SendBindBankNumBtnCallBack = function() {
        var e = this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).string;
        if (app.CashOutManager().GetCurrentCashOutType() != a.CashOutType.USDT) {
            if (this.Texid_Node.active) {
                var t = this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, "");
                if (14 !== t.length && 11 !== t.length)
                    return void app.SysNotifyManager().ShowToast("UI.Shop_CPF_LengthHint")
            }
            if (this.li_rfc.active) {
                var n = this.rfcEditbox.string;
                if ("" == n.trim() && 1 == this.SendRFCType)
                    return void app.SysNotifyManager().ShowToast("UI_Rfc_Null");
                if ("" == (n = this.curpEditbox.string).trim() && 2 == this.SendRFCType)
                    return void app.SysNotifyManager().ShowToast("UI_CURP_Null")
            }
            if (this.li_card.active && ("" == this.debitEditbox.string.trim() && 1 == this.SendCardType || "" == this.phoneEditbox.string.trim() && 2 == this.SendCardType || "" == this.clabeEditbox.string.trim() && 3 == this.SendCardType))
                app.SysNotifyManager().ShowToast("UI_Card_Null");
            else {
                var o = app.UserManager().GetUserWallet()
                  , i = o ? o.v_position : 1
                  , r = this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                  , s = app.CashOutManager().GetSendPixType();
                "CPF" != s && "CNPJ" != s || (r = r.replace(/[&\|\\\*^%$ #@\-.]/g, "")),
                this.Email.getComponent(cc.EditBox).string = this.Email.getComponent(cc.EditBox).string.replace(/\s+/g, "");
                var c = {
                    type: i,
                    tel: this.PhoneNumber.getComponent(cc.EditBox).string,
                    token: app.UserManager().GetUserInfo.token,
                    bank_account: this.AccountNumber.getComponent(cc.EditBox).string,
                    bank_name: this.BankName.getComponent(cc.EditBox).string,
                    branch_bank: this.BranchBankName.getComponent(cc.EditBox).string,
                    ifsc_code: this.IfSCCode.getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
                    cardholder_name: this.BankUserName.getComponent(cc.EditBox).string,
                    email: this.Email.getComponent(cc.EditBox).string,
                    upi: this.UpiNode.getComponent(cc.EditBox).string,
                    account_type: this.SendAccountType,
                    taxid: this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
                    zipcode: this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                    account_digit: this.Account_digit.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
                    pix_key: r,
                    pix_type: this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string,
                    bank_code: "",
                    prepay_type: this.SendPrepayType,
                    province: this.li_Province.getChildByName("editbox").getComponent(cc.EditBox).string,
                    city: this.li_City.getChildByName("editbox").getComponent(cc.EditBox).string,
                    gcash_number: this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string,
                    pay_maya_account: this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string,
                    beneficiary_name: this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string,
                    document_type: this.SendRFCType,
                    card_type: this.SendCardType,
                    repay_rfc: "",
                    repay_curp: "",
                    repay_card_debit: "",
                    repay_card_phone: "",
                    repay_card_clabe: ""
                };
                this.SendRFCType > 0 && this.li_rfc.active && (1 == this.SendRFCType ? c.repay_rfc = this.rfcEditbox.string : 2 == this.SendRFCType && (c.repay_curp = this.curpEditbox.string)),
                this.SendCardType > 0 && this.li_card.active && (1 == this.SendCardType ? c.repay_card_debit = this.debitEditbox.string : 2 == this.SendCardType ? c.repay_card_phone = this.phoneEditbox.string : 3 == this.SendCardType && (c.repay_card_clabe = this.clabeEditbox.string)),
                this.SelectBankCodeData && (c.bank_code = this.SelectBankCodeData.bank_code,
                c.bank_name = this.SelectBankCodeData.bank_name),
                app.CashOutManager().RequstBindBankAccount(c)
            }
        } else
            app.CashOutManager().RequstBindUserWallet({
                token: app.UserManager().GetUserInfo.token,
                wallet: e
            })
    }
    ,
    t.prototype.AccountTypeToggleCallBack = function(e) {
        e && (1 == e ? (cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
        cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).isChecked = false) : (cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).check(),
        cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).isChecked = false),
        this.SendAccountType = e)
    }
    ,
    t.prototype.RFCTypeToggleCallBack = function(e) {
        if (e) {
            var t = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_1", this.li_rfc)
              , n = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_2", this.li_rfc);
            1 == e ? (t.getComponent(cc.Toggle).check(),
            n.getComponent(cc.Toggle).isChecked = false) : (n.getComponent(cc.Toggle).check(),
            t.getComponent(cc.Toggle).isChecked = false),
            this.SendRFCType = e,
            this.ShowRfcChildren()
        }
    }
    ,
    t.prototype.CardTypeToggleCallBack = function(e) {
        if (e) {
            var t = this.GetWndNode("node_cardToggle/node/toggleCard", this.li_card);
            this.SendCardType = e;
            for (var n = 0; n < t.children.length; n++) {
                var o = t.children[n]
                  , i = this.GetSubstr(o.name, "toggleCard_");
                Number(i) == this.SendCardType ? o.getComponent(cc.Toggle).check() : o.getComponent(cc.Toggle).isChecked = false
            }
            this.ShowCardChildren()
        }
    }
    ,
    t.prototype.PrepayTypeToggleCallBack = function(e) {
        if (this.ChoseBankGcash(e),
        app.GameConfigManager().GetGameConfig().version_position == s.Version_Position.Philippines) {
            e = this.SendPrepayType;
            var t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay
              , n = 1 == e;
            1 == t.city && (this.li_City.active = n),
            1 == t.province && (this.li_Province.active = n),
            1 == t.bank && (this.SelectBankName.active = n),
            1 == t.account && (this.Account_Number_Node.active = n),
            1 == t.gcash_number && (this.li_GcashNumber.active = 2 == e),
            1 == t.beneficiary_name && (this.li_BeneficiarvName.active = 2 == e || 3 == e),
            1 == t.pay_maya_account && (this.li_PayMayaPhilippines.active = 3 == e)
        }
    }
    ,
    t.prototype.TaxChangeTextStr = function(e) {
        if (e) {
            var t = app.ComUtil().translate(e);
            t && (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = t)
        }
    }
    ,
    t.prototype.TaxEndTextStr = function(e) {
        e.string && (/^[0-9.-]+$/.test(e.string) || (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""))
    }
    ,
    t.prototype.PixKeyChangeTextStr = function(e) {
        if (e) {
            var t = app.CashOutManager().GetSendPixType();
            if ("CPF" == t || "CNPJ" == t) {
                var n = app.ComUtil().translate(e);
                n && (this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = n)
            }
        }
    }
    ,
    t.prototype.onSetBankCode = function(e) {
        this.SelectBankCodeData = e,
        this.SelectBankName.getChildByName("editbox_bank_name").getComponent(cc.EditBox).string = e.bank_name,
        this.BankName.getComponent(cc.EditBox).string = e.bank_name
    }
    ,
    t.prototype.PixTypeCallBack = function(e) {
        this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = e,
        app.CashOutManager().SetSendPixType(e),
        this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""
    }
    ,
    t.prototype.OpenBankCode = function() {
        app.FormManager().ShowForm(l.UINameDefine.UIBankName)
    }
    ,
    t.prototype.openPixTypeList = function() {
        this.scrollview_PixType.active = true
    }
    ,
    t.prototype.ClosePixTypeList = function() {
        this.scrollview_PixType.active = false
    }
    ,
    t.prototype.isAccountChange = function() {
        var e = this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string
          , t = app.CashOutManager().GetSendPixType();
        "CPF" != t && "CNPJ" != t || (e = e.replace(/[&\|\\\*^%$ #@\-.]/g, ""));
        var n = {
            cardholder_tel: this.PhoneNumber.getComponent(cc.EditBox).string,
            bank_account: this.AccountNumber.getComponent(cc.EditBox).string,
            bank_name: this.BankName.getComponent(cc.EditBox).string,
            branch_bank: this.BranchBankName.getComponent(cc.EditBox).string,
            ifsc_code: this.IfSCCode.getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
            cardholder_name: this.BankUserName.getComponent(cc.EditBox).string,
            email: this.Email.getComponent(cc.EditBox).string,
            upi: this.UpiNode.getComponent(cc.EditBox).string,
            taxid: this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
            account_digit: this.Account_digit.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
            pix_key: e,
            account_type: this.SendAccountType,
            pix_type: this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string,
            prepay_type: this.SendPrepayType,
            province: this.li_Province.getChildByName("editbox").getComponent(cc.EditBox).string,
            city: this.li_City.getChildByName("editbox").getComponent(cc.EditBox).string,
            gcash_number: this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string,
            beneficiary_name: this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string,
            pay_maya_account: this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string,
            document_type: this.SendRFCType,
            card_type: this.SendCardType,
            repay_rfc: this.rfcEditbox.string,
            repay_curp: this.curpEditbox.string,
            repay_card_debit: this.debitEditbox.string,
            repay_card_phone: this.phoneEditbox.string,
            repay_card_clabe: this.clabeEditbox.string
        }
          , o = app.UserManager().GetUserInfo;
        this.li_rfc.active && (1 == this.SendRFCType ? n.repay_curp = o.repay_curp : 2 == this.SendRFCType && (n.repay_rfc = o.repay_rfc)),
        this.li_card.active && (1 == this.SendCardType ? (n.repay_card_phone = o.repay_card_phone,
        n.repay_card_clabe = o.repay_card_clabe) : 2 == this.SendCardType ? (n.repay_card_debit = o.repay_card_debit,
        n.repay_card_clabe = o.repay_card_clabe) : 3 == this.SendCardType && (n.repay_card_debit = o.repay_card_debit,
        n.repay_card_phone = o.repay_card_phone));
        var i = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay;
        for (var a in n)
            if (Object.prototype.hasOwnProperty.call(n, a)) {
                var r = n[a];
                if (("prepay_type" == a || "account_type" == a || "repay_rfc" == a || "repay_card_debit" == a || "repay_curp" == a || "repay_card_phone" == a || "repay_card_clabe" == a || "document_type" == a || "card_type" == a) && 0 == i[a])
                    continue;
                if (o[a] != r)
                    return false
            }
        return true
    }
    ,
    __decorate([h(cc.Node)], t.prototype, "AccountNumber", undefined),
    __decorate([h(cc.Node)], t.prototype, "IfSCCode", undefined),
    __decorate([h(cc.Node)], t.prototype, "BankName", undefined),
    __decorate([h(cc.Node)], t.prototype, "BranchBankName", undefined),
    __decorate([h(cc.Node)], t.prototype, "Email", undefined),
    __decorate([h(cc.Node)], t.prototype, "PhoneNumber", undefined),
    __decorate([h(cc.Node)], t.prototype, "BankUserName", undefined),
    __decorate([h(cc.Node)], t.prototype, "UpiNode", undefined),
    __decorate([h(cc.Node)], t.prototype, "Account_Number_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "Bank_name_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "IFCS_Code_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "Phone_Number_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "Email_Address_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "User_Name_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "Texid_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "lblCpfNode", undefined),
    __decorate([h(cc.Node)], t.prototype, "ZipCode_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "Account_Type", undefined),
    __decorate([h(cc.Node)], t.prototype, "Account_digit", undefined),
    __decorate([h(cc.Node)], t.prototype, "SelectBankName", undefined),
    __decorate([h(cc.Node)], t.prototype, "UpiAllNode", undefined),
    __decorate([h(cc.Node)], t.prototype, "Pixkey_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "PixType_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "BranchBankName_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_Encrypted_Node", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_Encrypted_NodeEdit", undefined),
    __decorate([h(cc.Node)], t.prototype, "scrollview_PixType", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_Bank_Gcash", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_Province", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_City", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_GcashNumber", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_BeneficiarvName", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_PayMayaPhilippines", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_rfc", undefined),
    __decorate([h(cc.Node)], t.prototype, "li_card", undefined),
    __decorate([d], t)
}(o.default);
n.default = u,
module.exports = n
