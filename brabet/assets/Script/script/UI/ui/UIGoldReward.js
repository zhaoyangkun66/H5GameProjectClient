let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGoldReward";
        var e = this.node.getChildByName("mask");
        this.rewardLabel = cc.find("bg_chip/label", e).getComponent(cc.Label),
        this.rewardNote = e.getChildByName("text").getComponent(cc.Label)
    }
    ,
    t.prototype.OnShow = function(e) {
        this.node.scale = app.ComTool().H5Platform() ? 1 : .7,
        this.renderRewardLabel(e),
        this.renderRewardNote(e.source)
    }
    ,
    t.prototype.renderRewardLabel = function(e) {
        var t = "" + app.ScoreUtil().toFixed(e.gold);
        if (e.send_gold > 0) {
            var n = 1 == e.send_type ? app.i18n.t("Shop_Bonus") : app.i18n.t("Shop_Cash");
            t = t + " + " + app.ScoreUtil().toFixed(e.send_gold) + " " + n
        }
        e.addStr && (t += " " + e.addStr),
        this.rewardLabel.string = t
    }
    ,
    t.prototype.renderRewardNote = function(e) {
        null != e && (this.rewardNote.string = "" + e)
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_bg" == e || "success" == e)
            return this.CloseForm(),
            0 == app.UserManager().GetUserInfo.roomMode ? (app.GoldRewardManager().onEndCbSendType(),
            app.GoldRewardManager().onEndCbType(),
            void app.Client.OnEvent(i.GameEventDefine.UPDATE_MONTHCARD)) : (app.UserManager().RequestUserInfo({
                token: app.UserManager().GetUserInfo.token
            }),
            app.Client.OnEvent(i.GameEventDefine.UPDATE_USER_INFO),
            void app.Client.OnEvent(i.GameEventDefine.UPDATE_GAME_GOLD))
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
