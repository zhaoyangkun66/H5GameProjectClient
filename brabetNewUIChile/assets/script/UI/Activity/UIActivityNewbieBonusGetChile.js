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
            return t.ColombiaIdType = "RUT",
                t.ColombiaIdNumber = null,
                t.Email_Address_Node = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {

            }
            ,
            t.prototype.OnShow = function (type) {
                this.dataType = type

            }
            ,
            t.prototype.OnInitView = function (e) {


            }
            ,
            t.prototype.OnClick = function (e) {
                if ("RUT" == e || "RUN" == e || "PAS" == e || "CE" == e) {
                    this.ColombiaIdType = e
                }
                else if ("btnSure" == e) {
                    if (this.ColombiaIdNumber.string == "") {
                        app.SysNotifyManager().ShowToast("UI.UIStoreAndCashCompletethe")
                    }
                    else if (this.Email_Address_Node.string == "") {
                        app.SysNotifyManager().ShowToast("UI.cashout_1_bank_13")
                    }
                    else {
                        if (this.dataType == 1) {
                            app.ActivityManager().RequestNewbieBonusReceive(3, "", "", this.ColombiaIdType, this.ColombiaIdNumber.string, this.Email_Address_Node.string)
                        }
                        else {
                            app.ActivityManager().RequestNewbieBonusReceive(app.ActivityManager().sendDataNewbieBonusReceive.type, "", "", this.ColombiaIdType, this.ColombiaIdNumber.string, this.Email_Address_Node.string)
                        }
                    }
                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.EditBox)], t.prototype, "ColombiaIdNumber", undefined),
            __decorate([c(cc.EditBox)], t.prototype, "Email_Address_Node", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
