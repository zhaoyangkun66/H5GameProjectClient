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
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_DAYSPREADSTATISTICS, this.OnDaySpreadStatistics, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myPeriodData, this.OnNewagent_myPeriodData, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myTotalData, this.OnNewagent_myTotalData, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myPerformance, this.OnNewagent_myPerformance, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myPerformanceDetail, this.OnNewagent_myPerformanceDetail, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myCommission, this.OnNewagent_myCommission, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_myCommissionDetail, this.OnNewagent_myCommissionDetail, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_directReport, this.OnNewagent_directReport, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_directOrder, this.OnNewagent_directOrder, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_directOrderDetail, this.OnNewagent_directOrderDetail, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_ActivityPromoteDetail, this.OnNewagent_ActivityPromoteDetail, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_commissionsconfig, this.OnNewagent_commissionsconfig, this),
                app.HttpServerManager().RegNetPack(r.HttpAPI.newagent_createaccount, this.OnNewagent_createaccount, this)

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
            this.Log(e)
            app.GoldRewardManager().FormGoldReward({
                gold: this.GetShareData.agent_commission,
                source: app.i18n.t("UI_Code_Bonus")
            })

            this.GetShareData.agent_commission = 0
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
        t.prototype.ReqNewagent_myPeriodData = function (e) {
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myPeriodData, o)
        }
        ,
        t.prototype.OnNewagent_myPeriodData = function (e, t) {
            e.start_date = t.start_date
            e.end_date = t.end_date
            app.Client.OnEvent(a.GameEventDefine.newagent_myPeriodData, e)
        }
        ,
        t.prototype.ReqNewagent_myTotalData = function () {
            var o = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myTotalData, o)
        }
        ,
        t.prototype.OnNewagent_myTotalData = function (e, t) {
            e.start_date = t.start_date,
                app.Client.OnEvent(a.GameEventDefine.newagent_myTotalData, e)
        },
        t.prototype.ReqNewagent_myPerformance = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myPerformance, o)
        },
        t.prototype.OnNewagent_myPerformance = function (e, t) {
            e.start_date = t.start_date
            e.end_date = t.end_date
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_myPerformance, e)
        },
        t.prototype.ReqNewagent_myPerformanceDetail = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: e.record_time,
                end_date: e.record_time,
                type: e.type,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myPerformanceDetail, o)
        },
        t.prototype.OnNewagent_myPerformanceDetail = function (e, t) {
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_myPerformanceDetail, e)
        },
        t.prototype.ReqNewagent_myCommission = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myCommission, o)
        },
        t.prototype.OnNewagent_myCommission = function (e, t) {
            e.start_date = t.start_date
            e.end_date = t.end_date
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_myCommission, e)
        },
        t.prototype.ReqNewagent_myCommissionDetail = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: e.record_time,
                end_date: e.record_time,
                type: e.type,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_myCommissionDetail, o)
        },
        t.prototype.OnNewagent_myCommissionDetail = function (e, t) {
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_myCommissionDetail, e)
        },
        t.prototype.ReqNewagent_directReport = function (e) {
            if (!e.memberID) {
                e.memberID = app.UserManager().GetUserInfo.uid
            }
            if (!e.page) {
                e.page = 1
            }
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n,
                uid: e.memberID,
                isOtherView: e.isOtherView,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_directReport, o)
        },
        t.prototype.OnNewagent_directReport = function (e, t) {
            e.start_date = t.start_date
            e.end_date = t.end_date
            e.isOtherView = t.isOtherView
            e.uid = t.uid
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_directReport, e)
        },
        t.prototype.ReqNewagent_directOrder = function (e) {
            if (!e.memberID) {
                e.memberID = app.UserManager().GetUserInfo.uid
            }
            if (!e.page) {
                e.page = 1
            }
            var t = ""
                , n = "";
            e && (t = e.start,
                n = e.end);
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: t,
                end_date: n,
                uid: e.memberID,
                isOtherView: e.isOtherView,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_directOrder, o)
        },
        t.prototype.OnNewagent_directOrder = function (e, t) {
            e.start_date = t.start_date
            e.end_date = t.end_date
            e.isOtherView = t.isOtherView
            e.uid = t.uid
            e.page = t.page
            app.Client.OnEvent(a.GameEventDefine.newagent_directOrder, e)
        },
        t.prototype.ReqNewagent_directOrderDetail = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: e.start_date,
                end_date: e.end_date,
                uid: e.uid,
                total_bet: e.total_bet,
                total_betcount: e.total_betcount,
                total_win: e.total_win,
                page: e.page,
                page_size: 20,
                platename: e.platename
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_directOrderDetail, o)
        },
        t.prototype.OnNewagent_directOrderDetail = function (e, t) {
            e.total_bet = t.total_bet
            e.total_betcount = t.total_betcount
            e.total_win = t.total_win
            e.page = t.page
            e.platename = t.platename
            app.Client.OnEvent(a.GameEventDefine.newagent_directOrderDetail, e)
        },
        t.prototype.ReqNewagent_ActivityPromoteDetail = function (e) {
            if (!e.page) {
                e.page = 1
            }
            var o = {
                token: app.UserManager().GetUserInfo.token,
                start_date: e.start_date,
                end_date: e.end_date,
                type: e.isvalidType,
                uid: e.searchUid,
                page: e.page,
                page_size: 20
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_ActivityPromoteDetail, o)
            // if (!CC_BUILD) {
            //     let data = {
            //         isvalidType: 0,
            //         searchUid: 0,
            //     }
            //     this.OnNewagent_ActivityPromoteDetail(data, o)
            // }

        },
        t.prototype.OnNewagent_ActivityPromoteDetail = function (e, t) {
            e.page = t.page
            e.isvalidType = t.type
            e.searchUid = t.uid
            app.Client.OnEvent(a.GameEventDefine.newagent_ActivityPromoteDetail, e)
        },
        t.prototype.ReqNewagent_commissionsconfig = function () {
            var e = {
                token: app.UserManager().GetUserInfo.token
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_commissionsconfig, e)
        },
        t.prototype.OnNewagent_commissionsconfig = function (e) {
            app.Client.OnEvent(a.GameEventDefine.newagent_commissionsconfig, e)
        },
        t.prototype.ReqNewagent_createaccount = function (e) {
            var t = {
                token: app.UserManager().GetUserInfo.token,
                account: e.account,
                password: e.password
            };
            app.HttpServerManager().SendHttpPack(r.HttpAPI.newagent_createaccount, t)
        },
        t.prototype.OnNewagent_createaccount = function (e) {
            app.Client.OnEvent(a.GameEventDefine.newagent_createaccount, e)
        },
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
