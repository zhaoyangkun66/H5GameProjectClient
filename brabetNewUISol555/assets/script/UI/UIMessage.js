let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
    , i = require("../../Common/Define/ShareDefine")
    , a = cc._decorator.ccclass
    , r = cc._decorator.property
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.LabelMessage = null,
                t.LabelCancel = null,
                t.LabelSure = null,
                t.BtnCancel = null,
                t.BtnSure = null,
                t.BtnParent = null,
                t._ConfirmType = i.ConfirmType.ConfirmYN,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.ZorderLv = 9
            }
            ,
            t.prototype.OnShow = function (e, t, n, o) {
                var a = this
                    , r = o.split("/n");
                this.LabelMessage.string = r.join("\n"),
                    this.BtnParent.active = e != i.ConfirmType.ConfirmTips,
                    this._ConfirmType = e;
                var s = "General.General_2"
                    , c = "General.General_1"
                    , l = function () {
                        a.BtnCancel.node.active = true,
                            a.BtnSure.node.active = true
                    }
                    , p = function () {
                        a.BtnCancel.node.active = false,
                            a.BtnSure.node.active = true
                    };
                e == i.ConfirmType.Confirm ? (c = "UI.MakeMoney_4_Promotion_17", l())
                    : e == i.ConfirmType.ConfirmYN ? l()
                    : e == i.ConfirmType.ConfirmYNPagamento ? (c = "General.General_111", l())
                        : e == i.ConfirmType.ConfirmOK || e == i.ConfirmType.ConfirmModal ? p()
                            : e == i.ConfirmType.ConfirmFree ? (c = "UI_Confirme", p())
                                : e == i.ConfirmType.ConfirmCustom && (s = n[0],
                                    c = n[1],
                                    l()),
                    this.LabelCancel && (this.LabelCancel.string = app.i18n.t(s)),
                    this.LabelSure && (this.LabelSure.string = app.i18n.t(c))
            }
            ,
            t.prototype.OnClick_Return = function () {
                this.BtnCancel.node.active ? this.AfterOnClick("Cancel") : this.AfterOnClick("Sure")
            }
            ,
            t.prototype.OnClick = function (e) {
                "btnSure" != e ? "btnCancel" != e ? "btn_bg" != e ? this.ErrLog("OnClick:%s not find", e) : this.BtnParent.active || this.AfterOnClick("Cancel") : this.AfterOnClick("Cancel") : this._ConfirmType == i.ConfirmType.ConfirmModal ? app.ConfirmManager().OnConFirmResult("Sure", false) : this.AfterOnClick("Sure")
            }
            ,
            t.prototype.AfterOnClick = function (e) {
                this.CloseForm(),
                    app.ConfirmManager().OnConFirmResult(e)
            }
            ,
            __decorate([r(cc.Label)], t.prototype, "LabelMessage", undefined),
            __decorate([r(cc.Label)], t.prototype, "LabelCancel", undefined),
            __decorate([r(cc.Label)], t.prototype, "LabelSure", undefined),
            __decorate([r(cc.Button)], t.prototype, "BtnCancel", undefined),
            __decorate([r(cc.Button)], t.prototype, "BtnSure", undefined),
            __decorate([r(cc.Node)], t.prototype, "BtnParent", undefined),
            __decorate([a], t)
    }(o.default);
n.default = s,
    module.exports = n
