let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../../Common/Base/BaseForm"), a = require("../../../../Common/Define/GameEventDefine"), r = require("../../../../Common/Define/UINameDefine"), s = require("../../../common/room_mode_tool"), c = require("./UITicketAnim"), l = ["", "UI_WorldCup_Registrar", "UI_WorldCup_Deposito", "UI_WorldCup_Prom", "UI_WorldCup_Apostar"], p = ["", "UI_WorldCup_Registrar_tit", "UI_WorldCup_Deposito_tit", "UI_WorldCup_Prom_tit", "UI_WorldCup_Apostar_tit"];
(function (e) {
    e[e.Registrar = 1] = "Registrar",
        e[e.Deposit = 2] = "Deposit",
        e[e.Prom = 3] = "Prom",
        e[e.Acosta = 4] = "Acosta"
}
)(o || (o = {}));
var d = cc._decorator
    , h = d.ccclass
    , u = d.property
    , _ = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.TicketsBtnColor = [],
                t.TicketsLbl = null,
                t.bottomLbl = null,
                t.Introduce1 = null,
                t.Introduce2 = null,
                t.NoData = null,
                t.flagNode = null,
                t.TicketsCount = null,
                t.Item = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.WorldCup_Update_Tickets, this.OnUpdateInfo),
                    this.RegEvent(a.GameEventDefine.WorldCup_Active_Info, this.initView),
                    this.RegEvent(a.GameEventDefine.WorldCup_Active_History, this.initBetHisTory),
                    this.RegEvent(a.GameEventDefine.WorldCup_Receive_Tickets, this.OnReceiveTickets),
                    this.RegEvent(a.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.OnRequestWorldCupInfo),
                    this.TicketsLbl = this.GetWndComponent("layer/node/top3/Layout/lb_TicketsLbl", cc.Label),
                    this.bottomLbl = this.GetWndComponent("layer/explain/lb_text", cc.RichText),
                    this.Introduce1 = this.GetWndComponent("layer/text/lb_text", cc.RichText),
                    this.Introduce2 = this.GetWndComponent("layer/text/lb_text1", cc.RichText),
                    this.NoData = this.GetWndNode("layer/node/bet/team/Nodate"),
                    this.flagNode = this.GetWndNode("layer/node/bet/team/flag_top3"),
                    this.Item = this.GetWndNode("layer/ticket/item_ticket"),
                    this.TicketsCount = this.GetWndNode("layer/ticket");
                var e = this.GetWndNode("layer/top_img/spr_img");
                app.ImageUtil().LoadImage(e, "common/atlas/worldCup/banner")
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.OnRequestWorldCupInfo()
            }
            ,
            t.prototype.OnRequestWorldCupInfo = function () {
                app.WorldCupManager().RequestWorldCupActiveInfo()
            }
            ,
            t.prototype.OnClick = function (e, t) {
                if ("btn_bet" == e)
                    return app.WorldCupManager().GetTicketCount ? void app.FormManager().ShowForm(r.UINameDefine.UFIFAWorldCupBet) : void app.SysNotifyManager().ShowToast("UI_WorldCup_NOTickets");
                "btn_more" != e ? "btn_Tickets" != e || (1 == t.status ? app.WorldCupManager().RequestWorldCupActiveTickets(t.type_id) : 0 == t.status && this.OnGetTickets(t.type_id)) : app.FormManager().ShowForm(r.UINameDefine.UFIFAWorldCupIHistory)
            }
            ,
            t.prototype.initView = function () {
                var e = app.WorldCupManager().GetWorldCupInfo.conf;
                this.initTicketsLbl(),
                    this.iniTicketsView(),
                    this.bottomLbl.string = e.act_content,
                    this.Introduce1.string = app.i18n.t("UI_WorldCup_Introduce1").replace("{gold}", app.GameConfigManager().GetCurrency + " " + this.formatPrice(e.award_pool) + " "),
                    this.Introduce2.string = app.i18n.t("UI_WorldCup_Introduce2").replace("{time}", " " + e.begin_date + " - " + e.end_date + " ")
            }
            ,
            t.prototype.formatPrice = function (e) {
                return String(e).replace(/\B(?=(\d{3})+(?!\d))/g, ",")
            }
            ,
            t.prototype.initTicketsLbl = function () {
                this.TicketsLbl.string = "" + app.WorldCupManager().GetTicketCount
            }
            ,
            t.prototype.initBetHisTory = function (e) {
                var t = e ? e[0] : app.WorldCupManager().GetWorldCupHistory[0];
                if (this.NoData.active = !t,
                    this.flagNode.active = !this.NoData.active,
                    t) {
                    var n = this.GetWndComponent("flag_1st", cc.Sprite, this.flagNode);
                    n.spriteFrame = null;
                    var o = app.WorldCupManager().onGetFootballDataById(t.bet_first);
                    app.WorldCupManager().setIconSpr(n, o.icon);
                    var i = this.GetWndComponent("flag_2nd", cc.Sprite, this.flagNode);
                    i.spriteFrame = null;
                    var a = app.WorldCupManager().onGetFootballDataById(t.bet_second);
                    app.WorldCupManager().setIconSpr(i, a.icon);
                    var r = this.GetWndComponent("flag_3rd", cc.Sprite, this.flagNode);
                    r.spriteFrame = null;
                    var s = app.WorldCupManager().onGetFootballDataById(t.bet_third);
                    app.WorldCupManager().setIconSpr(r, s.icon)
                }
            }
            ,
            t.prototype.iniTicketsView = function () {
                var e = this
                    , t = app.WorldCupManager().GetWorldCupInfo.ticket_conf;
                if (t) {
                    this.TicketsCount.children.forEach(function (e, t) {
                        0 != t && (e.active = false)
                    });
                    for (var n = function (n) {
                        var i = t[n];
                        if (!i.type_id)
                            return "continue";
                        var a = o.TicketsCount.children[n + 1];
                        a || (a = cc.instantiate(o.Item),
                            o.TicketsCount.addChild(a)),
                            a.active = true;
                        var r = i.task_status;
                        o.GetWndComponent("left/lb_num", cc.Label, a).string = "*" + (i.max_number - i.receive_num);
                        var s = o.GetWndComponent("btn_Tickets", cc.Button, a);
                        s.interactable = 2 != r,
                            o.GetWndNode("Background", s.node).color = cc.Color.BLACK.fromHEX(o.TicketsBtnColor[r]);
                        var c = i.type_id;
                        a.name = "" + c,
                            a.type_id = c,
                            s.node.type_id = c,
                            s.node.status = r;
                        var d = o.GetWndComponent("Background/lb_receive", cc.Label, s.node)
                            , h = 0 == r ? l[c] : 2 == r ? "UI_WorldCup_Recebido" : "UI.MakeMoney_0_main_17";
                        d.string = app.i18n.t(h),
                            o.GetWndComponent("lb_text", cc.Label, a).string = app.i18n.t(p[c]);
                        var u = o.GetWndNode("left/ticket/Ani_ticket", a);
                        u.active = 1 == r,
                            app.ControlManager().CreateLoadPromise("Hall/Prefab/fifaworldcup/TicketsAnim", cc.Prefab, false).then(function (t) {
                                var n = cc.instantiate(t);
                                cc.isValid(e.node) && (n.parent = u,
                                    1 == r && n.getComponent(cc.Animation).play())
                            })
                    }, o = this, i = 0; i < t.length; i++)
                        n(i)
                }
            }
            ,
            t.prototype.OnGetTickets = function (e) {
                if (e != o.Deposit)
                    if (e != o.Acosta) {
                        if (e != o.Prom)
                            return e == o.Registrar ? app.UserManager().getIsOfficialAccount() ? void app.FormManager().ShowForm(r.UINameDefine.UIAccount, {
                                isPlay: false
                            }) : void app.FormManager().ShowForm(r.UINameDefine.UILoginSign, 2) : undefined;
                        if (app.UserManager().GetIsOfficialPopup())
                            return;
                        if (GameTypeGlobal == 2) {
                            app.FormManager().ShowForm(r.UINameDefine.UIPromoteMainSol)
                        }
                        else {
                            app.FormManager().ShowForm(r.UINameDefine.UIPromoteMain)
                        }
                    } else
                        app.GameManager().enterSceneByRoomMode(s.RoomMode.HALL);
                else {
                    if (app.UserManager().GetIsOfficialPopup())
                        return;
                    app.StoreManager().ShowStoreUI()
                }
            }
            ,
            t.prototype.OnReceiveTickets = function (e) {
                var t = this;
                app.ControlManager().CreateLoadPromise("Hall/Prefab/fifaworldcup/TicketsNode", cc.Prefab, false).then(function (n) {
                    var o = cc.instantiate(n);
                    cc.isValid(t.node) && (o.parent = cc.find("Canvas"),
                        o.active = true,
                        o.getComponent(c.default).setInfo(e.send_number, function () {
                            t.initTicketsLbl();
                            for (var n = 1; n < t.TicketsCount.childrenCount; n++) {
                                var o = t.TicketsCount.children[n]
                                    , i = e.ticket_conf[0];
                                if (o.type_id == i.type_id) {
                                    t.GetWndComponent("left/lb_num", cc.Label, o).string = "*" + (i.max_number - i.receive_num);
                                    var a = i.task_status
                                        , r = t.GetWndComponent("btn_Tickets", cc.Button, o);
                                    r.interactable = 2 != a,
                                        t.GetWndNode("Background", r.node).color = cc.Color.BLACK.fromHEX(t.TicketsBtnColor[a]),
                                        r.node.status = a;
                                    var s = t.GetWndComponent("Background/lb_receive", cc.Label, r.node)
                                        , c = 0 == a ? l[i.type_id] : 2 == a ? "UI_WorldCup_Recebido" : "UI.MakeMoney_0_main_17";
                                    s.string = app.i18n.t(c),
                                        t.GetWndNode("left/ticket/Ani_ticket", o).active = 1 == a;
                                    var p = t.GetWndNode("TicketsAnim");
                                    p && (1 == a ? p.getComponent(cc.Animation).play() : p.getComponent(cc.Animation).stop());
                                    break
                                }
                            }
                        }))
                })
            }
            ,
            t.prototype.OnUpdateInfo = function (e) {
                this.initTicketsLbl(),
                    this.initBetHisTory(e)
            }
            ,
            t.prototype.OnClose = function () {
                app.FormManager().CloseForm(r.UINameDefine.UFIFAWorldCupBet),
                    app.FormManager().CloseForm(r.UINameDefine.UFIFAWorldCupIHistory)
            }
            ,
            __decorate([u({
                type: [cc.String],
                tooltip: "0:\u672a\u8fbe\u6807\u53ef\u70b9\u51fb\u8df3\u8f6c, 1:\u8fbe\u6807\u672a\u9886\u53d6,\u53ef\u9886\u53d6,2\u5df2\u5b8c\u6210"
            })], t.prototype, "TicketsBtnColor", undefined),
            __decorate([h], t)
    }(i.default);
n.default = _,
    module.exports = n
