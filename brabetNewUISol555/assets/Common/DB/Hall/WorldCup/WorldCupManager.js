let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.WorldCupManager = undefined;
var o = require("../../../Base/Singleton")
  , i = require("../../../Define/GameEventDefine")
  , a = require("../../../Define/HttpServerDefine")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ticketsCount = 0,
        t.pic_host = "",
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "WorldCupManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WordCup_Config, this.onGetWorldCupActiveInfo, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WordCup_HisTory, this.onGetWorldCupHisTory, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WordCup_Tickets, this.onGetWorldCupTickets, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.REQ_WC_COUNTRYRANKING, this.onGetRankingList, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WordCup_AwardResult, this.onGetAwardResult, this)
    }
    ,
    t.prototype.setIconSpr = function(e, t) {
        var n = this.pic_host + t;
        app.ImageUtil().LoadImage(e.node, n)
    }
    ,
    Object.defineProperty(t.prototype, "GetTicketCount", {
        get: function() {
            return this.ticketsCount
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.SetTicketCount = function(e) {
        this.ticketsCount = e
    }
    ,
    t.prototype.RequestWorldCupActiveInfo = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WordCup_Config, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onGetWorldCupActiveInfo = function(e) {
        this.WorldCupActiveInfo = e,
        this.teamList = e.football_list,
        this.pic_host = e.pic_host,
        this.SetTicketCount(e.ticket_all),
        this.RequestWorldCupActiveHistory(1),
        app.Client.OnEvent(i.GameEventDefine.WorldCup_Active_Info)
    }
    ,
    Object.defineProperty(t.prototype, "GetWorldCupInfo", {
        get: function() {
            return this.WorldCupActiveInfo
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GteTeamList", {
        get: function() {
            return this.teamList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.onGetWorldCupHisTory = function(e) {
        this.WorldCupHistory = e,
        app.Client.OnEvent(i.GameEventDefine.WorldCup_Active_History)
    }
    ,
    Object.defineProperty(t.prototype, "GetWorldCupHistory", {
        get: function() {
            return this.WorldCupHistory.records
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestWorldCupActiveHistory = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WordCup_HisTory, {
            token: app.UserManager().GetUserInfo.token,
            limit: e
        })
    }
    ,
    t.prototype.onGetWorldCupTickets = function(e) {
        this.SetTicketCount(Number(this.ticketsCount) + Number(e.send_number)),
        app.Client.OnEvent(i.GameEventDefine.WorldCup_Receive_Tickets, e)
    }
    ,
    t.prototype.RequestWorldCupActiveTickets = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WordCup_Tickets, {
            token: app.UserManager().GetUserInfo.token,
            type_id: e
        })
    }
    ,
    t.prototype.RequestCountryRanking = function(e) {
        var t = {
            token: app.UserManager().GetUserInfo.token,
            bet_first: e[0],
            bet_second: e[1],
            bet_third: e[2]
        };
        app.HttpServerManager().SendHttpPack(a.HttpAPI.REQ_WC_COUNTRYRANKING, t)
    }
    ,
    t.prototype.onGetRankingList = function(e) {
        app.SysNotifyManager().ShowToast("UI_WorldCup_success"),
        app.Client.OnEvent(i.GameEventDefine.GetRankingList, e),
        this.SetTicketCount(this.ticketsCount - 1),
        app.Client.OnEvent(i.GameEventDefine.WorldCup_Update_Tickets, e.records)
    }
    ,
    t.prototype.onGetFootballDataById = function(e) {
        for (var t = 0; t < this.teamList.length; t++) {
            var n = this.teamList[t];
            if (n.id == e)
                return n
        }
        return null
    }
    ,
    t.prototype.onGetAwardResult = function(e, t) {
        this.WorldCupAwardResult = e,
        this.pic_host = e.pic_host_url,
        this.teamList = e.football_list,
        app.Client.OnEvent(i.GameEventDefine.WorldCup_AwardResult, t.page)
    }
    ,
    Object.defineProperty(t.prototype, "GetAwardResult", {
        get: function() {
            return this.WorldCupAwardResult
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestAwardResult = function(e, t) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WordCup_AwardResult, {
            token: app.UserManager().GetUserInfo.token,
            page: e,
            is_result: t
        })
    }
    ,
    t
}(o.Singleton);
n.WorldCupManager = r,
module.exports = n
