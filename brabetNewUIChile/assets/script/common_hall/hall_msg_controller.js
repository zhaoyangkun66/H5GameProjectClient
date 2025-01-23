let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Define/GameEventDefine")
    , i = require("../../Common/Net/BaseDefine")
    , a = require("../common/room_mode_tool")
    , r = require("../../Common/Net/MsgEventDefine")
    , s = function () {
        function e(e, t) {
            this.view = null,
                this.tableModel = null,
                this.view = e,
                this.tableModel = t
        }
        return e.prototype.init = function () {
            cc.mg.global.setGameMsgController(this),
                this.register_events()
        }
            ,
            e.prototype.Destroy = function () {
                cc.mg.global.setGameMsgController(null),
                    this.unregister_events()
            }
            ,
            e.prototype.register_events = function () {
                cc.systemEvent.on("Hall_" + r.default.RSP_HALL_INFO, this.resp_hall_info, this),
                    cc.systemEvent.on("Hall_" + r.default.EVENT_GAME_MESSAGE, this.resp_gamemessage, this),
                    cc.systemEvent.on("Hall_" + r.default.HALL_END_ROUND, this.resp_hall_end_round, this),
                    cc.systemEvent.on("Hall_" + r.default.HALL_NOTIFY, this.resp_hall_notify, this)
            }
            ,
            e.prototype.unregister_events = function () {
                cc.systemEvent.off("Hall_" + r.default.EVENT_GAME_MESSAGE, this.resp_gamemessage, this),
                    cc.systemEvent.off("Hall_" + r.default.RSP_HALL_INFO, this.resp_hall_info, this),
                    cc.systemEvent.off("Hall_" + r.default.HALL_END_ROUND, this.resp_hall_end_round, this),
                    cc.systemEvent.off("Hall_" + r.default.HALL_NOTIFY, this.resp_hall_notify, this)
            }
            ,
            e.prototype.resp_hall_notify = function (e) {
                console.log("resp_hall_notify", e)
                if (e.HallId == this.tableModel.HallId)
                    if (2 == e.Type) {
                        var t = e.Data.JoinMember
                            , n = this.tableModel.GetPlayer(t.Uin);
                        n ? n = t : (this.tableModel.MemberInfoMap.set(t.Uin, t),
                            this.tableModel.MemberInfo.push(t))
                    } else if (3 == e.Type) {
                        var o = e.Data.NotifyInfo.Uin;
                        this.tableModel.deletePlayer(o)
                    }
            }
            ,
            e.prototype.resp_hall_end_round = function (e) {
                console.log("resp_hall_end_round", e)
                var t = e.EndInfo
                    , n = e.NextStartTime
                    , o = e.BeginTime;
                this.tableModel.ResetMyBetChipGold(),
                    o != this.lastTime && (cc.log("resp_hall_end_round\u7ed3\u7b97"),
                        this.lastTime = o,
                        this.tableModel.NextActionLeftSecond = n,
                        this.tableModel.GameState = i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_END,
                        this.tableModel.gameInfo = t,
                        this.updateUsersCoin(e.HallPlayerBetInfo),
                        this.view.gameEnd(e))
            }
            ,
            e.prototype.updateUsersCoin = function (e) {
                var t = this
                    , n = this;
                this.tableModel.gameBetResult = [],
                    e && e.forEach(function (e) {
                        var o = 0;
                        n.tableModel.memberBetResultMap.set(e.PlayerID, e.BetResult),
                            n.tableModel.memberBetGoldMap.set(e.PlayerID, e.BetGold),
                            e.PlayerID != t.tableModel.BankerId && e.BetResult[0] > 0 && t.tableModel.gameBetResult.push(e);
                        var i = e.BetGold;
                        i && i.length > 0 && (i.shift(),
                            i.forEach(function (e) {
                                o += e
                            }));
                        var a = e.BetResult
                            , r = t.tableModel.GetPlayer(e.PlayerID);
                        r && (r.Cash += o + a[0])
                    }),
                    this.tableModel.sortByCoinDesc(),
                    this.tableModel.gameBetResult.sort(function (e, t) {
                        return t.BetResult[0] - e.BetResult[0]
                    })
            }
            ,
            e.prototype.enterCompete = function () {
                if (this.tableModel.waitNextRound = false,
                    this.view.showWaitNextRound(false),
                    this.view.gameResetUI(),
                    this.view.gameCompete(),
                    this.view.setGameStateDesc(app.i18n.t("HallGame_Compete_State")),
                    this.view.disableBetBtn(),
                    this.tableModel.prepareCompeteInfoFlag) {
                    var e = this.tableModel.GetPlayer(app.UserManager().GetUserInfo.uid);
                    e.Cash >= this.tableModel.HallConfig.MinCompeteGold && app.GameServerManager().send(app.GameServerManager().req_key_map.CompeteBanker.key, {
                        CompeteGold: Math.floor(e.Cash)
                    })
                }
            }
            ,
            e.prototype.enterBet = function () {
                this.tableModel.waitNextRound = false,
                    this.view.showWaitNextRound(false),
                    this.view.setGameStateDesc(app.i18n.t("HallGame_Bet_State"));
                var e = this.tableModel.BankerId
                    , t = this.tableModel.GetPlayer(e);
                t && (e == app.UserManager().GetUserInfo.uid ? this.view.setDealerName(app.UserManager().GetUserInfo.nickname) : this.view.setDealerName(t.Nickname),
                    this.view.setDealerCoin(t.BetInfo.CompeteGold),
                    this.view.setDealerHead(t.Imageurl)),
                    this.initBetNums(),
                    this.view.gameBet(),
                    this.view.showStartBetState(),
                    this.view.enableBetBtn()
            }
            ,
            e.prototype.enterGameEnd = function () {
                this.view.setGameStateDesc(app.i18n.t("HallGame_End_State")),
                    this.view.disableBetBtn(),
                    this.view.waitNextRound(),
                    this.view.showEndBetState()
            }
            ,
            e.prototype.resp_hall_info = function (e) {
                console.log("resp_hall_info", e)
                var t = e.Eno;
                0 !== t && app.SysNotifyManager().ShowToast("ERROR ", t);
                var n = e.HallInfo;
                this.tableModel.InitHallInfo(n),
                    this.tableModel.SetMyBetChipCount(e.PlayerChipCount),
                    this.tableModel.SetMyBetChipGold(e.PlayerChipGold),
                    this.tableModel.gameInfo.RoomID = this.tableModel.HallId;
                var o = this.tableModel.GetPlayer(app.UserManager().GetUserInfo.uid);
                switch (this.view.setMyName(app.UserManager().GetUserInfo.nickname),
                this.view.setMyScore(o.Cash),
                this.view.setCurrentUserHead(app.UserManager().GetUserInfo.headimg),
                this.view.resHallInfo(e.HallInfo),
                this.tableModel.GameState) {
                    case i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_COMPETE_BANKER:
                        this.tableModel.waitNextRound = false,
                            this.enterCompete();
                        break;
                    case i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_BET:
                        0 == this.tableModel.BankerId && (this.tableModel.BankerId = this.tableModel.BankerID),
                            this.tableModel.waitNextRound = false,
                            this.enterBet(),
                            this.addChipsToChipPool();
                        break;
                    case i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_PREDEAL:
                        0 == this.tableModel.BankerId && (this.tableModel.BankerId = this.tableModel.BankerID),
                            this.tableModel.waitNextRound = true,
                            this.view.showWaitNextRound(true),
                            this.enterGameEnd();
                        break;
                    case i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_END:
                        this.tableModel.waitNextRound = true,
                            this.view.showWaitNextRound(true),
                            this.view.fetchHistory(),
                            this.enterGameEnd()
                }
                app.RoomManager().isDouble ? this.view.resRouletteInfo(e.HallInfo) : this.view.setCountDownTime(this.tableModel.NextActionLeftSecond)
            }
            ,
            e.prototype.initBetNums = function () {
                var e = this;
                this.tableModel.MemberInfo && this.tableModel.MemberInfo.forEach(function (t) {
                    t.BetInfo && t.BetInfo.BetGold && t.BetInfo.BetGold.forEach(function (n, o) {
                        var i = t.Uin;
                        if (o > 0) {
                            var a = o - 1;
                            null != e.tableModel.betNums[a] || (e.tableModel.betNums[a] = 0),
                                e.tableModel.betNums[a] = Big(n).plus(e.tableModel.betNums[a]).toNumber(),
                                i == app.UserManager().GetUserInfo.uid && (null != e.tableModel.myBetNums[a] || (e.tableModel.myBetNums[a] = 0),
                                    e.tableModel.myBetNums[a] = Big(n).plus(e.tableModel.myBetNums[a]).toNumber()),
                                n > 0 && (e.tableModel.betPlayers[a] || (e.tableModel.betPlayers[a] = []),
                                    e.tableModel.betPlayers[a].InArray(i) || e.tableModel.betPlayers[a].push(i))
                        }
                    })
                }),
                    this.view.setPlayerBetInfo(this.tableModel.betNums),
                    this.view.setMyBetInfo(this.tableModel.myBetNums)
            }
            ,
            e.prototype.addChipsToChipPool = function () {
                var e = this.tableModel.betNums
                    , t = this;
                e.forEach(function (e, n) {
                    if (e > 0)
                        for (var o = t.tableModel.dissolveToChip(Math.abs(e)), i = 0; i < o.length; i++)
                            for (var a = o[i], r = 0; r < a; r++) {
                                var s = t.tableModel.chipNums[i];
                                t.view.addChipToChipPool(n, s)
                            }
                })
            }
            ,
            e.prototype.resp_gamemessage = function (e) {
                console.log("resp_gamemessage", e)
                switch (e.Head.Cmd) {
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_CHANGE_BANKER:
                        this.view.gameResetUI();
                        var t = e.Body.ChangeBanker.NewBankerID
                            , n = e.Body.ChangeBanker.BankerGold
                            , r = e.Body.ChangeBanker.BetLeftSecond;
                        this.tableModel.GameState = i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_BET,
                            this.tableModel.NextActionLeftSecond = r,
                            this.tableModel.gameInfo.BankerID = t,
                            this.tableModel.BankerId = t;
                        var s = this.tableModel.GetPlayer(t);
                        s && (s.BetInfo.CompeteGold = n),
                            app.RoomManager().isDouble ? this.view.startAddBet(e) : (this.enterBet(),
                                this.view.setCountDownTime(this.tableModel.NextActionLeftSecond));
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_START_COMPETE:
                        cc.error("\u5f00\u59cb\u62a2\u5e84"),
                            this.tableModel.GameState = i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_COMPETE_BANKER,
                            this.tableModel.NextActionLeftSecond = e.Body.StartCompete.CompeteLeftSecond,
                            this.enterCompete(),
                            this.view.setCountDownTime(this.tableModel.NextActionLeftSecond);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_COMPETE_BANKER:
                        var c = e.Head.Uin
                            , l = e.Body.CompeteBanker.CompeteGold;
                        if (e.Body.CompeteBanker.Compete > 0) {
                            var p = {};
                            p.uid = c;
                            var d = this.tableModel.GetPlayer(c);
                            if (!d)
                                return;
                            p.Nickname = d.Nickname,
                                p.CompeteGold = l,
                                p.head = d.Imageurl;
                            for (var h = false, u = 0; u < this.tableModel.competeInfos.length; u++)
                                this.tableModel.competeInfos[u].uid == c && (h = true);
                            h || this.tableModel.competeInfos.push(p),
                                c == app.UserManager().GetUserInfo.uid && app.SysNotifyManager().ShowToast("Has been grabbed")
                        }
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_BET:
                        var _ = e.Head.Uin
                            , m = e.Body.Bet.BetSeat
                            , f = e.Body.Bet.BetGold
                            , g = this.tableModel.GetPlayer(_);
                        if (null == g)
                            cc.error("\u672a\u627e\u5230uid\uff1a" + _);
                        else {
                            g.BetInfo.BetGold || (g.BetInfo.BetGold = []),
                                g.BetInfo.BetGold[m] || (g.BetInfo.BetGold[m] = 0),
                                g.BetInfo.BetGold[m] += f;
                            var y = m - 1
                                , v = this.tableModel.betNums[y] ? this.tableModel.betNums[y] : 0;
                            if (this.tableModel.betNums[y] = Big(f).plus(v).toNumber(),
                                _ == app.UserManager().GetUserInfo.uid) {
                                var C = this.tableModel.myBetNums[y] ? this.tableModel.myBetNums[y] : 0;
                                this.tableModel.myBetNums[y] = Big(f).plus(C).toNumber();
                                var I = this.tableModel.GetPlayer(_);
                                I && f && (I.Cash = Big(-f).plus(Number(I.Cash)).toNumber(),
                                    I.Cash < 0 && (I.Cash = 0,
                                        cc.error("error player.Cash:" + I.Cash, "error BetGold:" + f)),
                                    this.view.setMyScore(I.Cash),
                                    this.view.betSuccess && this.view.betSuccess(e.Body.Bet),
                                    this.tableModel.SetMyBetChipCount(this.tableModel.myBetChipCount++))
                            }
                            this.tableModel.betPlayers[y] || (this.tableModel.betPlayers[y] = []),
                                this.tableModel.betPlayers[y].InArray(_) || this.tableModel.betPlayers[y].push(_),
                                this.view.setPlayerBetInfo(this.tableModel.betNums),
                                this.view.setMyBetInfo(this.tableModel.myBetNums),
                                f > 0 && this.view.setPlayerBetCount(_, y, f)
                        }
                        if (app.RoomManager().isDouble && f) {
                            e.Head.Nickname = g ? g.Nickname : e.Body.Bet.Nickname;
                            var E = Math.round(11 * Math.random() + 1);
                            return e.Head.Imageurl = g ? g.Imageurl : "0" + E,
                                void this.view.currHistory(e)
                        }
                        var S = e.Body.Bet;
                        S.Nickname = g ? g.Nickname : e.Body.Bet.Nickname,
                            app.Client.OnEvent(o.GameEventDefine.GAME_HISTORY_LIST, S);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_PRE_DEAL:
                        this.view && this.view.preDealUpRocket(e);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_START_GAME:
                        this.action_pre_deal(e),
                            this.view && this.view.playUpRocket(e);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_FAIL:
                        a.RoomModeTool.isCrash(app.UserManager().UserInfo.roomMode) && 50001 == e.Body.ActionFail.ErrorCode && (e.Body.ActionFail.ErrorCode = 528e3),
                            this.action_fail(e);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_ACTION_DUMMY_PLAY:
                        this.view && this.view.otherBoomGame(e);
                        break;
                    case i.COMMONGAME_MSG.COMMONGAME_SUSPEND_COUNTDOWN:
                        this.view.gameStop && this.view.gameStop()
                }
            }
            ,
            e.prototype.reconn_game = function () { }
            ,
            e.prototype.action_pre_deal = function (e) {
                this.tableModel.GameState = i.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_PREDEAL;
                var t = 0;
                e.Body.PreDeal && (t = e.Body.PreDeal.DealSecond),
                    this.enterGameEnd(),
                    this.view.setCountDownTime(this.tableModel.HallConfig.SettlementSecond + t),
                    this.view && this.view.preDeal && this.view.preDeal(t)
            }
            ,
            e.prototype.action_fail = function (e) {
                var t = e.Body.ActionFail.ErrorCode;
                if (50100 != t) {
                    var n = app.i18n.t("Error_Define_" + t);
                    if (n && !this.isToast) {
                        n = n.replace("{S1}", e.Body.ActionFail.Data),
                            app.SysNotifyManager().ShowToast(n),
                            this.isToast = true;
                        var o = this;
                        setTimeout(function () {
                            o.isToast = false
                        }, 400)
                    }
                }
            }
            ,
            e.prototype.questHallInfo = function () {
                app.GameServerManager().send(app.GameServerManager().req_key_map.req_hall_info.key, {
                    hall_id: this.tableModel.gameInfo.RoomID
                })
            }
            ,
            e
    }();
n.default = s,
    module.exports = n
