let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , ShareDefine = require("../../../Common/Define/ShareDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , TrackEventName = require("../../../Common/Define/TrackEventName")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.DepositeLabel = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GOODS_PAY, this.onGoodsPay)
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.amount = e[0]
                this.DepositeLabel.string = "Deposite R$ " + e[0]
            }
            ,
            t.prototype.OnInitView = function (e) {


            }
            ,
            t.prototype.onGoodsPay = function (e) {
                var t = app.StoreManager().GetPayGoodResult();
                if (t) {
                    if (t.payURL) {
                        if (t.inout == 1) {
                            // cc.sys.openURL(t.payURL)
                            if (is2048Game) {
                                app.ConfirmManager().ShowConfirm(ShareDefine.ConfirmType.ConfirmYNPagamento, app.i18n.t("UI.UIActivityNewbieBonusDeposit1"), null, function () {
                                    cc.sys.openURL(t.payURL)
                                })
                            }
                            else {
                                app.ConfirmManager().ShowConfirm(ShareDefine.ConfirmType.ConfirmYNPagamento, "Após o pagamento bem-sucedido, você tem a chance de ganhar um bilhete de loteria com prêmio de até R$ 10000", null, function () {
                                    cc.sys.openURL(t.payURL)
                                })
                            }
                        }
                        else {
                            app.FormManager().ShowForm(UINameDefine.UINameDefine.UIStoreQRWebview, t)
                        }

                    }
                    else {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIStoreQR, t)
                    }
                }
            },
            t.prototype.OnClick = function (e) {

                var o = {
                    account: "",
                    channel_id: 1,
                    amount: this.amount,
                    Reward: 0,
                    id: 1,
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
                    is_send: 0,
                    user_wallet: "",
                    join_activity: 10,
                    is_limit_time: 0,
                    pay_type: 0,
                    bank_id: 0,
                    usdt_target_type: 0,
                    pay_rfc: "",
                    token: app.UserManager().GetUserInfo.token,
                };
                app.StoreManager().RequstPayGood(o)
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Label)], t.prototype, "DepositeLabel", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
