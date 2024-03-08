let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LoseWaiverManager = undefined;
var o = require("../../Define/ShareDefine")
  , i = require("../../Base/Singleton")
  , a = require("../../Define/GameEventDefine")
  , r = require("../../Define/HttpServerDefine")
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.DelayTime = 0,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "LoseWaiverManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(r.HttpAPI.LOSEWAIVER, this.onLoseWaiverList, this),
        app.HttpServerManager().RegNetPack(r.HttpAPI.FREE_LOSE_GET, this.onGetFreeLose, this)
    }
    ,
    t.prototype.RequstFreeLose = function(e) {
        app.HttpServerManager().SendHttpPack(r.HttpAPI.FREE_LOSE_GET, {
            token: app.UserManager().GetUserInfo.token,
            tid: e
        })
    }
    ,
    t.prototype.onGetFreeLose = function(e) {
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI_Reward")
        }),
        app.Client.OnEvent(a.GameEventDefine.LOSEWAIVER),
        app.RedDotManager().updateSingleData({
            type: o.RedDotStr.free_lose,
            bShow: false
        }),
        this.RequestLoseWaiver()
    }
    ,
    t.prototype.RequestLoseWaiver = function() {
        app.HttpServerManager().SendHttpPack(r.HttpAPI.LOSEWAIVER, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onLoseWaiverList = function(e) {
        this.LoseWaiverList = e,
        this.LoseWaiverList && this.LoseWaiverList.length > 0 ? this.DelayTime = 1e3 * this.LoseWaiverList[0].now_time - Date.now() : this.DelayTime = 0,
        app.Client.OnEvent(a.GameEventDefine.LOSEWLIST, e)
    }
    ,
    Object.defineProperty(t.prototype, "GetSeverTime", {
        get: function() {
            return Math.floor((Date.now() + this.DelayTime) / 1e3)
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetLoseWaiverList = function() {
        return this.LoseWaiverList
    }
    ,
    t.prototype.GetLoseWaiverSwitch = function() {
        var e = this.GetLoseWaiverList();
        if (e && e.length > 0)
            for (var t = 0; t < e.length; t++) {
                var n = e[t]
                  , o = n.start_get_time - (Date.now() + (1e3 * n.now_time - Date.now())) / 1e3;
                if (o >= 0 || o < 0 && 0 == n.is_get && n.lost > 0)
                    return true
            }
        return false
    }
    ,
    t
}(i.Singleton);
n.LoseWaiverManager = s,
module.exports = n
