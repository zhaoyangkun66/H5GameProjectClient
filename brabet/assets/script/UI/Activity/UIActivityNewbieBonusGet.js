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
            return t.editboxCPF = null,
                t.editboxAccountname = null,
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
                var t = this.editboxCPF.string.replace(/[&\|\\\*^%$ #@\-.]/g, "");
                if (14 !== t.length && 11 !== t.length) {
                    app.SysNotifyManager().ShowToast("UI.Shop_CPF_LengthHint")
                }
                else if (this.editboxAccountname.string == "") {
                    app.SysNotifyManager().ShowToast("UI_Shop_InputTaxIdNew")
                }
                else {
                    if (this.dataType == 1) {
                        app.ActivityManager().RequestNewbieBonusReceive(3, this.editboxCPF.string, this.editboxAccountname.string)
                    }
                    else {
                        app.ActivityManager().RequestNewbieBonusReceive(app.ActivityManager().sendDataNewbieBonusReceive.type, this.editboxCPF.string, this.editboxAccountname.string)
                    }
                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.EditBox)], t.prototype, "editboxAccountname", undefined),
            __decorate([c(cc.EditBox)], t.prototype, "editboxCPF", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
