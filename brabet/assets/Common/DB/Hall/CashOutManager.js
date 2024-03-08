let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.CashOutManager = n.CashOutType = undefined;
var o = require("../../Base/Singleton")
    , i = require("../../Define/GameEventDefine")
    , a = require("../../Define/HttpServerDefine");
(function (e) {
    e[e.Bank = 1] = "Bank",
        e[e.USDT = 2] = "USDT"
}
)(n.CashOutType || (n.CashOutType = {}));
var r = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.CurrentCashOutType = 1,
            t.SendPixType = "CPF",
            t.NigeriaData = null,
            t.isAgentTx = false,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "CashOutManager",
                this.Log("Init"),
                app.HttpServerManager().RegNetPack(a.HttpAPI.BIND_USER_WALLET, this.onBindUserWallet, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.BIND_BANK_ACCOUNT, this.onBindBankAccount, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GOLD_TXTIPS, this.onGoldTxtTips, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_NIGERIA, this.onNigeria, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_TXRECORDDETAILS, this.onTxRecordDetails, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_TX, this.onRecvTx, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_AGENTTX, this.onRecvAgentTx, this),
                app.HttpServerManager().RegNetPack(a.HttpAPI.GET_TXRECORD, this.onRecvTxRecord, this)
        }
        ,
        t.prototype.RequestTx = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                channel: e.channel,
                amount: e.amount,
                is_usdt: e.is_usdt
            };
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_TX, t)
        }
        ,
        t.prototype.onRecvTx = function (e) {
            app.Client.OnEvent(i.GameEventDefine.GET_TX, e)
        }
        ,
        t.prototype.RequestTX = function (e) {
            this.isAgentTx ? this.RequestAgentTx(e) : this.RequestTx(e)
        }
        ,
        t.prototype.RequestAgentTx = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                channel: e.channel,
                amount: e.amount,
                is_usdt: e.is_usdt
            };
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_AGENTTX, t)
        }
        ,
        t.prototype.RequestTxRecord = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                channel: 4,
                page: e,
                count: 30
            };
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_TXRECORD, t)
        }
        ,
        t.prototype.onRecvAgentTx = function (e, t) {
            if (this.Log(e),
                app.PromoteMainManager().GetShareData) {
                var n = app.PromoteMainManager().GetShareData.agent_commission;
                app.PromoteMainManager().GetShareData.agent_commission = Number(n) - Number(t.amount),
                    app.Client.OnEvent(i.GameEventDefine.UPDATE_COMMISSIONDESC)
            }
            app.Client.OnEvent(i.GameEventDefine.GET_AGENTTX, e)
        }
        ,
        t.prototype.onRecvTxRecord = function (e) {
            app.Client.OnEvent(i.GameEventDefine.GET_TXRECORD, e.data)
        }
        ,
        t.prototype.RequstTxRecordDetails = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                id: e
            };
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_TXRECORDDETAILS, t)
        }
        ,
        t.prototype.onTxRecordDetails = function (e) {
            app.Client.OnEvent(i.GameEventDefine.GET_TXRECORDDETAILS, e)
        }
        ,
        t.prototype.RequstGoldTxtTips = function () {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GOLD_TXTIPS, {
                token: app.UserManager().GetUserInfo.token,
                type: this.CurrentCashOutType
            })
        }
        ,
        t.prototype.onGoldTxtTips = function (e) {
            app.Client.OnEvent(i.GameEventDefine.GOLD_TXTIPS, e)
        }
        ,
        t.prototype.RequestNigeria = function () {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_NIGERIA, {
                token: app.UserManager().GetUserInfo.token
            })
        }
        ,
        t.prototype.onNigeria = function (e) {
            // e = [
            //     {
            //         "bank_name": "Banco Caixa Economica Federal",
            //         "bank_code": "104",
            //     },
            //     {
            //         "bank_name": "Banco do Brasil",
            //         "bank_code": "001",
            //     },
            //     {
            //         "bank_name": "Banco Bradesco",
            //         "bank_code": "237",
            //     },]
            for (let index = 0; index < e.length; index++) {
                e[index].id = index;
            }
            this.NigeriaData = e,
                app.Client.OnEvent(i.GameEventDefine.GET_NIGERIA)
        }
        ,
        t.prototype.GetNigeriaDataIndex = function () {
            for (var e = 0; e < this.NigeriaData.length; e++)
                if (this.NigeriaData[e].selected)
                    return e;
            return 0
        }
        ,
        t.prototype.SetNigeriaDataSelected = function (e) {
            for (var t = 0; t < this.NigeriaData.length; t++) {
                var n = this.NigeriaData[t];
                n.selected = e == n.id
            }
        }
        ,
        t.prototype.SetSendPixType = function (e) {
            this.SendPixType = e
        }
        ,
        t.prototype.GetSendPixType = function () {
            return this.SendPixType
        }
        ,
        t.prototype.SetCurrentCashOutType = function (e) {
            this.CurrentCashOutType = e
        }
        ,
        t.prototype.GetCurrentCashOutType = function () {
            return this.CurrentCashOutType
        }
        ,
        t.prototype.RequstBindUserWallet = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.BIND_USER_WALLET, e)
        }
        ,
        t.prototype.onBindUserWallet = function (e, t) {
            app.UserManager().GetUserInfo.user_wallet = t.wallet,
                app.UserManager().SaveLoginUser(app.UserManager().GetUserInfo),
                app.Client.OnEvent(i.GameEventDefine.BIND_USER_WALLET, e)
        }
        ,
        t.prototype.RequstBindBankAccount = function (e) {
            app.HttpServerManager().SendHttpPack(a.HttpAPI.BIND_BANK_ACCOUNT, e)
        }
        ,
        t.prototype.onBindBankAccount = function (e, t) {

            app.UserManager().GetUserInfo.colombia_idType = t.colombia_idType,
                app.UserManager().GetUserInfo.colombia_idNumber = t.colombia_idNumber,
                app.UserManager().GetUserInfo.bankAccountType = t.bankAccountType,
                app.UserManager().GetUserInfo.bank_account = t.bank_account,
                app.UserManager().GetUserInfo.bank_name = t.bank_name,
                app.UserManager().GetUserInfo.branch_bank = t.branch_bank,
                app.UserManager().GetUserInfo.cardholder_name = t.cardholder_name,
                app.UserManager().GetUserInfo.cardholder_tel = t.tel,
                app.UserManager().GetUserInfo.email = t.email,
                app.UserManager().GetUserInfo.ifsc_code = t.ifsc_code,
                app.UserManager().GetUserInfo.upi = t.upi,
                app.UserManager().GetUserInfo.taxid = t.taxid,
                app.UserManager().GetUserInfo.zipcode = t.zipcode,
                app.UserManager().GetUserInfo.account_digit = t.account_digit,
                app.UserManager().GetUserInfo.account_type = t.account_type,
                app.UserManager().GetUserInfo.pix_key = t.pix_key,
                app.UserManager().GetUserInfo.pix_type = t.pix_type,
                app.UserManager().GetUserInfo.prepay_type = t.prepay_type,
                app.UserManager().GetUserInfo.province = t.province,
                app.UserManager().GetUserInfo.city = t.city,
                app.UserManager().GetUserInfo.gcash_number = t.gcash_number,
                app.UserManager().GetUserInfo.pay_maya_account = t.pay_maya_account,
                app.UserManager().GetUserInfo.beneficiary_name = t.beneficiary_name,
                t.upi && (app.UserManager().GetUserInfo.upi = t.upi),
                t.bank_code && (app.UserManager().GetUserInfo.bank_code = t.bank_code),
                t.repay_rfc && (app.UserManager().GetUserInfo.repay_rfc = t.repay_rfc),
                t.repay_curp && (app.UserManager().GetUserInfo.repay_curp = t.repay_curp),
                t.document_type && (app.UserManager().GetUserInfo.document_type = t.document_type),
                t.card_type && (app.UserManager().GetUserInfo.card_type = t.card_type),
                t.repay_card_debit && (app.UserManager().GetUserInfo.repay_card_debit = t.repay_card_debit),
                t.repay_card_phone && (app.UserManager().GetUserInfo.repay_card_phone = t.repay_card_phone),
                t.repay_card_clabe && (app.UserManager().GetUserInfo.repay_card_clabe = t.repay_card_clabe),
                app.UserManager().SaveLoginUser(app.UserManager().GetUserInfo),
                app.Client.OnEvent(i.GameEventDefine.BIND_BANK_ACCOUNT, e)
        }
        ,
        t.prototype.GetWithdrawGold = function () {
            var e = 0;
            if (this.isAgentTx)
                app.PromoteMainManager().GetShareData && (e = app.ScoreUtil().fix_float_number(app.PromoteMainManager().GetShareData.agent_commission));
            else {
                var t = app.UserManager().GetUserWallet();
                t && (e = t.withdraw_gold)
            }
            return e
        }
        ,
        t
}(o.Singleton);
n.CashOutManager = r,
    module.exports = n
