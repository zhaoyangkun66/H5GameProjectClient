window.__require = function t(e, a, n) {
    function o(s, r) {
        if (!a[s]) {
            if (!e[s]) {
                var l = s.split("/");
                if (l = l[l.length - 1],
                !e[l]) {
                    var u = "function" == typeof __require && __require;
                    if (!r && u)
                        return u(l, !0);
                    if (i)
                        return i(l, !0);
                    throw new Error("Cannot find module '" + s + "'")
                }
                s = l
            }
            var h = a[s] = {
                exports: {}
            };
            e[s][0].call(h.exports, function(t) {
                return o(e[s][1][t] || t)
            }, h, h.exports, t, e, a, n)
        }
        return a[s].exports
    }
    for (var i = "function" == typeof __require && __require, s = 0; s < n.length; s++)
        o(n[s]);
    return o
}({
    BDDefine: [function(t, e, a) {
        "use strict";
        cc._RF.push(e, "abc51EJcWRIgIWRf922lThf", "BDDefine"),
        Object.defineProperty(a, "__esModule", {
            value: !0
        }),
        a.UIBDNameDefine = void 0;
        var n = function() {
            function t() {}
            return t.UIAutoSetting = "UICrashAutoSetting",
            t
        }();
        a.UIBDNameDefine = n,
        cc._RF.pop()
    }
    , {}],
    baodianHistoryList: [function(t, e, a) {
        "use strict";
        cc._RF.push(e, "66467yMsBBHZoV9ATjr2wU7", "baodianHistoryList"),
        Object.defineProperty(a, "__esModule", {
            value: !0
        });
        var n = t("../../../Common/Define/GameEventDefine")
          , o = t("../../../script/common_hall/GameHistoryListBase")
          , i = cc._decorator
          , s = i.ccclass
          , r = (i.property,
        function(t) {
            function e() {
                return null !== t && t.apply(this, arguments) || this
            }
            return __extends(e, t),
            e.prototype.OnLoadInit = function() {
                t.prototype.OnLoadInit.call(this),
                this.RegEvent(n.GameEventDefine.GAME_LIST_REMOVER, this.OnRemoverChildren),
                this.RegEvent(n.GameEventDefine.GAME_UPDATE_LISTINFO, this.OnUpdateInfo),
                this.RegEvent(n.GameEventDefine.GAME_HISTORY_LIST, this.initView)
            }
            ,
            e.prototype.OnItemInfo = function(e, a) {
                t.prototype.OnItemInfo.call(this, e, a),
                e.name = a.BetPlayerID + "",
                e.BetSeat = a.BetSeat,
                cc.find("li1/bg_id/label", e).getComponent(cc.Label).string = a.Nickname,
                cc.find("li1/bg_odds/bg", e).active = !1;
                var n = cc.find("li1/bg_odds/label", e);
                n.color = cc.Color.WHITE,
                n.getComponent(cc.Label).string = "Not started";
                var o = a.BetGold
                  , i = cc.find("li1/bg_bets/label", e);
                i.getComponent(cc.Label).string = o.toFixed(2),
                i.color = cc.Color.WHITE
            }
            ,
            e.prototype.OnUpdateInfo = function(t) {
                for (var e = 0; e < this.content.children.length; e++) {
                    var a = this.content.children[e];
                    if (Number(a.name) == t.PlayerID && a.BetSeat == t.PatternID) {
                        var n = cc.find("li1/bg_odds/label", a)
                          , o = Number(t.Cards[0] / 100);
                        n.getComponent(cc.Label).string = o.toFixed(2) + "X",
                        n.color = o >= 2 ? new cc.Color(71,187,168) : cc.Color.WHITE;
                        var i = cc.find("li1/bg_odds/bg", a);
                        i.active = !0,
                        i.color = o >= 2 ? new cc.Color(71,187,168) : new cc.Color(40,51,67);
                        var s = Number(t.Cards[2] / 100)
                          , r = cc.find("li1/bg_bets/label", a);
                        r.getComponent(cc.Label).string = s.toFixed(2),
                        r.color = new cc.Color(97,241,78);
                        break
                    }
                }
            }
            ,
            e.prototype.onDestroy = function() {
                app.Client.UnRegTargetEvent(this)
            }
            ,
            __decorate([s], e)
        }(o.GameHistoryListBase));
        a.default = r,
        cc._RF.pop()
    }
    , {
        "../../../Common/Define/GameEventDefine": void 0,
        "../../../script/common_hall/GameHistoryListBase": void 0
    }],
    game_Crash: [function(t, e, a) {
        "use strict";
        cc._RF.push(e, "3ca66rgi9BCuYLgCJ7H6kvz", "game_Crash"),
        Object.defineProperty(a, "__esModule", {
            value: !0
        });
        var n, o, i = function() {}, s = function() {};
        (function(t) {
            t[t.DEFAULT = 0] = "DEFAULT",
            t[t.BET = 1] = "BET",
            t[t.BOOM = 2] = "BOOM",
            t[t.GAME_END = 3] = "GAME_END"
        }
        )(n || (n = {})),
        function(t) {
            t[t.DEFAULT = 0] = "DEFAULT",
            t[t.BETED = 1] = "BETED",
            t[t.PRE_BET = 2] = "PRE_BET"
        }(o || (o = {}));
        var r = t("../../../Common/Component/NodePool")
          , l = t("../../../Common/Define/GameEventDefine")
          , u = t("../../../Common/Define/GameHttpDefine")
          , h = t("../../../Common/Define/UINameDefine")
          , c = t("../../../Common/Bundle/BundleConfig")
          , p = t("../../../Common/Net/BaseDefine")
          , d = t("../../../script/common_hall/hall_view")
          , m = t("./BDDefine")
          , B = cc._decorator
          , g = B.ccclass
          , S = B.property
          , f = function(t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.btnColorList = [],
                e.PressedColorList = [],
                e.HoverColorList = [],
                e.BetBtnOne = [],
                e.BetBtnTwo = [],
                e.playerStatus = [o.DEFAULT, o.DEFAULT],
                e.rockAni = null,
                e.tickTimeLabel = null,
                e.btnSecond = null,
                e.btnHide = null,
                e.btnManual = null,
                e.btnAuto = null,
                e.panelManual = null,
                e.panelManual2 = null,
                e.historyCont = null,
                e.btnBoom = null,
                e.myScoreNode = null,
                e.hisScoreNode = null,
                e.rankingNode = null,
                e.myScoreView = null,
                e.hisScoreView = null,
                e.noDataNode = null,
                e.rankingView = null,
                e.winPanelBg = null,
                e.heng = null,
                e.zong = null,
                e.hong = null,
                e.manualBaseInput = null,
                e.redWarnAutoScale = null,
                e.manualScaleInput = null,
                e.redWarnScale = null,
                e.manualBetBtn = null,
                e.autoScaleInput = null,
                e.autoBetBtn = null,
                e.autoPlayNode = null,
                e.autoRoundsNode = null,
                e.awardAni = null,
                e.boomPlayerName = null,
                e.upScaleTimeout = null,
                e.rocketImg = null,
                e.curScaleNum = 100,
                e.preBetNum = [0, 0],
                e.betScaleNum = [0, 0],
                e.autoBetDataInfo = null,
                e.autoBetData = null,
                e.autoBetStatus = [!1, !1],
                e.totalWinNum = [0, 0],
                e.totalLoseNum = [0, 0],
                e.isOnloadGame = !0,
                e.suipian = null,
                e.isTimePlay = !1,
                e.isTimePlay1 = !1,
                e.nodePool = null,
                e.betDownTime = 0,
                e.canBetTimeDown = !1,
                e.dtTime = [400, 200, 100, 50, 20, 10, 5, 3, 1],
                e.dtCount = [6, 15, 40, 40, 800, 1e3, 8e3, 2e4, 999999999],
                e.isAutoView = !1,
                e.isReqBet = [!1, !1],
                e.runTimeStart = [],
                e.BetStatus = null,
                e.isClickBtnBoom = !1,
                e.buttonKey = 0,
                e.playWinData = [],
                e.svrTime = 0,
                e.needDisplay = !1,
                e
            }
            return __extends(e, t),
            e.prototype.onLoad = function() {
                t.prototype.onLoad.call(this),
                this.JS_Name = "game_Crash",
                this.RegHttpEvent(u.GameHttpAPI.BD_HISTORY, this.OnBdHistory),
                this.RegHttpEvent(u.GameHttpAPI.BD_RANKINGS, this.OnBdRankings),
                this.RegEvent(l.GameEventDefine.BD_AutoInfo, this.OnAutoInfo),
                this.RegEvent(l.GameEventDefine.GetButtonKey, this.setButtonKey),
                this.RegEvent(l.GameEventDefine.UPDATE_SOUND, this.setPlayMusic),
                this.suipian = this.GetWndNode("content/rock/quxian/rock/sui", this.node),
                this.tickTimeLabel = this.GetWndNode("content/rock/time", this.node),
                this.rockAni = this.GetWndNode("content/rock/quxian/rock", this.node),
                this.btnBoom = this.GetWndNode("content/rock/peilv", this.node),
                this.historyCont = this.GetWndNode("content/rock/odds", this.node),
                this.myScoreNode = this.GetWndNode("content/content/list/minhas_apostas", this.node),
                this.hisScoreNode = this.GetWndNode("content/content/list/history", this.node),
                this.rankingNode = this.GetWndNode("content/content/list/ranking", this.node),
                this.myScoreView = this.GetWndNode("content/content/list/minhas_apostas/content", this.node),
                this.hisScoreView = this.GetWndNode("content/content/list/history/content", this.node),
                this.rankingView = this.GetWndNode("content/content/list/ranking/content", this.node),
                this.noDataNode = this.GetWndNode("content/content/list/minhas_apostas/icon_zw", this.node),
                this.rocketImg = this.GetWndNode("content/rock/quxian/rock/huojian/rocketimg", this.node),
                this.boomPlayerName = this.GetWndNode("content/rock/quxian/rock/peilv", this.node),
                this.delayMSNode = this.GetWndNode("content/rock/delayMSNode/spr", this.node),
                this.nodePool = this.node.addComponent(r.default),
                this.nodePool && this.nodePool.initPool(this.boomPlayerName, 10),
                this.heng = this.GetWndNode("content/rock/quxian/heng", this.node),
                this.zong = this.GetWndNode("content/rock/quxian/zong", this.node),
                this.winPanelBg = this.GetWndNode("content/rock/UIGameAward/bg", this.node),
                this.awardAni = this.GetWndNode("content/rock/UIGameAward", this.node),
                this.hong = this.GetWndNode("content/rock/quxian/rock/hong", this.node),
                this.hideTheWinPanel(0),
                this.btnBoom.on(cc.Node.EventType.TOUCH_END, this.clickBtnBoom, this),
                this.winPanelBg.on(cc.Node.EventType.TOUCH_END, this.hideTheWinPanel, this),
                this.panelManual = this.GetWndNode("content/content/Manual", this.node),
                this.panelManual2 = this.GetWndNode("content/content/second", this.node),
                app.ComTool().H5Platform() ? (this.btnSecond = this.GetWndNode("layout/scrollview/view/btnSecond", this.panelManual),
                this.btnHide = this.GetWndNode("layout/scrollview/view/btnHide", this.panelManual),
                this.btnManual = this.GetWndNode("layout/scrollview/view/content/toggleContainer/btnManual", this.panelManual),
                this.btnAuto = this.GetWndNode("layout/scrollview/view/content/toggleContainer/btnAuto", this.panelManual),
                this.manualBaseInput = [this.GetWndComponent("layout/Quantia/Quantia/editbox_xsje/betLabel", cc.Label, this.panelManual), this.GetWndComponent("Quantia/Quantia/editbox_xsje/betLabel", cc.Label, this.panelManual2)],
                this.manualScaleInput = [this.GetWndComponent("layout/Sqque/editbox_xsje/sacleLabel", cc.Label, this.panelManual), this.GetWndComponent("Sqque/editbox_xsje/sacleLabel", cc.Label, this.panelManual2)],
                this.autoScaleInput = [this.GetWndComponent("layout/autoplay/Sqque/editbox_xsje/sacleLabel", cc.Label, this.panelManual), this.GetWndComponent("autoplay/Sqque/editbox_xsje/sacleLabel", cc.Label, this.panelManual2)],
                this.autoRoundsNode = [this.GetWndComponent("layout/autoplay/Rounds/Apostas/editbox_xsje/TEXT_LABEL", cc.Label, this.panelManual), this.GetWndComponent("autoplay/Rounds/Apostas/editbox_xsje/TEXT_LABEL", cc.Label, this.panelManual2)],
                this.redWarnScale = [this.GetWndNode("layout/Sqque/red", this.panelManual), this.GetWndNode("Sqque/red", this.panelManual2)],
                this.manualBetBtn = [this.GetWndNode("layout/Sqque/manualBetBtn", this.panelManual), this.GetWndNode("Sqque/manualBetBtn", this.panelManual2)],
                this.autoBetBtn = [this.GetWndNode("layout/auto/autoBetBtn", this.panelManual), this.GetWndNode("auto/autoBetBtn", this.panelManual2)],
                this.autoPlayNode = [this.GetWndNode("layout/autoplay", this.panelManual), this.GetWndNode("autoplay", this.panelManual2)],
                this.redWarnAutoScale = [this.GetWndNode("layout/autoplay/Sqque/red", this.panelManual), this.GetWndNode("autoplay/Sqque/red", this.panelManual2)],
                this.BetBtnOne = [this.GetWndNode("layout/Quantia/btn_Manual1", this.panelManual), this.GetWndNode("layout/Quantia/btn_Manual10", this.panelManual)],
                this.BetBtnTwo = [this.GetWndNode("Quantia/btn_SManual1", this.panelManual2), this.GetWndNode("Quantia/btn_SManual10", this.panelManual2)]) : (this.btnSecond = this.GetWndNode("content/content/Manual/top/btnSecond", this.node),
                this.btnHide = this.GetWndNode("content/content/Manual/top/btnHide", this.node),
                this.btnManual = this.GetWndNode("top/scrollview/view/content/toggleContainer/btnManual", this.panelManual),
                this.btnAuto = this.GetWndNode("top/scrollview/view/content/toggleContainer/btnAuto", this.panelManual),
                this.redWarnScale = [this.GetWndNode("normal/normal/Sqque/red", this.panelManual), this.GetWndNode("normal/normal/Sqque/red", this.panelManual2)],
                this.manualBetBtn = [this.GetWndNode("normal/normal/manualBetBtn", this.panelManual), this.GetWndNode("normal/normal/manualBetBtn", this.panelManual2)],
                this.autoBetBtn = [this.GetWndNode("normal/auto/autoBetBtn", this.panelManual), this.GetWndNode("normal/auto/autoBetBtn", this.panelManual2)],
                this.autoPlayNode = [this.GetWndNode("normal/normal/autoplay", this.panelManual), this.GetWndNode("normal/normal/autoplay", this.panelManual2)],
                this.redWarnAutoScale = [this.GetWndNode("normal/normal/autoplay/Sqque/red", this.panelManual), this.GetWndNode("normal/normal/autoplay/Sqque/red", this.panelManual2)],
                this.manualBaseInput = [this.GetWndComponent("normal/normal/Quantia/Quantia/editbox_xsje", cc.EditBox, this.panelManual), this.GetWndComponent("normal/normal/Quantia/Quantia/editbox_xsje", cc.EditBox, this.panelManual2)],
                this.manualScaleInput = [this.GetWndComponent("normal/normal/Sqque/editbox_xsje", cc.EditBox, this.panelManual), this.GetWndComponent("normal/normal/Sqque/editbox_xsje", cc.EditBox, this.panelManual2)],
                this.autoScaleInput = [this.GetWndComponent("normal/normal/autoplay/Sqque/editbox_xsje", cc.EditBox, this.panelManual), this.GetWndComponent("normal/normal/autoplay/Sqque/editbox_xsje", cc.EditBox, this.panelManual2)],
                this.autoRoundsNode = [this.GetWndComponent("normal/normal/autoplay/Rounds/editbox_xsje", cc.EditBox, this.panelManual), this.GetWndComponent("normal/normal/autoplay/Rounds/editbox_xsje", cc.EditBox, this.panelManual2)],
                this.BetBtnOne = [],
                this.BetBtnTwo = []),
                this.panelManual.active = !0,
                this.panelManual2.active = !1,
                this.btnSecond.active = !1,
                this.btnHide.active = !1,
                2 == app.GameConfigManager().GetGameConfig().bd_bet_count && (this.panelManual2.active = this.GetCrashOpenTwo,
                this.btnSecond.active = !this.panelManual2.active,
                this.btnHide.active = this.panelManual2.active),
                this.rockAni.active = !1,
                this.boomPlayerName.active = !1,
                this.initGameInfo(),
                this.OnBtnCheckMarkView(!1),
                this.BtnBoomHide(),
                this.myGoldNum(app.UserManager().GetUserInfo.gold),
                this.hisScoreNode.active = !1,
                this.rankingNode.active = !1;
                for (var e = 0; e < 2; e++)
                    this.redWarnScale[e].active = !1,
                    this.setBetBtnColor(0, e),
                    this.setManualStatus(e, o.DEFAULT, "Bao_Dian_sposta", -1)
            }
            ,
            e.prototype.OnRoomBetGoldConfig = function() {
                var t = this
                  , e = app.HGameManager().GetRoomBetGoldConfigs(app.UserManager().GetUserInfo.roomMode);
                !e || e.length <= 0 || [this.BetBtnOne, this.BetBtnTwo].forEach(function(a) {
                    a.forEach(function(a, n) {
                        var o = t.GetWndComponent("label", cc.Label, a);
                        o && e[n] && (o.string = "+" + app.ScoreUtil().FormatK(e[n]));
                        var i = new cc.Component.EventHandler;
                        i.target = t.node,
                        i.component = t.JS_Name,
                        i.handler = "OnClick_BtnWnd",
                        i.customEventData = "" + e[n],
                        a.getComponent(cc.Button).clickEvents = [],
                        a.getComponent(cc.Button).clickEvents.push(i)
                    })
                })
            }
            ,
            e.prototype.setPlayMusic = function() {
                app.SoundManager().isMusicPlaying || (app.SoundManager().GetBackMusicSetting ? app.SoundManager().PlayBackMusic("bd_Bgm", !0) : app.SoundManager().StopBackMusic())
            }
            ,
            Object.defineProperty(e.prototype, "GetCrashOpenTwo", {
                get: function() {
                    var t = app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "crashIsTwoBet");
                    return !!t && t.open
                },
                enumerable: !1,
                configurable: !0
            }),
            e.prototype.setLocalDataCrash = function(t) {
                app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "crashIsTwoBet", {
                    open: t
                })
            }
            ,
            e.prototype.initGameInfo = function() {
                this.BetStatus = [{
                    playerStatus: o.DEFAULT,
                    PatternID: 0,
                    BoomPatternID: 0,
                    autoStatus: o.DEFAULT
                }, {
                    playerStatus: o.DEFAULT,
                    PatternID: 0,
                    BoomPatternID: 0,
                    autoStatus: o.DEFAULT
                }],
                this.autoBetDataInfo = [new i, new i],
                this.autoBetData = [{
                    winStopNum: 0,
                    failStopNum: 0,
                    addWinChk: !1,
                    addFailChk: !1,
                    addWinNum: 0,
                    addFailNum: 0
                }, {
                    winStopNum: 0,
                    failStopNum: 0,
                    addWinChk: !1,
                    addFailChk: !1,
                    addWinNum: 0,
                    addFailNum: 0
                }]
            }
            ,
            e.prototype.OnShow = function() {
                for (var e = [], a = 0; a < arguments.length; a++)
                    e[a] = arguments[a];
                this.setPlayMusic(),
                this.gameStatus = n.DEFAULT,
                t.prototype.OnShow.call(this, e),
                this.OnRequestHistory(!0);
                for (var o = 0; o < 2; o++)
                    this.setAutoBetBtnStr(app.i18n.t("Bao_Dian_CanAuto"), o),
                    this.GetBetGoldAdd(this.GameBetGold, "" + o, !1)
            }
            ,
            e.prototype.onBetGold = function(t, e, a) {
                void 0 === a && (a = !0);
                var n = this.GameBetSizeLimit.max;
                n && t > n && (t = n,
                a && app.SysNotifyManager().ShowToast("UI_GameBetMax", ["" + t]));
                var o = this.GameBetSizeLimit.min;
                (!t || t < o) && (t = o,
                a && app.SysNotifyManager().ShowToast("UI_GameBetMin", ["" + t])),
                this.isAutoView && (this.autoBetDataInfo[e].nextTempBet = t),
                this.manualBaseInput[e].string = app.ScoreUtil().toFixedString(t),
                this.onBetGoldNum(t, this.manualBaseInput[Number(e)].node.parent)
            }
            ,
            e.prototype.OnClick = function(t, e, a) {
                if ("btn_Auto_SqqueAdd" != t)
                    if ("btn_Auto_SqqueDel" != t)
                        if ("btn_SqqueAdd" != t)
                            if ("btn_SqqueDel" != t)
                                if ("btnHelp" != t)
                                    if ("minhas_apostas" != t)
                                        if ("history" != t)
                                            if ("ranking" != t)
                                                if ("btnManual" != t)
                                                    if ("btnAuto" != t)
                                                        if ("AutoPlay" != t)
                                                            if ("btnSecond" != t && "btnHide" != t) {
                                                                if (!app.UserManager().GetIsOfficialPopup()) {
                                                                    if ("manualDoubleScale" == t)
                                                                        return void this.doubleInputValue(a);
                                                                    if ("manualHalfScale" == t)
                                                                        return void this.halfInputValue(a);
                                                                    if ("manualBetBtn" == t)
                                                                        return void this.manualBet(a);
                                                                    if ("btn_Manual1" == t || "btn_Manual10" == t || "btn_Manual100" == t)
                                                                        return void this.add_InputValue(Number(a), "0");
                                                                    if ("btn_SManual1" == t || "btn_SManual10" == t || "btn_SManual100" == t)
                                                                        return void this.add_InputValue(Number(a), "1");
                                                                    if ("autoBetBtn" == t)
                                                                        return void this.startAutoBet(a)
                                                                }
                                                            } else
                                                                this.OnBtnSecondView(a);
                                                        else
                                                            this.openAutoSettingView(a);
                                                    else
                                                        this.OnToggleView(!0, e);
                                                else
                                                    this.OnToggleView(!1, e);
                                            else
                                                this.bottomRanking();
                                        else
                                            this.bottomHisScore();
                                    else
                                        this.bottomMyScore();
                                else
                                    app.FormManager().ShowForm(h.UINameDefine.UIGameHelp, {
                                        bundle: c.BundleNames.BAODIAN
                                    });
                            else
                                this.reduceBaseBetChange(a);
                        else
                            this.addBaseBetChange(a);
                    else
                        this.autoReduceBaseBetChange(a);
                else
                    this.autoAddBaseBetChange(a)
            }
            ,
            e.prototype.openAutoSettingView = function(t) {
                app.FormManager().ShowForm(m.UIBDNameDefine.UIAutoSetting, {
                    key: t,
                    autoBetData: this.autoBetData
                })
            }
            ,
            e.prototype.setMyName = function() {
                if (this.tableModel && this.tableModel.ActionIntervalMS && this.tableModel.ActionIntervalMS > 0) {
                    this.preFlyRock(),
                    this.showRockImage(),
                    this.svrTime = (new Date).getTime() - this.tableModel.ActionIntervalMS;
                    var t = this.tableModel.ActionIntervalMS;
                    this.needDisplay = !0,
                    this.playRockWith(t)
                }
            }
            ,
            e.prototype.checkBetGold = function(t) {
                if (this.panelManual2.active) {
                    var e = 1 == Number(t) ? 0 : 1
                      , a = Number(this.manualBaseInput[Number(t)].string)
                      , n = Number(this.manualBaseInput[e].string)
                      , i = Big(-n).plus(app.UserManager().GetUserInfo.gold).toNumber();
                    this.BetStatus[e].playerStatus != o.BETED && this.BetStatus[e].autoStatus != o.BETED || (i = app.UserManager().GetUserInfo.gold),
                    a > (i = i > 0 ? i : 0) && this.onBetGold(i, Number(t))
                }
            }
            ,
            e.prototype.OnAutoInfo = function(t) {
                this.autoBetData = t.autoBetData,
                this.autoTextChanged(null, null, t.key)
            }
            ,
            e.prototype.autoTextChanged = function(t, e, a) {
                var n = Number(a);
                this.checkBetGold(a);
                var o = Number(this.manualBaseInput[n].string);
                this.onBetGold(o, Number(n));
                var i = Number(this.autoScaleInput[n].string);
                this.redWarnAutoScale[n].active = i < 1.01,
                this.setLabelTipShow(this.autoScaleInput[n].node.parent);
                var s = Number(this.autoRoundsNode[n].string);
                this.setLabelTipShow(this.autoRoundsNode[n].node.parent);
                var r = this.autoBetData[n]
                  , l = !r.addWinChk || r.addWinChk && r.addWinNum > 0
                  , u = !r.addFailChk || r.addFailChk && r.addFailNum > 0;
                this.setAutoBetBtnColor(1, n),
                o >= 1 && i >= 1.01 && l && u && app.UserManager().GetUserInfo.gold > 0 ? this.setAutoBetBtnColor(1, n) : this.setAutoBetBtnColor(0, n),
                this.autoBetDataInfo[n] = {
                    base: o,
                    scale: i,
                    round: 0 == s ? -1 : s,
                    runRound: s,
                    winStop: r.winStopNum,
                    failStop: r.failStopNum,
                    addWinChk: r.addWinChk,
                    addFailChk: r.addFailChk,
                    addWinNum: r.addWinNum,
                    addFailNum: r.addFailNum,
                    nextTempBet: o
                }
            }
            ,
            e.prototype.autoAddBaseBetChange = function(t) {
                var e = Number(this.autoScaleInput[Number(t)].string);
                (e = e > 0 ? e + 1 : 1.01) >= 2 && (e = parseInt(e.toString())),
                this.autoScaleInput[Number(t)].string = e.toFixed(2),
                this.autoTextChanged(null, null, t)
            }
            ,
            e.prototype.autoReduceBaseBetChange = function(t) {
                var e = Number(this.autoScaleInput[Number(t)].string);
                (e = e > 2.01 ? e - 1 : 1.01) >= 2 && (e = parseInt(e.toString())),
                this.autoScaleInput[Number(t)].string = e.toFixed(2),
                this.autoTextChanged(null, null, t)
            }
            ,
            e.prototype.checkLimitBetNum = function() {
                return app.UserManager().GetUserInfo.gold < this.gameLimit && (app.SysNotifyManager().ShowToast("Error_Define_50014", ["" + this.gameLimit]),
                !0)
            }
            ,
            e.prototype.startAutoBet = function(t) {
                var e = Number(t);
                this.checkLimitBetNum() || (this.BetStatus[0].playerStatus != o.BETED && this.BetStatus[1].playerStatus != o.BETED ? this.autoBetStatus[e] ? this.OnStopAutoBet(e) : (this.autoTextChanged(null, null, t),
                this.preBetNum[e] = this.autoBetDataInfo[e].base,
                this.betScaleNum[e] = this.autoBetDataInfo[e].scale,
                this.isGoldIn(this.preBetNum[e]) || (this.preBetNum[e] < 1 || this.betScaleNum[e] < 1.01 ? this.Log("BaodianBetError:%s \u7206\u7387:%s", this.preBetNum, this.betScaleNum) : (this.BetStatus[e].autoStatus = this.BetStatus[e].autoStatus == o.BETED ? o.BETED : o.PRE_BET,
                this.totalWinNum[e] = 0,
                this.totalLoseNum[e] = 0,
                this.autoBetStatus[e] = !0,
                this.setBetPatternID(e, !1),
                this.setAutoBetBtnNumStr(e),
                this.gameStatus == n.BET && this.BetStatus[e].autoStatus != o.BETED && this.netBet(e)))) : app.SysNotifyManager().ShowToast("UI_BODIAN_BETTIP"))
            }
            ,
            e.prototype.OnToggleView = function(t, e) {
                if (!e.getChildByName("checkmark").active) {
                    if (this.OnBtnCheckMarkView(t),
                    t)
                        for (a = 0; a < 2; a++)
                            this.BetStatus[a].playerStatus == o.PRE_BET && (this.setManualStatus(a, o.DEFAULT, "Bao_Dian_sposta", 1),
                            this.preBetNum[a] = 0,
                            this.setBetPatternID(a, !0));
                    else
                        for (var a = 0; a < 2; a++)
                            this.autoBetStatus[a] && (this.setAutoBetFalse(a),
                            this.BetStatus[a].autoStatus != o.BETED && this.setBetPatternID(a, !0)),
                            this.baseBetEnd(null, String(a)),
                            this.scaleTextEnd(null, null, String(a));
                    for (this.isAutoView = t,
                    a = 0; a < 2; a++)
                        this.autoPlayNode[a].active = t,
                        this.autoBetBtn[a].parent.active = t,
                        app.ComTool().H5Platform() ? this.manualScaleInput[a].node.parent.parent.active = !t : this.manualScaleInput[a].node.parent.active = !t,
                        this.manualBetBtn[a].active = !t
                }
            }
            ,
            e.prototype.OnBtnCheckMarkView = function(t) {
                this.btnManual.getChildByName("checkmark").active = !t,
                this.btnAuto.getChildByName("checkmark").active = t
            }
            ,
            e.prototype.OnBtnSecondView = function(t) {
                if (2 == Number(t)) {
                    if (this.BetStatus[1].playerStatus == o.BETED)
                        return;
                    this.BetStatus[1].playerStatus == o.PRE_BET && (this.OnStopAutoBet(1),
                    this.setManualStatus(1, o.DEFAULT, "Bao_Dian_sposta", 1),
                    this.preBetNum[1] = 0)
                }
                this.secondNodeShow(1 == Number(t))
            }
            ,
            e.prototype.secondNodeShow = function(t) {
                this.panelManual2.active = t,
                this.btnSecond.active = !this.panelManual2.active,
                this.btnHide.active = this.panelManual2.active,
                this.setLocalDataCrash(this.panelManual2.active),
                this.panelManual2.active ? this.onBetGold(this.GameBetGold, 1, !1) : (this.manualBaseInput[1].string = "",
                this.setLabelTipShow(this.manualBaseInput[1].node.parent))
            }
            ,
            e.prototype.OnBdRankings = function(t) {
                for (var e = [], a = 0; a < t.length; a++) {
                    var n = {
                        nick: t[a].nickname,
                        win: t[a].change_gold
                    };
                    e.push(n)
                }
                this.parseHistory(e)
            }
            ,
            e.prototype.parseHistory = function(t) {
                this.rankingView.children.forEach(function(e, a) {
                    var n = t[a];
                    n && n.nick && n.win || (n = {
                        nick: "--",
                        win: "--"
                    }),
                    e.getChildByName("name").getChildByName("label").getComponent(cc.Label).string = n.nick,
                    e.getChildByName("num").getChildByName("label").getComponent(cc.Label).string = n.win
                })
            }
            ,
            e.prototype.OnBdHistory = function(t, e) {
                var a = this;
                if (1 == e.type) {
                    if (this.myScoreView.children.forEach(function(t, e) {
                        e >= 0 && (t.active = !1)
                    }),
                    this.noDataNode.active = 0 == t.length,
                    t && t.length > 0) {
                        for (var n = [], o = 0; o < t.length; o++) {
                            var i = t[o]
                              , r = new s;
                            r.bet = i.bet_gold,
                            r.boom = i.user_odds,
                            r.endScale = i.sys_odds,
                            r.isWin = i.status,
                            r.scoreid = i.period_id,
                            r.time = i.time,
                            r.type = i.type,
                            r.win_gold = i.win_gold,
                            n.push(r)
                        }
                        n.forEach(function(t, e) {
                            var n = a.myScoreView.children[e];
                            n || ((n = cc.instantiate(a.myScoreView.children[1])).parent = a.myScoreView),
                            n.active = !0,
                            a.GetWndNode("content/id", n).getChildByName("label").getComponent(cc.Label).string = t.scoreid + "",
                            a.GetWndNode("content/boombet", n).getChildByName("label").getComponent(cc.Label).string = t.boom + "/" + t.bet,
                            a.GetWndNode("content/time", n).getChildByName("label").getComponent(cc.Label).string = t.time;
                            var o = a.GetWndNode("content/status", n).getChildByName("label")
                              , i = null == t.win_gold ? "" : t.win_gold;
                            o.getComponent(cc.Label).string = i + "",
                            o.color = 1 == t.isWin ? new cc.Color(255,81,81) : new cc.Color(82,180,69),
                            a.GetWndNode("content/sysboom", n).getChildByName("label").getComponent(cc.Label).string = t.endScale + ""
                        })
                    }
                } else {
                    var l = []
                      , u = [];
                    for (o = 0; o < t.length; o++) {
                        var h = t[o];
                        o >= 0 && o < 7 && l.push(h.sys_odds),
                        u.push({
                            id: h.period_id,
                            date: h.time,
                            scale: h.sys_odds
                        })
                    }
                    this.Log("history ", t),
                    this.isOnloadGame && (this.parseSysHist(l.reverse()),
                    this.isOnloadGame = !1),
                    this.hisScoreView.children.forEach(function(t, e) {
                        e >= 0 && (t.active = !1)
                    }),
                    u.forEach(function(t, e) {
                        var n = a.hisScoreView.children[e + 1];
                        n || ((n = cc.instantiate(a.hisScoreView.children[1])).parent = a.hisScoreView),
                        n.active = !0;
                        var o = a.GetWndNode("li1/bg_id/label", n)
                          , i = a.GetWndNode("li1/bg_date/label", n)
                          , s = a.GetWndNode("li1/bg_scale/label", n);
                        o.getComponent(cc.Label).string = t.id + "",
                        i.getComponent(cc.Label).string = t.date,
                        s.getComponent(cc.Label).string = t.scale + ""
                    })
                }
            }
            ,
            e.prototype.parseSysHist = function(t) {
                var e = this;
                this.historyCont.children.forEach(function(a, n) {
                    n < t.length && (a.getChildByName("label").getComponent(cc.Label).string = Number(t[n]).toFixed(2),
                    a.color = cc.Color.BLACK.fromHEX(e.btnColorList[t[n] >= 2 ? 6 : 3]))
                })
            }
            ,
            e.prototype.bottomMyScore = function() {
                this.myScoreNode.active = !0,
                this.hisScoreNode.active = !1,
                this.rankingNode.active = !1,
                this.OnRequestHistory()
            }
            ,
            e.prototype.bottomHisScore = function() {
                this.myScoreNode.active = !1,
                this.hisScoreNode.active = !0,
                this.rankingNode.active = !1,
                this.OnRequestHistory()
            }
            ,
            e.prototype.bottomRanking = function() {
                this.hisScoreNode.active = !1,
                this.myScoreNode.active = !1,
                this.rankingNode.active = !0,
                this.OnRequestHistory()
            }
            ,
            e.prototype.OnRequestHistory = function(t) {
                if (void 0 === t && (t = !1),
                this.rankingNode.active && (this.parseHistory([]),
                app.HttpServerManager().SendHttpPack(u.GameHttpAPI.BD_RANKINGS)),
                this.hisScoreNode.active || t) {
                    var e = {
                        type: 2,
                        uid: app.UserManager().GetUserInfo.uid
                    };
                    app.HttpServerManager().SendHttpPack(u.GameHttpAPI.BD_HISTORY, e)
                }
                this.myScoreNode.active && (e = {
                    type: 1,
                    uid: app.UserManager().GetUserInfo.uid
                },
                app.HttpServerManager().SendHttpPack(u.GameHttpAPI.BD_HISTORY, e))
            }
            ,
            e.prototype.setButtonKey = function(t) {
                this.Log("setButtonKey", t),
                this.buttonKey = t
            }
            ,
            e.prototype.OnKeyBoardEvent = function(t) {
                var e = String(this.buttonKey);
                this.isAutoView ? this.autoTextChanged(null, null, e) : (1 == t.type && (this.baseBetChange(null, e),
                this.baseBetEnd(null, e)),
                2 == t.type && (this.betScaleChange(null, null, e),
                this.scaleTextEnd(null, null, e)))
            }
            ,
            e.prototype.baseBetChangeAll = function(t, e) {
                this.onBetGold(Number(t.string), Number(e)),
                this.isAutoView ? this.autoTextChanged(t.string, null, e) : this.baseBetChange(t.string, e)
            }
            ,
            e.prototype.baseBetChange = function(t, e) {
                this.endInputText(e)
            }
            ,
            e.prototype.GetBetScale = function(t) {
                this.isAutoView ? this.autoTextChanged(null, null, t) : this.betScaleChange(null, null, t)
            }
            ,
            e.prototype.addBaseBetChange = function(t) {
                var e = Number(this.manualScaleInput[Number(t)].string);
                (e = e > 0 ? e + 1 : 1.01) >= 2 && (e = parseInt(e.toString())),
                this.manualScaleInput[Number(t)].string = e.toFixed(2),
                this.GetBetScale(t)
            }
            ,
            e.prototype.reduceBaseBetChange = function(t) {
                var e = Number(this.manualScaleInput[Number(t)].string);
                (e = e > 2.01 ? e - 1 : 1.01) >= 2 && (e = parseInt(e.toString())),
                this.manualScaleInput[Number(t)].string = e.toFixed(2),
                this.GetBetScale(t)
            }
            ,
            e.prototype.baseBetEnd = function(t, e) {
                if (!this.isAutoView) {
                    this.checkBetGold(e);
                    var a = this.manualBaseInput[Number(e)].string;
                    "." == a[a.length - 1] && (a = a.substring(0, a.length - 2)),
                    this.onBetGold(Number(a), Number(e)),
                    this.betScaleChange(null, null, e)
                }
            }
            ,
            e.prototype.betScaleChange = function(t, e, a) {
                var n = this.manualScaleInput[Number(a)].string;
                this.redWarnScale[Number(a)].active = !1,
                Number(n) < 1.01 && this.isAutoView && (this.redWarnScale[Number(a)].active = !0),
                this.endInputText(a)
            }
            ,
            e.prototype.scaleTextEnd = function(t, e, a) {
                var n = this.manualScaleInput[Number(a)].string;
                "." == n[n.length - 1] && (n = n.substring(0, n.length - 2)),
                n.length >= 2 && "0" == n[0] && "." != n[1] && (this.manualScaleInput[Number(a)].string = Number(n).toFixed(2),
                this.redWarnScale[Number(a)].active = !1)
            }
            ,
            e.prototype.endInputText = function(t) {
                var e = this.manualBaseInput[Number(t)].string
                  , a = this.manualScaleInput[Number(t)].string;
                Number(e) >= 1 && (Number(a) >= 1.01 || "" == a) ? this.setBetBtnColor(2, Number(t)) : this.setBetBtnColor(0, Number(t)),
                this.setLabelTipShow(this.manualScaleInput[Number(t)].node.parent)
            }
            ,
            e.prototype.GetBetGoldAdd = function(t, e, a) {
                void 0 === a && (a = !0),
                this.onBetGold(t, Number(e), a),
                this.isAutoView ? this.autoTextChanged(null, null, e) : this.baseBetEnd(null, e)
            }
            ,
            e.prototype.halfInputValue = function(t) {
                var e = .5 * Number(this.manualBaseInput[Number(t)].string);
                this.GetBetGoldAdd(e, t)
            }
            ,
            e.prototype.add_InputValue = function(t, e) {
                var a = Number(this.manualBaseInput[Number(e)].string);
                (a = a > 0 ? a + t : t) >= app.UserManager().GetUserInfo.gold && (a = app.UserManager().GetUserInfo.gold),
                this.GetBetGoldAdd(Number(a), e)
            }
            ,
            e.prototype.doubleInputValue = function(t) {
                var e = Number(this.manualBaseInput[Number(t)].string);
                (e *= 2) >= app.UserManager().GetUserInfo.gold && (e = app.UserManager().GetUserInfo.gold),
                this.GetBetGoldAdd(Number(e), t)
            }
            ,
            e.prototype.clickBtnBoom = function() {
                if (app.ComUtil().playBtnClick(),
                !this.autoBetStatus && !this.isClickBtnBoom)
                    for (var t = 0; t < 2; t++)
                        if (this.gameStatus == n.BOOM && this.BetStatus[t].playerStatus == o.BETED) {
                            this.isClickBtnBoom = !0,
                            this.clickBoom();
                            break
                        }
            }
            ,
            e.prototype.clickBoom = function(t) {
                app.GameServerManager().send(app.GameServerManager().req_key_map.DummyPlay.key, {
                    PatternID: this.BetStatus[t].BoomPatternID
                })
            }
            ,
            e.prototype.manualBet = function(t) {
                this.Log("bao dian,game status,player status ", this.gameStatus, this.playerStatus);
                var e = Number(t);
                if (this.gameStatus == n.BOOM || this.BetStatus[e].playerStatus != o.BETED && this.BetStatus[e].autoStatus != o.BETED) {
                    var a = Number(this.manualBaseInput[e].string)
                      , i = Number(this.manualScaleInput[e].string);
                    if (this.gameStatus != n.BOOM || this.BetStatus[e].playerStatus != o.BETED && this.BetStatus[e].autoStatus != o.BETED) {
                        if (!this.isGoldIn(a))
                            if (this.checkLimitBetNum() || this.isReqBet[t] || this.redWarnScale[e].active)
                                this.Log("Not Bet:%s :%s", a, i);
                            else {
                                if (this.gameStatus != n.BET && this.BetStatus[e].playerStatus == o.PRE_BET)
                                    return this.setManualStatus(e, o.DEFAULT, "Bao_Dian_sposta", 1),
                                    this.PatternIDStatus(e),
                                    void (this.preBetNum[e] = 0);
                                this.preBetNum[e] = a,
                                this.betScaleNum[e] = 0 == i ? 999 : i,
                                this.setBetPatternID(e, !1),
                                this.gameStatus !== n.BET && this.BetStatus[e].playerStatus != o.BETED && this.preBetNum[e] >= 1 && this.betScaleNum[e] > 1 ? this.setManualStatus(e, o.PRE_BET, "Bao_Dian_Cancelar", 1) : this.gameStatus == n.BET && this.BetStatus[e].playerStatus == o.DEFAULT && this.netBet(e)
                            }
                    } else
                        this.clickBoom(e)
                }
            }
            ,
            e.prototype.setBetPatternID = function(t, e) {
                if (this.BetStatus)
                    if (e)
                        this.BetStatus[t].PatternID = 0;
                    else {
                        var a = 0 == t ? 1 : 0;
                        if (this.gameStatus != n.BOOM || this.BetStatus[a].playerStatus != o.BETED) {
                            var i = this.BetStatus[a].PatternID + 1 == 2 ? 3 : 1;
                            this.BetStatus[t].PatternID = i
                        } else
                            this.BetStatus[t].PatternID = 1
                    }
            }
            ,
            e.prototype.PatternIDStatus = function(t) {
                this.setBetPatternID(t, !0);
                var e = 0 == t ? 1 : 0;
                this.BetStatus[e].PatternID > 0 && (this.BetStatus[e].PatternID = 1)
            }
            ,
            e.prototype.BoomPatternIDStatus = function(t, e) {
                this.BetStatus[t].BoomPatternID = e
            }
            ,
            e.prototype.setManualStatus = function(t, e, a, n) {
                this.BetStatus[t].playerStatus = e,
                a && this.setBetBtnStr(a, t),
                n >= 0 && this.setBetBtnColor(n, t)
            }
            ,
            e.prototype.setBetSeat = function(t) {
                for (var e = 0; e < 2; e++)
                    if (t) {
                        if (this.BetStatus[e].PatternID == t)
                            return e
                    } else if (this.BetStatus[e].PatternID)
                        return e;
                return -1
            }
            ,
            e.prototype.betSuccess = function(t) {
                var e = this.setBetSeat(t.BetSeat);
                -1 == e && t.BetSeat && (e = this.setBetSeat()),
                this.isReqBet[e] = !1,
                clearTimeout(this.runTimeStart[e]),
                this.Log("betSuccess", this.preBetNum[e]),
                this.BoomPatternIDStatus(e, t.BetSeat),
                this.myGoldNum(app.UserManager().UpdateGold(-this.preBetNum[e])),
                this.setManualStatus(e, o.BETED, "Bao_Dian_Sucesso", 1),
                this.autoBetStatus[e] ? (this.setAutoBetBtnStr(app.i18n.t("Bao_Dian_Sucesso"), e),
                this.setAutoInfinity(e, !1),
                this.autoBetDataInfo[e].runRound = this.autoBetDataInfo[e].runRound - 1,
                this.BetStatus[e].autoStatus = o.BETED,
                this.setManualStatus(e, o.DEFAULT, "Bao_Dian_Sucesso", 1)) : this.setManualStatus(e, o.BETED, "Bao_Dian_Sucesso", 1),
                this.preBetNum[e] = 0
            }
            ,
            e.prototype.resHallInfo = function(t) {
                for (var e = 0; e < 2; e++)
                    this.autoBetStatus[e] && this.setAutoBetFalse(e),
                    this.setBetPatternID(e, !0),
                    this.BetStatus[e].playerStatus = o.DEFAULT,
                    this.BetStatus[e].playerStatus = o.DEFAULT;
                this.preBetNum = [0, 0];
                var a = []
                  , i = [];
                for (e = 0; e < t.MemberInfo.length; e++) {
                    var s = t.MemberInfo[e];
                    if (s.Uin == app.UserManager().UserInfo.uid) {
                        var r = s.BetInfo.BetGold;
                        r && (a.push(r[1] > 0),
                        a.push(r[3] > 0));
                        var l = s.BetInfo.BetResult;
                        l && (i.push(0 != l[0]),
                        i.push(0 != l[3]));
                        break
                    }
                }
                for (a[1] && this.secondNodeShow(!0),
                e = 0; e < 2; e++)
                    t.GameState == p.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_BET ? (this.rocketImg.opacity = 0,
                    this.hong.active = !1,
                    this.needDisplay = !1,
                    this.gameStatus = n.BET,
                    a[e] ? (this.resSetBetPatternID(e),
                    this.setManualStatus(e, o.BETED, "Bao_Dian_Sucesso", 1),
                    this.BoomPatternIDStatus(e, this.BetStatus[e].PatternID)) : this.setManualStatus(e, o.DEFAULT, "Bao_Dian_sposta", -1)) : t.GameState == p.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_NORMAL && (this.gameStatus = n.BOOM,
                    this.BetStatus[e].playerStatus = a[e] && !i[e] ? o.BETED : o.DEFAULT,
                    this.BetStatus[e].playerStatus == o.BETED && (this.BtnBoomHide(),
                    this.resSetBetPatternID(e),
                    this.BoomPatternIDStatus(e, this.BetStatus[e].PatternID)))
            }
            ,
            e.prototype.resSetBetPatternID = function(t) {
                var e = 0 == t ? 1 : 0
                  , a = this.BetStatus[e].PatternID + 1 == 2 ? 3 : 1;
                this.BetStatus[t].PatternID = a
            }
            ,
            e.prototype.gameBet = function() {
                t.prototype.gameBet.call(this),
                this.gameStatus = n.BET,
                app.Client.OnEvent(l.GameEventDefine.GAME_LIST_REMOVER),
                this.btnBoom.color = cc.Color.BLACK.fromHEX(this.btnColorList[1]),
                this.BtnBoomHide(),
                this.betDownTime = (new Date).getTime() + 1e3 * (this.tableModel.NextActionLeftSecond - .5),
                this.tickTimeLabel.active = !0,
                this.canBetTimeDown = !0,
                this.hideTheWinPanel(0);
                for (var e = this.BetStatus[0].PatternID > this.BetStatus[1].PatternID ? [1, 0] : [0, 1], a = 0; a < 2; a++) {
                    var i = e[a];
                    this.autoBetStatus[i] ? (this.preBetNum[i] = this.autoBetDataInfo[i].nextTempBet,
                    this.betScaleNum[i] = this.autoBetDataInfo[i].scale,
                    this.BetStatus[i].autoStatus = o.PRE_BET,
                    this.preBetNum[i] >= 1 ? this.netBet(i) : this.OnStopAutoBet(i)) : this.preBetNum[i] >= 1 && this.BetStatus[i].playerStatus == o.PRE_BET ? this.netBet(i) : this.BetStatus[i].playerStatus != o.BETED && (this.setManualStatus(i, o.DEFAULT, "Bao_Dian_sposta", -1),
                    this.endInputText(String(i)))
                }
                this.Log("baodian next bet num ", this.preBetNum)
            }
            ,
            e.prototype.showRockImage = function() {
                this.rocketImg.opacity = 255,
                this.rockAni.active = !0,
                this.rocketImg.parent.position = cc.v3(-275, -203),
                this.rocketImg.parent.angle = -23
            }
            ,
            e.prototype.preFlyRock = function() {
                if (this.isValid) {
                    this.OnRequestHistory(),
                    this.showRockImage(),
                    this.curScaleNum = 100,
                    this.btnBoom.active = !0,
                    this.showCurScale(this.curScaleNum / 100),
                    this.tickTimeHide();
                    for (var t = 0; t < 2; t++)
                        this.setBetBtnColor(1, t),
                        this.BetStatus[t].playerStatus == o.BETED || this.BetStatus[t].autoStatus == o.BETED ? this.setManualStatus(t, this.BetStatus[t].playerStatus, "Bao_Dian_Esperando", -1) : this.setManualStatus(t, this.BetStatus[t].playerStatus, "Bao_Dian_NextSposta", -1),
                        this.autoBetStatus[t] && this.BetStatus[t].autoStatus == o.BETED && this.setAutoBetBtnNumStr(t)
                }
            }
            ,
            e.prototype.playRockWith = function(t) {
                app.SoundManager().PlaySound("bd_Launch"),
                this.gameStatus = n.BOOM,
                this.showRockImage();
                var e = t / 2e3;
                this.heng.getComponent("heng").playAct(8e3 - t),
                this.zong.getComponent("zong").playAct(9250 - t);
                var a = app.ComTool().H5Platform() ? "rock" : "rock_web";
                this.rockAni.getComponent(cc.Animation).play(a, e)
            }
            ,
            e.prototype.playUpRocket = function(t) {
                this.Log("baodian, rock up", t),
                this.tickTimeLabel.active && this.preFlyRock(),
                this.playRockWith(0),
                this.svrTime = (new Date).getTime(),
                this.needDisplay = !0
            }
            ,
            e.prototype.onPlayWinAnim = function() {
                var t = this
                  , e = function(e) {
                    t.hideTheWinPanel(1),
                    app.SoundManager().PlaySound("bd_crashWin"),
                    t.awardAni.getComponent(cc.Animation).play(),
                    t.awardAni.getChildByName("label").getComponent(cc.Label).string = e.toFixed(2);
                    var a = setTimeout(function() {
                        clearTimeout(a),
                        t.isValid && t.hideTheWinPanel(0)
                    }, 2e3)
                };
                if (this.awardAni.active)
                    this.Log("Playing WinAnim");
                else {
                    var a = this.playWinData[0] ? 2.5 : 0
                      , n = cc.sequence(cc.callFunc(function() {
                        t.playWinData[0] && !t.awardAni.active && (e(t.playWinData[0]),
                        t.playWinData[0] = 0)
                    }), cc.delayTime(a), cc.callFunc(function() {
                        t.playWinData[1] && !t.awardAni.active && e(t.playWinData[1])
                    }));
                    this.node.runAction(n)
                }
            }
            ,
            e.prototype.otherBoomGame = function(t) {
                if (this.gameStatus !== n.GAME_END && (this.Log("baodian othe player control", t),
                t.Body && t.Body.DummyPlay)) {
                    var e = t.Body.DummyPlay
                      , a = Number(e.Cards[0] / 100);
                    if (e.PlayerID == app.UserManager().GetUserInfo.uid) {
                        this.gameResult();
                        var o = e.Cards[2] / 100;
                        o > 0 && !app.GameEventMgr().GetInBackground && (this.playWinData.push(o),
                        this.onPlayWinAnim()),
                        this.showCurScale(a);
                        for (var i = a.toFixed(2) + "x (" + app.i18n.t("Bao_Dian_Btnsaque") + ")", s = 0; s < 2; s++)
                            if (this.BetStatus[s].BoomPatternID == e.PatternID) {
                                this.betBtnText(i, s),
                                this.gameResultStuats(s);
                                break
                            }
                        this.isClickBtnBoom = !1
                    } else {
                        var r = this
                          , u = this.nodePool.createNode();
                        u.opacity = 180,
                        u.active = !0,
                        u.parent = this.rockAni;
                        var h = this.rocketImg.parent.x
                          , c = this.rocketImg.parent.y;
                        u.position = cc.v3(h, c);
                        var p = e.Nickname + " " + a.toFixed(2) + "x";
                        u.getChildByName("label").getComponent(cc.Label).string = p;
                        var d = c - 90;
                        cc.tween(u).to(.5, {
                            angle: 0
                        }).to(.5, {
                            y: d
                        }).to(.3, {
                            opacity: 0
                        }).call(function(t) {
                            r.nodePool.recycleNode(t)
                        }, u).start()
                    }
                    app.Client.OnEvent(l.GameEventDefine.GAME_UPDATE_LISTINFO, e)
                }
            }
            ,
            e.prototype.gameEnd = function(e) {
                var a = this;
                t.prototype.gameEnd.call(this, e),
                this.gameStatus = n.GAME_END,
                this.rockAni.getComponent(cc.Animation).stop(),
                this.rocketImg.opacity = 0,
                this.playWinData = [],
                this.gameResult();
                var o = e.EndInfo.TableCards.split(" ");
                this.Log("baodian result:", JSON.stringify(o));
                var i = Number(o[0]) / 100;
                this.addHistoryScale(i),
                this.showCurScale(i),
                this.needDisplay = !1;
                for (var s = 0; s < 2; s++)
                    this.gameResultStuats(s);
                this.hong.active = !1,
                (e.HallPlayerBetInfo || []).forEach(function(t) {
                    if (t.PlayerID == app.UserManager().GetUserInfo.uid) {
                        var e = a.setBetResult(t.BetResult);
                        clearTimeout(a.upScaleTimeout),
                        a.upScaleTimeout = null,
                        a.Log("baodian total win num ", a.totalWinNum);
                        for (var n = 0; n < 2; n++)
                            a.autoBetStatus[n] && (e[n] > 0 ? (a.totalWinNum[n] += e[n],
                            a.autoBetDataInfo[n].nextTempBet += a.autoBetDataInfo[n].nextTempBet * (a.autoBetDataInfo[n].addWinNum / 100)) : (a.totalLoseNum[n] -= a.autoBetDataInfo[n].nextTempBet,
                            a.autoBetDataInfo[n].nextTempBet += a.autoBetDataInfo[n].nextTempBet * (a.autoBetDataInfo[n].addFailNum / 100)),
                            a.autoBetDataInfo[n].nextTempBet = Number(app.ScoreUtil().toFixedString(a.autoBetDataInfo[n].nextTempBet)),
                            a.autoBetDataInfo[n].nextTempBet >= app.UserManager().GetUserInfo.gold && (a.autoBetDataInfo[n].nextTempBet = app.UserManager().GetUserInfo.gold),
                            a.OnAutoBetGold(n),
                            a.winFailGoldNumStop(n))
                    }
                }),
                this.boFangSuiPian(),
                this.heng.getComponent("heng").reset(),
                this.zong.getComponent("zong").reset()
            }
            ,
            e.prototype.setBetResult = function(t) {
                return this.autoBetStatus[0] ? 3 == this.BetStatus[0].PatternID ? [t[3], t[1]] : [t[1], t[3]] : [0, t[1]]
            }
            ,
            e.prototype.OnAutoBetGold = function(t) {
                var e = this.autoBetDataInfo[0].nextTempBet ? this.autoBetDataInfo[0].nextTempBet : 0
                  , a = this.autoBetDataInfo[1].nextTempBet ? this.autoBetDataInfo[1].nextTempBet : 0;
                1 == t && e + a > app.UserManager().GetUserInfo.gold && this.autoBetStatus[0] && (this.autoBetDataInfo[1].nextTempBet = Big(-this.autoBetDataInfo[0].nextTempBet).plus(app.UserManager().GetUserInfo.gold).toNumber(),
                this.autoBetDataInfo[1].nextTempBet < 1 && this.OnStopAutoBet(1)),
                this.onBetGold(this.autoBetDataInfo[t].nextTempBet, t)
            }
            ,
            e.prototype.boFangSuiPian = function() {
                var t = this;
                this.suipian.x = this.rocketImg.parent.x,
                this.suipian.y = this.rocketImg.parent.y;
                var e = setTimeout(function() {
                    clearTimeout(e),
                    t.isValid && t.suipian.getComponent(cc.Animation).play("sui")
                }, 580)
            }
            ,
            e.prototype.gameStop = function() {
                for (var t = 0; t < 2; t++)
                    (this.preBetNum[t] < 1 || this.BetStatus[t].playerStatus != o.PRE_BET || this.BetStatus[t].autoStatus != o.PRE_BET) && this.setBetBtnStr("Bao_Dian_NextSposta", t),
                    this.BetStatus[t].playerStatus = o.DEFAULT,
                    this.BetStatus[t].autoStatus = o.DEFAULT
            }
            ,
            e.prototype.gameResult = function() {
                app.SoundManager().PlaySound("bd_Explode");
                var t = this.GetWndNode("huojian/bao", this.rockAni);
                t.opacity = 255,
                t.getComponent(cc.Animation).play()
            }
            ,
            e.prototype.gameResultStuats = function(t) {
                (this.BetStatus[t].playerStatus != o.PRE_BET && !this.isAutoView || this.BetStatus[t].autoStatus != o.PRE_BET && this.isAutoView) && (this.isAutoView || this.setBetPatternID(t, !0),
                this.preBetNum[t] = 0,
                this.setManualStatus(t, o.DEFAULT, "Bao_Dian_sposta", -1),
                this.BetStatus[t].autoStatus = o.DEFAULT),
                this.BoomPatternIDStatus(t, 0)
            }
            ,
            e.prototype.winFailGoldNumStop = function(t) {
                (this.autoBetDataInfo[t].winStop > 0 && this.totalWinNum[t] >= this.autoBetDataInfo[t].winStop || this.autoBetDataInfo[t].failStop > 0 && this.totalLoseNum[t] + this.autoBetDataInfo[t].failStop <= 0 || this.autoBetDataInfo[t].round > 0 && this.autoBetDataInfo[t].runRound <= 0 || app.UserManager().GetUserInfo.gold < this.gameLimit || app.UserManager().GetUserInfo.gold <= 0) && this.OnStopAutoBet(t)
            }
            ,
            e.prototype.OnStopAutoBet = function(t) {
                this.setAutoBetFalse(t),
                this.PatternIDStatus(t)
            }
            ,
            e.prototype.addHistoryScale = function(t) {
                var e = this
                  , a = cc.instantiate(this.historyCont.children[0]);
                a.color = t >= 2 ? cc.Color.BLACK.fromHEX(this.btnColorList[6]) : cc.Color.BLACK.fromHEX(this.btnColorList[3]),
                isNaN(t) && cc.error("baodian result:", t),
                a.getChildByName("label").getComponent(cc.Label).string = t.toFixed(2),
                a.getChildByName("new").active = !0,
                a.parent = this.historyCont;
                var n = app.ComTool().H5Platform() ? 759 : 970;
                a.position = cc.v3(n, 0),
                a.active = !0,
                this.historyCont.children.forEach(function(t, a) {
                    var n = t.x - t.width - 10
                      , o = t.y;
                    t.getChildByName("new").active = a >= e.historyCont.childrenCount - 1,
                    cc.tween(t).to(2, {
                        x: n,
                        y: o
                    }).call(function(t) {
                        t.x < 0 && t.removeFromParent()
                    }).start()
                })
            }
            ,
            e.prototype.myGoldNum = function(t) {
                app.UserManager().GetUserInfo.gold = t,
                this.RefreshGold()
            }
            ,
            e.prototype.showCurScale = function(t) {
                this.btnBoom.getChildByName("label4").getComponent(cc.Label).string = "x";
                for (var e = t.toFixed(2).length - 1, a = this.btnBoom.childrenCount - 2; a >= 0; a--) {
                    var n = t.toFixed(2).charAt(e);
                    e--,
                    n ? (this.btnBoom.children[a].active = !0,
                    this.btnBoom.children[a].getComponent(cc.Label).string = n) : this.btnBoom.children[a].active = !1
                }
            }
            ,
            e.prototype.BtnBoomHide = function() {
                this.btnBoom && (this.btnBoom.active = !1,
                this.btnBoom.children[0].active = !1,
                this.btnBoom.children[1].active = !1)
            }
            ,
            e.prototype.setProgressNum = function(t) {
                this.tickTimeLabel.getChildByName("time").getChildByName("num").getChildByName("num").getComponent(cc.Label).string = t.toFixed(0),
                this.playTimeAnim(t, this.tickTimeLabel.getChildByName("time").getChildByName("num"))
            }
            ,
            e.prototype.tickTimeHide = function() {
                this.tickTimeLabel.active = !1,
                this.tickTimeLabel.getChildByName("time").stopAllActions(),
                this.tickTimeLabel.getChildByName("time").x = 0;
                for (var t = 0; t < 3; t++) {
                    var e = this.tickTimeLabel.getChildByName("time").children[t];
                    e.stopAllActions(),
                    e.scale = 1,
                    e.opacity = 255
                }
                this.isTimePlay = !1,
                this.isTimePlay1 = !1
            }
            ,
            e.prototype.playTimeAnim = function(t, e) {
                t < 4 && !this.isTimePlay1 && (this.isTimePlay1 = !0,
                cc.tween(e.parent).to(.5, {
                    position: cc.v3(e.parent.x - 68, e.parent.y)
                }).start(),
                cc.tween(e.parent.children[0]).to(.5, {
                    opacity: 0
                }).start(),
                cc.tween(e.parent.children[2]).to(.5, {
                    opacity: 0
                }).start()),
                t <= 3.5 && this.canBetTimeDown && !this.isTimePlay && (this.isTimePlay = !0,
                cc.tween(e).to(.5, {
                    scale: 1.5
                }).to(.5, {
                    scale: 1
                }).union().repeat(4).start())
            }
            ,
            e.prototype.isGoldIn = function(t) {
                return (app.UserManager().GetUserInfo.gold <= 0 || t > app.UserManager().GetUserInfo.gold) && (this.GetGoldInadequate(),
                !0)
            }
            ,
            e.prototype.netBet = function(t) {
                var e = this;
                if (!(this.preBetNum[t] < 1)) {
                    if (this.isGoldIn(this.preBetNum[t]))
                        return this.autoBetStatus[t] ? void this.OnStopAutoBet(t) : (this.setManualStatus(t, o.DEFAULT, "Bao_Dian_sposta", 1),
                        this.PatternIDStatus(t),
                        void (this.preBetNum[t] = 0));
                    if (!this.sendBetCheck(t)) {
                        var a = this.betScaleNum[t].toString() + "00"
                          , n = a.indexOf(".");
                        if (n >= 0 && (a = a.replace(".", "").substring(0, n + 2)),
                        !(Number(a) <= 100)) {
                            this.isReqBet[t] = !0;
                            var i = setTimeout(function() {
                                clearTimeout(e.runTimeStart[t]),
                                e.isReqBet[t] = !1
                            }, 3e3);
                            this.runTimeStart[t] = i,
                            app.GameServerManager().send(app.GameServerManager().req_key_map.Bet.key, {
                                BetSeat: this.BetStatus[t].PatternID,
                                BetGold: Number(this.preBetNum[t].toFixed(2)),
                                BetPlayerID: app.UserManager().GetUserInfo.uid,
                                BetMulti: Number(a)
                            })
                        }
                    }
                }
            }
            ,
            e.prototype.sendBetCheck = function(t) {
                if (3 == this.BetStatus[t].PatternID) {
                    var e = 1 == t ? 0 : 1
                      , a = Big(-this.preBetNum[e]).plus(app.UserManager().GetUserInfo.gold).toNumber();
                    if (this.BetStatus[e].playerStatus != o.BETED && this.BetStatus[e].autoStatus != o.BETED || (a = app.UserManager().GetUserInfo.gold),
                    a = a > 0 ? a : 0,
                    this.preBetNum[t] > a)
                        return this.isGoldIn(this.preBetNum[0] + this.preBetNum[1]),
                        !0
                }
                return !1
            }
            ,
            e.prototype.setBetBtnStr = function(t, e) {
                this.betBtnText(app.i18n.t(t), e)
            }
            ,
            e.prototype.betBtnText = function(t, e) {
                this.manualBetBtn[e].getChildByName("label").getComponent(cc.Label).string = t
            }
            ,
            e.prototype.setBetBtnColor = function(t, e) {
                this.manualBetBtn[e].color = cc.Color.BLACK.fromHEX(this.btnColorList[t]),
                this.manualBetBtn[e].getComponent(cc.Button).normalColor = cc.Color.BLACK.fromHEX(this.btnColorList[t]),
                this.manualBetBtn[e].getComponent(cc.Button).hoverColor = cc.Color.BLACK.fromHEX(this.HoverColorList[t]),
                this.manualBetBtn[e].getComponent(cc.Button).pressedColor = cc.Color.BLACK.fromHEX(this.PressedColorList[t]),
                this.manualBetBtn[e].getChildByName("label").color = cc.Color.BLACK.fromHEX(this.btnColorList[0 != t ? 4 : 5])
            }
            ,
            e.prototype.setAutoBetBtnColor = function(t, e) {
                this.autoBetBtn[e].color = cc.Color.BLACK.fromHEX(this.btnColorList[t]),
                this.autoBetBtn[e].getComponent(cc.Button).normalColor = cc.Color.BLACK.fromHEX(this.btnColorList[t]),
                this.autoBetBtn[e].getComponent(cc.Button).hoverColor = cc.Color.BLACK.fromHEX(this.HoverColorList[t]),
                this.autoBetBtn[e].getComponent(cc.Button).pressedColor = cc.Color.BLACK.fromHEX(this.PressedColorList[t]),
                this.autoBetBtn[e].getChildByName("lblNode").getChildByName("label").color = cc.Color.BLACK.fromHEX(this.btnColorList[0 != t ? 4 : 5])
            }
            ,
            e.prototype.hideTheWinPanel = function(t) {
                this.awardAni.active = !!t && 1 == t
            }
            ,
            e.prototype.setAutoBetBtnStr = function(t, e) {
                this.autoBetBtn[e].getChildByName("lblNode").getChildByName("label").getComponent(cc.Label).string = t
            }
            ,
            e.prototype.setAutoInfinity = function(t, e) {
                this.autoBetBtn[t].getChildByName("lblNode").getChildByName("label1").active = e
            }
            ,
            e.prototype.setAutoBetBtnNumStr = function(t) {
                var e = "";
                this.autoBetDataInfo[t].runRound > 0 && (e = "(" + this.autoBetDataInfo[t].runRound + ")"),
                this.setAutoBetBtnStr(app.i18n.t("Bao_Dian_AutoIng") + e, t),
                this.setAutoInfinity(t, this.autoBetDataInfo[t].round < 0)
            }
            ,
            e.prototype.setAutoBetFalse = function(t) {
                this.autoBetStatus[t] = !1,
                this.BetStatus[t].autoStatus != o.BETED && (this.BetStatus[t].autoStatus = o.DEFAULT),
                this.setAutoBetBtnStr(app.i18n.t("Bao_Dian_CanAuto"), t),
                this.setAutoInfinity(t, !1)
            }
            ,
            e.prototype.enableBetBtn = function() {}
            ,
            e.prototype.setUserHead = function() {}
            ,
            e.prototype.setCountDownTime = function() {}
            ,
            e.prototype.addChipToChipPool = function() {}
            ,
            e.prototype.update = function(e) {
                t.prototype.update.call(this, e);
                var a = (new Date).getTime()
                  , n = a - this.svrTime;
                if (this.needDisplay) {
                    var i = this.getPayRateByMsTime(n);
                    this.showCurScale(i / 100);
                    for (var s = 0; s < 2; s++)
                        if (this.BetStatus[s].playerStatus == o.BETED || this.BetStatus[s].autoStatus == o.BETED) {
                            var r = (i / 100).toFixed(2) + "x (" + app.i18n.t("Bao_Dian_Btnsaque") + ")";
                            this.betBtnText(r, s)
                        }
                }
                if (this.canBetTimeDown) {
                    var l = this.betDownTime - a;
                    l <= 0 ? (this.canBetTimeDown = !1,
                    this.showRockImage(),
                    this.preFlyRock()) : this.setProgressNum(l / 1e3)
                }
            }
            ,
            e.prototype.getPayRateByMsTime = function(t) {
                for (var e = 100, a = 0; a < this.dtTime.length; a++) {
                    if (t < this.dtTime[a] * this.dtCount[a]) {
                        e += t / this.dtTime[a] >> 0;
                        break
                    }
                    t -= this.dtTime[a] * this.dtCount[a],
                    e += this.dtCount[a]
                }
                return e
            }
            ,
            e.prototype.OnClose = function() {
                for (var e = 0; e < 2; e++)
                    this.isReqBet[e] = !1,
                    clearTimeout(this.runTimeStart[e]);
                this.buttonKey = 0,
                this.playWinData = [],
                this.heng.getComponent("heng").onDestroy(),
                this.zong.getComponent("zong").onDestroy(),
                this.rockAni.getComponent(cc.Animation).stop(),
                this.GetWndNode("huojian/bao", this.rockAni).getComponent(cc.Animation).stop(),
                this.GetWndNode("huojian/bao", this.rockAni).opacity = 0,
                this.rocketImg.opacity = 0,
                this.rocketImg.parent.position = cc.v3(-275, -203),
                this.rocketImg.parent.angle = -23,
                this.hong.active = !1,
                this.tickTimeHide(),
                t.prototype.OnClose.call(this)
            }
            ,
            __decorate([S({
                type: [cc.String],
                tooltip: "0:\u57fa\u7840\u7070\u8272 1.\u4e0b\u6ce8\u6309\u94ae 2.\u4e0b\u6ce8\u989d\u5916\u989c\u8272\u5982\u679c\u6ca1\u6709\u540c1 3.\u8bb0\u5f55\u5e95\u8272 4 \u4eae,5\u6697\u6309\u94ae\u6587\u672c\u989c\u8272,6\u8bb0\u5f55\u4eae\u8272"
            })], e.prototype, "btnColorList", void 0),
            __decorate([S([cc.String])], e.prototype, "PressedColorList", void 0),
            __decorate([S([cc.String])], e.prototype, "HoverColorList", void 0),
            __decorate([g], e)
        }(d.default);
        a.default = f,
        cc._RF.pop()
    }
    , {
        "../../../Common/Bundle/BundleConfig": void 0,
        "../../../Common/Component/NodePool": void 0,
        "../../../Common/Define/GameEventDefine": void 0,
        "../../../Common/Define/GameHttpDefine": void 0,
        "../../../Common/Define/UINameDefine": void 0,
        "../../../Common/Net/BaseDefine": void 0,
        "../../../script/common_hall/hall_view": void 0,
        "./BDDefine": "BDDefine"
    }],
    heng: [function(t, e, a) {
        "use strict";
        cc._RF.push(e, "2508esJnFlEcbXOw+KdXnoC", "heng"),
        Object.defineProperty(a, "__esModule", {
            value: !0
        });
        var n = cc._decorator
          , o = n.ccclass
          , i = (n.property,
        function(t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.createTimer = null,
                e.waitPlay = null,
                e.PosX = 130,
                e
            }
            return __extends(e, t),
            e.prototype.onLoad = function() {
                this.PosX = app.ComTool().H5Platform() ? 130 : 140
            }
            ,
            e.prototype.reset = function() {
                var t = this;
                clearTimeout(this.waitPlay),
                clearInterval(this.createTimer);
                var e = this.node.children;
                e.forEach(function(t) {
                    t.stopAllActions()
                });
                var a = setTimeout(function() {
                    clearTimeout(a),
                    t.isValid && e.forEach(function(e, a) {
                        a > 4 ? (e.active = !1,
                        e.destroy()) : (e.opacity = 255,
                        e.x = a * t.PosX,
                        e.getChildByName("label").getComponent(cc.Label).string = 2 * a + "s")
                    })
                }, 1e3)
            }
            ,
            e.prototype.playAct = function(t) {
                var e = this;
                this.waitPlay = setTimeout(function() {
                    if (clearTimeout(e.waitPlay),
                    e.isValid) {
                        for (var t = e.node.children, a = 0; a < t.length; a++)
                            a > 0 && cc.tween(t[a]).to(2 * a, {
                                x: 70
                            }).to(.3, {
                                opacity: 0
                            }).start();
                        e.create()
                    }
                }, t)
            }
            ,
            e.prototype.create = function() {
                var t = this;
                clearInterval(this.createTimer),
                this.createTimer = setInterval(function() {
                    if (t.isValid) {
                        var e = cc.instantiate(t.node.children[0]);
                        e.parent = t.node,
                        e.x = 4 * t.PosX,
                        e.opacity = 255;
                        var a = t.node.childrenCount - 1;
                        e.getChildByName("label").getComponent(cc.Label).string = 2 * a + "s",
                        cc.tween(e).to(8, {
                            x: 70
                        }).to(.3, {
                            opacity: 0
                        }).start()
                    } else
                        clearInterval(t.createTimer)
                }, 2e3)
            }
            ,
            e.prototype.onDestroy = function() {
                this.reset()
            }
            ,
            __decorate([o], e)
        }(cc.Component));
        a.default = i,
        cc._RF.pop()
    }
    , {}],
    zong: [function(t, e, a) {
        "use strict";
        cc._RF.push(e, "bf7a8cRjCRBSax52xqfsLBq", "zong"),
        Object.defineProperty(a, "__esModule", {
            value: !0
        });
        var n = cc._decorator
          , o = n.ccclass
          , i = (n.property,
        function(t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.createTimer = null,
                e.waitPlay = null,
                e.PosY = 105,
                e
            }
            return __extends(e, t),
            e.prototype.onLoad = function() {
                this.PosY = app.ComTool().H5Platform() ? 105 : 102
            }
            ,
            e.prototype.reset = function() {
                clearTimeout(this.waitPlay),
                clearInterval(this.createTimer);
                for (var t = 0; t < this.node.childrenCount; t++) {
                    var e = this.node.children[t];
                    e.stopAllActions(),
                    t > 4 ? (e.active = !1,
                    e.destroy()) : (e.opacity = 255,
                    e.y = t * this.PosY,
                    e.getChildByName("label").getComponent(cc.Label).string = (.2 * t + 1).toFixed(1) + "x")
                }
            }
            ,
            e.prototype.playAct = function(t) {
                var e = this;
                this.waitPlay = setTimeout(function() {
                    e.isValid ? (e.node.children.forEach(function(t, e) {
                        t.stopAllActions(),
                        e > 0 && cc.tween(t).to(2 * e, {
                            y: 40
                        }).to(.3, {
                            opacity: 0
                        }).start()
                    }),
                    e.creat()) : clearTimeout(e.waitPlay)
                }, t)
            }
            ,
            e.prototype.creat = function() {
                var t = this;
                clearInterval(this.createTimer),
                this.createTimer = setInterval(function() {
                    if (t.isValid && t.createTimer) {
                        var e = cc.instantiate(t.node.children[0]);
                        e.parent = t.node,
                        e.y = 4 * t.PosY,
                        e.opacity = 255;
                        var a = cc.find("peilv", t.node.parent.parent)
                          , n = "";
                        for (var o in a.children) {
                            var i = a.children[o];
                            i.active && (n += i.getComponent(cc.Label).string)
                        }
                        var s = n.split(".");
                        e.getChildByName("label").getComponent(cc.Label).string = s[0] + "." + s[1].substr(0, 1) + "x",
                        cc.tween(e).to(8, {
                            y: 40
                        }).to(.3, {
                            opacity: 0
                        }).start()
                    } else
                        clearInterval(t.createTimer)
                }, 2e3)
            }
            ,
            e.prototype.onDestroy = function() {
                this.reset()
            }
            ,
            __decorate([o], e)
        }(cc.Component));
        a.default = i,
        cc._RF.pop()
    }
    , {}]
}, {}, ["BDDefine", "baodianHistoryList", "game_Crash", "heng", "zong"]);
