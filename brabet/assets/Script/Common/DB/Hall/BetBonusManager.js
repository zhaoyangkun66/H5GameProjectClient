let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.BetBonusManager = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/HttpServerDefine")
  , r = require("../../Define/ShareDefine")
  , s = require("../../Define/UINameDefine")
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.BetBonusInfo = null,
        t.BetPercentList = null,
        t.NewBetPercentList = null,
        t.BetBonusVIPPerInfo = {},
        t.betHistoryList = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "BetBonusManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.UNABLE_BETLIST, this.onUnableBet, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.BETBONUSINFO, this.onBetBonusInfo, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.CLEANBETV2, this.onCleanBet, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.BET_PERCENTLIST, this.onPercentList, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.NEW_PERCENTLIST, this.onNewPercentList, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.New_CleanBetList, this.onCleanBetHistoryList, this),
        app.Client.RegEvent(i.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess, this),
        app.Client.RegEvent(i.GameEventDefine.SINGLE_CLEARBAT, this.GetBackHallBetBonus, this)
    }
    ,
    t.prototype.RequestBetBonusInfo = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.BETBONUSINFO, {
            token: app.UserManager().GetUserInfo.token,
            platform: 1
        })
    }
    ,
    t.prototype.onBetBonusInfo = function(e) {
        this.BetBonusInfo = e,
        app.Client.OnEvent(i.GameEventDefine.BETBONUSINFO, e)
    }
    ,
    Object.defineProperty(t.prototype, "GetBetBonusInfo", {
        get: function() {
            return this.BetBonusInfo
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetBetGold = function() {
        var e = 0;
        if (!this.BetBonusInfo)
            return e;
        for (var t = 0; t < this.BetBonusInfo.list.length; t++)
            this.BetBonusInfo.list[t].list.forEach(function(t) {
                e += Number(t.gold)
            });
        return e
    }
    ,
    t.prototype.GeBetVIPLvPercent = function() {
        if (!this.BetBonusInfo)
            return this.BetBonusVIPPerInfo;
        var e = app.UserManager().GetUserInfo.vip_id
          , t = app.UserManager().GetUserInfo.vip_id + 1;
        0 == app.UserManager().UserInfo.is_keep_level && (e = 1,
        t = app.UserManager().GetUserInfo.vip_id);
        for (var n = 0; n < this.BetBonusInfo.list.length; n++) {
            var o = this.BetBonusInfo.list[n]
              , i = this.BetBonusInfo.vip_conf[e]
              , a = "0.00%";
            if (i) {
                var r = i[o.type_id];
                a = app.MathUtil().multiply(Number(r), 100) + "%"
            }
            var s = this.BetBonusInfo.vip_conf[t]
              , c = "0.00%";
            if (s) {
                var l = s[o.type_id];
                c = app.MathUtil().multiply(Number(l), 100) + "%"
            } else
                c = "max";
            this.BetBonusVIPPerInfo[n] = {
                name: o.name,
                nextLevel: c,
                current: a
            }
        }
        return this.BetBonusVIPPerInfo
    }
    ,
    t.prototype.RequestUnableBet = function(e, t) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.UNABLE_BETLIST, {
            token: app.UserManager().GetUserInfo.token,
            page: e,
            count: t
        })
    }
    ,
    t.prototype.onUnableBet = function(e) {
        app.Client.OnEvent(i.GameEventDefine.UNABLE_BETLIST, e)
    }
    ,
    t.prototype.RequestCleanBet = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.CLEANBETV2, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onCleanBet = function(e) {
        this.RequestBetBonusInfo(),
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI_Player_Vip_WashCode"),
            send_type: 11
        }),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.clean_bet,
            bShow: false
        }),
        app.LocalDataManager().Remove(app.UserManager().UserInfo.uid + "ShowBetList"),
        app.Client.OnEvent(i.GameEventDefine.CLEANBETV2)
    }
    ,
    t.prototype.RequestNewPercentList = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.NEW_PERCENTLIST, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onNewPercentList = function(e) {
        this.NewBetPercentList = e,
        app.Client.OnEvent(i.GameEventDefine.NewBetPercentList)
    }
    ,
    Object.defineProperty(t.prototype, "getNewBetPercentList", {
        get: function() {
            return this.NewBetPercentList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetNewPerListItemInfo = function(e, t) {
        if (this.NewBetPercentList) {
            var n = this.NewBetPercentList.list["" + e];
            if (n)
                for (var o = 0; o < n.length; o++) {
                    var i = n[o];
                    if (t == o)
                        return i.percent
                }
        }
        return ""
    }
    ,
    t.prototype.RequestPercentList = function(e, t) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.BET_PERCENTLIST, {
            token: app.UserManager().GetUserInfo.token,
            type: e,
            type_id: t
        })
    }
    ,
    t.prototype.onPercentList = function(e) {
        this.BetPercentList = e,
        app.Client.OnEvent(i.GameEventDefine.BetPercentList)
    }
    ,
    Object.defineProperty(t.prototype, "getBetPercentList", {
        get: function() {
            return this.BetPercentList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestCleanBetHistoryList = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.New_CleanBetList, {
            token: app.UserManager().GetUserInfo.token,
            limit: e
        })
    }
    ,
    t.prototype.onCleanBetHistoryList = function(e) {
        this.betHistoryList = e,
        this.betHistoryList.title.splice(0, 1),
        app.Client.OnEvent(i.GameEventDefine.New_CleanBetList)
    }
    ,
    Object.defineProperty(t.prototype, "GetBetHistoryList", {
        get: function() {
            return this.betHistoryList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.OnLoadHallSuccess = function() {
        app.UserManager().getIsOfficialAccount() && app.GameConfigManager().GetGameConfig().auto_clean_bet_switch && !app.UserManager().GetUserInfo.day_first_login && this.RequestCleanBet()
    }
    ,
    t.prototype.GetBackHallBetBonus = function() {
        if (!app.UserManager().getIsOfficialAccount() || app.GameConfigManager().GetGameConfig().auto_clean_bet_switch || !app.FormManager().IsFormShow(s.UINameDefine.UIHall))
            return false;
        var e = app.RedDotManager().ShowRedDotDataResult;
        if (e) {
            var t = e[r.RedDotEnum[5]];
            if (t && t.is_show && t.is_show)
                return !!this.getLocaldataShowBet() && (app.FormManager().EnqueueForm({
                    formName: s.UINameDefine.UIBetBonusGold,
                    key: "hall",
                    argumentsList: [{
                        type: r.SelTypeNode.BetBonus
                    }]
                }),
                true)
        }
        return false
    }
    ,
    t.prototype.getLocaldataShowBet = function() {
        var e = app.GameConfigManager().GetGameConfig().bet_pop_up_config.split(",")
          , t = app.RedDotManager().ShowRedDotDataResult
          , n = 0;
        if (t && e) {
            for (var o = t[r.RedDotEnum[5]].value, i = e.length - 1; i >= 0; i--) {
                var a = e[i];
                if (o >= Number(a)) {
                    n = i;
                    break
                }
            }
            var s = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "ShowBetList");
            return !(null != s && s >= n || (app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "ShowBetList", n),
            0))
        }
        return false
    }
    ,
    t
}(o.Singleton);
n.BetBonusManager = c,
module.exports = n
