let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/UINameDefine")
    , r = require("../../common/room_mode_tool")
    , s = require("../../Commons/UIRedDot")
    , c = require("../../../Common/Define/ShareDefine")
    , l = cc._decorator
    , p = l.ccclass
    , d = l.property
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.ActivityItems = {},
                t.moreItem = null,
                t.acticityTitle = null,
                t.SwitchActivity = true,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIMainActivityList",
                    this.RegEvent(i.GameEventDefine.BONUS_HIDE, this.onBonusHide),
                    this.RegEvent(i.GameEventDefine.RECHARGE_INFOV2, this.onRechargeInfo),
                    this.RegEvent(i.GameEventDefine.GET_USER_INFO, this.onUpdateList),
                    this.RegEvent(i.GameEventDefine.GET_CARD_LIST, this.onGetCardList),
                    this.RegEvent(i.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess),
                    this.moreItem.active = false
            }
            ,
            t.prototype.OnEnable = function () {
                app.RedDotManager().RechargeInfoDataResult ? this.renderActivityList() : app.RedDotManager().RequestRecharge_InfoV2()
            }
            ,
            t.prototype.OnLoadHallSuccess = function () {
                this.OnEnable()
            }
            ,
            t.prototype.onRechargeInfo = function () {
                this.renderActivityList()
            }
            ,
            t.prototype.renderActivityList = function () {
                var e = this
                    , t = [c.ActivityType.first_recharge_gift, c.ActivityType.ordinary_recharge_gift, c.ActivityType.subordinate_recharge_gift, c.ActivityType.reserve_event_one, c.ActivityType.reserve_event_two, c.ActivityType.reserve_event_three, c.ActivityType.Atividades_de_Natal, c.ActivityType.daily_Registrations, c.ActivityType.Cash_Wheel, c.ActivityType.rain_of_red_envelopes, c.ActivityType.LossRebate, c.ActivityType.NewbieBonus, c.ActivityType.LuckyLottery, c.ActivityType.BonusUnfrozen]
                    , n = cc.find("/node_btnGroup", this.node);
                n.removeAllChildren();
                for (var o = app.RedDotManager().RechargeInfoDataResult.activity_config, i = function (i) {
                    var r = o[i]
                        , l = r.id
                        , p = "" + l;
                    if (t.InArray(l)) {
                        var d = a.moreItem
                            , h = [];
                        if (l == c.ActivityType.LossRebate) {
                            h.push(c.RedDotEnum.lossRebate)
                        }
                        else if (l == c.ActivityType.LuckyLottery) {
                            h.push(c.RedDotEnum.luckylottery)
                        }
                        else if (l == c.ActivityType.daily_Registrations) {
                            h.push(c.RedDotEnum.sign_reward)
                        }
                        else if (l == c.ActivityType.NewbieBonus) {
                            h.push(c.RedDotEnum.newbieBonus)
                        }
                        else if (l == c.ActivityType.BonusUnfrozen) {
                            h.push(c.RedDotEnum.bonusUnfrozen)
                        }
                        else if (l == c.ActivityType.subordinate_recharge_gift) {
                            h.push(c.RedDotEnum.spread_wayActivity)
                        }
                        d.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null,
                            d.getChildByName("node_RedDot").getComponent(s.default).RedDotIDArr = h;
                        var u = cc.instantiate(d);
                        u.active = false,
                            u.name = p,
                            u.on("click", function (t) {
                                var n = t.node.getComponent("DependentClickEvent");
                                n && n.IsOutGamePop() || e.clickEvent(l)
                            }, a),
                            u.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null,
                            r.icon_url && app.ImageUtil().LoadImage(u.getChildByName("icon"), r.icon_url),
                            u.getChildByName("label").getComponent(cc.Label).string = r.title,
                            n.addChild(u),
                            a.ActivityItems[p] = u
                        var _, g
                        if (l == c.ActivityType.first_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.first_recharge_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.ordinary_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.ordinary_recharge_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.subordinate_recharge_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.subordinate_recharge_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.reserve_event_one)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_one).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.reserve_event_two)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_two).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.reserve_event_three)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_three).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.rain_of_red_envelopes)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.rain_of_red_envelopes).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.LossRebate)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.LossRebate).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.NewbieBonus)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.NewbieBonus).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.BonusUnfrozen)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.BonusUnfrozen).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.LuckyLottery)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.LuckyLottery).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.Atividades_de_Natal)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.Atividades_de_Natal).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.daily_Registrations)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.daily_Registrations).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.Cash_Wheel) {
                            var g;
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.Cash_Wheel).switch && !!r.is_show,
                                a.showItem(l, _, g.title)
                        }
                    }
                }, a = this, r = 0; r < o.length; r++)
                    i(r);
            }
            ,
            t.prototype.onGetCardList = function () {
                var e = app.ActivityManager().GetCardList();
                this.showItem(c.ActivityType.week_month_card, e && e.length > 0)
            }
            ,
            t.prototype.onUpdateList = function () {
                app.RedDotManager().RequestRecharge_InfoV2()
            }
            ,
            t.prototype.onSwitchActivity = function () {
                this.SwitchActivity = !this.SwitchActivity,
                    cc.find("btn_all", this.node).active = this.SwitchActivity,
                    cc.find("node_btnGroup", this.node).active = this.SwitchActivity;
                var e = cc.find("title", this.node) || this.acticityTitle;
                cc.find("icon_off", e).active = this.SwitchActivity,
                    cc.find("icon_on", e).active = !this.SwitchActivity,
                    cc.find("title", this.node) || (this.node.active = this.SwitchActivity),
                    app.Client.OnEvent(i.GameEventDefine.HIDE_LANGUAGE)
            }
            ,
            t.prototype.onBonusHide = function () {
                // this.showItem(c.ActivityType.recharge_send_gold, false),
                app.GameManager().enterSceneByRoomMode(r.RoomMode.HALL)
            }
            ,
            t.prototype.clickEvent = function (e) {
                this.Log(e)
                app.ComUtil().playBtnClick()
                switch (e) {
                    // case c.ActivityType.recharge_reward:
                    //     app.FormManager().ShowForm(a.UINameDefine.UIDiscount);
                    //     break;
                    // case c.ActivityType.week_month_card:
                    //     app.FormManager().IsFormShow(a.UINameDefine.UIMonthCard) || app.FormManager().ShowForm(a.UINameDefine.UIMonthCard);
                    //     break;
                    // case c.ActivityType.limit_recharge:
                    //     app.FormManager().ShowForm(a.UINameDefine.UIRechargeTime);
                    //     break;
                    // case c.ActivityType.recharge_send_gold:
                    //     app.FormManager().IsFormShow(a.UINameDefine.UIBonuses) || app.FormManager().ShowForm(a.UINameDefine.UIBonuses);
                    //     break;
                    case c.ActivityType.Atividades_de_Natal:
                    case c.ActivityType.first_recharge_gift:
                    case c.ActivityType.ordinary_recharge_gift:
                    //case c.ActivityType.subordinate_recharge_gift:
                    case c.ActivityType.reserve_event_one:
                    case c.ActivityType.reserve_event_two:
                    case c.ActivityType.reserve_event_three:
                    case c.ActivityType.rain_of_red_envelopes:
                        app.FormManager().IsFormShow(a.UINameDefine.UIActivity) && app.FormManager().CloseForm(a.UINameDefine.UIActivity),
                            app.FormManager().ShowForm(a.UINameDefine.UIActivity, e);
                        break;
                    case c.ActivityType.subordinate_recharge_gift:
                        {
                            if (GameTypeGlobal == 2) {
                                if (!app.UserManager().GetIsOfficialPopup())
                                    app.FormManager().IsFormShow(a.UINameDefine.UIActivityPromote) || app.FormManager().ShowForm(a.UINameDefine.UIActivityPromote);
                            }
                            else {
                                app.FormManager().IsFormShow(a.UINameDefine.UIActivity) && app.FormManager().CloseForm(a.UINameDefine.UIActivity),
                                    app.FormManager().ShowForm(a.UINameDefine.UIActivity, e);
                            }
                            break;
                        }
                    case c.ActivityType.daily_Registrations:
                        if (!app.UserManager().GetIsOfficialPopup())
                            app.FormManager().IsFormShow(a.UINameDefine.UIActivityDailyRegistrations) || app.FormManager().ShowForm(a.UINameDefine.UIActivityDailyRegistrations);
                        break;
                    case c.ActivityType.Cash_Wheel:
                        app.FormManager().IsFormShow(a.UINameDefine.UICashWheel) || app.FormManager().ShowForm(a.UINameDefine.UICashWheel);
                        break;
                    case c.ActivityType.LossRebate:
                        app.FormManager().IsFormShow(a.UINameDefine.UIActivityLossRebate) || app.FormManager().ShowForm(a.UINameDefine.UIActivityLossRebate);
                        break;
                    case c.ActivityType.NewbieBonus:
                        //  if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().IsFormShow(a.UINameDefine.UIActivityNewbieBonus) || app.FormManager().ShowForm(a.UINameDefine.UIActivityNewbieBonus);
                        break;
                    case c.ActivityType.LuckyLottery:
                        //  if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().IsFormShow(a.UINameDefine.UIActivityLuckyLottery) || app.FormManager().ShowForm(a.UINameDefine.UIActivityLuckyLottery);
                        break;
                    case c.ActivityType.BonusUnfrozen:
                        //  if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().IsFormShow(a.UINameDefine.UIBonusUnfrozen) || app.FormManager().ShowForm(a.UINameDefine.UIBonusUnfrozen);
                        break;
                    default:
                        cc.error("clickEvent err =>", e)
                }
            }
            ,
            t.prototype.showItem = function (e, t, n) {
                this.ActivityItems[e] ? (this.ActivityItems[e].active = t,
                    n && (this.ActivityItems[e].getChildByName("label").getComponent(cc.Label).string = n)) : this.ErrLog("idx: " + e)
            }
            ,
            __decorate([d(cc.Node)], t.prototype, "moreItem", undefined),
            __decorate([d(cc.Node)], t.prototype, "acticityTitle", undefined),
            __decorate([p], t)
    }(o.default);
n.default = h,
    module.exports = n
