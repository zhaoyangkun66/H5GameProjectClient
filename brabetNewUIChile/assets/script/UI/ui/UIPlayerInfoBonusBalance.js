let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/UINameDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/TrackEventName")
    , c = cc._decorator
    , l = c.ccclass
    , p = c.property
    , d = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.salNumBalance = null,
                t.salNumBonus = null,
                t.salNumcoupon = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIPlayerInfoBonusBalance"
            }
            ,
            t.prototype.OnShow = function () {
                if (app.ComTool().H5Platform()) {
                    if (app.Client.GetDownload().active == true) {
                        this.GetWndComponent("nodeBonusBalance", cc.Widget).top = 149.15
                    }
                    else {
                        this.GetWndComponent("nodeBonusBalance", cc.Widget).top = 69.15
                    }
                }
                // this.salNumBalance.string = 1
                // this.salNumBonus.string = 2
                this.salNumBalance.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.gold)
                this.salNumBonus.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.bonus)
                this.salNumcoupon.string = app.GameConfigManager().GetCurrency + app.ScoreUtil().toFixed(app.UserManager().GetUserInfo.saldo)
            }
            ,
            t.prototype.OnClick = function (e, t) {
                if ("btn_bonus" == e) {
                    this.CloseForm()
                    app.FormManager().IsFormShow(a.UINameDefine.UIBonusUnfrozen) || app.FormManager().ShowForm(a.UINameDefine.UIBonusUnfrozen);
                }
                else if ("btn_coupon" == e) {
                    this.CloseForm()
                    app.FormManager().IsFormShow(a.UINameDefine.UIWithdrawalCoupon) || app.FormManager().ShowForm(a.UINameDefine.UIWithdrawalCoupon);
                }

            }
            ,
            t.prototype.OnClose = function () {

            }
            ,
            __decorate([p(cc.Label)], t.prototype, "salNumBalance", undefined),
            __decorate([p(cc.Label)], t.prototype, "salNumBonus", undefined),
            __decorate([p(cc.Label)], t.prototype, "salNumcoupon", undefined),
            __decorate([l], t)
    }(o.default);
n.default = d,
    module.exports = n
