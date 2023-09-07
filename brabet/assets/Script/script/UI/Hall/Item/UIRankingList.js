let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("./UIBiggestToDay")
  , r = require("./UILatestRounds")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.BiggestToDay = null,
        t.LatestRounds = null,
        t.RefreshInfo = false,
        t.placeholder_1 = null,
        t.placeholder_2 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIRankingList",
        this.RegEvent(i.GameEventDefine.HallShowHallRank, this.OnShowHallRank)
       // app.PlaceholderManager().beginShowIcon.push(this.placeholder_1)
       // app.PlaceholderManager().beginShowIcon.push(this.placeholder_2)
    }
    ,
    t.prototype.OnEnable = function() {
        this.RefreshInfo = false,
        this.LatestRounds.getComponent(r.default).setOldRoundsData()
    }
    ,
    t.prototype.SetAllIsRequest = function(e) {
        e || (this.RefreshInfo = true),
        this.BiggestToDay.getComponent(a.default).GetInitRequest(e),
        this.LatestRounds.getComponent(r.default).setIsRequest(e)
    }
    ,
    t.prototype.OnShowHallRank = function(e) {
        var t = false;
        t = Math.abs(this.node.y) <= e.ViewHeight || Math.abs(this.node.y) - e.nodeContentY - 40 <= e.ViewHeight,
        this.RefreshInfo && !t && (this.RefreshInfo = false),
        this.RefreshInfo || this.SetAllIsRequest(!t)
    }
    ,
    t.prototype.OnShowIcon = function() {
        this.placeholder_1.active = false,
        this.placeholder_2.active = false
    }
    ,
    t.prototype.OnClick = function(e) {
        return "toggleBiggest" == e ? (this.LatestRounds.active = false,
        this.BiggestToDay.active = true,
        void this.BiggestToDay.getComponent(a.default).GetInitRequest(false)) : "toggleLatest" == e ? (this.BiggestToDay.active = false,
        this.LatestRounds.active = true,
        void this.LatestRounds.getComponent(r.default).GetInitRequest()) : undefined
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "BiggestToDay", undefined),
    __decorate([l(cc.Node)], t.prototype, "LatestRounds", undefined),
    __decorate([l(cc.Node)], t.prototype, "placeholder_1", undefined),
    __decorate([l(cc.Node)], t.prototype, "placeholder_2", undefined),
    __decorate([c], t)
}(o.default);
n.default = p

module.exports = n
