let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.VIPManager = undefined;
var o = require("../../Define/ShareDefine")
  , i = require("../../Base/Singleton")
  , a = require("../../Define/GameEventDefine")
  , r = require("../../Define/HttpServerDefine")
  , s = require("../../Define/UINameDefine")
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GameVipUpgradeTime = {
            18e3: 2,
            1400: 4,
            3e5: 6
        },
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "VIPManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(r.HttpAPI.VIP_LIST, this.onVipList, this),
        app.HttpServerManager().RegNetPack(r.HttpAPI.VIP_RECEIVE, this.onVipReceive, this),
        app.Client.RegEvent(a.GameEventDefine.UPGRADE_VIPLV, this.ReceiveVipUpdata, this)
    }
    ,
    t.prototype.RequestVipList = function() {
        app.HttpServerManager().SendHttpPack(r.HttpAPI.VIP_LIST, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.ReceiveVipUpdata = function(e) {
        this.setVipUpgradeData(e),
        this.checkVipUpgrade()
    }
    ,
    t.prototype.setVipUpgradeData = function(e) {
        app.LocalDataManager().SetConfigProperty(app.UserManager().GetUserInfo.uid + "UpgradeVipLv", "Updata", e)
    }
    ,
    t.prototype.delVipUpgradeData = function() {
        app.LocalDataManager().Remove(app.UserManager().GetUserInfo.uid + "UpgradeVipLv")
    }
    ,
    t.prototype.getVipUpgradeData = function() {
        return !!app.LocalDataManager().HaveConfigProperty(app.UserManager().GetUserInfo.uid + "UpgradeVipLv", "Updata") && app.LocalDataManager().GetConfigProperty(app.UserManager().GetUserInfo.uid + "UpgradeVipLv", "Updata")
    }
    ,
    t.prototype.checkVipUpgrade = function() {
        if (this.getVipUpgradeData() && app.FormManager().IsFormShow(s.UINameDefine.UIHall)) {
            var e = this.GameVipUpgradeTime[app.UserManager().GetUserInfo.roomMode];
            e ? setTimeout(function() {
                app.FormManager().ShowForm(s.UINameDefine.UIUpgrade)
            }, 1e3 * e) : app.FormManager().EnqueueForm({
                formName: s.UINameDefine.UIUpgrade,
                key: "hall"
            })
        }
    }
    ,
    t.prototype.CheckVipReduced = function() {
        app.UserManager().GetUserInfo.keep_level_conf && app.ComTool().H5Platform() && app.FormManager().EnqueueForm({
            formName: s.UINameDefine.UIVIPReduced,
            key: "hall"
        })
    }
    ,
    t.prototype.onVipList = function(e) {
        this.VIPList = e,
        app.Client.OnEvent(a.GameEventDefine.VIP_LIST, e)
    }
    ,
    t.prototype.getShowVipList = function(e) {
        for (var t = this.VIPList.show_vip_list, n = 0; n < t.length; ++n)
            if (t[n].id == e)
                return t[n];
        return null
    }
    ,
    t.prototype.RequestVipReceive = function(e, t) {
        app.HttpServerManager().SendHttpPack(r.HttpAPI.VIP_RECEIVE, {
            token: app.UserManager().GetUserInfo.token,
            type: e,
            id: t
        })
    }
    ,
    t.prototype.onVipReceive = function(e) {
        app.Client.OnEvent(a.GameEventDefine.VIP_RECEIVE, e),
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI_Reward")
        }),
        app.RedDotManager().updateSingleData({
            type: o.RedDotStr.vip_cash_gift,
            bShow: false
        })
    }
    ,
    t.prototype.GetBackHallVip = function() {
        if (!app.UserManager().getIsOfficialAccount() || !app.FormManager().IsFormShow(s.UINameDefine.UIHall))
            return false;
        var e = app.RedDotManager().ShowRedDotDataResult;
        if (e) {
            var t = e.vip_cash_gift;
            if (t && t.is_show && t.is_show)
                return !!this.CheckOneDayShowVip() && (app.FormManager().EnqueueForm({
                    formName: s.UINameDefine.UIBetBonusGold,
                    key: "hall",
                    argumentsList: [{
                        type: o.SelTypeNode.vip
                    }]
                }),
                true)
        }
        return false
    }
    ,
    t.prototype.CheckOneDayShowVip = function() {
        var e = new Date
          , t = {
            day: e.getDate(),
            month: e.getMonth()
        }
          , n = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "OneDayShowVip");
        return !(n && n.day == t.day && n.month == t.month || (app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "OneDayShowVip", t),
        0))
    }
    ,
    t
}(i.Singleton);
n.VIPManager = c,
module.exports = n
