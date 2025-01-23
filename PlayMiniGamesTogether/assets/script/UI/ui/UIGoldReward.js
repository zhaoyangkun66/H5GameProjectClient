let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
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
                    this.rewardLabel = cc.find("richtext", e).getComponent(cc.RichText)
                }
                ,
                t.prototype.OnShow = function (e) {
                    this.node.scale = app.ComTool().H5Platform() ? 1 : .7,
                        this.renderRewardLabel(e)
                }
                ,
                t.prototype.renderRewardLabel = function (e) {
                    if (e.type == 0) {
                        this.rewardLabel.string = app.i18n.t("UI_PlayMiniGamesTogether_UIGoldReward1").replace("{st_gold}", app.ScoreUtil().toFixed(e.gold))
                    }
                    else if (e.type == 1) {
                        this.rewardLabel.string = app.i18n.t("UI_PlayMiniGamesTogether_UIGoldReward2").replace("{st_gold}", app.ScoreUtil().toFixed(e.gold))
                    }
                    else if (e.type == 2) {
                        this.rewardLabel.string = e.describe
                    }
                    else {
                        this.rewardLabel.string = app.i18n.t("UI_PlayMiniGamesTogether_UIGoldReward1").replace("{st_gold}", app.ScoreUtil().toFixed(e.gold))
                    }
                }
                ,
                t.prototype.OnClick = function (e) {
                    if ("btn_bg" == e || "success" == e)
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
