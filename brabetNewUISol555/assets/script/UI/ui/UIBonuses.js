let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = o.property
  , r = require("../../../Common/Base/BaseForm")
  , s = require("../../../Common/Define/GameEventDefine")
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.content = null,
        t.bonusesItem = null,
        t.btn_more = null,
        t.sprData = [],
        t.n_height = 560,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(s.GameEventDefine.RECHARGE_BONUS, this.onRechargeBonus),
        this.RegEvent(s.GameEventDefine.RECHARGE_BONUS_LIST, this.onShowData),
        this.n_height = app.ComTool().H5Platform() ? 800 : 520
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.node.height = this.n_height,
        this.InitListUpdate()
    }
    ,
    t.prototype.InitListUpdate = function() {
        this.content.removeAllChildren(),
        this.Page = 1,
        app.ActivityManager().RequestRechargeBonusList(1)
    }
    ,
    t.prototype.onShowData = function(e) {
        var t = e;
        if (t.length <= 0)
            return 1 == this.Page && (this.btn_more.active = false,
            app.Client.OnEvent(s.GameEventDefine.BONUS_HIDE)),
            this.Page = this.Page-- < 1 ? 1 : this.Page--,
            void (this.btn_more.active = false);
        this.SetDatas(t),
        this.btn_more.active = 10 == t.length
    }
    ,
    t.prototype.SetDatas = function(e) {
        if (null != e) {
            for (var t = 0, n = 0; n < e.length; n++) {
                var o = e[n]
                  , i = cc.instantiate(this.bonusesItem);
                i.getComponent(cc.Sprite).spriteFrame = this.sprData[t],
                t = t + 1 > 2 ? 0 : t + 1,
                cc.find("title/title/label", i).getComponent(cc.Label).string = o.title,
                cc.find("title/title/richtext", i).getComponent(cc.RichText).string = "</color> <color=#ffffff>" + app.i18n.t("UI_Code_Bonus") + "</c><color=#D36E3F> " + parseFloat(o.bonus_gold) + "</color>",
                cc.find("title/title2/label", i).getComponent(cc.Label).string = o.recharge_time,
                cc.find("li/label1", i).getComponent(cc.Label).string = app.i18n.t("UI.MakeMoney_3_MyCommission_11") + "     " + parseFloat(o.current_bet),
                cc.find("li/label2", i).getComponent(cc.Label).string = "/" + parseFloat(o.all_bet);
                for (var a = cc.find("li/progressBar", i), r = a.childrenCount, s = 1; s < r; s++) {
                    var c = a.getChildByName("fenduan");
                    c && c.removeFromParent()
                }
                var l = 0;
                a.getComponent(cc.ProgressBar).progress = Number(o.current_rate) / 100;
                for (var p = 0; p < o.bonus_settle_list.length; p++) {
                    var d = o.bonus_settle_list[p]
                      , h = this.toFixed(Number(o.bonus_gold) * (Number(d.percent) / 100), 2)
                      , u = cc.instantiate(cc.find("li/fenduan", i));
                    u.setPosition(cc.v2(a.width * (Number(d.percent) / 100), 0)),
                    cc.find("num", u).getComponent(cc.Label).string = d.bet + "",
                    cc.find("tips/R_bg/dama/label", u).getComponent(cc.Label).string = parseFloat(this.toFixed(h - l, 2) + "") + "";
                    var _ = cc.find("box_normal", u);
                    0 == d.status && Number(o.current_rate) / 100 >= Number(d.percent) / 100 ? ((_ = cc.find("box_receive", u)).active = true,
                    _.getComponent(cc.Animation).play()) : 0 == d.status && Number(o.current_rate) / 100 < Number(d.percent) / 100 ? _.active = true : (_ = cc.find("box_used", u)).active = true,
                    _.percent = d.percent,
                    _.recId = o.id,
                    u.active = true,
                    a.addChild(u),
                    l = h
                }
                i.active = true,
                this.content.addChild(i)
            }
            this.content.getComponent(cc.Layout).updateLayout(),
            this.node.height = 150 + this.content.height > this.n_height ? 150 + this.content.height : this.n_height
        }
    }
    ,
    t.prototype.toFixed = function(e, t) {
        if (e > Number.MAX_SAFE_INTEGER || e < Number.MIN_SAFE_INTEGER)
            throw new Error("\u8d85\u8fc7js\u5b89\u5168\u8ba1\u7b97\u503c\u8303\u56f4\uff0c\u6b64\u51fd\u6570\u6682\u4e0d\u652f\u6301\uff01");
        var n = Math.pow(10, t)
          , o = Math.floor(e * n)
          , i = String(e).split(".");
        return i[1] && i[1].length >= t && Number(i[1][t]) >= 5 && (o += 1),
        o / n
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if ("box_normal" != e) {
            if ("box_receive" != e)
                return "btn_view" == e ? (this.Page += 1,
                void app.ActivityManager().RequestRechargeBonusList(this.Page)) : undefined;
            app.ActivityManager().RequestRechargeBonusBet(t.recId, t.percent)
        } else {
            var n = cc.find("tips", t.parent);
            n && !n.active && (n.active = true,
            t.getComponent(cc.Button).scheduleOnce(function() {
                t.getComponent(cc.Button).unscheduleAllCallbacks(),
                n.active = false
            }, 3))
        }
    }
    ,
    t.prototype.onRechargeBonus = function() {
        this.InitListUpdate()
    }
    ,
    __decorate([a(cc.Node)], t.prototype, "content", undefined),
    __decorate([a(cc.Node)], t.prototype, "bonusesItem", undefined),
    __decorate([a(cc.Node)], t.prototype, "btn_more", undefined),
    __decorate([a([cc.SpriteFrame])], t.prototype, "sprData", undefined),
    __decorate([i], t)
}(r.default);
n.default = c,
module.exports = n
