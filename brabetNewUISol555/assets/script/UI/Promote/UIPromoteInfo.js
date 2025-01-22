let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.labelTotalMoney = null,
        t.labelMoney = null,
        t.CommissionTodylabel = null,
        t.labelExpandID = null,
        t.labelMemberCount = null,
        t.labelTodayTeamCount = null,
        t.labelTeamCount = null,
        t.MyUidLabel = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.GET_COLLECTCASH, this.onCollectCashData),
        this.RegEvent(i.GameEventDefine.GET_SPREADWAYINFO, this.onSpreadWayInfoData)
    }
    ,
    t.prototype.OnEnable = function() {
        app.PromoteMainManager().RequstSpreadWayInfo(),
        this.setTotalMoney(""),
        this.setMoney(""),
        this.setExpandID(""),
        this.setLabelID(""),
        this.setExpandID(""),
        this.setTodayTeamCount(""),
        this.setMemberCount(""),
        this.setMyUidLabel(""),
        this.setLabelTeamCount("")
    }
    ,
    t.prototype.onCollectCashData = function() {
        var e = app.PromoteMainManager().GetCollectCash;
        e && (this.setMoney("0.00"),
        app.GoldRewardManager().FormGoldReward({
            gold: e.cash,
            source: app.i18n.t("UI_Reward")
        }),
        app.RedDotManager().updateSingleData({
            type: a.RedDotStr.user_spread_way
        }))
    }
    ,
    t.prototype.onSpreadWayInfoData = function() {
        var e = app.PromoteMainManager().GetSpreadWayInfo;
        e && (this.setTotalMoney(e.total_cash),
        this.setMoney(e.cash),
        this.setExpandID(e.agent_uid),
        this.setLabelID(e.today_cash),
        this.setExpandID(e.today_dirdect_cash),
        this.setTodayTeamCount(e.new_direct),
        this.setMemberCount(e.agent_uid),
        this.setMyUidLabel(e.uid),
        this.setLabelTeamCount(e.new_team))
    }
    ,
    t.prototype.setTotalMoney = function(e) {
        this.labelTotalMoney.string = e
    }
    ,
    t.prototype.setMoney = function(e) {
        this.labelMoney.string = e
    }
    ,
    t.prototype.setLabelID = function(e) {
        this.CommissionTodylabel.string = e
    }
    ,
    t.prototype.setExpandID = function(e) {
        this.labelExpandID.string = e
    }
    ,
    t.prototype.setMemberCount = function(e) {
        this.labelMemberCount.string = e
    }
    ,
    t.prototype.setTodayTeamCount = function(e) {
        this.labelTodayTeamCount.string = e
    }
    ,
    t.prototype.setLabelTeamCount = function(e) {
        this.labelTeamCount.string = e
    }
    ,
    t.prototype.setMyUidLabel = function(e) {
        this.MyUidLabel.string = e
    }
    ,
    t.prototype.onBtnGetMoney = function() {
        app.ComUtil().playBtnClick(),
        app.UserManager().GetIsOfficialPopup() || app.PromoteMainManager().RequstCollectCash()
    }
    ,
    t.prototype.openCashPercent = function() {}
    ,
    t.prototype.onShowDetailEvent = function() {
        app.ComUtil().playBtnClick(),
        cc.systemEvent.emit("SHOW_DETAIL")
    }
    ,
    t.prototype.onShowRecordEvent = function() {
        app.ComUtil().playBtnClick(),
        cc.systemEvent.emit("SHOW_RECORD")
    }
    ,
    __decorate([c(cc.Label)], t.prototype, "labelTotalMoney", undefined),
    __decorate([c(cc.Label)], t.prototype, "labelMoney", undefined),
    __decorate([c(cc.Label)], t.prototype, "CommissionTodylabel", undefined),
    __decorate([c(cc.Label)], t.prototype, "labelExpandID", undefined),
    __decorate([c(cc.Label)], t.prototype, "labelMemberCount", undefined),
    __decorate([c(cc.Label)], t.prototype, "labelTodayTeamCount", undefined),
    __decorate([c(cc.Label)], t.prototype, "labelTeamCount", undefined),
    __decorate([c(cc.Label)], t.prototype, "MyUidLabel", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
