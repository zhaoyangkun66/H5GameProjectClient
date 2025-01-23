let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = (a.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.JS_Name = "UIGoldReward";
                    var e = this.node.getChildByName("mask");
                    this.rewardLabel = cc.find("bg_chip/label", e).getComponent(cc.Label),
                        this.rewardNote = e.getChildByName("text").getComponent(cc.Label)
                    this.btn_Verbonus = e.getChildByName("btn_Verbonus")
                }
                ,
                t.prototype.OnShow = function (e) {
                    this.node.scale = app.ComTool().H5Platform() ? 1 : .7,
                        this.renderRewardLabel(e),
                        this.renderRewardNote(e.source)
                    if (this.btn_Verbonus) {
                        if (e.source == "Balance" || e.source == "Equilíbrio" || e.source == "Balance" || e.source == "Withdrawal coupon" || e.source == "Cupom de saque" || e.source == "Cupón de retiro") {
                            this.btn_Verbonus.active = false
                        }
                        else {
                            this.btn_Verbonus.active = true
                        }
                    }
                }
                ,
                t.prototype.renderRewardLabel = function (e) {
                    var t = "" + app.ScoreUtil().toFixed(e.gold);
                    if (e.send_gold > 0) {
                        var n = 1 == e.send_type ? app.i18n.t("Shop_Bonus") : app.i18n.t("Shop_Cash");
                        t = t + " + " + app.ScoreUtil().toFixed(e.send_gold) + " " + n
                    }
                    e.addStr && (t += " " + e.addStr),
                        this.rewardLabel.string = t
                }
                ,
                t.prototype.renderRewardNote = function (e) {
                    null != e && (this.rewardNote.string = "" + e)
                }
                ,
                t.prototype.OnClick = function (e) {
                    if ("btn_Verbonus" == e) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIBonusUnfrozen)
                    }
                    if ("btn_bg" == e || "success" == e || "btn_Verbonus" == e)
                        return this.CloseForm(),
                            0 == app.UserManager().GetUserInfo.roomMode ? (app.GoldRewardManager().onEndCbSendType(),
                                app.GoldRewardManager().onEndCbType(),
                                void app.Client.OnEvent(i.GameEventDefine.UPDATE_MONTHCARD)) : (app.UserManager().RequestUserInfo({
                                    token: app.UserManager().GetUserInfo.token
                                }),
                                    app.Client.OnEvent(i.GameEventDefine.UPDATE_USER_INFO),
                                    void app.Client.OnEvent(i.GameEventDefine.UPDATE_GAME_GOLD))
                },
                t.prototype.OnClose = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t];
                    app.UserManager().RequstUserWallet()
                }
                ,
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
