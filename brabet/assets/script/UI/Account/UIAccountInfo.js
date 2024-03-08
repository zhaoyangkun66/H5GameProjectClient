let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LoginType = undefined;
var o = require("../../../Common/Define/UINameDefine")
  , i = require("../../../Common/Base/UIBaseComponent")
  , a = require("../../../Common/Define/GameEventDefine")
  , r = require("../../../Common/Define/ShareDefine");
(function(e) {
    e.Email = "email",
    e.Mobile = "mobile"
}
)(n.LoginType || (n.LoginType = {}));
var s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.centerVip = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(a.GameEventDefine.VIP_LIST, this.showVipInfo),
        this.RegEvent(a.GameEventDefine.BETBONUSINFO, this.onVIPLvPercent),
        this.RegEvent(a.GameEventDefine.UPDATE_USER_VIP, this.onUpdateUserVip)
    }
    ,
    t.prototype.OnEnable = function() {
        this.initCenter()
    }
    ,
    t.prototype.getIsBindMethod = function(e) {
        var t = app.GameConfigManager().GetGameConfig().reg_login_weight_conf;
        if (!t)
            return true;
        for (var n = 0; n < t.length; n++) {
            var o = t[n];
            if (o.key == e && 1 == o.status)
                return true
        }
        return false
    }
    ,
    t.prototype.initCenter = function() {
        app.VIPManager().RequestVipList(),
        this.onUpdateUserVip();
        var e = app.BetBonusManager().GeBetVIPLvPercent();
        Object.keys(e).length > 0 ? this.onVIPLvPercent() : app.BetBonusManager().RequestBetBonusInfo()
    }
    ,
    t.prototype.onUpdateUserVip = function() {
        var e = app.UserManager().UserInfo.vip_id;
        this.GetWndComponent("vipNode/vip/lbl_vip", cc.Label, this.centerVip).string = "" + Number(e - 1)
    }
    ,
    t.prototype.showVipInfo = function(e) {
        var t = Number(e.vip_bets) / Number(e.max_bets);
        this.GetWndComponent("vipNode/line2/ProgressBar", cc.ProgressBar, this.centerVip).progress = t,
        this.GetWndComponent("vipNode/line2/num/label", cc.Label, this.centerVip).string = e.vip_bets,
        this.GetWndComponent("vipNode/line2/num/total", cc.Label, this.centerVip).string = e.max_bets;
        var n = Number(e.recharge_gold) / Number(e.max_recharge);
        this.GetWndComponent("vipNode/line1/ProgressBar", cc.ProgressBar, this.centerVip).progress = n,
        this.GetWndComponent("vipNode/line1/num/label", cc.Label, this.centerVip).string = e.recharge_gold,
        this.GetWndComponent("vipNode/line1/num/total", cc.Label, this.centerVip).string = e.max_recharge,
        this.GetWndNode("vipNode/line1", this.centerVip).active = true,
        this.GetWndNode("vipNode/line2", this.centerVip).active = true
    }
    ,
    t.prototype.onVIPLvPercent = function() {
        var e = app.BetBonusManager().GeBetVIPLvPercent()
          , t = this.GetWndNode("bonus/Layout", this.centerVip);
        t.removeAllChildren();
        var n = this.GetWndNode("bonus/item", this.centerVip)
          , o = true;
        Object.keys(e).forEach(function(i) {
            var a = e[i]
              , r = cc.instantiate(n);
            r.getChildByName("lbl_name").getComponent(cc.Label).string = a.name,
            r.getChildByName("slotnode").getChildByName("lbl_curscale").getComponent(cc.Label).string = a.current;
            var s = r.getChildByName("slotnode").getChildByName("lbl_nextlevelscale");
            s.getComponent(cc.Label).string = a.nextLevel,
            "max" == a.nextLevel && (s.active = false,
            o = false,
            r.getChildByName("slotnode").getChildByName("icon_next").active = false),
            r.active = true,
            r.x = 0,
            t.addChild(r)
        });
        var i = Number(app.UserManager().GetUserInfo.vip_id - 1)
          , a = 0 == app.UserManager().UserInfo.is_keep_level ? app.i18n.t("UI.AccountInfoVipCurrent") + "V0" : app.i18n.t("UI.AccountInfoVipCurrent") + "V" + i
          , r = 0 == app.UserManager().UserInfo.is_keep_level ? app.i18n.t("UI_Next") + "V" + i : app.i18n.t("UI_Next") + "V" + app.UserManager().GetUserInfo.vip_id;
        this.GetWndComponent("center/bonus/title/title_current/lb_vx", cc.Label).string = a,
        this.GetWndNode("center/bonus/title/title_next").active = o,
        this.GetWndComponent("center/bonus/title/title_next/lb_vx", cc.Label).string = r
    }
    ,
    t.prototype.OnClick = function(e) {
        "vipNode" != e && "btn_AllRanks" != e ? "bonus" != e || app.FormManager().ShowForm(o.UINameDefine.UIBetBonus, {
            InType: r.IntypeType.Account
        }) : app.FormManager().ShowForm(o.UINameDefine.UIVIP)
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "centerVip", undefined),
    __decorate([c], t)
}(i.default);
n.default = p,
module.exports = n
