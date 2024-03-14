let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.ActivityManager = undefined;
var o = require("../../Define/ShareDefine")
    , i = require("../../Base/Singleton")
    , a = require("../../Define/GameEventDefine")
    , r = require("../../Define/HttpServerDefine")
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.RechargeRewardInfo = null,
                t.LimitRechargeInfo = null,
                t.CardList = null,
                t.SignList = null,
                t.AllPromotionData = null,
                t.UserActivities = null,
                t.LimitTimeRecharge = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "ActivityManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_RECHARGE_REWARD, this.onGetRechargeReward, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_LIMIT_RECHARGE, this.onGetLimintRecharg, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_CARD_LIST, this.onGetCardList, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.SIGN_LIST, this.onGetSignList, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECEIVE_SIGN, this.onGetReceiveSign, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECHARGE_BONUS_LIST, this.onGetRechargeBonusList, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECHARGE_BONUS_BET, this.onGetRechargeBonusBet, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECEIVE_CARD_DAILY_GOLD, this.onGetCardDailyGold, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_ALLPROMOTIONS, this.onGetAllPromotion, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_OPEN_REDBAG, this.onGetOpenRedBag, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.GET_DailyRegistrations, this.onGetDailyRegistrations, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.USER_CENTER_ACTIVITIES, this.onGetUserCenterActivities, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.LIMIT_TIME_RECHARGE, this.onGetLimitTimeRecharge, this)

                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_cashWheel, this.onGetCashWheel, this)
                app.HttpServerManager().RegNetPack(r.HttpAPI.open_cashWheel, this.onOpenCashWheel, this)
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_cashWheelwithdraw, this.onCashWheelwithdraw, this)
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_cashWheelreset, this.onCashWheelreset, this)

                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_LossRebate, this.onGetLossRebate, this)
                app.HttpServerManager().RegNetPack(r.HttpAPI.GET_LossRebateReceive, this.onGetLossRebateReceive, this)

            }
            ,
            t.prototype.onGetLimitTimeRecharge = function (e) {
                this.LimitTimeRecharge = e;
                var t = this.LimitTimeRecharge.cur_time - Math.round(Date.now() / 1e3);
                this.LimitTimeDiffTime = t || 0,
                    app.Client.OnEvent(a.GameEventDefine.LIMIT_TIME_RECHARGE)
            }
            ,
            Object.defineProperty(t.prototype, "GetLimitTimeRecharge", {
                get: function () {
                    return this.LimitTimeRecharge
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetDiffTime", {
                get: function () {
                    return this.LimitTimeDiffTime
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.RequestLimitTimeRecharge = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.LIMIT_TIME_RECHARGE, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.LimitEndTime = function () {
                var e = app.UserManager().GetUserRechargeActivity;
                if (e) {
                    var t = e.end_time;
                    if (!app.ComUtil().IsSameDay(1e3 * e.end_time)) {
                        var n = app.ComTool().GetLocalTime(8);
                        t = new Date(n.setHours(23, 59, 59, 999)).getTime() / 1e3,
                            e.end_time = t
                    }
                    return t
                }
                return 0
            }
            ,
            t.prototype.RequestRechargeBonusList = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECHARGE_BONUS_LIST, {
                    token: app.UserManager().GetUserInfo.token,
                    page: e,
                    limit: 10
                })
            }
            ,
            t.prototype.onGetRechargeBonusList = function (e) {
                app.Client.OnEvent(a.GameEventDefine.RECHARGE_BONUS_LIST, e)
            }
            ,
            t.prototype.RequestRechargeBonusBet = function (e, t) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECHARGE_BONUS_BET, {
                    token: app.UserManager().GetUserInfo.token,
                    type: 2,
                    task_id: e,
                    percent: t
                })
            }
            ,
            t.prototype.onGetRechargeBonusBet = function (e) {
                app.GoldRewardManager().FormGoldReward({
                    gold: e.gold,
                    source: app.i18n.t("UI_Reward"),
                    send_type: 10
                }),
                    app.RedDotManager().updateSingleData({
                        type: o.RedDotStr.recharge_send_activity,
                        bShow: false
                    })
            }
            ,
            t.prototype.RequstSignList = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.SIGN_LIST, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetSignList = function (e) {
                this.SignList = e;
                for (var t = 0; t < e.configs.length; t++)
                    e.configs[t].vip_id == e.vip_id && (this.VpiBtnIndex = t);
                app.Client.OnEvent(a.GameEventDefine.SIGN_LIST)
            }
            ,
            Object.defineProperty(t.prototype, "GetVpiBtnIndex", {
                get: function () {
                    return this.VpiBtnIndex
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetSignList = function () {
                return this.SignList
            }
            ,
            t.prototype.RequstReceiveSign = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECEIVE_SIGN, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetReceiveSign = function () {
                app.Client.OnEvent(a.GameEventDefine.RECEIVE_SIGN)
            }
            ,
            t.prototype.RequstRechargeReward = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_RECHARGE_REWARD, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetRechargeReward = function (e) {
                this.RechargeRewardInfo = e,
                    app.Client.OnEvent(a.GameEventDefine.GET_RECHARGE_REWARD)
            }
            ,
            t.prototype.GetRechargeRewardInfo = function () {
                return this.RechargeRewardInfo
            }
            ,
            t.prototype.selectShop = function () {
                var e = this;
                this.RechargeRewardInfo ? 0 === this.RechargeRewardInfo.is_discount ? app.Client.OnEvent(a.GameEventDefine.OPEN_SPECIAL_OFFER) : app.Client.OnEvent(a.GameEventDefine.OPEN_STORE) : app.WebClientManager().request(r.HttpAPI.GET_RECHARGE_REWARD, {
                    token: app.UserManager().GetUserInfo.token
                }, function (t) {
                    0 == t.code ? (e.RechargeRewardInfo = t.data,
                        0 === e.RechargeRewardInfo.is_discount ? app.Client.OnEvent(a.GameEventDefine.OPEN_SPECIAL_OFFER) : app.Client.OnEvent(a.GameEventDefine.OPEN_STORE)) : app.Client.OnEvent(a.GameEventDefine.OPEN_STORE)
                })
            }
            ,
            t.prototype.RequstLimitRecharge = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_LIMIT_RECHARGE, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetLimintRecharg = function (e) {
                this.LimitRechargeInfo = e,
                    app.Client.OnEvent(a.GameEventDefine.GET_LIMIT_RECHARGE)
            }
            ,
            t.prototype.GetLimitRechargeInfo = function () {
                return this.LimitRechargeInfo
            }
            ,
            t.prototype.RequestCardList = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_CARD_LIST, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetCardList = function (e) {
                this.CardList = e,
                    app.Client.OnEvent(a.GameEventDefine.GET_CARD_LIST)
            }
            ,
            t.prototype.GetCardList = function () {
                return this.CardList
            }
            ,
            t.prototype.RequestCardDailyGold = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECEIVE_CARD_DAILY_GOLD, e)
            }
            ,
            t.prototype.RequestGetAllPromotion = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_ALLPROMOTIONS, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onGetAllPromotion = function (e) {
                if (isgoServer == true) {
                    // e.push({
                    //     "switch": 1,
                    //     "title": "Rueda de efectivo",
                    //     "img": "https://www.bigerwin.com/uploads/notice_image/CashWheel.png",
                    //     "content": "",
                    //     "content_type": "1",
                    //     "entrance_img": "https://www.bigerwin.com/uploads/notice_image/CashWheel.png",
                    //     "inside": "0",
                    //     "outside": "",
                    //     "button_name": "",
                    //     "mobile_title": "Rueda de efectivo",
                    //     "mobile_intro": "Recibe ahora COL$ 50000 y retíralo del banco",
                    //     "act_id": 27,
                    //     "sort": 10,
                    //     "icon_url": "",
                    //     "is_show": 1
                    // })
                }
                var t = [];
                for (var n in e)
                    if (Object.prototype.hasOwnProperty.call(e, n)) {
                        var o = e[n];
                        o.key = n,
                            t.push(o)
                    }
                t.sort(function (e, t) {
                    return t.sort - e.sort
                }),
                    this.AllPromotionData = t,
                    app.Client.OnEvent(a.GameEventDefine.GET_ALLPROMOTIONS)
            }
            ,
            t.prototype.RequestOpenRedBag = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_OPEN_REDBAG, {
                    token: app.UserManager().GetUserInfo.token,
                    ckcode: e
                })
            }
            ,
            t.prototype.onGetOpenRedBag = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_OPEN_REDBAG, e)
            }
            ,
            t.prototype.RequestDailyRegistrations = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_DailyRegistrations, {
                    token: app.UserManager().GetUserInfo.token,
                    type: e
                })
            }
            ,
            t.prototype.onGetDailyRegistrations = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_DailyRegistrations, e)
            },
            t.prototype.RequestCashWheel = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_cashWheel, {
                    token: app.UserManager().GetUserInfo.token
                })
            },
            t.prototype.onGetCashWheel = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_cashWheel, e)
            },
            t.prototype.RequestOpenCashWheel = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.open_cashWheel, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onOpenCashWheel = function (e) {
                app.Client.OnEvent(a.GameEventDefine.open_cashWheel, e)
            },
            t.prototype.RequestCashWheelwithdraw = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_cashWheelwithdraw, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onCashWheelwithdraw = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_cashWheelwithdraw, e)
            },
            t.prototype.RequestCashWheelreset = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_cashWheelreset, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onCashWheelreset = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_cashWheelreset, e)
            }
            ,
            t.prototype.RequestLossRebate = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_LossRebate, {
                    token: app.UserManager().GetUserInfo.token
                })
                // let data = {
                //     bet: 31, //賭注
                //     receiveGold: 4, //可领取返利
                //     receiveState: 1, //领取状态0不可领取1可领取
                //     vip: 2,//vip等级
                //     begin_timeAccumulated: '2023-12-25 00:00:00', //上周累计的时间开始
                //     end_timeAccumulated: ' 20023-12-31 23:58:59', //上周累计的时间结束
                //     begin_timeGet: '2023-12-25 00:00:00', //可以领奖的时间开始
                //     end_timeGet: ' 20023-12-31 23:58:59', //可以领奖的时间结束
                //     vipExperience: 5000, //当前vip经验
                //     vipExperienceMax: 10000 //当前vip经验最大经验
                // }
                // app.Client.OnEvent(a.GameEventDefine.GET_LossRebate, data)
            },
            t.prototype.onGetLossRebate = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_LossRebate, e)
            },
            t.prototype.RequestLossRebateReceive = function (e) {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_LossRebateReceive, {
                    token: app.UserManager().GetUserInfo.token
                })
                // let data = {
                //     gold: 4
                // }
                // app.Client.OnEvent(a.GameEventDefine.GET_LossRebateReceive, data)
            },
            t.prototype.onGetLossRebateReceive = function (e) {
                app.Client.OnEvent(a.GameEventDefine.GET_LossRebateReceive, e)
            },
            t.prototype.onGetCardDailyGold = function (e, t) {
                cc.systemEvent.emit("reward_succ", e),
                    app.GoldRewardManager().FormGoldReward({
                        gold: t.gold,
                        source: app.i18n.t("UI_Reward")
                    }),
                    app.RedDotManager().updateSingleData({
                        type: o.RedDotStr.week_month_card,
                        bShow: false
                    }),
                    app.Client.OnEvent(a.GameEventDefine.UPDATE_MONTHCARD)
            }
            ,
            t.prototype.onGetUserCenterActivities = function (e) {
                if (isgoServer) {
                    e.activitie = e
                }
                this.UserActivities = e,
                    app.Client.OnEvent(a.GameEventDefine.UserCenterActivities)
            }
            ,
            t.prototype.RequestUserCenterActivities = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.USER_CENTER_ACTIVITIES, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.getUserActivities = function () {
                return this.UserActivities
            }
            ,
            t
    }(i.Singleton);
n.ActivityManager = s,
    module.exports = n