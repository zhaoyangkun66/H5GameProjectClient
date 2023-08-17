let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Net/BaseDefine")
  , i = function() {
    function e() {
        this.HallId = -1,
        this.CreateTime = 0,
        this.RoomBasicMode = -1,
        this.RoomMode = 0,
        this.LineID = "",
        this.State = 0,
        this.GameState = 0,
        this.MaxMemberCount = 0,
        this.MemberCount = 0,
        this.BankerId = 0,
        this.NextActionLeftSecond = 0,
        this.HallConfig = {},
        this.MemberInfo = [],
        this.prepareCompeteInfoFlag = false,
        this.MemberInfoMap = new Map,
        this.memberBetResultMap = new Map,
        this.memberBetGoldMap = new Map,
        this.isEndGame = false,
        this.isReConne = false,
        this.chipNums = [1, 10, 50, 100, 500, 1e3],
        this.curBetButtonIndex = 0,
        this.betNums = [],
        this.betPlayers = [],
        this.myBetNums = [],
        this.competeInfos = [],
        this.dealerBetResult = [],
        this.myBetResult = [],
        this.gameInfo = {
            BankerID: 0,
            PlayerNum: {},
            PlayerInfo: [],
            RoomID: 0,
            GameMode: 0
        },
        this.myBetChipCount = 0,
        this.myBetChipGold = []
    }
    return e.prototype.Init = function(e) {
        for (var t in e)
            e.hasOwnProperty(t) && (this.gameInfo[t] = e[t])
    }
    ,
    e.prototype.InitHallInfo = function(e) {
        var t = this;
        for (var n in e)
            e.hasOwnProperty(n) && (this[n] = e[n]);
        this.MemberInfo && this.MemberInfo.length > 0 && (this.MemberInfoMap.clear(),
        this.MemberInfo.forEach(function(e) {
            t.MemberInfoMap.set(e.Uin, e)
        })),
        this.sortByCoinDesc()
    }
    ,
    e.prototype.sortByCoinDesc = function() {
        this.MemberInfo = this.MemberInfo.sort(function(e, t) {
            return t.Cash - e.Cash
        })
    }
    ,
    e.prototype.isBetState = function() {
        return this.GameState == o.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_BET
    }
    ,
    e.prototype.InitFromRoomModel = function() {}
    ,
    e.prototype.GetRoomID = function() {
        return this.gameInfo.RoomID
    }
    ,
    e.prototype.GetRoomMode = function() {
        return this.gameInfo.GameMode
    }
    ,
    e.prototype.GetPlayers = function() {
        return this.MemberInfo
    }
    ,
    e.prototype.GetPlayer = function(e) {
        return this.MemberInfoMap.get(e)
    }
    ,
    e.prototype.deletePlayer = function(e) {
        var t = this;
        this.MemberInfoMap.delete(e),
        this.MemberInfo.forEach(function(n, o) {
            n.Uin != e || t.MemberInfo.splice(o, 1)
        })
    }
    ,
    e.prototype.GetGameState = function() {
        return this.GameState
    }
    ,
    e.prototype.SetGameState = function() {
        this.GameState
    }
    ,
    e.prototype.gameReset = function() {
        for (var e = 0; e < this.betNums.length; e++)
            this.betNums[e] = 0;
        this.betPlayers = [];
        for (var t = 0; t < this.myBetNums.length; t++)
            this.myBetNums[t] = 0;
        this.competeInfos = [],
        this.memberBetResultMap.clear(),
        this.memberBetGoldMap.clear(),
        this.MemberInfo.forEach(function(e) {
            if (e.BetInfo.BetGold)
                for (var t = 0; t < e.BetInfo.BetGold.length; t++)
                    e.BetInfo.BetGold[t] = 0;
            else
                e.BetInfo.BetGold = [];
            if (e.BetInfo.BetResult)
                for (var n = 0; n < e.BetInfo.BetResult.length; n++)
                    e.BetInfo.BetResult[n] = 0;
            else
                e.BetInfo.BetResult = []
        }),
        this.BankerId = 0
    }
    ,
    e.prototype.dissolveToChip = function(e) {
        for (var t = [], n = this.chipNums.length - 1; n > -1; n--)
            t.push(0);
        for (n = this.chipNums.length - 1; n > -1; n--) {
            var o = Math.floor(e / this.chipNums[n]);
            if (t[n] = o,
            0 == (e -= o * this.chipNums[n]) || e < 0)
                return t
        }
        return t
    }
    ,
    e.prototype.getMyTotalBet = function() {
        var e = 0;
        return this.myBetNums.forEach(function(t) {
            t && (e = Big(t).plus(e).toNumber())
        }),
        e
    }
    ,
    e.prototype.SetMyBetChipCount = function(e) {
        this.myBetChipCount = e
    }
    ,
    e.prototype.SetMyBetChipGold = function(e) {
        this.myBetChipGold = e || []
    }
    ,
    Object.defineProperty(e.prototype, "GetMyBetChipGold", {
        get: function() {
            return this.myBetChipGold
        },
        enumerable: false,
        configurable: true
    }),
    e.prototype.ResetMyBetChipGold = function() {
        this.SetMyBetChipCount(0),
        this.SetMyBetChipGold(null)
    }
    ,
    e
}();
n.default = i,
module.exports = n
