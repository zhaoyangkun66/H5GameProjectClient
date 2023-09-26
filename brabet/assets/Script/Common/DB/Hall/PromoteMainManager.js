let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.PromoteMainManager = n.StorePayType = undefined;
var o = require("../../Model/D_PromoteMember")
    , i = require("../../Base/Singleton")
    , a = require("../../Define/GameEventDefine")
    , r = require("../../Define/HttpServerDefine");
(function (e) {
    e[e.GooglePay = 7] = "GooglePay"
}
)(n.StorePayType || (n.StorePayType = {}));
var s = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ShareDataResult = null,
            t.CollectCashResult = null,
            t.SpreadWayInfoResult = null,
            t.BonuesRecordResult = null,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "PromoteMainManager",
                this.Log("Init"),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_SPREAD_AWARD, this.onShareAward, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_SPREAD_WAY, this.onSharedata, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_COLLECTCASH, this.onCollectCash, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_SPREADWAYINFO, this.onSpreadWayInfo, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_AGENTBONUSRECORDS, this.onBonusRecords, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_DIRECTDETAILLIST, this.onDirectdetailList, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_TEAMTOTAL, this.OnTeamTotal, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_AGENTCASHTRANSFER, this.OnAgentCashTransfer, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_COMMISSIONDESCLIST, this.OnAgentCommissionDesList, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_AGENTREPORT, this.OnAgentReportt, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_AGENTDIRECTUSER, this.OnAgentDirectuser, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_SPREADSTATISTICS, this.OnSpreadStatistics, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_DAYSPREADSTATISTICS, this.OnDaySpreadStatistics, this)
        }
        ,
        t.prototype.ReqShareData = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_SPREAD_WAY, e)
        }
        ,
        t.prototype.onSharedata = function (e) {
            this.ShareDataResult = e,
                app.Client.OnEvent(a.GameEventDefine.GET_SPREAD_WAY, e)
        }
        ,
        t.prototype.onShareAward = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_SHAREAWARD, e)
        }
        ,
        t.prototype.RequstShareAward = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                id: e
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_SPREAD_AWARD, t)
        }
        ,
        t.prototype.onCollectCash = function (e) {
            this.CollectCashResult = e,
                app.Client.OnEvent(a.GameEventDefine.GET_COLLECTCASH, e)
        }
        ,
        t.prototype.RequstSpreadWayInfo = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_SPREADWAYINFO, e)
        }
        ,
        t.prototype.RequestBonusRecords = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                limit: e.limit,
                page: e.page,
                type: e.types || 0
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_AGENTBONUSRECORDS, t)
        }
        ,
        t.prototype.onBonusRecords = function (e) {
            if (isgoServer) {
                if (e.lists.data == null) {
                    e.lists.data = []
                }
            }

            this.BonuesRecordResult = e;
            var t = [{
                types: 0,
                title: app.i18n.t("UI.MakeMoney_4_Promotion_19")
            }];
            for (var n in this.BonuesRecordResult.types)
                if (Object.prototype.hasOwnProperty.call(this.BonuesRecordResult.types, n)) {
                    var o = this.BonuesRecordResult.types[n];
                    t.push({
                        types: n,
                        title: o
                    })
                }
            this.BonuesRecordResult.disposetypeList = t,
                app.Client.OnEvent(a.GameEventDefine.GET_AGENTBONUSRECORDS, e)
        }
        ,
        t.prototype.onSpreadWayInfo = function (e) {
            this.SpreadWayInfoResult = e,
                app.Client.OnEvent(a.GameEventDefine.GET_SPREADWAYINFO, e)
        }
        ,
        t.prototype.RequstDirectdetailList = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                start_time: e.start_time,
                end_time: e.end_time,
                nickname: e.nickname,
                page: e.page,
                level: e.level,
                count: 10
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_DIRECTDETAILLIST, t)
        }
        ,
        t.prototype.onDirectdetailList = function (e, t) {
            if (isgoServer) {
                if (e == null) {
                    e = []
                }
            }
            o.default.ins.dtailList = e,
                e && e.length > 0 ? o.default.ins.addAllDtailList(e, t) : o.default.ins.infoData(),
                app.Client.OnEvent(a.GameEventDefine.GET_DIRECTDETAILLIST)
        }
        ,
        t.prototype.RequestTeamTotal = function () {
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_TEAMTOTAL, {
                token: app.UserManager().GetUserInfo.token
            })
        }
        ,
        t.prototype.OnTeamTotal = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_TEAMTOTAL, e)
        }
        ,
        t.prototype.RequstCollectCash = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_COLLECTCASH, e)
        }
        ,
        t.prototype.ReqAgentCashTransfer = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_AGENTCASHTRANSFER, e)
        }
        ,
        t.prototype.OnAgentCashTransfer = function (e) {
            this.Log(e),
                app.GoldRewardManager().FormGoldReward({
                    gold: this.GetShareData.agent_commission,
                    source: app.i18n.t("UI_Code_Bonus")
                }),
                this.GetShareData.agent_commission = 0,
                app.Client.OnEvent(a.GameEventDefine.UPDATE_COMMISSIONDESC)
        }
        ,
        t.prototype.ReqAgentCommissionDesList = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_COMMISSIONDESCLIST, e)
        }
        ,
        t.prototype.OnAgentCommissionDesList = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_COMMISSIONDESCLIST, e),
                this.Log(e)
        }
        ,
        t.prototype.ReqAgentReport = function (e) {
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_AGENTREPORT, o)
        }
        ,
        t.prototype.OnAgentReportt = function (e, t) {
            e.start_date = t.start_date,
                app.Client.OnEvent(a.GameEventDefine.GET_AGENTREPORT, e)
        }
        ,
        t.prototype.ReqAgentDirectuser = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                limit: 20,
                page: e
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_AGENTDIRECTUSER, t)
        }
        ,
        t.prototype.OnAgentDirectuser = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_AGENTDIRECTUSER, e)
        }
        ,
        t.prototype.ReqSpreadStatistics = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_SPREADSTATISTICS, e)
        }
        ,
        t.prototype.OnSpreadStatistics = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_SPREADSTATISTICS, e)
        }
        ,
        t.prototype.ReqDaySpreadStatistics = function (e) {
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_DAYSPREADSTATISTICS, o)
        }
        ,
        t.prototype.OnDaySpreadStatistics = function (e) {
            app.Client.OnEvent(a.GameEventDefine.GET_DAYSPREADSTATISTICS, e)
        }
        ,
        Object.defineProperty(t.prototype, "GetShareData", {
            get: function () {
                return this.ShareDataResult
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetCollectCash", {
            get: function () {
                return this.CollectCashResult
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "GetSpreadWayInfo", {
            get: function () {
                return this.SpreadWayInfoResult
            },
            enumerable: false,
            configurable: true
        }),
        t
}(i.Singleton);
n.PromoteMainManager = s,
    module.exports = n
