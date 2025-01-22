let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Component/ListView")
  , a = require("../../../../Common/Define/GameEventDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.menu,
r.property)
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.myhistoryItem = null,
        t.n_page = 1,
        t.n_IsReadySendMatchPage = true,
        t.selToggleType = 0,
        t._ScrollViewContent = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIWorlCupCountryHistory",
        this._ScrollViewContent = this.GetWndComponent("/content/scrollview_list", cc.ScrollView),
        this.RegEvent(a.GameEventDefine.WorldCup_Active_History, this.OnRacingMyHistory),
        this._SetRankingStr = ["1st", "2nd", "3rd"],
        this.listView = new i.ListView({
            scrollview: this._ScrollViewContent,
            mask: this.GetWndNode("/content/scrollview_list/view"),
            item_tpl: this.myhistoryItem,
            gap_y: 0,
            left: 10,
            item_setter: function(e, t) {
                cc.find("top/lb_game", e).getComponent(cc.Label).string = "" + t.order_no,
                cc.find("top/lb_time", e).getComponent(cc.Label).string = t.bet_time,
                cc.find("top/lb_time", e).getComponent(cc.Label).string = t.bet_time;
                for (var n = [t.bet_first, t.bet_second, t.bet_third], o = cc.find("flag_top3", e).children, i = 0; i < o.length; i++) {
                    var a = o[i].getComponent(cc.Sprite);
                    a.spriteFrame = null;
                    var r = app.WorldCupManager().onGetFootballDataById(n[i]);
                    app.WorldCupManager().setIconSpr(a, r.icon)
                }
            }
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.selToggleType = 0,
        this.SendCountryList = [],
        this.n_IsReadySendMatchPage = true,
        this.SelUpdateData()
    }
    ,
    t.prototype.SelUpdateData = function() {
        this.RequestMyHistory()
    }
    ,
    t.prototype.OnRacingMyHistory = function() {
        var e = app.WorldCupManager().GetWorldCupHistory;
        cc.find("/content/Nodate", this.node).active = 0 == e.length,
        this.listView.set_data(e)
    }
    ,
    t.prototype.RequestMyHistory = function() {
        app.WorldCupManager().RequestWorldCupActiveHistory(20)
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([c(cc.Prefab)], t.prototype, "myhistoryItem", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
