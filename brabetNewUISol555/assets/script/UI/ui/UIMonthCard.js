let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = [new cc.Color(23,208,204,255), new cc.Color(56,140,255,255), new cc.Color(97,69,182,255)]
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.content = null,
        t.cardItem = null,
        t.icons = [],
        t.ShopNum = 0,
        t.card_id = 0,
        t.CardNameData = [],
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        for (var e = this.content.children, t = 1; t < e.length; t++)
            e[t].active = false;
        this.CardNameData = ["Week Card", "Monthly Card", "Season Card"],
        this.RegEvent(i.GameEventDefine.GET_GOODS_LIST, this.onGetGoodsList),
        this.RegEvent(i.GameEventDefine.GET_CARD_LIST, this.onGetCardList),
        this.RegEvent(i.GameEventDefine.UPDATE_MONTHCARD, this.reqList)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.StoreManager().RequstGoodsList()
    }
    ,
    t.prototype.onGetGoodsList = function() {
        this.reqList()
    }
    ,
    t.prototype.onGetCardList = function() {
        var e = app.ActivityManager().GetCardList();
        e && (e.sort(function(e, t) {
            return e.id - t.id
        }),
        this.updateList(e))
    }
    ,
    t.prototype.reqList = function() {
        app.FormManager().CloseForm(a.UINameDefine.UIRechargeInfo),
        app.ActivityManager().RequestCardList()
    }
    ,
    t.prototype.OnIDCheck = function(e) {
        return e <= 7 ? 0 : e <= 15 && e > 7 ? 1 : 2
    }
    ,
    t.prototype.updateList = function(e) {
        var t = this;
        e || cc.error("updateList fail! not data==>>" + JSON.stringify(e));
        for (var n = this.content, o = n.children, i = function(i) {
            var r = e[i]
              , s = o[i + 1];
            s || (s = cc.instantiate(a.cardItem),
            n.addChild(s));
            var c = a.OnIDCheck(r.time)
              , p = l[c];
            s.getChildByName("light").color = p;
            var d = a.icons[c];
            s.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = d,
            s.getChildByName("lbl_name").getComponent(cc.Label).string = r.name;
            var h = s.getChildByName("layout_connect");
            h.children[0].children[3].getComponent(cc.Label).string = "" + r.recharge_immediately,
            h.children[1].children[3].getComponent(cc.Label).string = r.daily_collection + "(" + r.time + "day)",
            h.children[2].children[3].getComponent(cc.Label).string = "" + Number(r.recharge_immediately + r.daily_collection * r.time);
            var u = !!r.surplus_time && !!r.is_pay;
            s.getChildByName("receive").active = u;
            var _ = s.getChildByName("receive").getChildByName("label");
            _.active = u,
            u && (_.getComponent(cc.Label).string = app.i18n.t("Code_Shop_Mon_Card_Txt_1") + ": " + r.surplus_time + "day"),
            u = !r.is_pay,
            (_ = cc.find("btn_buy/label", s)).parent.active = u,
            u && (_.getComponent(cc.Label).string = r.price),
            a.setClickEvent(u, s, function() {
                t.ShopNum = r.price,
                t.card_id = r.id,
                t.goToEvent()
            }),
            a.setClickEvent(u, cc.find("btn_buy", s), function() {
                t.ShopNum = r.price,
                t.card_id = r.id,
                t.goToEvent()
            }),
            _ = cc.find("receive/btn_receive", s),
            (u = !!r.is_pay) && (_.active = u,
            u = !r.is_surplus,
            _.getChildByName("btn_bg_back").active = !u,
            _.getComponent(cc.Button).interactable = u),
            a.setClickEvent(u, _, function() {
                t.onReceive(r.id, r.order_id, r.daily_collection)
            }),
            s.active = true
        }, a = this, r = 0; r < e.length; r++)
            i(r)
    }
    ,
    t.prototype.setClickEvent = function(e, t, n) {
        t.cEvent && (t.off("click", t.cEvent),
        t.cEvent = null),
        e && n && (t.getComponent(cc.Button) || t.addComponent(cc.Button),
        t.cEvent = n,
        t.on("click", t.cEvent))
    }
    ,
    t.prototype.onReceive = function(e, t, n) {
        app.UserManager().GetIsOfficialPopup() || app.ActivityManager().RequestCardDailyGold({
            token: app.UserManager().GetUserInfo.token,
            card_id: e,
            order_id: t,
            gold: n
        })
    }
    ,
    t.prototype.goToEvent = function() {
        if (!app.UserManager().GetIsOfficialPopup()) {
            var e = {
                amount: this.ShopNum,
                card_id: this.card_id
            };
            app.FormManager().ShowForm(a.UINameDefine.UIRechargeInfo, e)
        }
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "content", undefined),
    __decorate([c(cc.Node)], t.prototype, "cardItem", undefined),
    __decorate([c(cc.SpriteFrame)], t.prototype, "icons", undefined),
    __decorate([s], t)
}(o.default);
n.default = p,
module.exports = n
