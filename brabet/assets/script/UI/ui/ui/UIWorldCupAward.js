let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Component/ListView")
  , a = require("../../../../Common/Define/GameEventDefine")
  , r = require("../../../../Common/Define/UINameDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.flagNode = [],
        t.nodeItem = null,
        t.scrollView = null,
        t.PlayersLbl = null,
        t.betNumLbl = null,
        t.isRequest = false,
        t.n_page = 1,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        var e = this;
        this.RegEvent(a.GameEventDefine.WorldCup_AwardResult, this.initView),
        this.PlayersLbl = this.GetWndComponent("layer/flag_top3/people/lb_num", cc.Label),
        this.betNumLbl = this.GetWndComponent("layer/flag_top3/bet/lb_num", cc.Label),
        this.listView = new i.ListView({
            scrollview: this.scrollView,
            mask: this.GetWndNode("view", this.scrollView.node),
            item_tpl: this.nodeItem,
            item_setter: function(t, n) {
                var o = e.GetWndComponent("name/lb_name", cc.Label, t);
                o.string = n.user_name;
                var i = e.GetWndComponent("amount/lb_amount", cc.Label, t);
                i.string = "" + n.award;
                var a = e.GetWndComponent("num/lb_num", cc.Label, t);
                a.string = "" + n.award_num;
                var r = Number(n.uid) == app.UserManager().UserInfo.uid;
                o.node.color = r ? cc.Color.BLACK.fromHEX("#FCFF54") : cc.Color.WHITE,
                i.node.color = r ? cc.Color.BLACK.fromHEX("#FCFF54") : cc.Color.WHITE,
                a.node.color = r ? cc.Color.BLACK.fromHEX("#FCFF54") : cc.Color.WHITE
            }
        });
        var t = this.GetWndNode("layer/top_img/spr_img");
        app.ImageUtil().LoadImage(t, "common/atlas/worldCup/banner")
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.isRequest = false,
        this.n_page = 1,
        app.WorldCupManager().RequestAwardResult(this.n_page, 1)
    }
    ,
    t.prototype.initView = function(e) {
        var t = this;
        if (1 == e) {
            var n = app.WorldCupManager().GetAwardResult.records
              , o = app.WorldCupManager().GetAwardResult.result;
            if (0 == n.length || !o)
                return;
            this.flagNode.forEach(function(e, n) {
                var i = 0 == n ? o.sort.first : 1 == n ? o.sort.second : o.sort.third;
                t.GetWndComponent("lb_team", cc.Label, e).string = i.name;
                var a = t.GetWndComponent("icon", cc.Sprite, e);
                a.spriteFrame = null,
                app.WorldCupManager().setIconSpr(a, i.icon)
            }),
            this.PlayersLbl.string = "" + o.award_person_num,
            this.betNumLbl.string = "" + o.award_bet_num
        }
        this.OnRacingMyHistory()
    }
    ,
    t.prototype.scrollEvents = function(e) {
        var t = Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y);
        this.isRequest || t < .85 || (this.isRequest = true,
        this.n_page += 1,
        app.WorldCupManager().RequestAwardResult(this.n_page, 0))
    }
    ,
    t.prototype.OnRacingMyHistory = function() {
        var e, t = app.WorldCupManager().GetAwardResult.records;
        if (t) {
            if (t.length <= 0)
                return void (this.isRequest = true);
            this.isRequest = false,
            this.n_page > 1 ? (e = this.listView).append_data.apply(e, t) : this.listView.set_data(t)
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_more" != e || app.FormManager().ShowForm(r.UINameDefine.UFIFAWorldCupIHistory)
    }
    ,
    __decorate([l([cc.Node])], t.prototype, "flagNode", undefined),
    __decorate([l(cc.Node)], t.prototype, "nodeItem", undefined),
    __decorate([l(cc.ScrollView)], t.prototype, "scrollView", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
