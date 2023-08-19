let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("../../../../Common/Define/ShareDefine")
  , r = require("../../../../Common/Define/TextDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.betBonusAllNode = null,
        t.betBonusNode = null,
        t.vipSprS = [],
        t.record = null,
        t.receive = null,
        t.RatioNode = null,
        t.nodeTtips = null,
        t.btn_receive = null,
        t.requestList = [],
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIBetBonus",
        this.gameType = -1,
        this.RegEvent(i.GameEventDefine.BETBONUSINFO, this.initBetInfo),
        this.RegEvent(i.GameEventDefine.CLEANBETV2, this.onShowSuccess),
        this.RegEvent(i.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.onVIPLvPercent),
        this.RegEvent(i.GameEventDefine.NewBetPercentList, this.initGameTypeList),
        this.RegEvent(i.GameEventDefine.GET_FAQ_INFO, this.OnGetFaqInfo),
        this.btn_receive = this.GetWndNode("btn_receive", this.receive),
        this.btn_receive.active = 0 == app.GameConfigManager().GetGameConfig().auto_clean_bet_switch
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.onChildShow(true),
        this.GetWndNode("/top/ToggleContainer/Toggle_bet").getComponent(cc.Toggle).check(),
        app.BetBonusManager().RequestBetBonusInfo(),
        app.RedDotManager().updateSingleData({
            type: a.RedDotStr.clean_bet,
            bShow: false
        }),
        0 == app.UserManager().UserInfo.is_keep_level && this.RequestTextInfo()
    }
    ,
    t.prototype.initBetInfo = function() {
        var e = app.BetBonusManager().GetBetGold();
        this.onBtnReceiveShow(e),
        this.onVIPLvPercent(),
        app.BetBonusManager().getNewBetPercentList ? this.initGameTypeList() : app.BetBonusManager().RequestNewPercentList()
    }
    ,
    t.prototype.onChildShow = function(e) {
        this.betBonusNode.active = e,
        this.RatioNode.active = e,
        this.receive.active = e,
        this.betBonusAllNode && (this.betBonusAllNode.active = e),
        this.record.active = !e
    }
    ,
    t.prototype.onBtnReceiveShow = function(e) {
        this.GetWndComponent("glodBg/betGold", cc.Label, this.receive).string = e.toFixed(2),
        this.btn_receive.getComponent(cc.Button).interactable = e > 0,
        this.btn_receive.getChildByName("mask").active = e <= 0
    }
    ,
    t.prototype.questBet = function() {
        var e = this.GetWndComponent("glodBg/betGold", cc.Label, this.receive);
        Number(e.string) < 1 ? app.SysNotifyManager().ShowToast("Bet_Bonus_Tips") : app.BetBonusManager().RequestCleanBet()
    }
    ,
    t.prototype.onShowSuccess = function() {
        this.onBtnReceiveShow(0)
    }
    ,
    t.prototype.onVIPLvPercent = function() {
        var e = app.BetBonusManager().GeBetVIPLvPercent()
          , t = this.GetWndNode("content/top/laylout", this.RatioNode);
        t.removeAllChildren();
        var n = this.GetWndNode("content/top/item", this.RatioNode)
          , o = 0
          , i = true;
        Object.keys(e).forEach(function(a) {
            var r = e[a]
              , s = cc.instantiate(n);
            s.getChildByName("lbl_name").getComponent(cc.Label).string = r.name,
            s.getChildByName("slotnode").getChildByName("lbl_curscale").getComponent(cc.Label).string = r.current;
            var c = s.getChildByName("slotnode").getChildByName("lbl_nextlevelscale");
            c.getComponent(cc.Label).string = r.nextLevel,
            "max" == r.nextLevel && (c.active = false,
            i = false,
            s.getChildByName("slotnode").getChildByName("icon_6").active = false),
            o++,
            s.active = true,
            s.x = 0,
            t.addChild(s)
        });
        var a = Number(app.UserManager().GetUserInfo.vip_id - 1);
        this.GetWndComponent("content/top/title/vip/lbl_vip", cc.Label, this.RatioNode).string = "" + a;
        var r = 0;
        a >= 3 && a < 5 ? r = 1 : a >= 5 && (r = 2),
        this.GetWndComponent("content/top/title/vip/bg", cc.Sprite, this.RatioNode).spriteFrame = this.vipSprS[r];
        var s = o > 2
          , c = this.GetWndNode("content/top", this.RatioNode);
        c.getComponent(cc.Layout).enabled = s,
        s ? c.getComponent(cc.Layout).updateLayout() : c.height = 270;
        var l = 0 == app.UserManager().UserInfo.is_keep_level ? app.i18n.t("UI.AccountInfoVipCurrent") + "V0" : app.i18n.t("UI.AccountInfoVipCurrent") + "V" + a
          , p = 0 == app.UserManager().UserInfo.is_keep_level ? app.i18n.t("UI_Next") + "V" + a : app.i18n.t("UI_Next") + "V" + app.UserManager().GetUserInfo.vip_id;
        this.GetWndComponent("content/top/title/title_current/lb_vx", cc.Label, this.RatioNode).string = l,
        this.GetWndNode("content/top/title/title_next", this.RatioNode).active = i,
        this.GetWndComponent("content/top/title/title_next/lb_vx", cc.Label, this.RatioNode).string = p
    }
    ,
    t.prototype.initGameTypeList = function() {
        var e = this;
        this.GetWndNode("list", this.betBonusNode).active = false,
        this.betBonusNode.getComponent(cc.Layout).enabled = false;
        var t = this.GetWndNode("content", this.betBonusNode)
          , n = this.GetWndNode("ProportionItem", this.betBonusNode);
        t.removeAllChildren();
        var o = app.BetBonusManager().GetBetBonusInfo.vip_conf
          , i = Number(app.UserManager().GetUserInfo.vip_id - 1);
        Object.keys(o).forEach(function(o, a) {
            var r = cc.instantiate(n)
              , s = r.getChildByName("bg").getChildByName("spr_vip")
              , c = 0;
            a >= 3 && a < 5 ? c = 1 : a >= 5 && (c = 2),
            s.getComponent(cc.Sprite).spriteFrame = e.vipSprS[c],
            s.children[0].getComponent(cc.Label).string = "" + a,
            e.GetWndNode("bg/spr_vip/title_next", r).active = i == a,
            r.active = true,
            t.addChild(r)
        }),
        t.getComponent(cc.Layout).updateLayout(),
        this.betBonusNode.height = 143.4 + t.height,
        this.onGameType()
    }
    ,
    t.prototype.onGameType = function() {
        var e = this.GetWndNode("list", this.betBonusNode);
        e.active = true;
        var t = this.GetWndNode("view/layer/title", e)
          , n = this.GetWndNode("view/title_item", e);
        t.removeAllChildren();
        var o = app.BetBonusManager().GetBetBonusInfo.list;
        this.requestList = [];
        var i = o.length > 5;
        t.getComponent(cc.Layout).resizeMode = i ? cc.Layout.ResizeMode.CONTAINER : cc.Layout.ResizeMode.CHILDREN;
        for (var a = 0; a < o.length; a++) {
            var r = o[a]
              , s = cc.instantiate(n);
            s.active = true,
            t.addChild(s),
            this.GetWndComponent("lb_text", cc.Label, s).string = r.name,
            i && (s.width = 115),
            s.type_id = r.type_id,
            this.requestList.push({
                type_id: r.type_id
            })
        }
        t.getComponent(cc.Layout).updateLayout(),
        e.getComponent(cc.ScrollView).enabled = i,
        this.onBetPercentInfo()
    }
    ,
    t.prototype.onBetPercentInfo = function() {
        var e = this
          , t = this.GetWndNode("list/view/layer", this.betBonusNode)
          , n = this.GetWndNode("title", t);
        t.width = n.width;
        var o = this.GetWndNode("content", t)
          , i = this.GetWndNode("content", this.betBonusNode)
          , a = this.GetWndNode("list/view/item", this.betBonusNode);
        t.children.forEach(function(e, t) {
            0 != t && (e.removeAllChildren(),
            e.active = false)
        }),
        this.requestList.forEach(function(n, r) {
            i.children.forEach(function(i, s) {
                var c = t.children[s + 1];
                c || ((c = cc.instantiate(o)).parent = t),
                c.active = true,
                c.getComponent(cc.Layout).resizeMode = e.requestList.length > 5 ? cc.Layout.ResizeMode.CONTAINER : cc.Layout.ResizeMode.CHILDREN;
                var l = c.children[r];
                l || ((l = cc.instantiate(a)).parent = c),
                e.requestList.length > 5 && (l.width = 115),
                l.active = true;
                var p = app.BetBonusManager().GetNewPerListItemInfo(n.type_id, s)
                  , d = app.MathUtil().multiply(Number(p), 100);
                e.GetWndComponent("lb_text", cc.Label, l).string = d + "%"
            })
        })
    }
    ,
    t.prototype.RequestTextInfo = function() {
        app.HallManager().RequestTextInfo(r.TextDefine.draw_amount)
    }
    ,
    t.prototype.OnGetFaqInfo = function(e) {
        if (e.recvData.name == r.TextDefine.draw_amount)
            if ("" != e.recvData.value) {
                this.nodeTtips.active = true;
                var t = "";
                e.recvData.link && 0 != Number(e.recvData.link) ? t = "link_:" + e.recvData.link : e.recvData.url && (t = "url_:" + e.recvData.url);
                var n = e.recvData.value
                  , o = '<on click="Click" param="' + t + '">';
                n = this.addStr(n, o, "<u>", 0),
                n = this.addStr(n, "</on>", "</u>", "</on>".length),
                this.GetWndNode("label_restore", this.nodeTtips).getComponent(cc.RichText).string = n
            } else
                this.nodeTtips.active = false
    }
    ,
    t.prototype.addStr = function(e, t, n, o) {
        var i = e.split("");
        return i.splice(e.indexOf(n) + o, 0, t),
        i.join("")
    }
    ,
    t.prototype.OnClick = function(e) {
        "Toggle_bet" != e ? "Toggle_Ratio" != e ? "btn_receive" != e || this.questBet() : this.onChildShow(false) : this.onChildShow(true)
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "betBonusAllNode", undefined),
    __decorate([l(cc.Node)], t.prototype, "betBonusNode", undefined),
    __decorate([l([cc.SpriteFrame])], t.prototype, "vipSprS", undefined),
    __decorate([l(cc.Node)], t.prototype, "record", undefined),
    __decorate([l(cc.Node)], t.prototype, "receive", undefined),
    __decorate([l(cc.Node)], t.prototype, "RatioNode", undefined),
    __decorate([l(cc.Node)], t.prototype, "nodeTtips", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
