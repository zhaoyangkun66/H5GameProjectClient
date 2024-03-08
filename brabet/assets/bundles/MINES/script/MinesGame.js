let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/UINameDefine")
    , i = require("../../../Common/Bundle/BundleConfig")
    , a = require("../../../script/common_hall/GameBaseForm")
    , s = require("../script/MinesTool")
    , u = require("../../../Common/Net/BaseDefine")
    , l = require("./MinesDefine")
    , h = require("./game550Mgr")
    , r = cc._decorator
    , c = r.ccclass
    , p = r.property
    , m = function (t) {
        function e() {
            var e = null !== t && t.apply(this, arguments) || this;
            return e.NodeColorList = ["#4D4D4D", "#3DA50D", "#3594E3", "#705EE2", "#32385B"],
                e.gameMgr = null,
                e.panelManual = null,
                e.panelAuto = null,
                e.betScaleNode = null,
                e.pageItem = null,
                e.winPanelBg = null,
                e.awardAni = null,
                e.betBtn = null,
                e.AutoBetBtn = null,
                e.AutoBtn = null,
                e.manualBaseInput = null,
                e.minesNumLabel = null,
                e.minesNumNode = null,
                e.autoMaxRoundInput = null,
                e.autoWinNumInput = null,
                e.autoWinAddNumToggle1 = null,
                e.autoWinAddNumInput = null,
                e.autoFailNumInput = null,
                e.autoWinAddNumToggle2 = null,
                e.autoFailAddNumToggle1 = null,
                e.autoFailAddNumToggle2 = null,
                e.autoFailAddNumInput = null,
                e.normalToggle = null,
                e.autoToggle = null,
                e.minesGZ = null,
                e.hisToryNode = null,
                e.MinesNum_H = null,
                e.gold_H = null,
                e.node_tip = null,
                e.guide = null,
                e.MinesNodeData = [],
                e.selectNodeData = null,
                e.selectCount = 24,
                e.isAutoBet = false,
                e.autoBetStatus = u.GameStatus.DEFAULT,
                e.minesNum = 1,
                e.scaleCount = 0,
                e.oddsData = [],
                e.ScaleData = null,
                e.totalWinNum = 0,
                e.totalLoseNum = 0,
                e.timeoutIds = [],
                e.autoBetDataInfo = null,
                e.MinesTool = new s.MinesTool,
                e.OneItemHisInfo = null,
                e
        }
        return __extends(e, t),
            e.prototype.onLoad = function () {
                this.RegEvent(l.Game550HttpAPI.MINES_SHOW_RESULT, this.OnShowResult),
                    this.RegEvent(l.Game550HttpAPI.MINES_START_DEFAULT, this.OnStartDefault),
                    this.RegEvent(l.Game550HttpAPI.MINES_OPEN_POS, this.OnMinesOpenPos),
                    this.RegEvent(l.Game550HttpAPI.MINES_BET, this.OnMinesBet),
                    this.RegEvent(l.Game550EventName.MINES_BET_ERROR, this.OnMinesBetError),
                    this.gameMgr = h.game550Mgr.GetInstance(),
                    this.betScaleNode = cc.find("content/game/odds/PageView", this.node),
                    this.pageItem = cc.find("content/game/odds/PageView/page_1", this.node),
                    this.panelManual = cc.find("content/content/Manual", this.node),
                    this.betBtn = cc.find("betbtn", this.panelManual),
                    this.AutoBetBtn = cc.find("Autobetbtn", this.panelManual),
                    this.AutoBtn = cc.find("Autobtn", this.panelManual),
                    this.minesNumNode = cc.find("Mines/minesNum", this.panelManual),
                    this.minesNumLabel = cc.find("Mines/label/num", this.panelManual),
                    this.minesGZ = cc.find("content/game/mines", this.node),
                    this.normalToggle = cc.find("content/content/scrollview/view/content/toggleContainer/toggle1", this.node),
                    this.autoToggle = cc.find("content/content/scrollview/view/content/toggleContainer/toggle2", this.node),
                    this.panelAuto = cc.find("content/content/Auto", this.node),
                    this.panelAuto.active = false,
                    this.autoWinAddNumToggle1 = cc.find("vencer/toggleContainer/toggle1_vencer", this.panelAuto),
                    this.autoWinAddNumToggle2 = cc.find("vencer/toggleContainer/toggle2_vencer", this.panelAuto),
                    this.autoFailAddNumToggle1 = cc.find("perder/toggleContainer/toggle1_perder", this.panelAuto),
                    this.autoFailAddNumToggle2 = cc.find("perder/toggleContainer/toggle2_perder", this.panelAuto),
                    this.awardAni = cc.find("content/game/UIGameAward", this.node),
                    this.winPanelBg = cc.find("bg", this.awardAni),
                    this.hisToryNode = cc.find("content/content/list/minhas_apostas", this.node),
                    this.node_tip = this.GetWndNode("node_tip", this.panelManual),
                    this.guide = this.GetWndNode("content/game/guide"),
                    app.ComTool().H5Platform() ? (this.manualBaseInput = cc.find("Quantia/Quantia/TEXT_LABEL", this.panelManual).getComponent(cc.Label),
                        this.autoMaxRoundInput = cc.find("Rounds/Apostas/TEXT_LABEL", this.panelAuto).getComponent(cc.Label),
                        this.autoWinNumInput = cc.find("layout1/ganhar/TEXT_LABEL", this.panelAuto).getComponent(cc.Label),
                        this.autoFailNumInput = cc.find("layout1/perder/TEXT_LABEL", this.panelAuto).getComponent(cc.Label),
                        this.autoWinAddNumInput = cc.find("vencer/toggleContainer/editbox_xsje/TEXT_LABEL", this.panelAuto).getComponent(cc.Label),
                        this.autoFailAddNumInput = cc.find("perder/toggleContainer/editbox_xsje/TEXT_LABEL", this.panelAuto).getComponent(cc.Label))
                        : (this.manualBaseInput = cc.find("Quantia/Quantia", this.panelManual).getComponent(cc.EditBox),
                            this.autoMaxRoundInput = cc.find("Rounds/Apostas", this.panelAuto).getComponent(cc.EditBox),
                            this.autoWinNumInput = cc.find("layout1/ganhar", this.panelAuto).getComponent(cc.EditBox),
                            this.autoFailNumInput = cc.find("layout1/perder", this.panelAuto).getComponent(cc.EditBox),
                            this.autoWinAddNumInput = cc.find("vencer/toggleContainer/editbox_xsje", this.panelAuto).getComponent(cc.EditBox),
                            this.autoFailAddNumInput = cc.find("perder/toggleContainer/editbox_xsje", this.panelAuto).getComponent(cc.EditBox)),
                    this.winPanelBg.on(cc.Node.EventType.TOUCH_END, this.OnTheWinPanelShow, this),
                    this.gold_H = cc.find("content/game/gold/num", this.node),
                    this.MinesNum_H = cc.find("content/game/boom/num", this.node)

            }
            ,
            e.prototype.OnShow = function () {
                for (var e = [], n = 0; n < arguments.length; n++)
                    e[n] = arguments[n];
                t.prototype.OnShow.call(this),
                    this.onBetGoldNum(this.GameBetGold, null, false),
                    this.onInitialization()
            }
            ,
            e.prototype.onInitialization = function () {
                var t = this
                    , e = 1;
                this.MinesNodeData = [],
                    this.minesGZ.children.forEach(function (n) {
                        n.children.forEach(function (n) {
                            n.name = String(e),
                                n.getComponent(cc.Animation).stop(),
                                n.children[0].active = true,
                                n.children[0].scale = 1,
                                n.children[1].active = false,
                                n.children[2].active = false,
                                t.MinesNodeData.push(n),
                                e++
                        })
                    }),
                    this.OneItemHisInfo = null,
                    this.selectNodeData = [],
                    this.hisToryDate = [],
                    this.autoBetDataInfo = {
                        base: 0,
                        round: 0,
                        minesNum: 0,
                        selectData: [],
                        runRound: 0,
                        winStop: 0,
                        failStop: 0,
                        addWinChk: false,
                        addFailChk: false,
                        addWinNum: 0,
                        addFailNum: 0,
                        nextTempBet: 0
                    },
                    this.betBtn.active = true,
                    this.AutoBetBtn.active = false,
                    this.minesNumNode.active = false,
                    this.gameStatus = u.GameStatus.DEFAULT,
                    this.normalToggle.getComponent(cc.Toggle).check(),
                    this.setBetBtnAllText(app.i18n.t("UI_Mines_Bet"), 0),
                    this.setAutoBetFalse(),
                    this.setAutoBtnColor(0),
                    this.onBtnShowView(true),
                    this.onEnabled(),
                    this.gameResetUI(),
                    this.gameMgr.initInfo()
            }
            ,
            e.prototype.OnShowResult = function (t) {
                this.hisToryDate = t,
                    this.GetHistoryInfo(true)
            }
            ,
            e.prototype.GetHistoryInfo = function (t) {
                void 0 === t && (t = false);
                var e = this.hisToryNode.getComponent("MinesHistory");
                e ? !t && this.OneItemHisInfo ? e.BackPushData(this.OneItemHisInfo) : e.init(this.hisToryDate) : this.ErrLog("GetHistoryInfo : fail MinesHistory", e)
            }
            ,
            e.prototype.gameResetUI = function () {
                this.OnTheWinPanelShow(0),
                    this.onMinesGzStatus(),
                    this.onOddsShow(),
                    this.onResetData(),
                    this.totalWinNum = 0,
                    this.totalLoseNum = 0,
                    this.onMinesGzAnim(false),
                    this.onBtnAnim(false)
            }
            ,
            e.prototype.OnStartDefault = function (t) {
                this.oddsData = t.rate_data,
                    this.onOddsShow(),
                    this.setMinesNum(t.lnum),
                    t.is_new ? this.isAutoBet && (this.onResAutoSTAMP(),
                        this.onOddsScaleStamp()) : this.onStartGameInfo(t)
            }
            ,
            e.prototype.onStartGameInfo = function (t) {
                this.gameStatus = u.GameStatus.GAME_START,
                    this.onEnabled(),
                    this.setAutoBtnColor(2),
                    this.setBetBtnAllText(app.i18n.t("UI_Mines_cashout"), t.cash_gold),
                    this.onBetGoldNum(Number(t.gold)),
                    t.lei_show = t.lei_show.replace(/-/g, "");
                for (var e = t.lei_show.split(""), n = 0; n < this.MinesNodeData.length; n++) {
                    var o = this.MinesNodeData[n]
                        , i = Number(e[n]);
                    i > 0 && (o.isStatus = l.gzStatus.OPENSTATUS,
                        o.children[0].active = false,
                        o.children[1].active = true,
                        this.MinesTool.getMinesNodeSpr(i, o.children[1]),
                        this.scaleCount++)
                }
                this.onOddsScaleStamp()
            }
            ,
            e.prototype.OnClick = function (t, e, n) {
                "Autobtn" != t
                    ? "page_left" != t
                        ? "page_right" != t
                            ? "help" != t && "btn_help" != t
                                ? "toggle1" != t && "toggle2" != t
                                    ? "btn_mines_hide" != t
                                        ? "btn_minesCount" != t
                                            ? "toggle2_perder" != t && "toggle1_perder" != t && "toggle1_vencer" != t && "toggle2_vencer" != t
                                                ? app.UserManager().GetIsOfficialPopup() || ("betbtn" != t
                                                    ? "Autobetbtn" != t
                                                        ? "btn" != t && "btn2" != t
                                                            ? "mines_btn" != t
                                                                ? "btn_mines_show" != t || this.btnMinesNumShow()
                                                                : this.btnQuickSelectionMines(n)
                                                            : this.btnInputValue(n)
                                                        : this.btnAutoBet(e)
                                                    : this.btnNetBet())
                                                : this.autoTextChanged()
                                            : this.btnSetMinesNum(e)
                                        : this.btnMinesNumHide()
                                    : this.onToggle(e)
                                : this.onOpenHelp()
                            : this.btnAddBetScalePage()
                        : this.btnReduceBetScalePage()
                    : this.btnAutoPick()
            }
            ,
            e.prototype.btnNetBet = function () {
                this.gameStatus != u.GameStatus.GAME_END && (this.clearTimeouts(),
                    this.onRequestBet())
            }
            ,
            e.prototype.btnMinesClick = function (t, e) {
                app.ComUtil().playBtnClick();
                var n = t.target;
                if (this.Log(e),
                    n.isStatus != l.gzStatus.OPENSTATUS)
                    if (this.isAutoBet) {
                        if (this.gameStatus != u.GameStatus.DEFAULT || this.autoBetStatus == u.GameStatus.GAME_START)
                            return;
                        if (n.isStatus == l.gzStatus.STAMPSTATUS)
                            this.onDeselectNode(n);
                        else if (n.isStatus == l.gzStatus.DEFAULT) {
                            if (this.selectNodeData.length >= this.selectCount)
                                return;
                            this.MinesTool.getMinesNodeSpr(5, n.children[0]),
                                this.selectNodeData.push(n),
                                this.autoBetDataInfo.selectData.push(Number(e)),
                                this.scaleCount = this.selectNodeData.length,
                                n.isStatus = l.gzStatus.STAMPSTATUS,
                                this.onMinesGzAnim(false)
                        }
                        this.autoTextChanged(),
                            this.onOddsScaleStamp()
                    } else {
                        if (this.scaleCount >= this.selectCount)
                            return;
                        if (this.gameStatus != u.GameStatus.GAME_START)
                            return void this.onBtnAnim(true);
                        this.onBtnAnim(false),
                            this.onRequestGame(Number(e))
                    }
            }
            ,
            e.prototype.btnAutoPick = function () {
                if (this.gameStatus == u.GameStatus.GAME_START) {
                    var t = [];
                    if (this.MinesNodeData.forEach(function (e) {
                        e.isStatus == l.gzStatus.DEFAULT && t.push(e)
                    }),
                        0 == t.length || t.length <= this.minesNum)
                        this.Log("AutoPick", t);
                    else {
                        var e = Math.round(Math.random() * (t.length - 1));
                        this.onRequestGame(Number(t[e].name))
                    }
                }
            }
            ,
            e.prototype.btnAutoBet = function (t) {
                0 != this.autoBetDataInfo.selectData.length ? t && this.autoBetStatus == u.GameStatus.GAME_START ? this.setAutoBetFalse() : this.gameStatus != u.GameStatus.GAME_END && this.onRequestBet() : this.onMinesGzAnim(true)
            }
            ,
            e.prototype.onRequestBet = function () {
                var t = {
                    gold: 0,
                    type: 2,
                    mines: 0,
                    token: app.UserManager().GetUserInfo.token
                };
                if (this.gameStatus == u.GameStatus.DEFAULT) {
                    if (this.isAutoBet ? (this.OnTheWinPanelShow(0),
                        this.autoBetStatus == u.GameStatus.DEFAULT && this.autoTextChanged()) : this.gameResetUI(),
                        this.baseBetChange(),
                        this.isCheckBet())
                        return;
                    t.gold = this.isAutoBet ? this.autoBetDataInfo.nextTempBet : Number(this.manualBaseInput.string),
                        t.mines = this.minesNum,
                        t.type = 1,
                        this.OneItemHisInfo = null
                }
                this.gameMgr.onRequestBet(t)
            }
            ,
            e.prototype.OnMinesBet = function (t) {
                var e = t.data
                    , n = t.reqData;
                e.end_show ? this.onGameOver(e) : (this.gameStatus = u.GameStatus.GAME_START,
                    this.ReckonGold(-n.gold),
                    this.onEnabled(),
                    this.isAutoBet ? (this.autoBetStatus = this.autoBetStatus == u.GameStatus.GAME_END ? this.autoBetStatus : u.GameStatus.GAME_START,
                        this.autoBetStatus == u.GameStatus.GAME_START && (this.setAutoBetBtnStr(app.i18n.t("UI_Mines_Stop")),
                            this.autoBetDataInfo.runRound >= 0 && (this.autoBetDataInfo.runRound = this.autoBetDataInfo.runRound - 1,
                                this.setAutoBetBtnNumStr(this.autoBetDataInfo.runRound))),
                        this.onRequestGame(this.autoBetDataInfo.selectData)) : (this.setAutoBtnColor(2),
                            this.setBetBtnAllText(app.i18n.t("UI_Mines_cashout"), n.gold)))
            }
            ,
            e.prototype.OnMinesBetError = function (t) {
                2 == t && this.onMinesGzAnim(true),
                    this.isAutoBet && (this.setAutoBetFalse(),
                        this.onEnabled(),
                        this.autoBetStatus = u.GameStatus.DEFAULT)
            }
            ,
            e.prototype.onRequestGame = function (position) {
                // if ("object" == typeof position) {
                //     for (let index = 0; index < position.length; index++) {
                //         this.MinesNodeData[position[index] - 1].getComponent(cc.Animation).play("loadingM");
                //     }
                // }
                // else {
                //     this.MinesNodeData[position - 1].getComponent(cc.Animation).play("loadingM");
                // }
                var e;
                e = this.isAutoBet ? {
                    token: app.UserManager().GetUserInfo.token,
                    positions: position
                } : {
                    token: app.UserManager().GetUserInfo.token,
                    position: position
                },
                    this.gameMgr.onRequestGame(e)
            }
            ,
            e.prototype.OnMinesOpenPos = function (t) {
                var e = t.data
                    , n = t.senData;
                if (this.guide.active && this.onMinesGzAnim(false),
                    !this.isAutoBet) {
                    var o = this.MinesNodeData[n.position - 1];
                    o.isStatus = l.gzStatus.OPENSTATUS,
                        this.MinesTool.getMinesNodeSpr(e.type, o.children[1]),
                        this.MinesTool.onPlayAnimEndFn(o.getComponent(cc.Animation), "open", function () {
                            2 == e.type && o.getComponent(cc.Animation).play("bao")
                        }),
                        this.scaleCount++,
                        this.onOddsScaleStamp()
                }
                1 == e.is_over ? this.onGameOver(e) : this.isAutoBet ? this.btnAutoBet() : this.setBetBtnAllText("", Number(e.gold))
            }
            ,
            e.prototype.onGameOver = function (t) {
                if (t.type == 1) {
                    app.UserManager().GetUserInfo.gold = app.UserManager().GetUserInfo.gold + t.bets_gold
                }
                else if (t.type == 2) {
                    app.UserManager().GetUserInfo.gold = app.UserManager().GetUserInfo.gold - t.bet_gold
                }
                var e = this
                    , n = Number(t.gold);
                if (this.gameStatus = u.GameStatus.GAME_END,
                    this.gameEndGeZiShow(t.end_show, n > 0),
                    this.OneItemHisInfo = {
                        round_id: Number(t.round_id),
                        bet_gold: t.bet_gold,
                        bet_rate: Number(t.bets_rate),
                        create_time: t.begin_time,
                        is_win: n > 0 ? 1 : 2,
                        profit_gold: n > 0 ? t.bets_gold : "-" + t.bet_gold,
                        lnum: t.lei_num
                    },
                    n > 0 && !app.GameEventMgr().GetInBackground ? (this.awardAni.getChildByName("label").getComponent(cc.Label).string = n.toFixed(2),
                        this.scheduleOnce(function () {
                            e.OnTheWinPanelShow(1),
                                e.awardAni.getComponent(cc.Animation).play(),
                                e.setMyGold(app.UserManager().GetUserInfo.gold),
                                e.GetHistoryInfo()
                        }, this.isAutoBet ? 1 : .4),
                        this.scheduleOnce(function () {
                            e.isValid && e.OnTheWinPanelShow(0)
                        }, 3)) : (this.setMyGold(app.UserManager().GetUserInfo.gold),
                            this.GetHistoryInfo()),
                    this.isAutoBet) {
                    this.Log("Mines total win num ", this.totalWinNum);
                    var o = this.autoBetDataInfo.nextTempBet;
                    n > 0 ? (this.totalWinNum += Big(-Number(t.bet_gold)).plus(Number(n)).toNumber(),
                        o += o * (this.autoBetDataInfo.addWinNum / 100)) : (this.totalLoseNum -= o,
                            o += o * (this.autoBetDataInfo.addFailNum / 100)),
                        this.autoBetDataInfo.nextTempBet = Number(app.ScoreUtil().toFixedString(o)),
                        this.AutoNetBet(2e3)
                } else
                    this.setBetBtnAllText(app.i18n.t("UI_Mines_Bet"), 0),
                        this.scaleCount = 0,
                        this.ScaleData = [],
                        this.setAutoBtnColor(0),
                        this.scheduleOnce(function () {
                            e.onEnabled(),
                                e.gameStatus = u.GameStatus.DEFAULT
                        }, 2)
            }
            ,
            e.prototype.gameEndGeZiShow = function (t, e) {
                for (var n = (t = t.replace(/-/g, "")).split(""), o = [], i = [], a = [], s = 0; s < this.MinesNodeData.length; s++) {
                    var u = this.MinesNodeData[s];
                    if (u.isStatus != l.gzStatus.OPENSTATUS) {
                        var h = Number(n[s]);
                        u.isStatus == l.gzStatus.DEFAULT ? (u.isStatus = l.gzStatus.OPENSTATUS,
                            h += 2,
                            o.push(u)) : (i.push(u),
                                2 == h && a.push(u)),
                            u.children[1].scale = 0,
                            this.MinesTool.getMinesNodeSpr(h, u.children[1])
                    }
                }
                var r = 0
                    , c = setTimeout(function () {
                        for (var t = 0; t < i.length; t++)
                            i[t].getComponent(cc.Animation).play("open")
                    }, r);
                this.timeoutIds.push(c),
                    a.length > 0 && (r += 500,
                        c = setTimeout(function () {
                            for (var t = 0; t < a.length; t++)
                                a[t].getComponent(cc.Animation).play("bao")
                        }, r),
                        this.timeoutIds.push(c)),
                    r = !this.isAutoBet && e ? 500 : r + 1500,
                    c = setTimeout(function () {
                        for (var t = 0; t < o.length; t++)
                            o[t].getComponent(cc.Animation).play("open")
                    }, r),
                    this.timeoutIds.push(c)
            }
            ,
            e.prototype.AutoNetBet = function (t) {
                var e = this;
                t += 1e3;
                var n = setTimeout(function () {
                    e.autoBetDataInfo.nextTempBet >= app.UserManager().GetUserInfo.gold && (e.autoBetDataInfo.nextTempBet = app.UserManager().GetUserInfo.gold),
                        e.winFailGoldNumStop(),
                        e.onMinesGzStatus(e.isAutoBet),
                        e.onBetGoldNum(e.autoBetDataInfo.nextTempBet)
                }, t);
                this.timeoutIds.push(n),
                    t = this.autoBetStatus == u.GameStatus.GAME_START ? t + 1e3 : t + 100,
                    n = setTimeout(function () {
                        e.clearTimeouts(),
                            e.gameStatus = u.GameStatus.DEFAULT,
                            e.autoBetStatus == u.GameStatus.GAME_START ? e.btnAutoBet() : (e.autoBetStatus = u.GameStatus.DEFAULT,
                                e.onEnabled())
                    }, t),
                    this.timeoutIds.push(n)
            }
            ,
            e.prototype.onResetData = function () {
                this.scaleCount = 0,
                    this.ScaleData = [],
                    this.selectNodeData = [],
                    this.autoBetDataInfo.selectData = []
            }
            ,
            e.prototype.onMinesGzStatus = function (t) {
                var e = this;
                void 0 === t && (t = false);
                var n = [];
                this.MinesNodeData.forEach(function (o) {
                    var i = o;
                    n.push(o);
                    var a = 0;
                    i.isStatus == l.gzStatus.STAMPSTATUS && t ? a = 5 : (i.isStatus = l.gzStatus.DEFAULT,
                        a = 0),
                        e.MinesTool.getMinesNodeSpr(a, i.children[0])
                });
                for (var o = 0; o < n.length; o++) {
                    var i = n[o]
                        , a = i.children[0];
                    a && a.active && 1 == a.scale && !t ? (i.children[0].active = true,
                        i.children[0].scale = 1,
                        i.children[1].active = false) : i.getComponent(cc.Animation).play("close")
                }
            }
            ,
            e.prototype.setMinesNum = function (t) {
                this.minesNumLabel.getComponent(cc.Label).string = String(t),
                    this.getWebMineShow(String(t)),
                    this.minesNum = t,
                    this.selectCount = 25 - this.minesNum
            }
            ,
            e.prototype.onOddsShow = function () {
                var t = this;
                if (0 != this.oddsData.length) {
                    var e = this.betScaleNode.getComponent(cc.PageView);
                    e.removeAllPages();
                    for (var n = this.pageItem.childrenCount, o = 0, i = Math.ceil(this.oddsData.length / n), a = 0; a < i; a++) {
                        var s = cc.instantiate(this.pageItem);
                        e.addPage(s),
                            s.children.forEach(function (e) {
                                t.oddsData[o] ? (e.active = true,
                                    e.children[0].getComponent(cc.Label).string = t.oddsData[o].rate + "x",
                                    t.MinesTool.getMinesNodeCol(e, t.NodeColorList[4])) : e.active = false,
                                    o++
                            }),
                            s.active = true
                    }
                    e._updatePageView()
                }
            }
            ,
            e.prototype.onOddsScaleStamp = function () {
                if (0 == this.scaleCount)
                    return this.ScaleData[0] && this.MinesTool.getMinesNodeCol(this.ScaleData[0], this.NodeColorList[4]),
                        void (this.ScaleData = []);
                try {
                    var t = this.betScaleNode.getComponent(cc.PageView)
                        , e = t.content
                        , n = this.pageItem.childrenCount
                        , o = null
                        , i = Math.floor(this.scaleCount / n);
                    if ((i = this.scaleCount % n == 0 ? i - 1 : i) > 0 && this.scaleCount > n) {
                        var a = this.scaleCount - i * n;
                        o = e.children[i].children[a - 1]
                    } else
                        o = e.children[0].children[this.scaleCount - 1];
                    o && o.active && (this.MinesTool.getMinesNodeCol(o, this.NodeColorList[3]),
                        this.onSetScaleData(o));
                    var s = t.getPages().length
                        , u = t.getCurrentPageIndex();
                    if (s <= 1 || i > s || i == u)
                        return;
                    t.setCurrentPageIndex(i)
                } catch (l) {
                    this.ErrLog("OddsScaleStamp", l)
                }
            }
            ,
            e.prototype.onSetScaleData = function (t) {
                if (0 != this.ScaleData.length) {
                    var e = this.ScaleData[0];
                    this.MinesTool.getMinesNodeCol(e, this.NodeColorList[4]),
                        this.ScaleData[0] = t
                } else
                    this.ScaleData[0] = t
            }
            ,
            e.prototype.onResAutoSTAMP = function () {
                if (!(this.selectNodeData.length <= this.selectCount)) {
                    for (var t = this.selectNodeData.length - this.selectCount, e = 0; e < t; e++) {
                        var n = this.selectNodeData[this.selectNodeData.length - 1];
                        this.onDeselectNode(n)
                    }
                    this.autoTextChanged()
                }
            }
            ,
            e.prototype.onDeselectNode = function (t) {
                var e = t
                    , n = this.selectNodeData.indexOf(e);
                if (n > -1)
                    if (this.selectNodeData.splice(n, 1),
                        Number(e.name) == this.autoBetDataInfo.selectData[n])
                        this.autoBetDataInfo.selectData.splice(n, 1);
                    else
                        for (var o = 0; o < this.autoBetDataInfo.selectData.length; o++) {
                            var i = this.autoBetDataInfo.selectData[o];
                            Number(e.name) == i && this.autoBetDataInfo.selectData.splice(o, 1)
                        }
                this.MinesTool.getMinesNodeSpr(0, e.children[0]),
                    e.isStatus = l.gzStatus.DEFAULT,
                    this.scaleCount = this.selectNodeData.length
            }
            ,
            e.prototype.onEnabled = function () {
                var t = this.gameStatus != u.GameStatus.GAME_START && this.autoBetStatus != u.GameStatus.GAME_START;
                this.normalToggle.getComponent(cc.Toggle).interactable = !!this.isAutoBet || t,
                    this.autoToggle.getComponent(cc.Toggle).interactable = !!this.isAutoBet || t,
                    this.autoWinAddNumToggle1.getComponent(cc.Toggle).interactable = t,
                    this.autoWinAddNumToggle2.getComponent(cc.Toggle).interactable = t,
                    this.autoFailAddNumToggle1.getComponent(cc.Toggle).interactable = t,
                    this.autoFailAddNumToggle2.getComponent(cc.Toggle).interactable = t,
                    app.ComTool().H5Platform() ? t ? (this.manualBaseInput.node.parent.resumeSystemEvents(t),
                        this.autoMaxRoundInput.node.parent.resumeSystemEvents(t),
                        this.autoWinNumInput.node.parent.resumeSystemEvents(t),
                        this.autoFailNumInput.node.parent.resumeSystemEvents(t),
                        this.autoWinAddNumInput.node.parent.resumeSystemEvents(t),
                        this.autoFailAddNumInput.node.parent.resumeSystemEvents(t)) : (this.manualBaseInput.node.parent.pauseSystemEvents(true),
                            this.autoMaxRoundInput.node.parent.pauseSystemEvents(true),
                            this.autoWinNumInput.node.parent.pauseSystemEvents(true),
                            this.autoFailNumInput.node.parent.pauseSystemEvents(true),
                            this.autoWinAddNumInput.node.parent.pauseSystemEvents(true),
                            this.autoFailAddNumInput.node.parent.pauseSystemEvents(true)) : (this.manualBaseInput.getComponent(cc.EditBox).enabled = t,
                                this.autoMaxRoundInput.getComponent(cc.EditBox).enabled = t,
                                this.autoWinNumInput.getComponent(cc.EditBox).enabled = t,
                                this.autoFailNumInput.getComponent(cc.EditBox).enabled = t,
                                this.autoWinAddNumInput.getComponent(cc.EditBox).enabled = t,
                                this.autoFailAddNumInput.getComponent(cc.EditBox).enabled = t)
            }
            ,
            e.prototype.onBtnAnim = function (t) {
                this.MinesTool.onPlayBtnAnim(this.node_tip, t)
            }
            ,
            e.prototype.onMinesGzAnim = function (t) {
                this.MinesTool.onPlayBtnAnim(this.guide, t)
            }
            ,
            e.prototype.setBetBtnAllText = function (t, e) {
                t && (this.betBtn.getChildByName("node").getChildByName("label").getComponent(cc.Label).string = t),
                    this.betBtn.getChildByName("node").getChildByName("numlbl").active = e > 0,
                    this.betBtn.getChildByName("node").getChildByName("numlbl").getComponent(cc.Label).string = e.toFixed(2),
                    this.getWebGoldShow(e.toFixed(2))
            }
            ,
            e.prototype.setBetBtnColor = function (t) {
                this.MinesTool.getMinesNodeCol(this.betBtn, this.NodeColorList[t])
            }
            ,
            e.prototype.setAutoBetBtnStr = function (t) {
                this.AutoBetBtn.getChildByName("node").getChildByName("label").getComponent(cc.Label).string = t
            }
            ,
            e.prototype.setAutoBetBtnNumStr = function (t) {
                this.AutoBetBtn.getChildByName("node").getChildByName("numlbl").active = t > -2;
                var e = this.AutoBetBtn.getChildByName("node").getChildByName("numlbl").getComponent(cc.Label);
                e.string = t >= 0 ? t + "" : "\u221e",
                    e.fontSize = t >= 0 ? 24 : 50
            }
            ,
            e.prototype.setAutoBtnColor = function (t) {
                this.MinesTool.getMinesNodeCol(this.AutoBtn, this.NodeColorList[t])
            }
            ,
            e.prototype.setAutoBetFalse = function () {
                this.setAutoBetBtnStr(app.i18n.t("UI_Mines_START")),
                    this.setAutoBetBtnNumStr(-2),
                    this.totalWinNum = 0,
                    this.totalLoseNum = 0,
                    this.autoBetStatus = u.GameStatus.GAME_END
            }
            ,
            e.prototype.checkLimitBetNum = function () {
                var t = this.gameLimit;
                return this.userAllGold < t && (app.SysNotifyManager().ShowToast("Error_Define_50014", ["" + t]),
                    true)
            }
            ,
            e.prototype.winFailGoldNumStop = function () {
                this.isAutoBet && (this.autoBetDataInfo.winStop > 0 && this.totalWinNum >= this.autoBetDataInfo.winStop || this.autoBetDataInfo.failStop > 0 && this.totalLoseNum + this.autoBetDataInfo.failStop <= 0 || this.autoBetDataInfo.round > 0 && this.autoBetDataInfo.runRound <= 0 || app.UserManager().GetUserInfo.gold < this.gameLimit || app.UserManager().GetUserInfo.gold <= 0) && this.setAutoBetFalse()
            }
            ,
            e.prototype.isCheckBet = function () {
                return this.userAllGold <= 0 ? (this.GetGoldInadequate(),
                    true) : !!this.checkLimitBetNum()
            }
            ,
            e.prototype.OnKeyBoardEvent = function (t) {
                1 == t.type && this.baseBetEnd(),
                    3 != t.type && 4 != t.type || this.autoTextChanged()
            }
            ,
            e.prototype.baseBetChange = function () {
                var t = this.manualBaseInput.string;
                Number(t) >= this.userAllGold && (t = this.userAllGold.toFixed(2),
                    this.onBetGoldNum(Number(t))),
                    Number(t) >= 1 ? this.setBetBtnColor(1) : this.setBetBtnColor(0),
                    this.userAllGold <= 0 && this.GetGoldInadequate(),
                    this.setLabelTipShow(this.manualBaseInput.node.parent)
            }
            ,
            e.prototype.baseBetEnd = function () {
                if (!app.UserManager().GetIsOfficialPopup()) {
                    var t = this.manualBaseInput.string;
                    "." == t[t.length - 1] && (t = t.substring(0, t.length - 2)),
                        this.onBetGoldNum(Number(t)),
                        this.baseBetChange(),
                        this.autoTextChanged()
                }
            }
            ,
            e.prototype.onBetGoldNum = function (e, n, o) {
                if (channelID == 2) {
                    this.GameBetSizeLimit.min = 1000
                }
                void 0 === o && (o = true);
                var i = this.GameBetSizeLimit.max;
                i && e > i && (e = i,
                    o && app.SysNotifyManager().ShowToast("UI_GameBetMax", ["" + e])),
                    (!e || e < this.GameBetSizeLimit.min) && (e = this.GameBetSizeLimit.min,
                        o && app.SysNotifyManager().ShowToast("UI_GameBetMin", ["" + e]))
                this.isAutoBet && (this.autoBetDataInfo.nextTempBet = e)
                this.manualBaseInput.string = app.ScoreUtil().toFixedString(e)
                t.prototype.onBetGoldNum.call(this, e, this.manualBaseInput.node.parent)
            }
            ,
            e.prototype.autoTextChanged = function () {
                if (this.isAutoBet) {
                    this.minesNumNode.active && this.btnMinesNumHide();
                    var t = Number(this.manualBaseInput.string);
                    this.onBetGoldNum(t);
                    var e = Number(this.autoMaxRoundInput.string);
                    this.setLabelTipShow(this.autoMaxRoundInput.node.parent);
                    var n = Number(this.autoWinNumInput.string);
                    this.setLabelTipShow(this.autoWinNumInput.node.parent);
                    var o = Number(this.autoFailNumInput.string);
                    this.setLabelTipShow(this.autoFailNumInput.node.parent);
                    var i = this.autoWinAddNumToggle2.getComponent(cc.Toggle).isChecked
                    var a = this.autoFailAddNumToggle2.getComponent(cc.Toggle).isChecked
                    this.autoWinAddNumToggle1.getComponent(cc.Toggle).isChecked && (this.autoWinAddNumInput.string = "")
                    this.autoFailAddNumToggle1.getComponent(cc.Toggle).isChecked && (this.autoFailAddNumInput.string = "")
                    var s = Number(this.autoWinAddNumInput.string)
                    var u = Number(this.autoFailAddNumInput.string);
                    this.setLabelTipShow(this.autoWinAddNumInput.node.parent)
                    this.setLabelTipShow(this.autoFailAddNumInput.node.parent)
                    t >= 1 && this.userAllGold > 0 ? this.MinesTool.getMinesNodeCol(this.AutoBetBtn, this.NodeColorList[1]) : this.MinesTool.getMinesNodeCol(this.AutoBetBtn, this.NodeColorList[0]),
                        this.autoBetDataInfo = {
                            base: t,
                            round: e,
                            runRound: e,
                            winStop: n,
                            failStop: o,
                            addWinChk: i,
                            addFailChk: a,
                            addWinNum: s,
                            addFailNum: u,
                            nextTempBet: t,
                            minesNum: this.minesNum,
                            selectData: this.autoBetDataInfo.selectData
                        }
                }
            }
            ,
            e.prototype.OnTheWinPanelShow = function (t) {
                this.awardAni.getChildByName("label").opacity = 0,
                    this.awardAni.active = !!t && 1 == t;
                var e = this.GetWndComponent("ani_reward", sp.Skeleton, this.awardAni);
                e.node.active = !!t && 1 == t,
                    e.clearTracks(),
                    e.node.active && (e.node.opacity = 0,
                        e.setToSetupPose(),
                        e.setAnimation(0, "ani_reward", false))
            }
            ,
            e.prototype.GetIsClick = function () {
                return this.gameStatus == u.GameStatus.GAME_START || this.autoBetStatus == u.GameStatus.GAME_START
            }
            ,
            e.prototype.btnAddBetScalePage = function () {
                var t = this.betScaleNode.getComponent(cc.PageView)
                    , e = t.getPages().length;
                if (!(e <= 1)) {
                    var n = t.getCurrentPageIndex() + 1;
                    n = n >= e ? 0 : n,
                        t.setCurrentPageIndex(n)
                }
            }
            ,
            e.prototype.btnReduceBetScalePage = function () {
                var t = this.betScaleNode.getComponent(cc.PageView);
                if (!(t.getPages().length <= 1)) {
                    var e = t.getCurrentPageIndex() - 1;
                    e = e <= 0 ? 0 : e,
                        t.setCurrentPageIndex(e)
                }
            }
            ,
            e.prototype.btnMinesNumShow = function () {
                this.GetIsClick() || (this.onMinesShow(),
                    this.minesNumNode.active = true)
            }
            ,
            e.prototype.onMinesShow = function () {
                try {
                    var t = cc.find("scrollview_num/view/content", this.minesNumNode);
                    if (2 == t.childrenCount)
                        for (var e = 2; e < 25; e++) {
                            var n = t.children[1]
                                , o = null;
                            n && (o = cc.instantiate(n)),
                                o && (t.addChild(o),
                                    o.getChildByName("label_num").getComponent(cc.Label).string = String(e))
                        }
                } catch (i) {
                    cc.error("onMinesShow", i)
                }
            }
            ,
            e.prototype.btnSetMinesNum = function (t) {
                this.btnMinesNumHide();
                var e = t.getChildByName("label_num").getComponent(cc.Label).string;
                this.gameMgr.onRequestInfo(e)
            }
            ,
            e.prototype.btnMinesNumHide = function () {
                this.minesNumNode.active = false
            }
            ,
            e.prototype.btnInputValue = function (t) {
                if (!this.GetIsClick()) {
                    var e = Number(this.manualBaseInput.string);
                    (e *= Number(t)) >= this.userAllGold && (e = this.userAllGold),
                        this.onBetGoldNum(e),
                        this.baseBetEnd()
                }
            }
            ,
            e.prototype.btnQuickSelectionMines = function (t) {
                if (!this.GetIsClick()) {
                    var e = Number(t);
                    this.minesNumLabel.getComponent(cc.Label).string = String(e),
                        this.gameMgr.onRequestInfo(e)
                }
            }
            ,
            e.prototype.getWebGoldShow = function (t) {
                this.gold_H && (this.gold_H.getComponent(cc.Label).string = t)
            }
            ,
            e.prototype.getWebMineShow = function (t) {
                this.MinesNum_H && (this.MinesNum_H.getComponent(cc.Label).string = t)
            }
            ,
            e.prototype.onToggle = function (t) {
                if (this.gameStatus != u.GameStatus.GAME_START || this.isAutoBet) {
                    this.normalToggle.getComponent(cc.Toggle).interactable = "toggle2" == t.name,
                        this.autoToggle.getComponent(cc.Toggle).interactable = "toggle1" == t.name;
                    var e = "toggle1" == t.name;
                    this.isAutoBet && this.setAutoBetFalse(),
                        this.gameStatus != u.GameStatus.GAME_END && this.gameResetUI(),
                        this.onBtnShowView(e),
                        this.autoTextChanged(),
                        this.baseBetChange()
                }
            }
            ,
            e.prototype.onBtnShowView = function (t) {
                this.betBtn.active = t,
                    this.AutoBtn.active = t,
                    this.AutoBetBtn.active = !t,
                    this.panelAuto.active = !t,
                    this.isAutoBet = !t,
                    this.gameStatus = this.gameStatus != u.GameStatus.DEFAULT ? this.gameStatus : u.GameStatus.DEFAULT,
                    this.autoBetStatus = u.GameStatus.DEFAULT
            }
            ,
            e.prototype.onOpenHelp = function () {
                app.FormManager().ShowForm(o.UINameDefine.UIGameHelp, {
                    bundle: i.BundleNames.MINES
                })
            }
            ,
            e.prototype.clearTimeouts = function () {
                this.unscheduleAllCallbacks();
                for (var t = 0; t < this.timeoutIds.length; t++)
                    clearTimeout(this.timeoutIds[t]);
                this.timeoutIds = []
            }
            ,
            e.prototype.OnClose = function () {
                this.awardAni.getComponent(cc.Animation).stop(),
                    this.clearTimeouts(),
                    t.prototype.OnClose.call(this)
            }
            ,
            __decorate([p({
                type: [cc.String],
                tooltip: "0:\u57fa\u7840\u7070\u8272 1.\u4e0b\u6ce8\u6309\u94ae 2.\u81ea\u52a8\u9009\u62e9\u683c\u5b50 3.\u8d54\u7387\u8282\u70b9\u4eae 4\u8d54\u7387\u8282\u70b9\u6697"
            })], e.prototype, "NodeColorList", void 0),
            __decorate([c], e)
    }(a.GameBaseForm);
n.default = m,
    module.exports = n
