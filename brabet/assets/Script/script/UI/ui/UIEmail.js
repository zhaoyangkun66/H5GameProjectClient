let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
  , i = require("../../../Common/Base/UIBaseComponent")
  , a = require("../../../Common/Define/UINameDefine")
  , r = require("../../../Common/Define/ShareDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.EmailItem = null,
        t.EmailDetail = null,
        t.NoDataItem = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIEmail",
        this.RegEvent(o.GameEventDefine.GET_EMAIL_LIST, this.updateList),
        this.RegEvent(o.GameEventDefine.ET_EMAIL_DETAIL, this.updateEmailDetail),
        this.RegEvent(o.GameEventDefine.EMAIL_RECEIVE, this.emailRecived),
        this.RegEvent(o.GameEventDefine.EMAIL_RECEIVEAll, this.emailRecivedAll),
        this.RegEvent(o.GameEventDefine.EMAIL_DEl_ALL, this.emailDelAll)
    }
    ,
    t.prototype.OnEnable = function() {
        this.EmalListNode = [],
        this.NoDataItem.active = false,
        this.InitListUpdate()
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.InitListUpdate = function() {
        this.n_IsReadySendMatchPage = true,
        this.n_MatchListPage = 1,
        this.Init(1)
    }
    ,
    t.prototype.Init = function(e) {
        var t = {
            token: app.UserManager().GetUserInfo.token,
            page: e,
            limit: 30
        };
        app.EmailManager().RequstGetEmailList(t)
    }
    ,
    t.prototype.scrollEvents = function(e) {
        Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsReadySendMatchPage && (this.n_MatchListPage += 1,
        this.n_IsReadySendMatchPage = false,
        this.Init(this.n_MatchListPage))
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.emailLabelBtnItemCallBack = function(e, t) {
        var n = (t = JSON.parse(t)).out_url;
        if (!n)
            return t.in_url > 0 ? (app.InteractionMgr().SendWndEvent(t.in_url),
            void app.FormManager().CloseForm(a.UINameDefine.UIChat)) : undefined;
        cc.sys.openURL(n)
    }
    ,
    t.prototype.emailItemCallBack = function(e, t) {
        t = JSON.parse(t);
        var n = this.EmalListNode[t.id];
        if (n) {
            var o = cc.find("email_item/bg/below/show/Background/icon_jiantou_down", n).active;
            if (cc.find("email_item/bg/below/show/Background/icon_jiantou_down", n).active = !o,
            cc.find("email_item/bg/below/show/Background/icon_jiantou_up", n).active = o,
            o) {
                cc.find("email_item/bg/btn_label", n).active = t.in_url || t.out_url,
                this.n_selectIndex = t;
                var i = {
                    token: app.UserManager().GetUserInfo.token,
                    id: t.id
                };
                app.EmailManager().RequstGetEmailDetail(i)
            } else
                cc.find("email_item/bg/label", n).getComponent(cc.Label).string = app.ComUtil().cutStr(t.content, 30),
                cc.find("email_item/bg/chip", n).active = false,
                cc.find("email_item/bg/btn_label", n).active = false;
            cc.find("email_item/bg/below/show/Background/label", n).getComponent(cc.Label).string = o ? app.i18n.t("UI_Notice_Hide") : app.i18n.t("UI.Settings_1_Help_9")
        }
    }
    ,
    t.prototype.closeDetail = function() {
        this.EmailDetail.active = false
    }
    ,
    t.prototype.reqGetEmailAward = function(e, t) {
        if (t = JSON.parse(t),
        !app.UserManager().GetIsOfficialPopup() && this.EmalListNode[t.id]) {
            this.n_selectIndex = t;
            var n = {
                token: app.UserManager().GetUserInfo.token,
                id: t.id
            };
            app.EmailManager().RequstGetEmailRecive(n)
        }
    }
    ,
    t.prototype.updateEmailDetail = function(e) {
        this.Log("updateEmailDetail");
        var t = this.EmalListNode[this.n_selectIndex.id];
        t && (cc.find("email_item/bg/label", t).getComponent(cc.Label).string = e.content,
        cc.find("email_item/bg/chip/bg_off", t).active = 2 == e.status,
        cc.find("email_item/bg/chip", t).active = e.gold > 0,
        cc.find("email_item/bg/chip/receive", t).getComponent(cc.Button).interactable = 2 != e.status,
        cc.find("email_item/bg/chip/num", t).getComponent(cc.Label).string = "" + e.gold,
        cc.find("email_item/bg/title/icon_open", t).active = true,
        cc.find("email_item/bg/title/icon_off", t).active = false,
        this.GetWndNode("email_item/bg/title/node_RedDot", t).active = (0 == e.status || 1 == e.status) && e.gold > 0),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.mail,
            bShow: false
        })
    }
    ,
    t.prototype.emailRecived = function() {
        var e = this.EmalListNode[this.n_selectIndex.id];
        e && (cc.find("email_item/bg/chip/bg_off", e).active = true,
        this.n_selectIndex.gold > 0 && app.GoldRewardManager().FormGoldReward({
            gold: this.n_selectIndex.gold,
            source: app.i18n.t("UI.MakeMoney_4_Promotion_3")
        }),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.mail,
            bShow: false
        }),
        cc.find("email_item/bg/title/gold", e).active = false,
        this.GetWndNode("email_item/bg/title/node_RedDot", e).active = false)
    }
    ,
    t.prototype.updateList = function(e) {
        if (e) {
            var t = e;
            this.NoDataItem.active = false,
            t.length <= 0 && (1 == this.n_MatchListPage && (this.NoDataItem.active = true),
            this.n_IsReadySendMatchPage = false),
            this.addEmailItemList(t)
        } else
            this.ErrLog("updateList fail! not data==>>" + JSON.stringify(e))
    }
    ,
    t.prototype.addEmailItemList = function(e) {
        var t = cc.find("view/content/con/layer_mail", this.node);
        1 == this.n_MatchListPage && t.removeAllChildren();
        for (var n = 0; n < e.length; n++) {
            var o = e[n]
              , i = cc.instantiate(this.EmailItem);
            cc.find("email_item/title/time", i).getComponent(cc.Label).string = o.create_time,
            cc.find("email_item/bg/title", i).getComponent(cc.Label).string = app.ComUtil().cutStr(o.title, 18),
            cc.find("email_item/bg/label", i).getComponent(cc.Label).string = app.ComUtil().cutStr(o.content, 30);
            var a = this.GetWndComponent("email_item/bg/below/lbl_RemainTime", cc.Label, i);
            a.string = "";
            var r = app.GameConfigManager().GetAsTime();
            if (o.expire_ymd) {
                var s = new Date(o.expire_ymd).getTime() / 1e3 - r;
                if (s > 0) {
                    var c = s / 86400 >> 0;
                    c < 1 && (c = 1),
                    a.string = app.i18n.t("UI_Email_ExpiresDay").replace("{S1}", "" + c)
                }
            }
            this.GetWndNode("email_item/bg/title/node_RedDot", i).active = 0 == o.status || 1 == o.status,
            o.gold > 0 && 2 != o.status && (cc.find("email_item/bg/title/gold/bg/lbl", i).getComponent(cc.Label).string = "" + o.gold,
            cc.find("email_item/bg/title/gold", i).active = true),
            0 == o.status ? (cc.find("email_item/bg/title/icon_open", i).active = false,
            cc.find("email_item/bg/title/icon_off", i).active = true) : (cc.find("email_item/bg/title/icon_open", i).active = true,
            cc.find("email_item/bg/title/icon_off", i).active = false),
            cc.find("email_item/bg/below/show/Background/label", i).getComponent(cc.Label).string = app.i18n.t("UI.Settings_1_Help_9");
            var l = new cc.Component.EventHandler;
            l.target = this.node,
            l.component = "UIEmail",
            l.handler = "emailLabelBtnItemCallBack",
            l.customEventData = JSON.stringify(o);
            var p = cc.find("email_item/bg/btn_label", i);
            p.getComponent(cc.Button).clickEvents = [],
            p.active = false,
            o.in_url && p.getComponent(cc.Button).clickEvents.push(l),
            o.out_url && (p.getComponent(cc.Label).string = o.out_url,
            p.getComponent(cc.Button).clickEvents.push(l)),
            o.url_text && (p.getComponent(cc.Label).string = o.url_text),
            cc.find("email_item/bg/chip", i).active = false;
            var d = new cc.Component.EventHandler;
            d.target = this.node,
            d.component = "UIEmail",
            d.handler = "emailItemCallBack",
            d.customEventData = JSON.stringify(o),
            cc.find("email_item/bg", i).getComponent(cc.Button).clickEvents = [],
            cc.find("email_item/bg", i).getComponent(cc.Button).clickEvents.push(d);
            var h = new cc.Component.EventHandler;
            h.target = this.node,
            h.component = "UIEmail",
            h.handler = "reqGetEmailAward",
            h.customEventData = JSON.stringify(o),
            cc.find("email_item/bg/chip/receive", i).getComponent(cc.Button).clickEvents = [],
            cc.find("email_item/bg/chip/receive", i).getComponent(cc.Button).clickEvents.push(h),
            i.data = o,
            i.active = true,
            t.addChild(i),
            this.EmalListNode[o.id] = i
        }
    }
    ,
    t.prototype.reqEmailRecivedAll = function() {
        app.UserManager().GetIsOfficialPopup() || app.EmailManager().RequstEmailRecvieAll()
    }
    ,
    t.prototype.reqEmailDelAll = function() {
        app.UserManager().GetIsOfficialPopup() || app.EmailManager().RequstEmailDelAll()
    }
    ,
    t.prototype.emailRecivedAll = function(e) {
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI.MakeMoney_4_Promotion_3")
        }),
        this.InitListUpdate(),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.mail,
            bShow: false
        })
    }
    ,
    t.prototype.emailDelAll = function() {
        this.InitListUpdate(),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.mail,
            bShow: false
        })
    }
    ,
    t.prototype.onDestroy = function() {}
    ,
    __decorate([l(cc.Node)], t.prototype, "EmailItem", undefined),
    __decorate([l(cc.Node)], t.prototype, "EmailDetail", undefined),
    __decorate([l(cc.Node)], t.prototype, "NoDataItem", undefined),
    __decorate([c], t)
}(i.default);
n.default = p,
module.exports = n
