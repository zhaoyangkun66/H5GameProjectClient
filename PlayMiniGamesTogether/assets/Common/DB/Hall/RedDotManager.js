let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.RedDotManager = undefined;
var o = require("../../Define/ShareDefine")
    , i = require("../../Base/Singleton")
    , a = require("../../Define/GameEventDefine")
    , r = require("../../Define/HttpServerDefine")
    , UINameDefine = require("../../Define/UINameDefine")
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t._RechargeInfoDataResult = null,
                t._ShowRedDotDataResult = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "RedDotManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECHARGE_INFOV2, this.onRechargeInfo, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.SHOW_REDDOT_RECEIVE, this.onShowRedDotReceive, this),
                    app.Client.RegEvent(a.GameEventDefine.NOTICE_UPDATELIST, this.RequestRecharge_InfoV2, this),
                    app.Client.RegEvent(a.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess, this)
            }
            ,
            Object.defineProperty(t.prototype, "ShowRedDotDataResult", {
                get: function () {
                    return this._ShowRedDotDataResult
                },
                set: function (e) {
                    this._ShowRedDotDataResult = e,
                        this.onUpdateRedDotData()
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "RechargeInfoDataResult", {
                get: function () {
                    return this._RechargeInfoDataResult
                },
                set: function (e) {
                    this._RechargeInfoDataResult = e,
                        this.onUpdateRechargeInfoData()
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetActiveInfo = function (e) {
                return this._RechargeInfoDataResult ? this._RechargeInfoDataResult[e] : null
            }
            ,
            t.prototype.updateSingleData = function (e) {
                e && (e.type == o.RedDotStr.notice ? (this._ShowRedDotDataResult[e.type].is_show = e.bShow,
                    this.onUpdateRedDot()) : this.RequestShowRedDotReceive({
                        version: 2,
                        event: e.type
                    }))
            }
            ,
            t.prototype.localStorageRedData = function (e) {
                e && (this._ShowRedDotDataResult[e.type].is_show = e.bShow,
                    this.onUpdateRedDot())
            }
            ,
            t.prototype.onUpdateDotReceive = function () {
                this.Log("onUpdateDotReceive")
            }
            ,
            t.prototype.RequestRecharge_InfoV2 = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECHARGE_INFOV2, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onRechargeInfo = function (e) {
                if (isgoServer == true) {
                    if (!channelIDNewbieBonusShow) {
                        for (let index = e.activity_config.length - 1; index >= 0; index--) {
                            if (e.activity_config[index].id == 29) {
                                e.activity_config.splice(index, 1);
                            }
                        }
                    }

                    //"/user_recharge/getRechargeInfoV2"
                    // if (e.LuckyLottery == null) {
                    //     e.BonusUnfrozen = {
                    //         "switch": 1,
                    //         "title": "conta bônus",
                    //         "img": "http://192.168.1.100:280/client2048bet/uploads/notice_image/BonusUnfrozen.png",
                    //         "content": "",
                    //         "content_type": "1",
                    //         "entrance_img": "hhttp://192.168.1.100:280/client2048bet/uploads/notice_image/BonusUnfrozen.png",
                    //         "inside": "0",
                    //         "outside": "",
                    //         "button_name": "",
                    //         "mobile_title": "conta bônus",
                    //         "mobile_intro": "conta bônus",
                    //         "act_id": 31,
                    //         "sort": 10,
                    //         "icon_url": "",
                    //         "is_show": 1
                    //     }
                    //     e.activity_config.push({
                    //         "id": 31,
                    //         "title": "conta bônus",
                    //         "type": 2,
                    //         "sort": 10,
                    //         "icon_url": "http://192.168.1.100:280/client2048bet/uploads/images/activity_config/BonusUnfrozen.png",
                    //         "is_show": 1,
                    //         "view_state": 1
                    //     })
                    // }
                }
                this.RechargeInfoDataResult = e,
                    this.RechargeInfoDataResult.activity_config.sort(function (e, t) {
                        return t.sort - e.sort
                    }),
                    app.Client.OnEvent(a.GameEventDefine.RECHARGE_INFOV2, e)
            }
            ,
            t.prototype.GetSortDataToID = function (e) {
                for (var t = 0; t < this.RechargeInfoDataResult.activity_config.length; t++) {
                    var n = this.RechargeInfoDataResult.activity_config[t];
                    if (e === n.id)
                        return n
                }
                return null
            }
            ,
            t.prototype.RequestShowRedDotReceive = function (e) {
                if (!app.UserManager().getIsOfficialAccount()) {
                    return
                }
                // if (isgoServer) {
                //     if (!e.event) {
                //         e.event = 1
                //     }
                // }
                app.HttpServerManager().SendHttpPack(r.HttpAPI.SHOW_REDDOT_RECEIVE, {
                    token: app.UserManager().GetUserInfo.token,
                    version: e.version,
                    event: e.event ? e.event : ""
                })
            }
            ,
            t.prototype.onShowRedDotReceive = function (e, t) {
                if (t.event) {
                    if (isgoServer == true) {
                        if (e[t.event]) {
                            let temp = {}
                            temp[t.event] = e[t.event]
                            e = temp
                        }
                    }
                    if (!this.ShowRedDotDataResult)
                        return;
                    for (var n in e)
                        if (Object.prototype.hasOwnProperty.call(e, n)) {
                            var i = e[n];
                            return this.ShowRedDotDataResult[n] = i,
                                this.ShowRedDotDataResult = this.ShowRedDotDataResult,
                                void (t.event == o.RedDotStr.clean_bet && app.Client.OnEvent(a.GameEventDefine.SINGLE_CLEARBAT, this.ShowRedDotDataResult))
                        }
                }
                this.ShowRedDotDataResult = e,
                    app.Client.OnEvent(a.GameEventDefine.BETBONUS_RECEIVE, this.ShowRedDotDataResult)
                // app.UserManager().GetUserInfo.GETNewbieBonusShowRedDotDataResult = true
                // if (app.UserManager().GetUserInfo.GETNewbieBonusNoticeListData) {
                //     app.UserManager().GetUserInfo.GETNewbieBonusNoticeListData = null
                //     let ShowRedDotDataResult = app.RedDotManager().ShowRedDotDataResult
                //     if (ShowRedDotDataResult && ShowRedDotDataResult.newbieBonus && ShowRedDotDataResult.newbieBonus.is_show == 1) {
                //         app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityNewbieBonus)
                //     }
                // }
            }
            ,
            t.prototype.onUpdateRedDotData = function () {
                this.ShowRedDotDataResult && app.Client.OnEvent(a.GameEventDefine.SHOW_REDDOT_RECEIVE, this.ShowRedDotDataResult)
            }
            ,
            t.prototype.onUpdateRechargeInfoData = function () { }
            ,
            t.prototype.onUpdateRedDot = function () {
                this.onUpdateRedDotData(),
                    this.onUpdateRechargeInfoData()
            }
            ,
            t.prototype.OnLoadHallSuccess = function () {
                this.RequestShowRedDotReceive({
                    version: 1
                })
            }
            ,
            t.prototype.OnReload = function () {
                this._RechargeInfoDataResult = null
            }
            ,
            t
    }(i.Singleton);
n.RedDotManager = s,
    module.exports = n
