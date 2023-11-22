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
                    this.RegEvent(i.GameEventDefine.LOSEWAIVER, this.onLoseWaiver),
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
                    , t = [c.ActivityType.recharge_send_gold, c.ActivityType.welcome_bonus, c.ActivityType.recharge_reward, c.ActivityType.week_month_card, c.ActivityType.limit_recharge, c.ActivityType.week_month_card, c.ActivityType.first_recharge_gift, c.ActivityType.ordinary_recharge_gift, c.ActivityType.subordinate_recharge_gift, c.ActivityType.reserve_event_one, c.ActivityType.reserve_event_two, c.ActivityType.reserve_event_three, c.ActivityType.progressive_recharge_time, c.ActivityType.recharge_bussiness_one_gift, c.ActivityType.recharge_bussiness_two_gift, c.ActivityType.recharge_bussiness_three_gift, c.ActivityType.rain_of_red_envelopes, c.ActivityType.reserve_event_five]
                    , n = cc.find("/node_btnGroup", this.node);
                n.removeAllChildren();
                for (var o = app.RedDotManager().RechargeInfoDataResult.activity_config, i = function (i) {
                    var r = o[i]
                        , l = r.id
                        , p = "" + l;
                    if (t.InArray(l)) {
                        var d = a.moreItem
                            , h = [];
                        l == c.ActivityType.recharge_send_gold ? h.push(c.RedDotEnum.recharge_send_activity) : l == c.ActivityType.week_month_card ? h.push(c.RedDotEnum.week_month_card) : l == c.ActivityType.welcome_bonus && h.push(c.RedDotEnum.free_lose),
                            d.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null,
                            d.getChildByName("node_RedDot").getComponent(s.default).RedDotIDArr = h;
                        var u = cc.instantiate(d);
                        if (u.active = false,
                            u.name = p,
                            u.on("click", function (t) {
                                var n = t.node.getComponent("DependentClickEvent");
                                n && n.IsOutGamePop() || e.clickEvent(l)
                            }, a),
                            u.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null,
                            r.icon_url && app.ImageUtil().LoadImage(u.getChildByName("icon"), r.icon_url),
                            u.getChildByName("label").getComponent(cc.Label).string = r.title,
                            n.addChild(u),
                            a.ActivityItems[p] = u,
                            l == c.ActivityType.progressive_recharge_time) {
                            var _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.progressive_recharge_time).status && r.is_show
                                , m = app.ComUtil().CheckDateEventTimeIn(g.start_time, g.end_time, g.cur_time);
                            _ && m && a.showItem(l, true)
                        } else if (l == c.ActivityType.recharge_send_gold) {
                            var f = !!(g = app.RedDotManager().RechargeInfoDataResult.recharge_send_gold).show && !!r.is_show;
                            a.showItem(l, f)
                        } else if (l == c.ActivityType.recharge_reward)
                            f = 0 === (g = app.RedDotManager().RechargeInfoDataResult.recharge_reward).is_discount && !!r.is_show,
                                a.showItem(l, f);
                        else if (l == c.ActivityType.limit_recharge)
                            ;
                        else if (l == c.ActivityType.first_recharge_gift)
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
                        else if (l == c.ActivityType.reserve_event_five)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.reserve_event_five).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.recharge_bussiness_one_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.recharge_bussiness_one_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.recharge_bussiness_two_gift)
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.recharge_bussiness_two_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title);
                        else if (l == c.ActivityType.recharge_bussiness_three_gift) {
                            var g;
                            _ = 1 == (g = app.RedDotManager().RechargeInfoDataResult.recharge_bussiness_three_gift).switch && !!r.is_show,
                                a.showItem(l, _, g.title)
                        }
                    }
                }, a = this, r = 0; r < o.length; r++)
                    i(r);
                this.renderLoseWaiver(),
                    this.renderMonthCard()
            }
            ,
            t.prototype.renderLoseWaiver = function () {
                app.LoseWaiverManager().GetLoseWaiverList() ? this.onLoseWaiver() : app.LoseWaiverManager().RequestLoseWaiver()
            }
            ,
            t.prototype.onLoseWaiver = function () {
                app.UserManager().getIsOfficialAccount() && this.showItem(c.ActivityType.welcome_bonus, app.LoseWaiverManager().GetLoseWaiverSwitch())
            }
            ,
            t.prototype.renderMonthCard = function () {
                app.ActivityManager().GetCardList() ? this.onGetCardList() : app.ActivityManager().RequestCardList()
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
                this.showItem(c.ActivityType.recharge_send_gold, false),
                    app.GameManager().enterSceneByRoomMode(r.RoomMode.HALL)
            }
            ,
            t.prototype.clickEvent = function (e) {
                switch (this.Log(e),
                app.ComUtil().playBtnClick(),
                e) {
                    case c.ActivityType.recharge_reward:
                        app.FormManager().ShowForm(a.UINameDefine.UIDiscount);
                        break;
                    case c.ActivityType.week_month_card:
                        app.FormManager().IsFormShow(a.UINameDefine.UIMonthCard) || app.FormManager().ShowForm(a.UINameDefine.UIMonthCard);
                        break;
                    case c.ActivityType.limit_recharge:
                        app.FormManager().ShowForm(a.UINameDefine.UIRechargeTime);
                        break;
                    case c.ActivityType.recharge_send_gold:
                        app.FormManager().IsFormShow(a.UINameDefine.UIBonuses) || app.FormManager().ShowForm(a.UINameDefine.UIBonuses);
                        break;
                    case c.ActivityType.welcome_bonus:
                        app.FormManager().IsFormShow(a.UINameDefine.UILoseWaiver) || app.FormManager().ShowForm(a.UINameDefine.UILoseWaiver);
                        break;
                    case c.ActivityType.recharge_bussiness_one_gift:
                    case c.ActivityType.recharge_bussiness_two_gift:
                    case c.ActivityType.recharge_bussiness_three_gift:
                    case c.ActivityType.first_recharge_gift:
                    case c.ActivityType.ordinary_recharge_gift:
                    case c.ActivityType.subordinate_recharge_gift:
                    case c.ActivityType.reserve_event_one:
                    case c.ActivityType.reserve_event_two:
                    case c.ActivityType.reserve_event_three:
                    case c.ActivityType.rain_of_red_envelopes:
                    case c.ActivityType.reserve_event_five:
                        app.FormManager().IsFormShow(a.UINameDefine.UIActivity) && app.FormManager().CloseForm(a.UINameDefine.UIActivity),
                            app.FormManager().ShowForm(a.UINameDefine.UIActivity, e);
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
