let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Net/BaseDefine")
  , i = function() {
    function e(e, t) {
        this.view = null,
        this.model = null,
        this.view = e,
        this.model = t
    }
    return e.prototype.init = function() {
        cc.mg.global.setTableController(this),
        this.register_events()
    }
    ,
    e.prototype.countDown = function(e) {
        var t = this;
        this.model.GameState == o.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_BET && e < 5 && e > 1 ? (app.SoundManager().PlaySound("TimeWarning"),
        this.view.playCountDownAnim(),
        2 == e && setTimeout(function() {
            t.view.stopCountDownAnim()
        }, 1e3)) : this.view.stopCountDownAnim()
    }
    ,
    e.prototype.updateUserCoin = function(e, t) {
        var n = this.model.GetPlayer(e);
        n && (n.Cash += t)
    }
    ,
    e.prototype.refreshMyCoinUI = function() {
        var e = this.model.GetPlayer(app.UserManager().GetUserInfo.uid);
        e && this.view.setMyScore(e.Cash)
    }
    ,
    e.prototype.Destroy = function() {
        cc.mg.global.setTableController(null),
        this.unregister_events()
    }
    ,
    e.prototype.registerBetBtnEvent = function(e) {
        var t = this;
        e.forEach(function(e, n) {
            e.on("touchend", t.betBtnClick.bind(t, n), t.view),
            e.gold = t.model.chipNums[n]
        })
    }
    ,
    e.prototype.betBtnClick = function(e) {
        this.model.isBetState() && this.view.playBetButtonAnimation(e)
    }
    ,
    e.prototype.unRegisterBetBtnEvent = function(e) {
        var t = this;
        e.forEach(function(e) {
            e.off("touchend", t.betBtnClick, t.view)
        })
    }
    ,
    e.prototype.registerChipEvent = function(e) {
        var t = this;
        e.forEach(function(e, n) {
            e.on("touchend", t.userBet.bind(t, n), t.view)
        })
    }
    ,
    e.prototype.unRegisterChipEvent = function(e) {
        var t = this;
        e.forEach(function(e) {
            e.off("touchend", t.userBet, t.view)
        })
    }
    ,
    e.prototype.setDealerBetResult = function(e) {
        this.model.dealerBetResult = e
    }
    ,
    e.prototype.setMyBetResult = function(e) {
        this.model.myBetResult = e
    }
    ,
    e.prototype.getUserByCoinDescExceptDealer = function(e) {
        var t = []
          , n = this;
        return this.model.MemberInfo.forEach(function(o) {
            if (e <= 0)
                return t;
            o.Uin != n.model.BankerId && o.Uin != n.model.HallId && o.Uin != n.model.ssz_id && (t.push(o),
            e--)
        }),
        t
    }
    ,
    e.prototype.userBet = function(e) {
        if (!app.UserManager().GetIsOfficialPopup())
            if (this.model.myBetChipCount >= 257)
                app.SysNotifyManager().ShowToast("Sys_BetCount");
            else if (e++,
            this.model.isBetState()) {
                var t = this.model.curBetButtonIndex;
                if (t < 0)
                    app.SysNotifyManager().ShowToast("HallGame_Tip_2");
                else {
                    var n = this.model.chipNums[t]
                      , o = this.model.GetPlayer(app.UserManager().GetUserInfo.uid);
                    if (o) {
                        if (o.Cash < n)
                            return void app.SysNotifyManager().ShowToast("HallGame_Tip_7");
                        this.bet(e, n)
                    }
                }
            }
    }
    ,
    e.prototype.leaveRoom = function() {
        var e = this.model.HallId;
        e ? app.GameServerManager().send(app.GameServerManager().req_key_map.req_leave_hall.key, {
            hall_id: e
        }) : cc.error("leaveRoom \u623f\u95f4\u53f7\u9519\u8bef")
    }
    ,
    e.prototype.onLeaveRoom = function(e) {
        this.model.HallId == e.HallId && (0 === e.Eno ? this.view.onLeaveRoom() : app.SysNotifyManager().ShowToast("HallGame_Tip_1"))
    }
    ,
    e.prototype.playDealerWinOrLoseAnimation = function(e) {
        var t = this.model.memberBetResultMap.get(this.model.BankerId);
        if (t) {
            for (var n = this, o = t.shift(), i = 0; i < t.length; i++)
                t[i] > 0 && n.view.moveChipToDealer(i);
            setTimeout(function() {
                n.view.undo || n.playDealerLoseAnimation(t, e, o)
            }, 900)
        }
    }
    ,
    e.prototype.playDealerLoseAnimation = function(e, t, n) {
        var o = this;
        e.forEach(function(e, t) {
            if (e < 0) {
                app.SoundManager().PlaySound("GetGold");
                for (var n = o.model.dissolveToChip(Math.abs(e)), i = 0; i < n.length; i++)
                    for (var a = n[i], r = 0; r < a; r++) {
                        var s = o.model.chipNums[i];
                        o.view.moveChipToPoolFromDealer(t, s)
                    }
            }
        }),
        setTimeout(function() {
            o.view.undo || (o.playUserWinChipAnimation(t, n),
            o.refreshMyCoinUI())
        }, 1500)
    }
    ,
    e.prototype.setRoomID = function(e) {
        this.model.gameInfo.RoomID = e
    }
    ,
    e.prototype.playUserWinChipAnimation = function(e, t) {
        var n = this.model.memberBetResultMap.get(app.UserManager().GetUserInfo.uid)
          , o = this.model.memberBetGoldMap.get(app.UserManager().GetUserInfo.uid)
          , i = this;
        if (n) {
            var a = this.model.BankerId == app.UserManager().GetUserInfo.uid ? t : n.shift();
            0 !== a && (cc.log("\u5f53\u524d\u7528\u6237\u8f93\u8d62:" + n),
            this.view.playCurUserWinChipAnimation(n, o),
            setTimeout(function() {
                i.view.undo || i.view.showBetResultAnimation(i.view.nodeMy, a)
            }, 1e3))
        }
        if (e && e.length > 0 && e.forEach(function(e, t) {
            if (e.Uin != app.UserManager().GetUserInfo.uid) {
                var n = i.model.memberBetResultMap.get(e.Uin);
                if (n) {
                    var a = n.shift();
                    i.view.playSeatUserWinChipAnimation(t, n, o),
                    setTimeout(function() {
                        i.view.undo || i.view.showBetResultAnimation(i.view.nodeTopPlayers[t], a)
                    }, 1e3)
                }
            } else {
                var r = i.model.memberBetResultMap.get(app.UserManager().GetUserInfo.uid);
                i.view.showBetResultAnimation(i.view.nodeMy, r)
            }
        }),
        setTimeout(function() {
            i.view.undo || i.view.showBetResultAnimation(i.view.nodeDealer, t)
        }, 1e3),
        i.model.ssz_id != app.UserManager().GetUserInfo.uid) {
            var r = i.model.memberBetResultMap.get(i.model.ssz_id)
              , s = i.model.memberBetGoldMap.get(i.model.ssz_id);
            if (r && 1 == i.view.shenSuanZi.active) {
                var c = r.shift();
                0 !== c && (i.view.playSSZWinChipAnimation(i.view.shenSuanZi, r, s),
                setTimeout(function() {
                    i.view.undo || i.view.shenSuanZi && i.view.showBetResultAnimation(i.view.shenSuanZi, c)
                }, 800))
            }
        }
        this.view.playOtherUserWinChipAnimation()
    }
    ,
    e.prototype.register_events = function() {
        cc.systemEvent.on("Hall_RspLeaveHall", this.onLeaveRoom, this)
    }
    ,
    e.prototype.unregister_events = function() {
        cc.systemEvent.off("Hall_RspLeaveHall", this.onLeaveRoom, this)
    }
    ,
    e.prototype.bet = function(e, t) {
        app.GameServerManager().send(app.GameServerManager().req_key_map.Bet.key, {
            BetSeat: e,
            BetGold: t,
            BetPlayerID: app.UserManager().GetUserInfo.uid
        })
    }
    ,
    e.prototype.applyDeal = function() {
        if (this.model.GameState == o.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_COMPETE_BANKER) {
            var e = this.model.GetPlayer(app.UserManager().GetUserInfo.uid);
            app.GameServerManager().send(app.GameServerManager().req_key_map.CompeteBanker.key, {
                CompeteGold: e.Cash
            })
        }
        this.model.prepareCompeteInfoFlag = true
    }
    ,
    e.prototype.cancelDeal = function() {
        this.model.GameState == o.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_COMPETE_BANKER && app.GameServerManager().send(app.GameServerManager().req_key_map.CompeteBanker.key, {
            CompeteGold: 0
        }),
        this.model.prepareCompeteInfoFlag = false
    }
    ,
    e
}();
n.default = i,
module.exports = n
