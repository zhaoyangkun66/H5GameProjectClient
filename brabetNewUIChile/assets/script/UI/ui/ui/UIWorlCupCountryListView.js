let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.menu,
i.property)
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.myhistoryItem = null,
        t.selSprS = [],
        t.n_page = 1,
        t.n_IsReadySendMatchPage = true,
        t.selToggleType = 0,
        t._ScrollViewContent = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIWorlCupCountryListView",
        this._ScrollViewContent = this.GetWndComponent("/content/scrollview_team", cc.ScrollView)
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
        var e = this;
        this.selSprS.forEach(function(t) {
            e.GetWndComponent("spr_icon", cc.Sprite, t).spriteFrame = null;
            var n = e.GetWndNode("btn_eliminate", t);
            n.active = false,
            n.ExistID = 0
        }),
        this._ScrollViewContent.content.removeAllChildren();
        for (var t = app.WorldCupManager().GteTeamList, n = 0; n < t.length; n++) {
            var o = t[n]
              , i = cc.instantiate(this.myhistoryItem);
            i.name = "" + o.id,
            cc.find("lb_text", i).getComponent(cc.Label).string = o.name;
            var a = cc.find("spr_flag", i).getComponent(cc.Sprite);
            i.getChildByName("lb_choose").getComponent(cc.Label).string = "",
            a.spriteFrame = null,
            app.WorldCupManager().setIconSpr(a, o.icon),
            i.active = true,
            this._ScrollViewContent.content.addChild(i)
        }
    }
    ,
    t.prototype.getCountry = function(e) {
        for (var t = 0; t < 3; t++)
            if (this.SendCountryList[t] == e)
                return t;
        return -1
    }
    ,
    t.prototype.getCountrySetIndex = function() {
        for (var e = 0; e < 3; e++)
            if (!this.SendCountryList[e])
                return e;
        return -1
    }
    ,
    t.prototype.SetCountryList = function(e) {
        var t = this.getCountry(e);
        if (t >= 0)
            this._ScrollViewContent.content.getChildByName(this.SendCountryList[t]),
            this.SendCountryList[t] = null,
            this.SetSelSprHide(t);
        else {
            var n = this.getCountrySetIndex();
            n >= 0 ? (this.SendCountryList[n] = e,
            this._ScrollViewContent.content.getChildByName(this.SendCountryList[n]),
            this.SetSelSprShow(n, Number(e))) : app.SysNotifyManager().ShowToast(app.i18n.t("UI_WorldCup_SelectHint"))
        }
    }
    ,
    t.prototype.SetSelSprHide = function(e) {
        if (this.selSprS[e]) {
            this.GetWndComponent("spr_icon", cc.Sprite, this.selSprS[e]).spriteFrame = null;
            var t = this.GetWndNode("btn_eliminate", this.selSprS[e]);
            t.active = false,
            t.ExistID = 0
        }
    }
    ,
    t.prototype.SetSelSprShow = function(e, t) {
        if (this.selSprS[e]) {
            var n = this.GetWndComponent("spr_icon", cc.Sprite, this.selSprS[e])
              , o = app.WorldCupManager().onGetFootballDataById(t);
            app.WorldCupManager().setIconSpr(n, o.icon);
            var i = this.GetWndNode("btn_eliminate", this.selSprS[e]);
            i.active = true,
            i.ExistID = t
        }
    }
    ,
    t.prototype.SetSendMenu = function() {
        for (var e = 0, t = 0; t < this.SendCountryList.length; t++)
            this.SendCountryList[t] && (e += 1);
        return 3 == e
    }
    ,
    t.prototype.getCountryIndexData = function() {
        return ""
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (Number(e) >= 0)
            this.SetCountryList(t.name);
        else {
            if ("btn_eliminate" != e)
                return "btn_confirm" == e ? this.SetSendMenu() ? (app.WorldCupManager().RequestCountryRanking(this.SendCountryList),
                void this.CloseForm()) : void app.SysNotifyManager().ShowToast(app.i18n.t("UI_WorldCup_SelectHint")) : undefined;
            this.SetCountryList(t.ExistID)
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "myhistoryItem", undefined),
    __decorate([r([cc.Node])], t.prototype, "selSprS", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
