let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/ColorDefine")
  , a = require("../../../Common/Define/GameEventDefine")
  , r = require("../../../Common/Define/TrackEventName")
  , s = ["UI_Player_Vip_highest_level", "UI_Player_Vip_Maxlevel"]
  , c = "common/atlas/VIP/"
  , l = cc._decorator
  , p = l.ccclass
  , d = l.property
  , h = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.vipSprS = [],
        t.moveNode = null,
        t.contentNode = null,
        t.contentNode1 = null,
        t.bottomNode = null,
        t.PageBg = [],
        t.GoldBg = [],
        t.BeganPositionX = 0,
        t.moveNum = 0,
        t.startPositionX = null,
        t.EndPositionX = null,
        t.startPositionY = null,
        t.EndPositionY = null,
        t.isPlayAnim = false,
        t.test = false,
        t.keepGold = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "VipInfoBase",
        this.RegEvent(a.GameEventDefine.VIP_LIST, this.showVipInfo),
        this.RegEvent(a.GameEventDefine.VIP_RECEIVE, this.showSuccess),
        this.RegEvent(a.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.OnRequestVipList),
        this.moveNode.on(cc.Node.EventType.TOUCH_START, this.OnPageStart, this),
        this.moveNode.on(cc.Node.EventType.TOUCH_MOVE, this.OnPageMove, this),
        this.moveNode.on(cc.Node.EventType.TOUCH_END, this.OnPageEnd, this),
        this.moveNode.on(cc.Node.EventType.TOUCH_CANCEL, this.OnPageCancel, this),
        this.RegEvent(a.GameEventDefine.GET_FAQ_INFO, this.onVIPFaqInfo)
    }
    ,
    t.prototype.OnEnable = function() {
        this.contentNode.active = false,
        this.contentNode1.active = false,
        this.bottomNode.active = false,
        this.onHideAllNode(),
        this.OnRequestVipList()
    }
    ,
    t.prototype.OnRequestVipList = function() {
        app.VIPManager().RequestVipList()
    }
    ,
    t.prototype.OnTouchMove = function(e) {
        app.Client.OnEvent(a.GameEventDefine.MOVE_CONTENT, e.getDeltaY())
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        if ("btn_grade" != e && "btn_week" != e && "btn_month" != e)
            "btn_goTip" != e ? "btn_recharge" != e || app.StoreManager().ShowStoreUI({
                in_type: r.default.PAGETRACK_EVENT_RECHARGE_VIP
            }) : (o = app.i18n.t("UI_VIP_keepTip").replace("{gold}", "" + this.keepGold),
            app.SysNotifyManager().ShowToast(o));
        else {
            if (app.UserManager().GetIsOfficialPopup())
                return;
            if (this.keepGold > 0 && this.getIsReceive(app.UserManager().UserInfo.vip_id)) {
                var o = app.i18n.t("UI_VIP_keepTip").replace("{gold}", "" + this.keepGold);
                return void app.SysNotifyManager().ShowToast(o)
            }
            app.VIPManager().RequestVipReceive(Number(n), this.showLv)
        }
    }
    ,
    t.prototype.showVipInfo = function(e) {
        var t = this;
        this.initViewBottom();
        var n = this.contentNode.children
          , o = this.contentNode.children[0];
        if (this.getListInfo = e.list,
        e.show_vip_list.forEach(function(i, a) {
            var r = n[a];
            r || ((r = cc.instantiate(o)).parent = t.contentNode),
            t.setPageViewInfo(r, e, i),
            r.active = true
        }),
        this.showLv = e.vip_id,
        0 != e.list.length) {
            var i = this.contentNode1.children
              , a = i[0];
            this.getListInfo.forEach(function(e, n) {
                var o = i[n];
                o || ((o = cc.instantiate(a)).parent = t.contentNode1),
                t.renderLvGetInfo(e.id),
                o.active = true
            }),
            this.renderCurrentVipLv(),
            a.children[1].getChildByName("content").getComponent(cc.Layout).updateLayout(),
            a.children[1].getComponent(cc.Layout).updateLayout(),
            a.getComponent(cc.Layout).updateLayout(),
            this.contentNode1.height = a.height,
            this.bottomNode.active = app.GameConfigManager().IsVIPKeepSwitch
        } else
            this.ErrLog("showVipInfo error")
    }
    ,
    t.prototype.setPageViewInfo = function(e, t, n) {
        var o = n.id
          , i = o - 1
          , a = this.PageBg.length
          , r = o >= a ? a : o
          , l = i >= a ? a - 1 : i
          , p = e.children[0];
        p.getComponent(cc.Sprite).spriteFrame = this.PageBg[l],
        this.GetWndComponent("icon_vx", cc.Sprite, p).spriteFrame = this.vipSprS[l];
        var d = this.GetWndNode("label_level", p);
        this.setVipLblColor(d, i),
        d.getComponent(cc.Label).string = "V" + i;
        var h = this.GetWndNode("lock", p);
        this.GetWndNode("Layout", h).active = 0 == app.UserManager().UserInfo.is_keep_level && o <= app.UserManager().UserInfo.vip_id,
        this.setNumLblColor(this.GetWndNode("Layout/icon_lock", h), i),
        this.setNumLblColor(this.GetWndNode("Layout/label", h), i),
        this.setVipLblColor(this.GetWndNode("Layout", h), i);
        var u = this.GetWndNode("label_current", p);
        u.active = this.getSelfVip(o),
        this.setVipLblColor(u, i);
        var _ = this.GetWndNode("lb_passed", p);
        _.active = o < app.UserManager().UserInfo.vip_id,
        this.setVipLblColor(_, i),
        this.GetWndNode("no_standard", p).active = o > app.UserManager().UserInfo.vip_id;
        var m = this.GetWndNode("info", p)
          , f = this.getLvInfo(o + 1);
        if (f) {
            var g = this.GetWndNode("topup", m);
            this.setVipLblColor(this.GetWndNode("label_topup", g), i),
            this.setNumLblColor(this.GetWndNode("label_num", g), i),
            this.GetWndComponent("label_num", cc.Label, g).string = this.formatScore(t.recharge_gold) + "/" + this.formatScore(f.min_recharge);
            var y = this.GetWndNode("progressBar_topup", m);
            this.setSpriteFrame(c + "progressBar_bgv" + r, y),
            this.setSpriteFrame(c + "progressBar_barv" + r, this.GetWndNode("bar", y));
            var v = Number(t.recharge_gold) / Number(f.min_recharge);
            this.GetWndComponent("progressBar_topup", cc.ProgressBar, m).progress = v > 1 ? 1 : v;
            var C = this.GetWndNode("still", m);
            this.setVipLblColor(this.GetWndNode("label_topup", C), i),
            this.setNumLblColor(this.GetWndNode("label_num", C), i),
            this.GetWndComponent("label_num", cc.Label, C).string = this.formatScore(t.vip_bets) + "/" + this.formatScore(f.min_bet);
            var I = this.GetWndNode("progressBar_still", m);
            this.setSpriteFrame(c + "progressBar_bgv" + r, I),
            this.setSpriteFrame(c + "progressBar_barv" + r, this.GetWndNode("bar", I));
            var E = Number(t.vip_bets) / Number(f.min_bet);
            this.GetWndComponent("progressBar_still", cc.ProgressBar, m).progress = E > 1 ? 1 : E;
            var S = this.GetWndNode("label_topup", I);
            this.setVipLblColor(S, i);
            var b = this.GetWndNode("label_topup1", I);
            b.getComponent(cc.Label).string = "V" + o,
            this.setVipLblColor(b, i),
            m.active = o >= app.UserManager().UserInfo.vip_id && o < t.show_vip_list.length
        } else
            m.active = false;
        var M = this.GetWndComponent("lb_MaxLevel", cc.Label, p);
        this.setVipLblColor(M.node, i),
        M.node.active = o >= t.show_vip_list.length;
        var G = o >= t.show_vip_list.length && this.getSelfVip(o) ? 0 : 1;
        M.string = app.i18n.t(s[G]);
        var T = this.GetWndNode("relegation", p);
        if (this.getIsReceive(o)) {
            T.active = true,
            m.active = false,
            M.node.active = false,
            this.setVipLblColor(this.GetWndNode("topup/label_topup", T), i),
            this.setVipLblColor(this.GetWndNode("label", T), i);
            var N = this.GetWndNode("relegationPro", T);
            this.setSpriteFrame(c + "progressBar_bgv" + r, N),
            this.setSpriteFrame(c + "progressBar_barv" + r, this.GetWndNode("bar", N));
            var D = Number(t.week_recharge) / Number(n.lv_keep_recharge);
            this.GetWndComponent("relegationPro", cc.ProgressBar, T).progress = D > 1 ? 1 : D,
            this.setNumLblColor(this.GetWndNode("topup/label_num", T), i),
            this.GetWndComponent("topup/label_num", cc.Label, T).string = this.formatScore(t.week_recharge) + "/" + this.formatScore(n.lv_keep_recharge),
            this.keepGold = Number(n.lv_keep_recharge)
        } else
            T.active = false
    }
    ,
    t.prototype.setLVNodeView = function(e, t, n, o) {
        var i = this.GetWndNode("state_lock", t)
          , a = this.GetWndNode("Received", t);
        a.getChildByName("mask").active = !this.getSelfVip(e),
        this.setNumLblColor(i, o),
        this.setNumLblColor(this.GetWndNode("label_tips", a), this.getSelfVip(e) ? o : -1),
        this.setNumLblColor(this.GetWndNode("Uncompleted/icon_lock", t), o),
        this.setVipLblColor(this.GetWndNode("label_num", t), o),
        this.setVipLblColor(this.GetWndNode("label_condition", t), o)
    }
    ,
    t.prototype.renderLvGetInfo = function(e) {
        var t = this.getLvInfo(e)
          , n = e - 1
          , o = this.GoldBg.length
          , i = e >= o ? o : e
          , r = n >= o ? o - 1 : n
          , s = e > app.UserManager().UserInfo.vip_id;
        if (null == t || n < 0)
            this.ErrLog("getLvInfo error,lv = " + e);
        else {
            var l = this.contentNode1.children[n].children[0];
            l.name = "v" + e,
            this.GetWndNode("scrollview_gold/view/btn_goTip", l).active = this.getIsReceive(e);
            var p = this.GetWndNode("scrollview_gold/view/content", l)
              , d = p.children[0];
            d.getComponent(cc.Sprite).spriteFrame = this.GoldBg[r];
            var h = this.GetWndNode("icon_red", d);
            h.active = 0 == t.grade;
            var u = this.GetWndNode("btn_grade", d);
            u.active = 0 == t.grade,
            u.getComponent(cc.Button).enabled = 0 == t.grade,
            this.setNumLblColor(this.GetWndNode("btn_mask", u), n),
            this.GetWndNode("Uncompleted", d).active = s;
            var _ = this.GetWndNode("Received", d);
            _.active = !s && 1 == t.grade;
            var m = this.GetWndNode("state_lock", d);
            m.active = !s && -1 == t.grade,
            this.setLVNodeView(e, d, u, n),
            this.GetWndComponent("label_num", cc.Label, d).string = this.formatScore(t.grade_gold),
            (d = p.children[1]).getComponent(cc.Sprite).spriteFrame = this.GoldBg[r],
            (h = this.GetWndNode("icon_red", d)).active = 0 == t.week;
            var f = this.GetWndNode("btn_week", d);
            f.active = 0 == t.week,
            f.getComponent(cc.Button).enabled = 0 == t.week,
            this.setNumLblColor(this.GetWndNode("btn_mask", f), n),
            this.GetWndNode("Uncompleted", d).active = s,
            (_ = this.GetWndNode("Received", d)).active = !s && this.getSelfVip(e) && 0 != t.week,
            _.active && (this.GetWndComponent("label_tips", cc.Label, _).string = this.getWeekReceived()),
            (m = this.GetWndNode("state_lock", d)).active = !s && !this.getSelfVip(e) && 0 != t.week,
            this.setLVNodeView(e, d, f, n),
            this.GetWndComponent("label_num", cc.Label, d).string = this.formatScore(t.week_gold),
            (d = p.children[2]).getComponent(cc.Sprite).spriteFrame = this.GoldBg[r],
            (h = this.GetWndNode("icon_red", d)).active = 0 == t.month;
            var g = this.GetWndNode("btn_month", d);
            g.active = 0 == t.month,
            g.getComponent(cc.Button).enabled = 0 == t.month,
            this.setNumLblColor(this.GetWndNode("btn_mask", g), n),
            this.GetWndNode("Uncompleted", d).active = s,
            (_ = this.GetWndNode("Received", d)).active = !s && this.getSelfVip(e) && 0 != t.month,
            _.active && (this.GetWndComponent("label_tips", cc.Label, _).string = this.getMonthReceived()),
            (m = this.GetWndNode("state_lock", d)).active = 0 != t.month && !this.getSelfVip(e) && !s,
            this.setLVNodeView(e, d, g, n),
            this.GetWndComponent("label_num", cc.Label, d).string = this.formatScore(t.month_gold),
            this.setTitLineLblColor(this.GetWndNode("label_tips/label_lock", l), n);
            var y = this.GetWndNode("line1", l);
            this.setSpriteFrame(c + "line" + (Number(i)-1), y),
            this.renderVipRight(e),
            app.Client.OnEvent(a.GameEventDefine.VIP_LOADEND)
        }
    }
    ,
    t.prototype.renderVipRight = function(e) {
        var t = e - 1 >= this.vipSprS.length ? this.vipSprS.length - 1 : e - 1
          , n = this.contentNode1.children[e - 1].children[1];
        this.GetWndComponent("spr_vip", cc.Sprite, n).spriteFrame = this.vipSprS[t];
        var o = app.VIPManager().getShowVipList(e);
        if (o) {
            for (var i = ["UI_Taxa_da_retirada", "UI_VIP_Daily_withdrawals", "UI_VIP_Single_withdrawal_limit", "UI_VIP_Daily_withdrawal_limit", "UI_Vip_USDT_Fee", "UI_Vip_USDT_Daily", "UI_Vip_USDT_Limit", "UI_Vip_USDT_Linit", "UI_VIP_Code_Rewards"], a = [o.withdraw_fee_rate, this.formatScore(o.withdraw_num), this.formatScore(o.withdraw_each_limit), this.formatScore(o.withdraw_day_limit), o.usdt_withdraw_fee_rate, this.formatScore(o.usdt_withdraw_num), this.formatScore(o.usdt_withdraw_each_limit), this.formatScore(o.usdt_withdraw_day_limit), o.internal_percent], r = this.GetWndNode("content", n), s = this.GetWndNode("con", n), c = 0; c < a.length; c++) {
                var l = a[c]
                  , p = r.children[c];
                if (p || (p = cc.instantiate(s),
                r.addChild(p)),
                p.active = null != l && "NaN" != l,
                p.active) {
                    var d = i[c];
                    this.GetWndNode("lb_tit", p).getComponent(cc.Label).string = app.i18n.t(d),
                    this.GetWndNode("lb_num", p).getComponent(cc.Label).string = l
                }
            }
            this.getVIPKeepView(e)
        } else
            this.ErrLog("renderVipRight: " + e)
    }
    ,
    t.prototype.getVIPKeepView = function(e) {
        var t = app.VIPManager().getShowVipList(e)
          , n = app.GameConfigManager().GetCurrency;
        this.GetWndNode("con_6/lb_num", this.bottomNode).getComponent(cc.Label).string = "" + n + this.formatScore(t.lv_keep_recharge) + "/week"
    }
    ,
    t.prototype.onHideAllNode = function() {
        this.isPlayAnim = false,
        this.contentNode.stopAllActions(),
        this.contentNode1.stopAllActions(),
        this.contentNode.children.forEach(function(e) {
            e.active = true
        }),
        this.contentNode1.children.forEach(function(e) {
            e.active = true
        })
    }
    ,
    t.prototype.setSpriteFrame = function(e, t) {
        app.ImageUtil().LoadImage(t, e)
    }
    ,
    t.prototype.OnPageStart = function(e) {
        this.startPositionX = e.getLocationX(),
        this.startPositionY = e.getLocationY(),
        app.Client.OnEvent(a.GameEventDefine.TOUCH_SCROLLVIEW, false)
    }
    ,
    t.prototype.OnPageMove = function(e) {
        this.EndPositionX = e.getLocationX(),
        this.EndPositionY = e.getLocationY();
        var t = Math.abs(this.EndPositionX - this.startPositionX);
        Math.abs(this.EndPositionY - this.startPositionY) > t && app.Client.OnEvent(a.GameEventDefine.TOUCH_SCROLLVIEW, true)
    }
    ,
    t.prototype.OnPageCancel = function() {
        app.Client.OnEvent(a.GameEventDefine.TOUCH_SCROLLVIEW, true)
    }
    ,
    t.prototype.OnPageEnd = function(e) {
        if (app.Client.OnEvent(a.GameEventDefine.TOUCH_SCROLLVIEW, true),
        !this.isPlayAnim) {
            var t = e.getLocationX() - this.startPositionX;
            if (!(Math.abs(t) < 50)) {
                var n = e.getLocationX() > this.startPositionX ? this.showLv - 1 : this.showLv + 1;
                n < 1 || n > this.contentNode.childrenCount || (this.isPlayAnim = true,
                this.showLv = n,
                this.playAnim())
            }
        }
    }
    ,
    t.prototype.playAnim = function() {
        var e = this
          , t = this.showLv - 1
          , n = this.BeganPositionX - t * this.moveNum
          , o = cc.sequence(cc.moveTo(.3, new cc.Vec2(n,0)), cc.delayTime(.3), cc.callFunc(function() {
            e.renderCurrentVipLv()
        }));
        this.contentNode.runAction(o);
        var i = cc.sequence(cc.moveTo(.3, new cc.Vec2(n,0)), cc.delayTime(.3));
        this.contentNode1.runAction(i)
    }
    ,
    t.prototype.renderCurrentVipLv = function() {
        var e = this.showLv - 1;
        this.getVIPKeepView(this.showLv),
        this.contentNode.x = this.BeganPositionX - e * this.moveNum,
        this.contentNode1.x = this.BeganPositionX - e * this.moveNum,
        this.contentNode.active = true,
        this.contentNode1.active = true,
        this.isPlayAnim = false,
        this.contentNode.stopAllActions(),
        this.contentNode1.stopAllActions()
    }
    ,
    t.prototype.renderClickButton = function(e, t) {
        var n = this
          , o = this.contentNode1.children[t - 1].children[0]
          , i = this.GetWndNode("scrollview_gold/view/content", o).children[e - 1];
        this.GetWndNode("icon_red", i).active = false;
        var a = this.GetWndNode("btn_grade", i)
          , r = "";
        2 == e ? (a = this.GetWndNode("btn_week", i),
        r = this.getWeekReceived()) : 3 == e && (a = this.GetWndNode("btn_month", i),
        r = this.getMonthReceived()),
        a.active = false,
        a.getComponent(cc.Button).enabled = false,
        cc.tween(i).to(.3, {
            scaleX: 0
        }).call(function() {
            var e = n.GetWndNode("Received", i);
            e.active = true,
            r && (n.GetWndComponent("label_tips", cc.Label, e).string = r)
        }).to(.3, {
            scaleX: 1
        }).start()
    }
    ,
    t.prototype.showSuccess = function(e) {
        this.updateListInfo(e.type, e.id),
        this.renderClickButton(e.type, e.id)
    }
    ,
    t.prototype.setVipLblColor = function(e, t) {
        var n = t >= i.VIP_Lbl_Color.length ? i.VIP_Lbl_Color.length - 1 : t
          , o = -1 == t ? "#FFFFFF" : i.VIP_Lbl_Color[n];
        e.color = cc.color().fromHEX(o)
    }
    ,
    t.prototype.setNumLblColor = function(e, t) {
        var n = t >= i.VIP_Num_Color.length ? i.VIP_Num_Color.length - 1 : t
          , o = -1 == t ? "#FFFFFF" : i.VIP_Num_Color[n];
        e.color = cc.color().fromHEX(o)
    }
    ,
    t.prototype.setTitLineLblColor = function(e, t) {
        var n = t >= i.VIP_LineLbl_Color.length ? i.VIP_LineLbl_Color.length - 1 : t
          , o = -1 == t ? "#FFFFFF" : i.VIP_LineLbl_Color[n];
        e.color = cc.color().fromHEX(o)
    }
    ,
    t.prototype.initViewBottom = function() {
        var e = app.VIPManager().VIPList.vip_faq_name
          , t = app.HallManager().GetFaqText(e);
        t ? this.getLbl(t) : app.HallManager().RequestTextInfo(e, 3)
    }
    ,
    t.prototype.onVIPFaqInfo = function(e) {
        e.sendData.type && this.getLbl(e.recvData.value)
    }
    ,
    t.prototype.getLbl = function(e) {
        e && (this.GetWndComponent("lb_vip", cc.RichText, this.bottomNode).string = app.ComTool().htmlRestore(e) || "")
    }
    ,
    t.prototype.getSpriteStringState = function(e) {
        return -1 == e ? app.i18n.t("UI_Player_Vip_Unclaimable") : 0 == e ? app.i18n.t("UI.MakeMoney_0_main_17") : app.i18n.t("UI_Player_Vip_Received")
    }
    ,
    t.prototype.getLvInfo = function(e) {
        for (var t = 0; t < this.getListInfo.length; ++t)
            if (this.getListInfo[t].id == e)
                return this.getListInfo[t];
        return null
    }
    ,
    t.prototype.getLvInfoIndex = function(e) {
        for (var t = 0; t < this.getListInfo.length; ++t)
            if (this.getListInfo[t].id == e)
                return t;
        return -1
    }
    ,
    t.prototype.updateListInfo = function(e, t) {
        var n = this.getLvInfo(t);
        n && (1 == e ? n.grade = 1 : 2 == e ? n.week = 1 : n.month = 1)
    }
    ,
    t.prototype.getIsReceive = function(e) {
        return 0 == app.UserManager().UserInfo.is_keep_level && this.getSelfVip(e)
    }
    ,
    t.prototype.getSelfVip = function(e) {
        return e == app.UserManager().UserInfo.vip_id
    }
    ,
    t.prototype.getWeekReceived = function() {
        var e = (new Date).getDay();
        return (e = 0 != e ? 7 - e : 1) + app.i18n.t("UI_Vip_DaysLater")
    }
    ,
    t.prototype.getMonthReceived = function() {
        var e = new Date
          , t = e.getFullYear()
          , n = e.getMonth();
        return (n += 2) + 2 > 12 && (n = 1,
        t += 1),
        t + "-" + (n.toString().length <= 1 ? "0" : "") + n + "-01"
    }
    ,
    t.prototype.formatScore = function(e) {
        var t = app.VIPManager().VIPList.thousand_mark;
        return Number(t) ? app.ScoreUtil().formatNumberWithCommas(e) : "" + Number(e)
    }
    ,
    __decorate([d([cc.SpriteFrame])], t.prototype, "vipSprS", undefined),
    __decorate([d(cc.Node)], t.prototype, "moveNode", undefined),
    __decorate([d(cc.Node)], t.prototype, "contentNode", undefined),
    __decorate([d(cc.Node)], t.prototype, "contentNode1", undefined),
    __decorate([d(cc.Node)], t.prototype, "bottomNode", undefined),
    __decorate([d([cc.SpriteFrame])], t.prototype, "PageBg", undefined),
    __decorate([d([cc.SpriteFrame])], t.prototype, "GoldBg", undefined),
    __decorate([d()], t.prototype, "BeganPositionX", undefined),
    __decorate([d()], t.prototype, "moveNum", undefined),
    __decorate([p], t)
}(o.default);
n.default = h,
module.exports = n
