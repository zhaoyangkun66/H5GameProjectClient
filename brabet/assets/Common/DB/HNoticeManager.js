let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.HNoticeManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("../Define/HttpServerDefine")
    , r = require("../Define/ShareDefine")
    , s = require("../Define/UINameDefine")
    , c = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.trumpers = [],
                t.broadcast = [],
                t
        }
        return __extends(t, e),
            Object.defineProperty(t.prototype, "NoticeListDataResult", {
                get: function () {
                    return this._NoticeListDataResult
                },
                set: function (e) {
                    this._NoticeListDataResult = e
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.Init = function () {
                this.JS_Name = "HNoticeManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_DESK_NOTICE, this.onGetDeskNotice, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_NOTICE_LIST, this.onGetNoticeListData, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.CANGET_Redenvelope, this.onCanGetRedenvelopeData, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_Redenvelope, this.onGetRedenvelopeData, this),
                    app.Client.RegEvent(i.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_NOTICES, this.onGetAnnounceListData, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.BROADCAST_LAST, this.OnBroadcastLast, this),
                    cc.systemEvent.on("game_broadcast", this.OnGameBroadcast, this),
                    app.Client.RegEvent(i.GameEventDefine.REFRESH_DESK_NOTICE, this.RequestDeskNotice, this)
                app.Client.RegEvent(i.GameEventDefine.GET_cashWheel, this.onGetCashWheel, this)
            }
            ,
            t.prototype.onGetDeskNotice = function (e) {

                if (isgoServer) {
                    if (!channelIDNewbieBonusShow) {
                        for (let index = e.length - 1; index >= 0; index--) {
                            if (e[index].link == 100002) {
                                e.splice(index, 1);
                            }
                        }
                    }

                    if (!isPushServer) {
                        "/notice/get_desk_notices"
                        // e.unshift({
                        //     "link": 100003,
                        //     "image": "https://www.bigerwin.com/uploads/notice_image/LuckyLottery.png",
                        //     "external_link": "",
                        //     "start_time_stamp": 0,
                        //     "end_time_stamp": 0,
                        //     "cur_time": 1692770787
                        // })
                    }
                }

                this._DeskInfo = e,
                    app.PlaceholderManager().DeskNoticeEnd = true;
                var t = this.GetDeskListInfo.length;
                t = t > 3 ? 3 : t,
                    app.PlaceholderManager().SetBannerItemNum(t),
                    app.Client.OnEvent(i.GameEventDefine.GET_DESK_NOTICE)
            }
            ,
            t.prototype.RequestDeskNotice = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_DESK_NOTICE, {
                    token: app.UserManager().GetUserInfo.token,
                    type: 2
                })
            }
            ,
            Object.defineProperty(t.prototype, "GetDeskInfo", {
                get: function () {
                    return this._DeskInfo
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetDeskListInfo", {
                get: function () {
                    var e = [];
                    return this._DeskInfo && this._DeskInfo.forEach(function (t) {
                        var n = app.GameConfigManager().GetAsTime()
                            , o = t.start_time_stamp && t.start_time_stamp < n && t.end_time_stamp > n;
                        (!t.start_time_stamp && !t.end_time_stamp || o) && e.push(t)
                    }),
                        e
                },
                enumerable: false,
                configurable: true
            }),

            t.prototype.LoadHallSuccess = function () {
                this.RequestGetNoticeList()
                //   this.RequestCanGetRedenvelope()
            },
            t.prototype.showFreeGameNode = function () {
                app.GameConfigManager().IsExperienceServer && app.FormManager().ShowForm(s.UINameDefine.UIFreeWindow, {
                    type: r.FreeWindowType.FreeNotice
                })
            }
            ,
            t.prototype.onGetNoticeListData = function (e) {
                this.NoticeListDataResult = e
                if (app.FormManager().IsFormShow(s.UINameDefine.UIHall)) {
                    var t = true;
                    this.NoticeListDataResult && this.NoticeListDataResult.length > 0 && this.NoticeListDataResult[0].is_popup && this.GetOpenNotice && (t = false,
                        app.FormManager().EnqueueForm({
                            formName: s.UINameDefine.UIHallNotice,
                            key: "hall"
                        })),
                        t && this.ShowFreeGameTip(),
                        1 == app.UserManager().GetUserInfoConfig.show_arr[r.VisibleBtnTag.Btn_Activity] && app.FormManager().EnqueueForm({
                            formName: s.UINameDefine.UIAnnouncement,
                            key: "hall"
                        })

                    if ((app.GameConfigManager().GetGameConfig().FirstChargeUpgradeTimeAs > app.GameConfigManager().GetAsTime()) && (Number(app.UserManager().GetUserInfo.total_recharge) == 0)) {
                        app.FormManager().EnqueueForm({
                            formName: s.UINameDefine.UIActivityFirstChargeUpgrade,
                            key: "hall"
                        })
                    }
                    if (app.UserManager().getIsOfficialAccount()) {
                        if (this.GetUICashWheel) {
                            if (!app.FormManager().IsFormShow(s.UINameDefine.UICashWheel)) {
                                app.FormManager().EnqueueForm({
                                    formName: s.UINameDefine.UICashWheel,
                                    key: "hall"
                                })
                            }
                        }

                        // if (app.UserManager().GetUserInfo.is_new) {
                        //     if (app.UserManager().GetUserInfo.GETNewbieBonusShowRedDotDataResult) {
                        //         let ShowRedDotDataResult = app.RedDotManager().ShowRedDotDataResult
                        //         if (ShowRedDotDataResult && ShowRedDotDataResult.newbieBonus && ShowRedDotDataResult.newbieBonus.is_show == 1) {
                        //             app.FormManager().ShowForm(s.UINameDefine.UIActivityNewbieBonus)
                        //         }
                        //     }
                        //     else {
                        //         app.UserManager().GetUserInfo.GETNewbieBonusNoticeListData = true
                        //     }
                        // }
                    }
                    else {
                        app.ActivityManager().RequestCashWheel()
                    }
                }

            },
            t.prototype.onGetCashWheel = function (data) {
                if (!app.UserManager().getIsOfficialAccount()) {
                    if (data.lastwheel > 0) {
                        if (!app.FormManager().IsFormShow(s.UINameDefine.UICashWheel)) {
                            app.FormManager().EnqueueForm({
                                formName: s.UINameDefine.UICashWheel,
                                key: "hall"
                            })
                        }
                    }
                }
            },
            t.prototype.onCanGetRedenvelopeData = function (e) {
                //  e = {}
                //   e.isCanGetRedenvelope = 1
                if (e.isCanGetRedenvelope == 1) {
                    app.FormManager().ShowForm(s.UINameDefine.UIReceiveRedEnvelope)
                }
            },
            t.prototype.onGetRedenvelopeData = function (e) {
                //   e = {}
                //  e.gold = 2.12
                app.Client.OnEvent(a.HttpAPI.GET_Redenvelope, e)
            },
            t.prototype.ShowFreeGameTip = function () {
                this.showEnterFreeGameNode(),
                    this.showFreeGameNode()
            }
            ,
            t.prototype.showEnterFreeGameNode = function () {
                !app.GameConfigManager().IsExperienceServer && app.GameConfigManager().IsExperienceServerShow && !app.LocalDataManager().GetConfigObject(app.UserManager().UserInfo.uid + "IsShowFreeGame") && app.UserManager().GetUserInfo.is_new && app.GameConfigManager().GetNewUserPop && (app.LocalDataManager().SetConfigObject(app.UserManager().UserInfo.uid + "IsShowFreeGame", {}),
                    app.FormManager().ShowForm(s.UINameDefine.UIFreeWindow, {
                        type: r.FreeWindowType.FreeInFreeGameNotice
                    }))
            }
            ,
            Object.defineProperty(t.prototype, "GetOpenNotice", {
                get: function () {
                    if (app.GameConfigManager().GetNoticeTime) {
                        var e = app.LocalDataManager().GetConfigObject("open_notice_time")
                            , t = Date.now();
                        if (e && t - e.time < 36e5 * app.GameConfigManager().GetNoticeTime)
                            return false;
                        app.LocalDataManager().SetConfigObject("open_notice_time", {
                            time: t
                        })
                    }
                    return true
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetUICashWheel", {
                get: function () {
                    var e = app.LocalDataManager().GetConfigObject("open_UICashWheel_time5")
                        , t = Date.now();
                    if (e && t - e.time < 60 * 60 * 24 * 1000)//
                        return false;
                    app.LocalDataManager().SetConfigObject("open_UICashWheel_time5", {
                        time: t
                    })
                    return true
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.RequestGetNoticeList = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_NOTICE_LIST, {
                    token: app.UserManager().GetUserInfo.token
                })
            },
            t.prototype.RequestCanGetRedenvelope = function () {
                if (app.UserManager().getIsOfficialAccount()) {
                    app.HttpServerManager().SendHttpPack(a.HttpAPI.CANGET_Redenvelope, {
                        token: app.UserManager().GetUserInfo.token
                    })
                }
            },
            t.prototype.RequestGetRedenvelope = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_Redenvelope, {
                    token: app.UserManager().GetUserInfo.token
                })
            },
            t.prototype.RequestGetNoticeData = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_NOTICES, {
                    token: app.UserManager().GetUserInfo.token,
                    notice_id: 0
                })
            },
            t.prototype.SendBroadcastLast = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.BROADCAST_LAST, {
                    token: app.UserManager().GetUserInfo.token
                })
            },
            Object.defineProperty(t.prototype, "AnnounceListResult", {
                get: function () {
                    return this._AnnounceListResult
                },
                set: function (e) {
                    this._AnnounceListResult = e
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.onGetAnnounceListData = function (e) {
                this._AnnounceListResult = e,
                    app.Client.OnEvent(i.GameEventDefine.GET_NOTICES)
            },
            t.prototype.OnBroadcastLast = function (e) {
                for (var t = 0; t < e.length; t++) {
                    var n = e[t];
                    this.broadcast.push({
                        content: n.content,
                        time: 1e6 * n.interval
                    })
                }
                app.Client.OnEvent(i.GameEventDefine.BROADCAST_LAST)
            },
            t.prototype.OnGameBroadcast = function (e) {
                this.trumpers.push(e),
                    app.Client.OnEvent(i.GameEventDefine.GAME_BROADCAST)
            }
            ,
            t.prototype.getAnnounceByID = function (e) {
                for (var t = 0; t < this.AnnounceListResult.length; t++) {
                    var n = this.AnnounceListResult[t];
                    if (n.notice_id === e)
                        return n
                }
                return null
            }
            ,
            t
    }(o.Singleton);
n.HNoticeManager = c,
    module.exports = n
