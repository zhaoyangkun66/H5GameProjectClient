let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.PageTrackManager = n.PageTrackpageType = n.PageTracktranslateKey = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/HttpServerDefine");
n.PageTracktranslateKey = {
    PAGETRACK_EVENT_RECHARGE_ENTER: 1,
    PAGETRACK_EVENT_RECHARGE_SWITCHTAB: 2,
    PAGETRACK_EVENT_RECHARGE_GAMEENTER: 3,
    PAGETRACK_EVENT_RECHARGE_VIPENTER: 4,
    PAGETRACK_EVENT_RECHARGE_ACTIVITY: 5,
    PAGETRACK_EVENT_RECHARGE_RELEGATION: 6,
    PAGETRACK_EVENT_USERCENTER_TOPENTER: 1,
    PAGETRACK_EVENT_USERCENTER_BOTTOM: 2,
    PAGETRACK_EVENT_WITHDRAW_USERCENTER: 1,
    PAGETRACK_EVENT_WITHDRAW_SWITCHTAB: 2,
    PAGETRACK_EVENT_WITHDRAW_SHARE: 3,
    PAGETRACK_EVENT_WITHDRAW_ACTIVITY: 4
},
n.PageTrackpageType = {
    PAGETRACK_EVENT_RECHARGE_ENTER: 1,
    PAGETRACK_EVENT_RECHARGE_SWITCHTAB: 1,
    PAGETRACK_EVENT_RECHARGE_GAMEENTER: 1,
    PAGETRACK_EVENT_RECHARGE_VIPENTER: 1,
    PAGETRACK_EVENT_RECHARGE_ACTIVITY: 1,
    PAGETRACK_EVENT_RECHARGE_RELEGATION: 1,
    PAGETRACK_EVENT_USERCENTER_TOPENTER: 2,
    PAGETRACK_EVENT_USERCENTER_WITHDRAW: 2,
    PAGETRACK_EVENT_USERCENTER_BOTTOM: 2,
    PAGETRACK_EVENT_WITHDRAW_USERCENTER: 3,
    PAGETRACK_EVENT_WITHDRAW_SWITCHTAB: 3,
    PAGETRACK_EVENT_WITHDRAW_SHARE: 3,
    PAGETRACK_EVENT_WITHDRAW_ACTIVITY: 3
};
var a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "PageTrackManager",
        app.HttpServerManager().RegNetPack(i.HttpAPI.PAGE_TRAC_RECORD, this.onPageTrackRecord, this)
    }
    ,
    t.prototype.RequestTrackRecord = function(e) {
        var t = {
            token: app.UserManager().UserInfo.token,
            ctime: parseInt((new Date).getTime() / 1e3 + ""),
            bets_gold: app.BetBonusManager().GetBetGold(),
            all_gold: app.UserManager().UserInfo.gold,
            valid_gold: 100,
            page_type: n.PageTrackpageType[e.type],
            in_type: n.PageTracktranslateKey[e.type],
            out_type: e.out_type,
            is_change: null == e.is_change ? 0 : 1,
            client_type: app.ComTool().H5Platform() ? 1 : 2
        };
        app.HttpServerManager().SendHttpPack(i.HttpAPI.PAGE_TRAC_RECORD, t)
    }
    ,
    t.prototype.PageTrackRecord = function(e, t) {
        var o = t || {};
        n.PageTracktranslateKey[e] && (o.type = e,
        this.RequestTrackRecord(o))
    }
    ,
    t.prototype.onPageTrackRecord = function(e) {
        this.Log(e)
    }
    ,
    t.prototype.getLocalDeviceID = function() {
        return app.LoginManager().GetDeviceID()
    }
    ,
    t
}(o.Singleton);
n.PageTrackManager = a,
module.exports = n
