let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GoldRewardManager = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/UINameDefine")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GoldReward = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GoldRewardManager",
        this.Log("Init")
    }
    ,
    t.prototype.FormGoldReward = function(e) {
        this.GoldReward = e,
        isNaN(e.gold) ? this.WarnLog("FormGoldReward fail! data==>>" + JSON.stringify(e)) : app.FormManager().ShowForm(a.UINameDefine.UIGoldReward, e)
    }
    ,
    t.prototype.onEndCbType = function() {
        "gold_collection_tips" != this.GoldReward.type || app.UserManager().RequestUserInfo({
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onEndCbSendType = function() {
        1 != this.GoldReward.send_type ? 10 != this.GoldReward.send_type ? 11 != this.GoldReward.send_type || app.BetBonusManager().RequestCleanBetHistoryList(10) : app.Client.OnEvent(i.GameEventDefine.RECHARGE_BONUS) : app.FormManager().ShowForm(a.UINameDefine.UIBonuses)
    }
    ,
    t
}(o.Singleton);
n.GoldRewardManager = r,
module.exports = n
