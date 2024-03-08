let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
    , o = require("../../../Game1050Define")
    , a = require("../../autoui/prefab/auto_UIGame1050BetDetails")
    , r = cc._decorator
    , s = r.ccclass
    , l = r.menu
    , p = (r.property,
        function (t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.ui = null,
                    e.icon_enter = null,
                    e.HDSprStrArr = [],
                    e.currentIdx = 0,
                    e.btn_Left = null,
                    e.btn_Right = null,
                    e.Award9AnimSpr = [],
                    e.AwardLineArr = [],
                    e.Award9AnimArray = [],
                    e.roomMgr = null,
                    e.PayoutList = null,
                    e.PayoutItem = null,
                    e.li_respin = null,
                    e.li_multiplier = null,
                    e.li_no = null,
                    e.li_line = null,
                    e.ClickLiList = [],
                    e.bet_details_tab = null,
                    e.RespinCloneTitle = null,
                    e.RespinList = [],
                    e.RespinContent = null,
                    e
            }
            return __extends(e, t),
                e.prototype.OnCreateInit = function () {
                    this.JS_Name = "UIGame1050BetDetails"
                }
                ,
                e.prototype.OnLoad = function () {
                    this.ui = this.node.addComponent(a.default),
                        this.ui.AutoBindEvent(this),
                        this.icon_enter = this.GetWndNode("bet_details/btn_respin/gameplay/icon_enter"),
                        this.btn_Left = this.GetWndNode("bet_details/scrollview/game/btn_left"),
                        this.btn_Right = this.GetWndNode("bet_details/scrollview/game/btn_right"),
                        this.PayoutList = this.GetWndNode("bet_details/scrollview/view/content");
                    var t = "atlas/prop/";
                    this.HDSprStrArr = [],
                        this.HDSprStrArr[o.GameProp.NullBox] = null,
                        this.HDSprStrArr[o.GameProp.Bamboo] = t + "prop_zhuzi",
                        this.HDSprStrArr[o.GameProp.Peach] = t + "prop_shuiguo",
                        this.HDSprStrArr[o.GameProp.LuckyBag] = t + "prop_qiandai",
                        this.HDSprStrArr[o.GameProp.Weapon] = t + "prop_wuqi",
                        this.HDSprStrArr[o.GameProp.PurpleDiamonds] = t + "prop_zuanshi",
                        this.HDSprStrArr[o.GameProp.Yupei] = t + "prop_yupei",
                        this.HDSprStrArr[o.GameProp.Omnipotence] = t + "prop_wild",
                        this.Award9AnimSpr = [],
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_l2")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_l1")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_l3")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_c2")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_c1")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_c3")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_r2")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_r1")),
                        this.Award9AnimSpr.push(this.GetWndNode("bet_details/scrollview/game/game/line/prop_r3")),
                        this.AwardLineArr = [],
                        this.AwardLineArr.push(this.GetWndNode("bet_details/scrollview/game/game/line/line1")),
                        this.AwardLineArr.push(this.GetWndNode("bet_details/scrollview/game/game/line/line2")),
                        this.AwardLineArr.push(this.GetWndNode("bet_details/scrollview/game/game/line/line3")),
                        this.AwardLineArr.push(this.GetWndNode("bet_details/scrollview/game/game/line/line4")),
                        this.AwardLineArr.push(this.GetWndNode("bet_details/scrollview/game/game/line/line5")),
                        this.Award9AnimArray = [],
                        this.Award9AnimArray[0] = [1, 4, 7],
                        this.Award9AnimArray[1] = [0, 3, 6],
                        this.Award9AnimArray[2] = [2, 5, 8],
                        this.Award9AnimArray[3] = [0, 4, 8],
                        this.Award9AnimArray[4] = [2, 4, 6],
                        this.li_respin = this.GetWndNode("bet_details/scrollview/view/li_respin"),
                        this.li_multiplier = this.GetWndNode("bet_details/scrollview/view/li_multiplier"),
                        this.li_no = this.GetWndNode("bet_details/scrollview/view/li_no"),
                        this.li_line = this.GetWndNode("bet_details/scrollview/view/li_line"),
                        this.bet_details_tab = this.GetWndNode("bet_details_tab"),
                        this.RespinCloneTitle = this.GetWndNode("bet_details_tab/scrollview/view/btn_respin"),
                        this.RespinContent = this.GetWndNode("bet_details_tab/scrollview/view/content")
                }
                ,
                e.prototype.OnShow = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e];
                    this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
                        this.data = t[0],
                        this.currentIdx = 0,
                        this.bet_details_tab.active = false,
                        this.initDetails()
                }
                ,
                e.prototype.UpdateTitle = function () {
                    var t = this.data.result.length > 1
                        , e = t ? app.i18n.t("UI_Game1050_Respin") : app.i18n.t("UI_Game1050_NormalSpin")
                        , i = t ? this.currentIdx + 1 + "/" + this.data.result.length : "";
                    this.ui.label_gameplay.string = e + i,
                        this.GetWndComponent("bet_details_tab/btn_respin/gameplay/label_gameplay", cc.Label).string = e + i,
                        this.btn_Left.active = this.currentIdx > 0,
                        this.btn_Right.active = this.currentIdx < this.data.result.length - 1,
                        this.initDetailsPropList(),
                        this.InitTitleList()
                }
                ,
                e.prototype.InitTitleList = function () {
                    this.RespinContent.removeAllChildren();
                    for (var t = 0; t < this.data.result.length; t++) {
                        this.data.result[t];
                        var e = cc.instantiate(this.RespinCloneTitle);
                        this.RespinList.push(e);
                        var i = app.i18n.t("UI_Game1050_Respin") + ":" + (t + 1) + "/" + this.data.result.length
                            , n = this.GetWndComponent("label_respin", cc.Label, e);
                        if (n.string = "0.00",
                            0 == t && (n.string = "-" + Number(this.data.bet_gold).toFixed(2)),
                            t == this.data.result.length - 1) {
                            var o = Number(this.data.change_gold) + Number(this.data.bet_gold);
                            n.string = "" + Number(o).toFixed(2)
                        }
                        var a = this.currentIdx == t ? new cc.Color(255, 210, 0) : cc.Color.WHITE;
                        this.GetWndNode("label_forturn", e).color = a,
                            this.GetWndNode("label_respin", e).color = a;
                        var r = new cc.Component.EventHandler;
                        r.target = this.node,
                            r.component = this.JS_Name,
                            r.handler = "onTitleCallBack",
                            r.customEventData = t + "";
                        var s = e.getComponent(cc.Button);
                        s.clickEvents = [],
                            s.clickEvents.push(r),
                            this.GetWndComponent("label_forturn", cc.Label, e).string = i,
                            e.active = true,
                            this.RespinContent.addChild(e)
                    }
                }
                ,
                e.prototype.initDetails = function () {
                    var t = this.data.result.length > 1;
                    this.icon_enter.active = t;
                    var e = new Date(1e3 * this.data.time).toLocaleString();
                    this.ui.label_gameplayDate.string = e,
                        this.GetWndComponent("bet_details_tab/btn_respin/label_gameplayDate", cc.Label).string = e;
                    var i = app.GameConfigManager().GetCurrency;
                    this.ui.label_bet.string = app.i18n.t("HallGame_Bet_State") + "(" + i + ")",
                        this.ui.label_profit.string = app.i18n.t("Double_profit") + "(" + i + ")",
                        this.ui.label_balance.string = app.i18n.t("UI_Balance") + "(" + i + ")",
                        this.ui.label_tr_num.string = this.data.order_id,
                        this.ui.label_ba_num.string = "" + this.roomMgr.addThousandSeparator(Number(this.data.end_gold)),
                        this.ui.label_size.string = app.i18n.t("UI_Game1050_BetSize") + " " + this.roomMgr.addThousandSeparator(Number(this.data.bet)),
                        this.ui.label_level.string = app.i18n.t("UI_Game1050_BetLevel") + " " + this.data.level,
                        this.UpdateTitle()
                }
                ,
                e.prototype.initDetailsPropList = function () {
                    this.PropList = {},
                        this.PropWinArr = [];
                    var t = ""
                        , e = "";
                    2 == this.data.type ? (e = this.currentIdx == this.data.result.length - 1 ? this.data.change_gold : "0",
                        t = 0 == this.currentIdx ? this.data.bet_gold : "0") : (e = this.data.change_gold,
                            t = this.data.bet_gold),
                        this.ui.label_bet_num.string = "" + this.roomMgr.addThousandSeparator(Number(t)),
                        this.ui.label_pr_num.string = "" + this.roomMgr.addThousandSeparator(Number(e));
                    for (var i = 0; i < this.data.result.length; i++) {
                        var n = this.data.result[i];
                        i <= this.currentIdx && (this.PropList = Object.assign({}, this.PropList, n.props),
                            this.PropWinArr = __spreadArrays(this.PropWinArr, n.win_arrs))
                    }
                    for (i = 0; i < this.AwardLineArr.length; i++)
                        (n = this.AwardLineArr[i]).active = false;
                    var o = this.PropWinArr;
                    for (this.PropWinArr = Array.from(new Set(o.map(function (t) {
                        return JSON.stringify(t)
                    }))).map(function (t) {
                        return JSON.parse(t)
                    }),
                        i = 0; i < this.Award9AnimSpr.length; i++) {
                        n = this.Award9AnimSpr[i];
                        var a = this.PropList[i + 1];
                        a ? (this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, n), this.HDSprStrArr[a]),
                            n.active = true,
                            this.onShowBglight(n, false)) : n.active = false
                    }
                    this.PayoutList.removeAllChildren();
                    var r = [];
                    if (this.ClickLiList = [],
                        this.PropWinArr.length > 0)
                        for (i = 0; i < this.PropWinArr.length; i++) {
                            n = this.PropWinArr[i],
                                this.AwardLineArr[n.roll - 1].active = true;
                            for (var s = this.Award9AnimArray[n.roll - 1], l = 0; l < s.length; l++) {
                                var p = s[l]
                                    , d = this.Award9AnimSpr[p];
                                d.active = true,
                                    this.onShowBglight(d, true);
                                var h = this.PropList[p + 1];
                                this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, d), this.HDSprStrArr[h])
                            }
                            this.PayoutList.getChildByName("li_respin") || 2 != this.data.type || ((S = cc.instantiate(this.li_respin)).active = true,
                                this.PayoutList.addChild(S));
                            var m = null;
                            if (-1 == r.indexOf(n.roll))
                                if (n.multiple && !this.PayoutList.getChildByName("li_multiplier") && (m = cc.instantiate(this.li_multiplier),
                                    this.GetWndComponent("label_num", cc.Label, m).string = "" + this.roomMgr.addThousandSeparator(n.win_amount),
                                    m.active = true,
                                    this.PayoutList.addChild(m)),
                                    2 != this.data.type || this.currentIdx == this.data.result.length - 1) {
                                    (m = cc.instantiate(this.li_line)).active = true,
                                        this.ClickLiList.push({
                                            node: m,
                                            data: n
                                        });
                                    var c = app.ScoreUtil().fix_float_number(n.win_amount / 10)
                                        , u = this.GetWndComponent("project/btn_tips", cc.Button, m)
                                        , g = new cc.Component.EventHandler;
                                    g.target = this.node,
                                        g.component = this.JS_Name,
                                        g.handler = "onTipsCallBack",
                                        g.customEventData = n.roll,
                                        u.clickEvents = [],
                                        u.clickEvents.push(g);
                                    var _ = app.GameConfigManager().GetCurrency;
                                    this.GetWndComponent("project/label_num", cc.Label, m).string = "" + (_ + this.roomMgr.addThousandSeparator(n.win_amount)),
                                        this.GetWndComponent("project/label_line", cc.Label, m).string = n.roll;
                                    var y = n.multiple ? "X10" : "";
                                    this.GetWndComponent("project/label_bet", cc.Label, m).string = "" + (this.roomMgr.addThousandSeparator(c) + y),
                                        this.GetWndNode("project/label_bet", m).active = !!n.multiple;
                                    for (var b = this.GetWndNode("project/border", m).children, f = 0; f < b.length; f++) {
                                        var G = b[f];
                                        G.active = false,
                                            G.name == "line" + n.roll && (G.active = true,
                                                r.push(n.roll))
                                    }
                                    m && this.PayoutList.addChild(m)
                                } else
                                    m && !this.PayoutList.getChildByName("li_multiplier") && this.PayoutList.addChild(m)
                        }
                    else if (2 == this.data.type) {
                        var S;
                        (S = cc.instantiate(this.li_respin)).active = true,
                            this.PayoutList.addChild(S)
                    } else
                        m = null,
                            (m = cc.instantiate(this.li_no)).active = true,
                            this.PayoutList.addChild(m)
                }
                ,
                e.prototype.onShowBglight = function (t, e) {
                    for (var i = 0; i < t.children.length; i++)
                        t.children[i].active = e;
                    t.getChildByName("spr_prop").active = true
                }
                ,
                e.prototype.onTitleCallBack = function (t, e) {
                    this.currentIdx = Number(e),
                        this.initDetails(),
                        this.bet_details_tab.active = false
                }
                ,
                e.prototype.onTipsCallBack = function (t, e) {
                    for (var i = 0; i < this.ClickLiList.length; i++) {
                        var n = this.ClickLiList[i].node
                            , o = this.ClickLiList[i].data
                            , a = this.GetWndComponent("project/label_line", cc.Label, n).string
                            , r = this.GetWndNode("layer_tips", n)
                            , s = this.GetWndComponent("layer_tips/label_num", cc.Label, n)
                            , l = o.multiple >= 5 ? "X10" : ""
                            , p = this.data.bet + "X" + this.data.level + "X" + o.win_odd + l
                            , d = o.multiple ? "x " + app.i18n.t("Double_choose") : ""
                            , h = app.i18n.t("UI_Game1050_BetSize") + " x " + app.i18n.t("UI_Game1050_BetLevel") + " x " + app.i18n.t("UI_Game1050_SymbolPayout") + d;
                        this.GetWndComponent("layer_tips/label_tips", cc.Label, n).string = h,
                            a == e && 0 == r.active ? (r.active = true,
                                s.string = p) : r.active = false
                    }
                }
                ,
                e.prototype.OnClick = function (t) {
                    if ("btn_back" != t)
                        return "btn_right" == t ? (this.currentIdx += 1, void this.UpdateTitle())
                            : "btn_left" == t ? (this.currentIdx -= 1, void this.UpdateTitle())
                                : void ("btn_respin" != t && "view" != t || 2 == this.data.type && (this.bet_details_tab.active = !this.bet_details_tab.active));
                    this.CloseForm()
                }
                ,
                e.prototype.OnClose = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e]
                }
                ,
                __decorate([s, l("UI/prefab/UIGame1050BetDetails")], e)
        }(n.default));
i.default = p,
    module.exports = i
