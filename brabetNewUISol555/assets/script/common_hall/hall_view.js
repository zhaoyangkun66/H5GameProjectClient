let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Define/GameEventDefine")
    , i = require("../common_hall/hall_msg_controller")
    , a = require("../common_hall/hall_model")
    , r = require("../common_hall/hall_controller")
    , s = require("./GameBaseForm")
    , c = require("../common_room/room_controller")
    , l = require("../common_room/room_model")
    , p = require("../common_room/roommsg_controller")
    , d = require("./dispatch")
    , h = require("../../Common/Net/BaseDefine")
    , u = cc._decorator
    , _ = u.ccclass
    , m = u.property
    , f = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.coinAnimations = [],
                t.nodeTime = null,
                t.nodeGameDesc = null,
                t.nodeTotalBet = null,
                t.nodeMyScore = null,
                t.nodeMyName = null,
                t.nodeDealerName = null,
                t.nodeDealerCoin = null,
                t.nodeBetBtns = [],
                t.nodeDealer = null,
                t.nodeMy = null,
                t.nodeBetBtnAnims = [],
                t.nodePlayersChip = [],
                t.nodePlayersBetNums = [],
                t.nodeMyBetNums = [],
                t.nodeTopPlayers = [],
                t.setting_prefab = null,
                t.apply_deal_content = null,
                t.win_lose_content = null,
                t.nodeOtherPlayers = null,
                t.nodeApplyBtn = null,
                t.nodeHelpBtn = null,
                t.nodeExitBtn = null,
                t.nodeSettingBtn = null,
                t.nodeHistoryBtn = null,
                t.nodePayBtn = null,
                t.nodeCurRound = null,
                t.nodeRoomNumb = null,
                t.coinPrefab = null,
                t.nodeBetState = null,
                t.chipSprites = [],
                t.nodeWaitNextRound = null,
                t
        }
        return __extends(t, e),
            t.prototype.initController = function () {
                this.roomModel = new l.default,
                    cc.mg.global.setRoomModel(this.roomModel),
                    this.tableModel = new a.default,
                    cc.mg.global.setTableModel(this.tableModel),
                    this.roomController = new c.default(this, this.roomModel, this.tableModel),
                    this.roomController.init(),
                    this.roomMsgController = new p.default(this, this.roomModel, this.tableModel),
                    this.roomMsgController.init(),
                    this.hallController = new r.default(this, this.tableModel),
                    this.hallController.init(),
                    this.hallMsgController = new i.default(this, this.tableModel),
                    this.hallMsgController.init()
            }
            ,
            t.prototype.destroyController = function () {
                cc.mg.global.setRoomModel(null),
                    cc.mg.global.setTableModel(null),
                    this.roomController.destroy(),
                    this.roomMsgController.destroy(),
                    this.hallController.Destroy(),
                    this.hallMsgController.Destroy()
            }
            ,
            t.prototype.onLoad = function () {
                this._resetHallScene = false,
                    this.Log("common view onLoad"),
                    this.addComponent(d.default),
                    this.coinPrefab && this.addComponent("chip_pool").initPool(this.coinPrefab, 500),
                    this.RegEvent(o.GameEventDefine.ROOM_BET_GOLD_CONFIGS, this.updateChipNums),
                    cc.systemEvent.on(o.GameEventDefine.RESET_HALL_SCENE, this.resetHallScene.bind(this), this),
                    cc.systemEvent.on(o.GameEventDefine.GAME_EVENT_SHOW, this.resumeHallScene.bind(this), this),
                    this.RegEvent(o.GameEventDefine.UPDATE_USER_INFO, this.updateMyScore),
                    this.timeoutIds = [],
                    cc.sys.isNative && jsb.Device.setKeepScreenOn(true)
            }
            ,
            t.prototype.OnClose = function () {
                this.undo = true,
                    cc.systemEvent.targetOff(this),
                    this.destroyController(),
                    this.unRegisterCommonBtnEvent(),
                    this.unRegisterBetBtnEvent(),
                    this.clearAllTimeout(),
                    e.prototype.OnClose.call(this),
                    this.hallController.leaveRoom()
            }
            ,
            t.prototype.OnShow = function () {
                for (var t = [], n = 0; n < arguments.length; n++)
                    t[n] = arguments[n];
                e.prototype.OnShow.call(this, t),
                    this.initController(),
                    this.updateChipNums(),
                    this.hallController.setRoomID(app.UserManager().GetUserInfo.room_no),
                    this.registerCommonBtnEvent(),
                    this.registerBetBtnEvent(),
                    app.Client.OnEvent(o.GameEventDefine.SET_VISIBLE_BOTTOM, true),
                    app.HallMessageCenter().sceneStandBy(),
                    this.OnFreeRoomShowNode([this.nodeExitBtn])
            }
            ,
            t.prototype.setCountDownTime = function (e) {
                if (this.nodeTime) {
                    this.nodeTime.getComponent(cc.Label).unscheduleAllCallbacks(),
                        this.scheduleCB && this.nodeTime.getComponent(cc.Label).unschedule(this.scheduleCB),
                        e < 0 && (e = 0),
                        this.nodeTime.getComponent(cc.Label).string = e;
                    var t = this
                        , n = function () {
                            t.hallController.countDown(e),
                                --e > -1 && (t.nodeTime.getComponent(cc.Label).string = e,
                                    0 == e && t.nodeTime.getComponent(cc.Label).unschedule(this))
                        };
                    this.scheduleCB = n,
                        this.nodeTime.getComponent(cc.Label).schedule(n, 1)
                }
            }
            ,
            t.prototype.showStartBetState = function () {
                var e = this;
                this.nodeWaitNextRound && this.nodeWaitNextRound.active || (this._resetHallScene ? this._resetHallScene = false : this.nodeBetState && (this.nodeBetState.active = true,
                    this.nodeBetState.opacity = 255,
                    this.nodeBetState.children[0].active = true,
                    this.nodeBetState.children[1].active = false,
                    this.nodeBetState.getComponent(cc.Animation).play(),
                    this.setTimeout(function () {
                        e.undo || e.HideNodeBetState()
                    }, 1e3)))
            }
            ,
            t.prototype.showEndBetState = function () {
                var e = this;
                this.nodeWaitNextRound && this.nodeWaitNextRound.active || this.nodeBetState && (this.nodeBetState.active = true,
                    this.nodeBetState.opacity = 255,
                    this.nodeBetState.children[1].active = true,
                    this.nodeBetState.children[0].active = false,
                    this.setTimeout(function () {
                        e.undo || e.HideNodeBetState()
                    }, 500))
            }
            ,
            t.prototype.HideNodeBetState = function () {
                this.nodeBetState && (this.nodeBetState.active = false,
                    this.nodeBetState.children[1].active = false,
                    this.nodeBetState.children[0].active = false)
            }
            ,
            t.prototype.playUpRocket = function () { }
            ,
            t.prototype.otherBoomGame = function () { }
            ,
            t.prototype.baodiantyScore = function () { }
            ,
            t.prototype.preDealUpRocket = function () { }
            ,
            t.prototype.setGameStateDesc = function (e) {
                this.nodeGameDesc && (this.nodeGameDesc.getComponent(cc.Label).string = e)
            }
            ,
            t.prototype.setTotalBet = function (e) {
                this.nodeTotalBet && (this.nodeTotalBet.getComponent(cc.Label).string = e + "")
            }
            ,
            t.prototype.setMyName = function (e) {
                this.nodeMyName && (this.nodeMyName.getComponent(cc.Label).string = e)
            }
            ,
            t.prototype.setMyScore = function (e) {
                cc.error("score:" + e),
                    this.nodeMyScore && (this.nodeMyScore.getComponent(cc.Label).string = app.ScoreUtil().formatScore22(e),
                        this.nodeMyScore.getComponent(cc.Label).gold = e)
            }
            ,
            t.prototype.setUserHead = function (e, t) {
                e ? app.ImageUtil().LoadHead(cc.find("face_bg/mask/face_bg", e), t) : cc.log("设置头像错误")
            }
            ,
            t.prototype.setDealerHead = function (e) {
                this.nodeDealer && this.setUserHead(this.nodeDealer, e)
            }
            ,
            t.prototype.setCurrentUserHead = function (e) {
                e && this.setUserHead(this.nodeMy, e)
            }
            ,
            t.prototype.setDealerName = function (e) {
                this.nodeDealerName && (this.nodeDealerName.getComponent(cc.Label).string = e)
            }
            ,
            t.prototype.setDealerCoin = function (e) {
                cc.log("setDealerCoin:" + e),
                    this.nodeDealerCoin && (this.nodeDealerCoin.getComponent(cc.Label).string = e + "")
            }
            ,
            t.prototype.setPlayerBetInfo = function (e) {
                if (e && this.nodePlayersBetNums) {
                    if (!(e instanceof Array))
                        return void cc.error("arrayBetInfo 参数错误");
                    this.nodePlayersBetNums.forEach(function (t, n) {
                        t.getComponent(cc.RichText) && (t.getComponent(cc.RichText).string = e[n] ? e[n] + "" : "0"),
                            t.getComponent(cc.Label) && (t.getComponent(cc.Label).string = e[n] ? e[n] + "" : "0"),
                            t.active = true
                    })
                }
                var t = 0;
                e.forEach(function (e) {
                    t += e
                }),
                    this.setTotalBet(t)
            }
            ,
            t.prototype.setMyBetInfo = function (e) {
                if (e && this.nodeMyBetNums) {
                    if (!(e instanceof Array))
                        return void cc.error("arrayMyBetInfo \u53c2\u6570\u9519\u8bef");
                    this.nodeMyBetNums.forEach(function (t, n) {
                        t.getComponent(cc.RichText) && (t.getComponent(cc.RichText).string = e[n] ? e[n] + "" : "0"),
                            t.getComponent(cc.Label) && (t.getComponent(cc.Label).string = e[n] ? e[n] + "" : "0"),
                            t.active = true
                    })
                }
            }
            ,
            t.prototype.registerCommonBtnEvent = function () {
                this.nodeApplyBtn && this.nodeApplyBtn.on("touchend", this.onApplyDealBtnClick.bind(this), this),
                    this.nodeHelpBtn && this.nodeHelpBtn.on("touchend", this.onHelpBtnClick.bind(this), this),
                    this.nodeSettingBtn && this.nodeSettingBtn.on("touchend", this.onSettingBtnClick.bind(this), this),
                    this.nodePayBtn && this.nodePayBtn.on("touchend", this.onPayBtnClick.bind(this), this),
                    this.nodeHistoryBtn && this.nodeHistoryBtn.on("touchend", this.onHistoryBtnClick.bind(this), this)
            }
            ,
            t.prototype.unRegisterCommonBtnEvent = function () {
                this.nodeApplyBtn && this.nodeApplyBtn.off("touchend", this.onApplyDealBtnClick, this),
                    this.nodeHelpBtn && this.nodeHelpBtn.off("touchend", this.onHelpBtnClick, this),
                    this.nodeSettingBtn && this.nodeSettingBtn.off("touchend", this.onSettingBtnClick, this),
                    this.nodePayBtn && this.nodePayBtn.off("touchend", this.onPayBtnClick, this),
                    this.nodeHistoryBtn && this.nodeHistoryBtn.off("touchend", this.onHistoryBtnClick, this)
            }
            ,
            t.prototype.registerBetBtnEvent = function () {
                this.nodeBetBtns && this.nodeBetBtns.length > 0 && this.hallController.registerBetBtnEvent(this.nodeBetBtns),
                    this.nodePlayersChip && this.nodePlayersChip.length > 0 && this.hallController.registerChipEvent(this.nodePlayersChip)
            }
            ,
            t.prototype.unRegisterBetBtnEvent = function () {
                this.nodeBetBtns && this.nodeBetBtns.length > 0 && this.hallController.unRegisterBetBtnEvent(this.nodeBetBtns),
                    this.nodePlayersChip && this.nodePlayersChip.length > 0 && this.hallController.unRegisterChipEvent(this.nodePlayersChip)
            }
            ,
            t.prototype.onApplyDealBtnClick = function () {
                app.ComUtil().playBoxOpenSound();
                var e = this.tableModel.GetPlayer(app.UserManager().GetUserInfo.uid);
                if (e && e.Cash < this.tableModel.HallConfig.MinCompeteGold)
                    app.SysNotifyManager().ShowToast("\u91d1\u5e01\u4e0d\u8db3" + this.tableModel.HallConfig.MinCompeteGold + ", \u65e0\u6cd5\u4e0a\u5e84");
                else if (this.apply_deal_content.active = true,
                    this.tableModel.prepareCompeteInfoFlag ? (cc.find("btn_cancel", this.apply_deal_content).active = true,
                        cc.find("btn_apply", this.apply_deal_content).active = false) : (cc.find("btn_cancel", this.apply_deal_content).active = false,
                            cc.find("btn_apply", this.apply_deal_content).active = true),
                    e) {
                    cc.find("text_bg/coin", this.apply_deal_content).getComponent(cc.Label).string = app.ScoreUtil().formatScore22(e.Cash);
                    var t = cc.find("Canvas/layer/shangzhuang/general19/general6/scrollview/view/content");
                    t.children.forEach(function (e) {
                        e.active = false
                    }),
                        this.tableModel.competeInfos.sort(function (e, t) {
                            return t.CompeteGold - e.CompeteGold
                        }),
                        this.tableModel.competeInfos.forEach(function (e, n) {
                            if (t.children[n]) {
                                var o = t.children[n];
                                o.active = true,
                                    e.uid == app.UserManager().GetUserInfo.uid ? cc.find("nicheng", o).getComponent(cc.Label).string = app.UserManager().GetUserInfo.nickname : cc.find("nicheng", o).getComponent(cc.Label).string = e.Nickname,
                                    cc.find("coin", o).getComponent(cc.Label).string = app.ScoreUtil().formatScore22(e.CompeteGold),
                                    app.ImageUtil().LoadHead(cc.find("face_bg/mask/face_bg", o), e.head)
                            }
                        })
                }
            }
            ,
            t.prototype.onHelpBtnClick = function () { }
            ,
            t.prototype.onSettingBtnClick = function () {
                app.ComUtil().playBoxOpenSound();
                var e = cc.instantiate(this.setting_prefab);
                this.node.addChild(e)
            }
            ,
            t.prototype.onExitBtnClick = function () {
                this.time || (this.time = 0),
                    Math.ceil((new Date).getTime()) - this.time > 500 && (this.time = Math.ceil((new Date).getTime()),
                        app.SoundManager().PlaySound("BtnLeave"),
                        this.hallController.leaveRoom())
            }
            ,
            t.prototype.onLeaveRoom = function () {
                this.getComponent(d.default).stopDispatch()
            }
            ,
            t.prototype.onPayBtnClick = function () { }
            ,
            t.prototype.onHistoryBtnClick = function () {
                this.win_lose_content.active = true,
                    this.win_lose_content.getComponent("hundred_cow_history") && this.win_lose_content.getComponent("hundred_cow_history").refreshUI()
            }
            ,
            t.prototype.playBetButtonAnimation = function (e) {
                if (this.nodeBetBtns[e]) {
                    var t = this.nodeBetBtns[e].getComponent(cc.Button);
                    t && t.interactable && (app.ComUtil().playBtnClick(),
                        this.tableModel.curBetButtonIndex = e,
                        this.nodeBetBtnAnims.forEach(function (t, n) {
                            e == n ? (t.active = true,
                                t.getComponent(cc.Animation).play()) : (t.active = false,
                                    t.getComponent(cc.Animation).stop())
                        }))
                }
            }
            ,
            t.prototype.addChip = function (e, t, n, o, i, a) {
                if (e && t && this.coinPrefab) {
                    var r = e.getComponent(cc.Animation);
                    r && r.play(),
                        a || app.SoundManager().PlaySound("GetGold");
                    var s = e.convertToWorldSpaceAR(new cc.Vec2(0, 0))
                        , c = t.convertToNodeSpaceAR(s)
                        , l = this.getComponent("chip_pool").createChip()
                        , p = this.getChipIndex(n);
                    l.mytag = n,
                        l.scale = 1.6,
                        l.getComponent(cc.Sprite).spriteFrame = this.chipSprites[p],
                        l.setPosition(c),
                        t.addChild(l);
                    var d = new cc.Vec2(2 * (Math.random() - .5) * (t.width - 30) / 2, 2 * (Math.random() - .5) * (t.height - 30) / 2);
                    i || (i = .25);
                    var h = cc.moveTo(i, d)
                        , u = cc.scaleTo(i, 2)
                        , _ = cc.scaleTo(i, 1.6);
                    o ? l.runAction(cc.sequence(cc.spawn(h, u), _, cc.callFunc(o))) : l.runAction(cc.sequence(cc.spawn(h, u), _))
                }
            }
            ,
            t.prototype.updateTopPlayerCoin = function (e, t) {
                if (e && e.gold) {
                    var n = cc.find("coin", e);
                    n && (n.getComponent(cc.Label).string = app.ScoreUtil().formatScore22(t))
                }
            }
            ,
            t.prototype.dealCard = function (e, t, n, o) {
                if (e && t) {
                    app.SoundManager().PlaySound("DealCard"),
                        t.getComponent(cc.Sprite).spriteFrame = n;
                    var i = e.convertToWorldSpaceAR(new cc.Vec2(0, 0))
                        , a = t.parent.convertToNodeSpaceAR(i)
                        , r = t.position;
                    t.setPosition(a),
                        t.parent.active = true;
                    var s = cc.moveTo(.5, r);
                    o ? t.runAction(cc.sequence(s, cc.callFunc(o))) : t.runAction(s)
                }
            }
            ,
            t.prototype.gameResetUI = function () {
                this.nodePlayersBetNums && this.nodePlayersBetNums.forEach(function (e) {
                    e.getComponent(cc.RichText) && (e.getComponent(cc.RichText).string = "0"),
                        e.getComponent(cc.Label) && (e.getComponent(cc.Label).string = "0")
                }),
                    this.nodePlayersChip && this.nodePlayersChip.forEach(function (e) {
                        e.removeAllChildren()
                    }),
                    this.nodeMyBetNums && this.nodeMyBetNums.forEach(function (e) {
                        e.getComponent(cc.RichText) && (e.getComponent(cc.RichText).string = "0"),
                            e.getComponent(cc.Label) && (e.getComponent(cc.Label).string = "0")
                    }),
                    this.nodeTotalBet && (this.nodeTotalBet.getComponent(cc.Label).string = "0"),
                    this.nodeDealerName && (this.nodeDealerName.getComponent(cc.Label).string = "抢庄中...."),
                    this.nodeDealerCoin && (this.nodeDealerCoin.getComponent(cc.Label).string = "0"),
                    this.disableBetBtn(),
                    this.tableModel && this.tableModel.gameReset(),
                    this.hideResultScore()
            }
            ,
            t.prototype.disableBetBtn = function () {
                this.nodeBetBtnAnims && this.nodeBetBtnAnims.forEach(function (e) {
                    e.active = false,
                        e.getComponent(cc.Animation).stop()
                }),
                    this.nodeBetBtns && this.nodeBetBtns.forEach(function (e) {
                        var t = e.getComponent(cc.Button);
                        t && (t.interactable = false),
                            e.color = cc.Color.WHITE.fromHEX("#505050")
                    })
            }
            ,
            t.prototype.enableBetBtn = function () {
                var e = this;
                if (this.tableModel.isBetState() && this.nodeBetBtns && this.nodeMyScore) {
                    var t = this.tableModel.HallConfig.BetMulti;
                    t || (t = 1);
                    var n = this.nodeMyScore.getComponent(cc.Label).gold / t
                        , o = 0;
                    this.nodeBetBtns.forEach(function (t, i) {
                        var a = t.getComponent(cc.Button);
                        n >= e.tableModel.chipNums[i] || 0 == i ? (t.color = cc.Color.WHITE,
                            a && (a.interactable = true),
                            o = i) : (t.color = cc.Color.WHITE.fromHEX("#505050"),
                                a && (a.interactable = false))
                    }),
                        this.tableModel.curBetButtonIndex > o && (this.tableModel.curBetButtonIndex = o),
                        this.playBetButtonAnimation(this.tableModel.curBetButtonIndex)
                }
            }
            ,
            t.prototype.setPlayerBetCount = function (e, t, n) {
                if (e == app.UserManager().GetUserInfo.uid) {
                    var o = this.tableModel.curBetButtonIndex;
                    o > -1 && this.addChip(this.nodeBetBtns[o], this.nodePlayersChip[t], n),
                        this.enableBetBtn()
                } else
                    this.getComponent(d.default).push(this.addChip.bind(this, this.nodeOtherPlayers, this.nodePlayersChip[t], n), t)
            }
            ,
            t.prototype.moveChipToDealer = function (e) {
                var t = cc.find("face_bg/mask/face_bg", this.nodeDealer);
                this.moveChipPoolToNode(t, e)
            }
            ,
            t.prototype.moveChipPoolToNode = function (e, t) {
                var n = this.nodePlayersChip[t]
                    , o = this;
                n.children.length > 0 && app.SoundManager().PlaySound("GetGold"),
                    n.children.forEach(function (t) {
                        t.used || o.moveChipToNode(e, t)
                    })
            }
            ,
            t.prototype.moveChipToNode = function (e, t) {
                if (e) {
                    var n = e.convertToWorldSpaceAR(new cc.Vec2(0, 0))
                        , o = t.parent.convertToNodeSpaceAR(n)
                        , i = this;
                    t.runAction(cc.sequence(cc.moveTo(.5, o), cc.callFunc(function () {
                        t.active = false,
                            i.getComponent("chip_pool").recycleChip(t)
                    })))
                }
            }
            ,
            t.prototype.moveChipToPoolFromDealer = function (e, t) {
                var n = this.nodePlayersChip[e];
                this.addChip(this.nodeDealerCoin, n, t, null, .5, true)
            }
            ,
            t.prototype.addChipToChipPool = function (e, t) {
                if (this.getComponent("chip_pool")) {
                    var n = this.nodePlayersChip[e];
                    if (n) {
                        var o = this.getComponent("chip_pool").createChip()
                            , i = this.getChipIndex(t);
                        o.mytag = t,
                            o.getComponent(cc.Sprite).spriteFrame = this.chipSprites[i],
                            n.addChild(o);
                        var a = new cc.Vec2(2 * (Math.random() - .5) * (n.width - 30) / 2, 2 * (Math.random() - .5) * (n.height - 30) / 2);
                        o.setPosition(a)
                    }
                }
            }
            ,
            t.prototype.getChipIndex = function (e) {
                for (var t = 0; t < this.tableModel.chipNums.length; t++)
                    if (this.tableModel.chipNums[t] == e)
                        return t;
                return this.ErrLog("getChipIndex failed: " + e + "}"),
                    0
            }
            ,
            t.prototype.findChipMaxIndex = function (e) {
                for (var t = this.tableModel.chipNums, n = t.length - 1; n >= 0; n--)
                    if (e >= t[n])
                        return n;
                return this.ErrLog("findChipMaxIndex failed: " + e + "}"),
                    0
            }
            ,
            t.prototype.gameCompete = function () {
                this.nodePlayersChip.forEach(function (e) {
                    e.removeAllChildren()
                })
            }
            ,
            t.prototype.gameBet = function () {
                this.clearAllTimeout(),
                    this.getComponent(d.default).startDispatch()
            }
            ,
            t.prototype.gameEnd = function () {
                this.getComponent(d.default).stopDispatch()
            }
            ,
            t.prototype.playCurUserWinChipAnimation = function (e, t) {
                var n = cc.find("face_bg/mask/face_bg", this.nodeMy);
                this.playNormalUserWinChipAnimation(n, e, t)
            }
            ,
            t.prototype.playSeatUserWinChipAnimation = function (e, t, n) {
                var o = this.nodeTopPlayers[e];
                (o = cc.find("face_bg/mask/face_bg", o)) && this.playNormalUserWinChipAnimation(o, t, n)
            }
            ,
            t.prototype.playSSZWinChipAnimation = function (e, t, n) {
                var o = cc.find("face_bg/mask/face_bg", e);
                o && this.playNormalUserWinChipAnimation(o, t, n)
            }
            ,
            t.prototype.playOtherUserWinChipAnimation = function () {
                var e = this;
                this.nodePlayersChip.forEach(function (t, n) {
                    e.moveChipPoolToNode(e.nodeOtherPlayers, n)
                })
            }
            ,
            t.prototype.playNormalUserWinChipAnimation = function (e, t, n) {
                var o = this;
                t && this.nodePlayersChip.forEach(function (i, a) {
                    var r = t[a] + n[a];
                    if (r > 0) {
                        i.children.length > 0 && app.SoundManager().PlaySound("GetGold");
                        for (var s = 0; s < i.children.length; s++) {
                            var c = i.children[s];
                            if (c.active && !c.used && (r -= c.mytag,
                                c.used = true,
                                o.moveChipToNode(e, c)),
                                r < 0)
                                return
                        }
                    }
                })
            }
            ,
            t.prototype.showWaitNextRound = function (e) {
                this.nodeWaitNextRound && (this.nodeWaitNextRound.active = e,
                    e && this.nodeWaitNextRound.getComponent(cc.Animation).play())
            }
            ,
            t.prototype.startAddBet = function () {
                this.getComponent(d.default).startDispatch()
            }
            ,
            t.prototype.resRouletteInfo = function () {
                this.getComponent(d.default).startDispatch()
            }
            ,
            t.prototype.waitNextRound = function () { }
            ,
            t.prototype.fetchHistory = function () { }
            ,
            t.prototype.showBetResultAnimation = function (e, t) {
                t > 0 && e && cc.find("+", e) ? (cc.find("+", e).active = true,
                    cc.find("+", e).getComponent(cc.Animation).play(),
                    cc.find("+/win/+font", e).getComponent(cc.Label).string = "+" + t) : t < 0 && e && cc.find("-", e) && (cc.find("-", e).active = true,
                        cc.find("-", e).getComponent(cc.Animation).play(),
                        cc.find("-/lose/+font", e).getComponent(cc.Label).string = "" + t)
            }
            ,
            t.prototype.hideResultScore = function () {
                var e = cc.find("+", this.nodeMy);
                e && (e.active = false),
                    (e = cc.find("-", this.nodeMy)) && (e.active = false)
            }
            ,
            t.prototype.playCountDownAnim = function () {
                this.nodeTime.parent && this.nodeTime.parent.getComponent(cc.Animation) && this.nodeTime.parent.getComponent(cc.Animation).play("time")
            }
            ,
            t.prototype.stopCountDownAnim = function () {
                cc.isValid(this.nodeTime, true) && this.nodeTime.parent && this.nodeTime.parent.getComponent(cc.Animation) && this.nodeTime.parent.getComponent(cc.Animation).stop("time")
            }
            ,
            t.prototype.setTimeout = function (e, t) {
                var n = t / 1e3;
                this.scheduleOnce(e, n)
            }
            ,
            t.prototype.clearAllTimeout = function () {
                this.unscheduleAllCallbacks()
            }
            ,
            t.prototype.addChipToPool = function (e, t, n) {
                for (var o = this.tableModel.dissolveToChip(Math.abs(e)), i = 0; i < o.length; i++)
                    for (var a = o[i], r = 0; r < a; r++) {
                        var s = this.tableModel.chipNums[i];
                        this.getComponent(d.default).push(this.addChip.bind(this, t, this.nodePlayersChip[n], s), n)
                    }
            }
            ,
            t.prototype.resetHallScene = function () {
                this.ErrLog("resetHallScene"),
                    this._resetHallScene = true,
                    this.tableModel.gameReset(),
                    this.gameResetUI()
            }
            ,
            t.prototype.resumeHallScene = function () {
                this.ErrLog("resumeHallScene")
            }
            ,
            t.prototype.updateChipNums = function () {
                var e = app.HGameManager().GetRoomBetGoldConfigs(app.UserManager().GetUserInfo.roomMode);
                e ? this.OnRoomBetGoldConfig(e) : app.HGameManager().RequestRoomBetGoldConfigs()
            }
            ,
            t.prototype.OnRoomBetGoldConfig = function (e) {
                var t = e;
                t && t.length > 0 && (this.tableModel.chipNums = t,
                    this.nodeBetBtns && (this.nodeBetBtns.forEach(function (e, n) {
                        var o = e.children[0].getComponent(cc.Label);
                        o && t[n] && (o.string = app.ScoreUtil().FormatK(t[n]))
                    }),
                        this.enableBetBtn()),
                    app.Client.OnEvent(o.GameEventDefine.GAME_ROOMBETGOLDCONFIG))
            }
            ,
            t.prototype.getOnLineUserInfo = function (e, t) {
                for (var n = {
                    room_no: app.UserManager().GetUserInfo.room_no,
                    type: t,
                    userids: ""
                }, o = 0; o < this.tableModel.MemberInfo.length; o++) {
                    var i = this.tableModel.MemberInfo[o];
                    i.Uin != this.tableModel.HallId && (n.userids += i.Uin + ",")
                }
                app.HttpServerManager().SendHttpPack(e, n)
            }
            ,
            t.prototype.getNewOnLineUserInfo = function (e) {
                for (var t = {
                    room_no: app.UserManager().GetUserInfo.room_no,
                    userids: ""
                }, n = 0; n < this.tableModel.MemberInfo.length; n++) {
                    var o = this.tableModel.MemberInfo[n];
                    o.Uin != this.tableModel.HallId && (t.userids += o.Uin + ",")
                }
                app.HttpServerManager().SendHttpPack(e, t)
            }
            ,
            t.prototype.findCloseNum = function (e, t) {
                for (var n = 0, o = Number.MAX_VALUE, i = 0; i < e.length; i++) {
                    var a = Math.abs(e[i] - t);
                    if (a <= o) {
                        if (a === o && e[i] < e[n])
                            continue;
                        n = i,
                            o = a
                    }
                }
                return n
            }
            ,
            t.prototype.updateMyScore = function () {
                if (this.tableModel) {
                    var e = this.tableModel.GetPlayer(app.UserManager().GetUserInfo.uid);
                    if (!e)
                        return void this.ErrLog("updateMyScore error 0");
                    e.Cash = app.UserManager().UserInfo.gold,
                        this.tableModel.GameState != h.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_END && this.setMyScore(e.Cash)
                } else
                    this.ErrLog("updateMyScore error")
            }
            ,
            __decorate([m([cc.Node])], t.prototype, "coinAnimations", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeTime", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeGameDesc", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeTotalBet", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeMyScore", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeMyName", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeDealerName", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeDealerCoin", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodeBetBtns", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeDealer", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeMy", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodeBetBtnAnims", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodePlayersChip", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodePlayersBetNums", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodeMyBetNums", undefined),
            __decorate([m([cc.Node])], t.prototype, "nodeTopPlayers", undefined),
            __decorate([m(cc.Prefab)], t.prototype, "setting_prefab", undefined),
            __decorate([m(cc.Node)], t.prototype, "apply_deal_content", undefined),
            __decorate([m(cc.Node)], t.prototype, "win_lose_content", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeOtherPlayers", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeApplyBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeHelpBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeExitBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeSettingBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeHistoryBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodePayBtn", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeCurRound", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeRoomNumb", undefined),
            __decorate([m(cc.Prefab)], t.prototype, "coinPrefab", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeBetState", undefined),
            __decorate([m([cc.SpriteFrame])], t.prototype, "chipSprites", undefined),
            __decorate([m(cc.Node)], t.prototype, "nodeWaitNextRound", undefined),
            __decorate([_], t)
    }(s.GameBaseForm);
n.default = f,
    module.exports = n
