let n = {}
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
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.BankAccountNumber = null,
                t.BankName = null,
                t.ColombiaIdNumber = null,
                t.Email = null,
                t.PhoneNumber = null,
                t.BankUserName = null,
                t.BankAccountNumber_Node = null,
                t.BankName_Node = null,
                t.Phone_Number_Node = null,
                t.Email_Address_Node = null,
                t.BankUserName_Node = null,
                t.Texid_Node = null,
                t.lblCpfNode = null,
                t.ZipCode_Node = null,
                t.Account_Type = null,
                t.Account_digit = null,
                t.SelectBankName = null,
                t.ColombiaIdType_Node = null,
                t.BankAccountType_Node = null,
                t.Pixkey_Node = null,
                t.PixType_Node = null,
                t.ColombiaIdNumber_Node = null,
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
                t.labelDes = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.RegEvent(r.GameEventDefine.BIND_USER_WALLET, this.onBindUserWallet),
                    this.RegEvent(r.GameEventDefine.BIND_BANK_ACCOUNT, this.onBindBankAccount),
                    this.RegEvent(r.GameEventDefine.BANK_CODE_CLICK, this.onSetBankCode),
                    this.lb_KindTip = this.GetWndComponent("view/content/layout_con/label_Kind_tips", cc.Label),
                    this.lb_KindTip1 = this.GetWndComponent("view/content/li_Encrypted/label_Kind_tips", cc.Label),
                    this.lbl_PleaseTip = this.GetWndComponent("view/content/layout_con/label_tips", cc.Label),
                    this.lbl_PleaseTip1 = this.GetWndComponent("view/content/li_Encrypted/label_tips", cc.Label)

            }
            ,
            t.prototype.OnEnable = function () {
                this.OnUpdateShowType(),
                    this.UpdateKindTip()
            }
            ,
            t.prototype.UpdateKindTip = function () {
                var e = app.TextManager().GetTextInfo(c.TextDefine.withdraw_add_text)
                    , t = app.TextManager().GetTextInfo(c.TextDefine.withdraw_please_mask);
                e ? (this.lb_KindTip.node.active = true,
                    this.lb_KindTip1.node.active = true,
                    this.lb_KindTip.string = this.lb_KindTip1.string = e) : (this.lb_KindTip.node.active = false,
                        this.lb_KindTip1.node.active = false),
                    this.lbl_PleaseTip.string = this.lbl_PleaseTip1.string = t || app.i18n.t("UI.cashout_1_bank_14")
            }
            ,
            t.prototype.OnUpdateShowType = function () {
                if (this.SendAccountType = 1,
                    this.SendPrepayType = Number(app.UserManager().GetUserInfo.prepay_type),
                    !this.SendPrepayType) {
                    var e = app.UserManager().GetUserWallet();
                    e && (this.SendPrepayType = e.phl_default_bank)
                }
                app.CashOutManager().GetCurrentCashOutType() == a.CashOutType.Bank ? (cc.find("/view/content/layout_con", this.node).active = true
                    //,this.li_Encrypted_Node.active = false
                ) : (cc.find("/view/content/layout_con", this.node).active = false
                    //,this.li_Encrypted_Node.active = true
                ),
                    this.Email.getComponent(cc.EditBox).maxLength = 100,
                    this.ClosePixTypeList()
                this.setBindBankUserData()
                this.setBindBankEditBoxList()
            }
            ,
            t.prototype.OnClick = function (e, t, n) {
                this.Log(e)
                if ("CC" == e || "TI" == e || "CE" == e || "NIT" == e) {
                    this.Colombia_idTypeCallBack(e)
                }
                else if ("CHECKING" == e || "SAVINGS" == e) {
                    this.BankAccountTypeallBack(e)
                }
                else {
                    "button_bind" != e
                        ? "editbox_bank_name" != e
                            ? "editbox_pix_type" != e
                                ? "btn_close_pix_type" != e
                                    ? "toggle1" != e && "toggle2" != e
                                        ? "toggle1_Gcash" != e && "toggle2_Gcash" != e && "toggle3_Gcash" != e
                                            ? "CPF" != e && "CNPJ" != e && "PHONE" != e && "EMAIL" != e && "code_EVP" != e
                                                ? "toggleRfc_1" != e && "toggleRfc_2" != e
                                                    ? "toggleCard_1" != e && "toggleCard_2" != e && "toggleCard_3" != e || this.CardTypeToggleCallBack(n)
                                                    : this.RFCTypeToggleCallBack(n)
                                                : this.PixTypeCallBack(e)
                                            : this.PrepayTypeToggleCallBack(n)
                                        : this.AccountTypeToggleCallBack(n)
                                    : this.ClosePixTypeList()
                                : this.openPixTypeList()
                            : this.OpenBankCode()
                        : this.SendBindBankNumBtnCallBack()
                }
            }
            ,
            t.prototype.onBindUserWallet = function (e) {
                e || this.setBindBankUserData()
            }
            ,
            t.prototype.onBindBankAccount = function (e) {
                e || this.setBindBankUserData()
            }
            ,
            t.prototype.setBindBankUserData = function () {
                var e = app.UserManager().GetUserInfo;
                if (e) {


                    // e.cardholder_name = 123456
                    // e.bank_name = 123456
                    // e.bank_code = 123456
                    // e.bank_account = 123456
                    //  e.colombia_idType = "CE"
                    //  e.bankAccountType = "SAVINGS"
                    // e.colombia_idNumber = 123456
                    //  e.withdrawType: channelID, //1巴西2哥伦比亚

                    this.BankAccountNumber.getComponent(cc.EditBox).string = ""
                    this.BankUserName.getComponent(cc.EditBox).string = ""
                    this.BankName.getComponent(cc.EditBox).string = ""
                    this.PhoneNumber.getComponent(cc.EditBox).string = ""
                    this.Email.getComponent(cc.EditBox).string = ""
                    this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""

                    this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""
                    this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).enabled = true
                    this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).enabled = true
                    this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = ""

                    e.cardholder_name && "" !== e.cardholder_name && (this.BankUserName.getComponent(cc.EditBox).string = e.cardholder_name,
                        this.BankUserName.getComponent(cc.EditBox).placeholder = "")
                    e.bank_name && "" !== e.bank_name ? (this.SelectBankCodeData = {
                        bank_code: e.bank_code,
                        bank_name: e.bank_name
                    },
                        this.BankName.getComponent(cc.EditBox).string = e.bank_name,
                        this.BankName.getComponent(cc.EditBox).placeholder = "") : this.SelectBankCodeData = null
                    e.bank_account && "" !== e.bank_account && (this.BankAccountNumber.getComponent(cc.EditBox).string = e.bank_account,
                        this.BankAccountNumber.getComponent(cc.EditBox).placeholder = "")

                    this.ColombiaIdType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = "CC"
                    if (e.colombia_idType && "" !== e.colombia_idType) {
                        this.ColombiaIdType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e.colombia_idType
                        for (var n = cc.find("toggleContainer", this.ColombiaIdType_Node).children, o = 0; o < n.length; o++) {
                            var i = n[o];
                            i.name == e.colombia_idType ? i.getComponent(cc.Toggle).check() : i.getComponent(cc.Toggle).isChecked = false
                        }
                        // app.CashOutManager().SetSendPixType(e.pix_type)
                    }
                    this.BankAccountType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = "SAVINGS"
                    if (e.bankAccountType && "" !== e.bankAccountType) {
                        this.BankAccountType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e.bankAccountType
                        for (var n = cc.find("toggleContainer", this.BankAccountType_Node).children, o = 0; o < n.length; o++) {
                            var i = n[o];
                            i.name == e.bankAccountType ? i.getComponent(cc.Toggle).check() : i.getComponent(cc.Toggle).isChecked = false
                        }
                    }
                    e.colombia_idNumber && "" !== e.colombia_idNumber && (this.ColombiaIdNumber.getComponent(cc.EditBox).string = e.colombia_idNumber,
                        this.ColombiaIdNumber.getComponent(cc.EditBox).placeholder = "")

                    if (

                        e.cardholder_tel && "" !== e.cardholder_tel && (this.PhoneNumber.getComponent(cc.EditBox).string = e.cardholder_tel,
                            this.PhoneNumber.getComponent(cc.EditBox).placeholder = ""),
                        e.email && "" !== e.email && (this.Email.getComponent(cc.EditBox).string = e.email,
                            this.Email.getComponent(cc.EditBox).placeholder = ""),
                        //  e.taxid="12345678901",
                        //  e.pix_key="12345678901",
                        e.taxid && "" !== e.taxid && (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = app.ComUtil().translate(e.taxid + ""),
                            this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = "",
                            this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).enabled = false
                        ),
                        // e.zipcode && "" !== e.zipcode && (this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e.zipcode,
                        //     this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
                        // cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
                        // e.account_type && "" !== e.account_type && (1 == Number(e.account_type) ? (this.SendAccountType = 1,
                        // cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
                        // cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).isChecked = false) : (this.SendAccountType = 2,
                        // cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).check(),
                        // cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).isChecked = false)),
                        e.pix_key && "" !== e.pix_key) {
                        var t = e.pix_key;
                        "CPF" != e.pix_type && "CNPJ" != e.pix_type || (t = (e.pix_key + "")),
                            this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = t,
                            this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).placeholder = "",
                            this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).enabled = false
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
                    // e.user_wallet && "" !== e.user_wallet && (this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).string = e.user_wallet,
                    //     this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).placeholder = ""),
                    //     e.gcash_number && "" !== e.gcash_number && (this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string = e.gcash_number,
                    //         this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
                    //     e.pay_maya_account && "" !== e.pay_maya_account && (this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string = e.pay_maya_account,
                    //         this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).placeholder = ""),
                    //     e.beneficiary_name && "" !== e.beneficiary_name && (this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string = e.beneficiary_name,
                    //         this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).placeholder = "");
                    return
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
                    this.ShowRfcChildren()
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
                        this.PrepayTypeToggleCallBack(this.SendPrepayType)
                }
            }
            ,
            t.prototype.ChoseBankGcash = function (e) {
                var t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay;
                if (1 == t.prepay_type) {
                    var n = [1 == t.bank_card_type, 1 == t.gcash_type, 1 == t.pay_maya_type]
                        , o = true;
                    if (n.forEach(function (e) {
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
            t.prototype.ShowRfcChildren = function () {
                for (var e = 1; e < this.li_rfc.children.length; e++) {
                    var t = this.li_rfc.children[e]
                        , n = this.GetSubstr(t.name, "node_Rfc");
                    t.active = Number(n) == this.SendRFCType
                }
            }
            ,
            t.prototype.GetSubstr = function (e, t) {
                var n = e.indexOf(t);
                return -1 !== n ? e.substring(n + t.length) : null
            }
            ,
            t.prototype.ShowCardChildren = function () {
                for (var e = 1; e < this.li_card.children.length; e++) {
                    var t = this.li_card.children[e]
                        , n = this.GetSubstr(t.name, "node_card");
                    t.active = Number(n) == this.SendCardType
                }
            }
            ,
            t.prototype.setBindBankEditBoxList = function () {
                var e = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay
                    , t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.weight
                    , n = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.cpf_tips;
                if (e && t) {
                    if (channelID == 2) {
                        this.Phone_Number_Node.active = true
                        this.Email_Address_Node.active = true

                        this.BankUserName_Node.active = true
                        this.BankName_Node.active = true
                        this.BankAccountNumber_Node.active = true
                        this.ColombiaIdType_Node.active = true
                        this.BankAccountType_Node.active = true
                        this.ColombiaIdNumber_Node.active = true

                        this.Texid_Node.active = false
                        this.Pixkey_Node.active = false
                        this.PixType_Node.active = false

                        this.labelDes.string = "La solicitud de retiro enviada exitosamente debe esperar a que el banco la procese. Espere pacientemente. Si necesita ayuda, comuníquese con nuestro servicio de atención al cliente."
                    } else {
                        this.Phone_Number_Node.active = true
                        this.Email_Address_Node.active = true

                        this.BankUserName_Node.active = false
                        this.BankName_Node.active = false
                        this.BankAccountNumber_Node.active = false
                        this.ColombiaIdType_Node.active = false
                        this.BankAccountType_Node.active = false
                        this.ColombiaIdNumber_Node.active = false

                        this.Texid_Node.active = true
                        this.Pixkey_Node.active = true
                        this.PixType_Node.active = true

                        this.labelDes.string = "O CPF é bloqueado após o primeiro envio, entre em contato com o atendimento para modificar o CPF novamente."
                    }


                    // if (1 == e.prepay_type) {
                    //     var o = this.GetWndNode("toggleContainer/toggle1_Gcash", this.li_Bank_Gcash)
                    //         , i = this.GetWndNode("toggleContainer/toggle2_Gcash", this.li_Bank_Gcash)
                    //         , a = this.GetWndNode("toggleContainer/toggle3_Gcash", this.li_Bank_Gcash);
                    //     o.active = 1 == e.bank_card_type,
                    //         o.zIndex = -1 * Number(t.bank_card_type),
                    //         i.active = 1 == e.gcash_type,
                    //         i.zIndex = -1 * Number(t.gcash_type),
                    //         a.active = 1 == e.pay_maya_type,
                    //         a.zIndex = -1 * Number(t.pay_maya_type);
                    //     var r = 0 == e.bank_card_type && 0 == e.gcash_type && 0 == e.pay_maya_type;
                    //     this.li_Bank_Gcash.active = !r;
                    //     var s = [];
                    //     1 == e.bank_card_type && s.push(app.i18n.t("UI_Cash_TitleBankcard")),
                    //         1 == e.gcash_type && s.push(app.i18n.t("UI_Cash_TitleGcash")),
                    //         1 == e.pay_maya_type && s.push(app.i18n.t("UI_Cash_TitlePayMaya")),
                    //         this.GetWndComponent("view/content/layout_con/li_Bank_Gcash/label", cc.Label).string = s.join("/")
                    // }
                    // if (this.li_GcashNumber.active = 1 == e.gcash_number,
                    //   this.li_GcashNumber.zIndex = -1 * Number(t.gcash_number),
                    //   this.li_PayMayaPhilippines.active = 1 == e.pay_maya_account,
                    // this.li_PayMayaPhilippines.zIndex = -1 * Number(t.pay_maya_account),
                    //  this.li_rfc.active = "1" == e.document_type,
                    // this.li_rfc.zIndex = -1 * Number(t.document_type),
                    // this.li_rfc.active && ((c = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_1", this.li_rfc)).active = "1" == e.repay_rfc,
                    // c.zIndex = -1 * Number(t.repay_rfc),
                    //  (l = this.GetWndNode("node_rfcToggle/node/toggleContainer/toggleRfc_2", this.li_rfc)).active = "1" == e.repay_curp,
                    //  l.zIndex = -1 * Number(t.repay_curp)),
                    // this.li_card.active = "1" == e.card_type,
                    //   this.li_card.zIndex = -1 * Number(t.card_type),
                    // this.li_card.active) {
                    //     var c, l;
                    //     (c = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_1", this.li_card)).active = "1" == e.repay_card_debit,
                    //     c.zIndex = -1 * Number(t.repay_card_debit),
                    //     (l = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_2", this.li_card)).active = "1" == e.repay_card_phone,
                    //     l.zIndex = -1 * Number(t.repay_card_phone);
                    //     var p = this.GetWndNode("node_cardToggle/node/toggleCard/toggleCard_3", this.li_card);
                    //     p.active = "1" == e.repay_card_clabe,
                    //     p.zIndex = -1 * Number(t.repay_card_clabe)
                    // }
                    // this.li_BeneficiarvName.active = 1 == e.beneficiary_name,
                    // this.li_BeneficiarvName.zIndex = -1 * Number(t.beneficiary_name),
                    //  this.SelectBankName.active = false,
                    var d = app.UserManager().GetUserWallet();
                    //  d.pix_type_list = [
              
                    //  ]
                    if (d)
                        for (var h = cc.find("/view/content/layout_con/li_pix_type/toggleContainer", this.node), u = 0; u < d.pix_type_list.length; u++) {
                            var _ = d.pix_type_list[u];
                            h.getChildByName(_).active = true
                        }
                    this.PrepayTypeToggleCallBack(this.SendPrepayType)
                }
            }
            ,
            t.prototype.SendBindBankNumBtnCallBack = function () {
                //var e = this.li_Encrypted_NodeEdit.getComponent(cc.EditBox).string;
                if (app.CashOutManager().GetCurrentCashOutType() != a.CashOutType.USDT) {
                    if (this.Texid_Node.active) {
                        var t = this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, "");
                        if (14 !== t.length && 11 !== t.length)
                            return void app.SysNotifyManager().ShowToast("UI.Shop_CPF_LengthHint")
                    }
                    if (this.BankUserName_Node.active) {
                        var t = this.BankUserName_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                        if (t == "") {
                            return void app.SysNotifyManager().ShowToast("UI.UIStoreAndCashInputCardholderName")
                        }
                    }
                    if (this.BankName_Node.active) {
                        var t = this.BankName_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                        if (t == "") {
                            return void app.SysNotifyManager().ShowToast("UI.UIStoreAndCashSelectBank")
                        }
                    }
                    if (this.BankAccountNumber_Node.active) {
                        var t = this.BankAccountNumber_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                        if (t == "") {
                            return void app.SysNotifyManager().ShowToast("UI.UIStoreAndCashInputInBankAccount")
                        }
                    }
                    if (this.ColombiaIdNumber_Node.active) {
                        var t = this.ColombiaIdNumber_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                        if (t == "") {
                            return void app.SysNotifyManager().ShowToast("UI.UIStoreAndCashCompletethe")
                        }
                    }

                    {
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
                            bankAccountType: this.BankAccountType_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                            bank_account: this.BankAccountNumber.getComponent(cc.EditBox).string,
                            bank_name: this.BankName.getComponent(cc.EditBox).string,
                            branch_bank: "",
                            ifsc_code: "",
                            cardholder_name: this.BankUserName.getComponent(cc.EditBox).string,
                            colombia_idType: this.ColombiaIdType_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                            colombia_idNumber: this.ColombiaIdNumber_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                            withdrawType: channelID, //1巴西2哥伦比亚

                            email: this.Email.getComponent(cc.EditBox).string,
                            upi: "",
                            account_type: this.SendAccountType,
                            taxid: this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
                            zipcode: "",//this.ZipCode_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                            account_digit: "",
                            pix_key: r,
                            pix_type: this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string,
                            bank_code: "",
                            prepay_type: this.SendPrepayType,
                            province: "",
                            city: "",
                            gcash_number: "",// this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string,
                            pay_maya_account: "",//this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string,
                            beneficiary_name: "",// this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string,
                            document_type: 1,//this.SendRFCType,
                            card_type: 1,//this.SendCardType,
                            repay_rfc: "",
                            repay_curp: "",
                            repay_card_debit: "",
                            repay_card_phone: "",
                            repay_card_clabe: ""
                        };
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
            t.prototype.AccountTypeToggleCallBack = function (e) {
                e && (1 == e ? (cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).check(),
                    cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).isChecked = false) : (cc.find("toggleContainer/toggle2", this.Account_Type).getComponent(cc.Toggle).check(),
                        cc.find("toggleContainer/toggle1", this.Account_Type).getComponent(cc.Toggle).isChecked = false),
                    this.SendAccountType = e)
            }
            ,
            t.prototype.RFCTypeToggleCallBack = function (e) {
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
            t.prototype.CardTypeToggleCallBack = function (e) {
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
            t.prototype.PrepayTypeToggleCallBack = function (e) {
                if (this.ChoseBankGcash(e),
                    app.GameConfigManager().GetGameConfig().version_position == s.Version_Position.Philippines) {
                    e = this.SendPrepayType;
                    var t = app.GameConfigManager().GetGameConfig().pay_userinfo_fields.prepay
                        , n = 1 == e;
                    1 == t.bank && (this.SelectBankName.active = n),
                        1 == t.gcash_number && (this.li_GcashNumber.active = 2 == e),
                        1 == t.beneficiary_name && (this.li_BeneficiarvName.active = 2 == e || 3 == e),
                        1 == t.pay_maya_account && (this.li_PayMayaPhilippines.active = 3 == e)
                }
            }
            ,
            t.prototype.TaxChangeTextStr = function (e) {
                if (e) {
                    var t = app.ComUtil().translate(e);
                    t && (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = t)
                }
            }
            ,
            t.prototype.TaxEndTextStr = function (e) {
                e.string && (/^[0-9.-]+$/.test(e.string) || (this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""))
            }
            ,
            t.prototype.PixKeyChangeTextStr = function (e) {
                if (e) {
                    var t = app.CashOutManager().GetSendPixType();
                    if ("CPF" == t || "CNPJ" == t) {
                        var n = app.ComUtil().translate(e);
                        n && (this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = n)
                    }
                }
            }
            ,
            t.prototype.onSetBankCode = function (e) {
                this.SelectBankCodeData = e,
                    this.BankName.getComponent(cc.EditBox).string = e.bank_name
            }
            ,
            t.prototype.PixTypeCallBack = function (e) {
                this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string = e,
                    app.CashOutManager().SetSendPixType(e)//,
                //  this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""
            }
            ,
            t.prototype.Colombia_idTypeCallBack = function (e) {
                this.ColombiaIdType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e
                this.ColombiaIdNumber_Node.getChildByName("editbox").getComponent(cc.EditBox).string = ""
            },
            t.prototype.BankAccountTypeallBack = function (e) {
                this.BankAccountType_Node.getChildByName("editbox").getComponent(cc.EditBox).string = e
                this.BankAccountNumber.getComponent(cc.EditBox).string = ""
            }
            ,
            t.prototype.OpenBankCode = function () {
                app.FormManager().ShowForm(l.UINameDefine.UIBankName)
            }
            ,
            t.prototype.openPixTypeList = function () {
                this.scrollview_PixType.active = true
            }
            ,
            t.prototype.ClosePixTypeList = function () {
                this.scrollview_PixType.active = false
            }
            ,
            t.prototype.isAccountChange = function () {
                var e = this.Pixkey_Node.getChildByName("editbox").getComponent(cc.EditBox).string
                    , t = app.CashOutManager().GetSendPixType();
                "CPF" != t && "CNPJ" != t || (e = e.replace(/[&\|\\\*^%$ #@\-.]/g, ""));
                var n = {
                    cardholder_tel: this.PhoneNumber.getComponent(cc.EditBox).string,
                    cardholder_name: this.BankUserName.getComponent(cc.EditBox).string,
                    bank_name: this.BankName.getComponent(cc.EditBox).string,
                    bankAccountType: this.BankAccountType_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                    bank_account: this.BankAccountNumber.getComponent(cc.EditBox).string,
                    colombia_idType: this.ColombiaIdType_Node.getChildByName("editbox").getComponent(cc.EditBox).string,
                    colombia_idNumber: this.ColombiaIdNumber.getComponent(cc.EditBox).string,
                    // withdrawType: channelID, //1巴西2哥伦比亚
                    //  branch_bank: "",
                    //  ifsc_code: "",
                    email: this.Email.getComponent(cc.EditBox).string,
                    //   upi: "",
                    taxid: this.Texid_Node.getChildByName("editbox").getComponent(cc.EditBox).string.replace(/[&\|\\\*^%$ #@\-.]/g, ""),
                    // account_digit: "",
                    pix_key: e,
                    //   account_type: this.SendAccountType,
                    pix_type: this.PixType_Node.getChildByName("editbox_pix_type").getComponent(cc.EditBox).string,
                    prepay_type: this.SendPrepayType,
                    //    province: "",
                    //  city: "",
                    //   gcash_number: "",//this.li_GcashNumber.getChildByName("editbox").getComponent(cc.EditBox).string,
                    //  beneficiary_name: "",//this.li_BeneficiarvName.getChildByName("editbox").getComponent(cc.EditBox).string,
                    //  pay_maya_account: "",//this.li_PayMayaPhilippines.getChildByName("editbox").getComponent(cc.EditBox).string,
                    //   document_type: this.SendRFCType,
                    //  card_type: this.SendCardType,
                    // repay_rfc: "",
                    // repay_curp: "",
                    // repay_card_debit: "",
                    // repay_card_phone: "",
                    // repay_card_clabe: ""
                }
                    , o = app.UserManager().GetUserInfo;
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

            __decorate([h(cc.Label)], t.prototype, "labelDes", undefined),

            __decorate([h(cc.Node)], t.prototype, "BankUserName", undefined),
            __decorate([h(cc.Node)], t.prototype, "BankName", undefined),
            __decorate([h(cc.Node)], t.prototype, "BankAccountNumber", undefined),
            __decorate([h(cc.Node)], t.prototype, "ColombiaIdNumber", undefined),
            __decorate([h(cc.Node)], t.prototype, "PhoneNumber", undefined),
            __decorate([h(cc.Node)], t.prototype, "Email", undefined),

            __decorate([h(cc.Node)], t.prototype, "BankUserName_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "BankName_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "BankAccountType_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "BankAccountNumber_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "ColombiaIdType_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "ColombiaIdNumber_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "Phone_Number_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "Email_Address_Node", undefined),

            __decorate([h(cc.Node)], t.prototype, "Texid_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "lblCpfNode", undefined),
            __decorate([h(cc.Node)], t.prototype, "ZipCode_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "Account_Type", undefined),
            __decorate([h(cc.Node)], t.prototype, "Account_digit", undefined),
            __decorate([h(cc.Node)], t.prototype, "SelectBankName", undefined),
            __decorate([h(cc.Node)], t.prototype, "Pixkey_Node", undefined),
            __decorate([h(cc.Node)], t.prototype, "PixType_Node", undefined),
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
