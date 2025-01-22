let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , ShareDefine = require("../../../Common/Define/ShareDefine")
    , r = require("../../../Common/Define/UINameDefine")
    , UIRedDot = require("../../Commons/UIRedDot")
    , s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.content = null,
                t.cloneItem = null,
                t.type = "",
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIAllActivityBonus"
                //this.RegEvent(i.GameEventDefine.GET_ALLPROMOTIONS, this.onRechargeInfo)
                this.RegEvent(i.GameEventDefine.RECHARGE_INFOV2, this.onRechargeInfo)
            }
            ,
            t.prototype.OnShow = function () {
                this.content.removeAllChildren()
                // app.ActivityManager().AllPromotionData ? this.onRechargeInfo() : app.ActivityManager().RequestGetAllPromotion()
                app.RedDotManager().RechargeInfoDataResult ? this.onRechargeInfo() : app.RedDotManager().RequestRecharge_InfoV2()
            },
            t.prototype.OnClick = function (e, t) {
                if ("newCanalOficial" == e) {
                    var tgchannel = app.RedDotManager().GetActiveInfo("tgchannel");
                    if (tgchannel) {
                        cc.sys.openURL(tgchannel)
                    }
                    else {
                        cc.sys.openURL("https://t.me/Yotubet01")
                    }
                }
                else if ("newGrupodeatividades" == e) {
                    var tggroup = app.RedDotManager().GetActiveInfo("tggroup");
                    if (tggroup) {
                        cc.sys.openURL(tggroup)
                    }
                    else {
                        cc.sys.openURL("https://t.me/sol888886")
                    }
                }
            }
            ,
            t.prototype.onRechargeInfo = function () {
                //   var e = app.ActivityManager().AllPromotionData;
                //  e && this.OnInitView(e)
                this.ActivityItems = {}
                var self = this
                    , t = [ShareDefine.ActivityType.first_recharge_gift, ShareDefine.ActivityType.ordinary_recharge_gift, ShareDefine.ActivityType.subordinate_recharge_gift, ShareDefine.ActivityType.reserve_event_one, ShareDefine.ActivityType.reserve_event_two, ShareDefine.ActivityType.reserve_event_three, ShareDefine.ActivityType.Atividades_de_Natal, ShareDefine.ActivityType.daily_Registrations, ShareDefine.ActivityType.Cash_Wheel, ShareDefine.ActivityType.rain_of_red_envelopes, ShareDefine.ActivityType.LossRebate, ShareDefine.ActivityType.NewbieBonus, ShareDefine.ActivityType.LuckyLottery, ShareDefine.ActivityType.BonusUnfrozen]
                    , n = this.content;
                n.removeAllChildren();
                for (var o = app.RedDotManager().RechargeInfoDataResult.activity_config, i = function (i) {
                    var r = o[i]
                        , l = r.id
                        , p = "" + l;
                    if (t.InArray(l)) {
                        var d = a.cloneItem
                            , h = [];
                        var u = cc.instantiate(d);
                        if (l == ShareDefine.ActivityType.LossRebate) {
                            h.push(ShareDefine.RedDotEnum.lossRebate)
                        }
                        else if (l == ShareDefine.ActivityType.LuckyLottery) {
                            h.push(ShareDefine.RedDotEnum.luckylottery)
                        }
                        else if (l == ShareDefine.ActivityType.daily_Registrations) {
                            h.push(ShareDefine.RedDotEnum.sign_reward)
                        }
                        else if (l == ShareDefine.ActivityType.NewbieBonus) {
                            h.push(ShareDefine.RedDotEnum.newbieBonus)
                        }
                        else if (l == ShareDefine.ActivityType.BonusUnfrozen) {
                            h.push(ShareDefine.RedDotEnum.bonusUnfrozen)
                        }
                        let o = app.RedDotManager().ShowRedDotDataResult[ShareDefine.RedDotEnum[h[0]]];
                        u.sortid = -r.sort
                        if (o && o.is_show) {
                            u.sortid = -r.sort - 10000
                            r.is_show2 = 1
                        }
                        else {
                            r.is_show2 = r.view_state
                        }

                        u.getChildByName("node_RedDot").getComponent(UIRedDot.default).RedDotIDArr = h;
                        u.active = false
                        u.name = p
                        var EventHandler
                        (EventHandler = new cc.Component.EventHandler).target = a.node,
                            EventHandler.component = a.JS_Name,
                            EventHandler.handler = "ActivityItemCallBack",
                            EventHandler.customEventData = l,
                            u.getChildByName("node_RedDot").getComponent(cc.Button).clickEvents = [],
                            u.getChildByName("node_RedDot").getComponent(cc.Button).clickEvents.push(EventHandler)
                        u.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null,
                            r.icon_url && app.ImageUtil().LoadImage(u.getChildByName("icon"), r.icon_url),
                            u.getChildByName("label").getComponent(cc.Label).string = r.title,
                            n.addChild(u, u.sortid),
                            a.ActivityItems[p] = u
                        var _, g
                        if (l == ShareDefine.ActivityType.first_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.first_recharge_gift).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.ordinary_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.ordinary_recharge_gift).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.subordinate_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.subordinate_recharge_gift).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.reserve_event_one)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_one).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.reserve_event_two)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_two).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.reserve_event_three)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_three).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.rain_of_red_envelopes)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.rain_of_red_envelopes).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.LossRebate)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.LossRebate).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.NewbieBonus)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.NewbieBonus).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.BonusUnfrozen)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.BonusUnfrozen).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.LuckyLottery)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.LuckyLottery).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.Atividades_de_Natal)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.Atividades_de_Natal).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.daily_Registrations)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.daily_Registrations).switch && !!r.is_show2,
                                a.showItem(l, _, g.title);
                        else if (l == ShareDefine.ActivityType.Cash_Wheel) {
                            var g;
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.Cash_Wheel).switch && !!r.is_show2,
                                a.showItem(l, _, g.title)
                        }
                    }
                }, a = this, r = 0; r < o.length; r++)
                    i(r);
            }
            ,
            t.prototype.showItem = function (e, t, n) {
                this.ActivityItems[e] ? (this.ActivityItems[e].active = t,
                    n && (this.ActivityItems[e].getChildByName("label").getComponent(cc.Label).string = n)) : this.ErrLog("idx: " + e)
            }
            ,
            t.prototype.ActivityItemCallBack = function (e, t) {
                app.ComUtil().playBtnClick()
                if (t == ShareDefine.ActivityType.daily_Registrations) {
                    if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().ShowForm(r.UINameDefine.UIActivityDailyRegistrations)
                }
                else if (t == ShareDefine.ActivityType.Cash_Wheel) {
                    app.FormManager().ShowForm(r.UINameDefine.UICashWheel)
                }
                else if (t == ShareDefine.ActivityType.LossRebate) {
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityLossRebate)
                }
                else if (t == ShareDefine.ActivityType.NewbieBonus) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityNewbieBonus)
                }
                else if (t == ShareDefine.ActivityType.LuckyLottery) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityLuckyLottery)
                }
                else if (t == ShareDefine.ActivityType.BonusUnfrozen) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIBonusUnfrozen)
                }
                else {
                    app.FormManager().ShowForm(r.UINameDefine.UIActivity, t)
                }
                this.CloseForm()
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.content.removeAllChildren()
            }
            ,
            __decorate([l(cc.Node)], t.prototype, "content", undefined),
            __decorate([l(cc.Node)], t.prototype, "cloneItem", undefined),
            __decorate([c], t)
    }(o.default);
n.default = p,
    module.exports = n
