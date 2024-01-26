let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.RedDotManager = undefined;
var o = require("../../Define/ShareDefine")
    , i = require("../../Base/Singleton")
    , a = require("../../Define/GameEventDefine")
    , r = require("../../Define/HttpServerDefine")
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
                    // if (e.Cash_Wheel == null) {
                    //     e.Cash_Wheel = {
                    //         "switch": 1,
                    //         "title": "Rueda de efectivo",
                    //         "img": "https://www.yotubet.com/uploads/notice_image/CashWheel.png",
                    //         "content": "",
                    //         "content_type": "1",
                    //         "entrance_img": "https://www.yotubet.com/uploads/notice_image/CashWheel.png",
                    //         "inside": "0",
                    //         "outside": "",
                    //         "button_name": "",
                    //         "mobile_title": "Rueda de efectivo",
                    //         "mobile_intro": "Recibe ahora COL$ 50000 y retíralo del banco",
                    //         "act_id": 27,
                    //         "sort": 10,
                    //         "icon_url": "",
                    //         "is_show": 1
                    //     }
                    //     e.activity_config.push({
                    //         "id": 27,
                    //         "title": "Rueda de efectivo",
                    //         "type": 2,
                    //         "sort": 10,
                    //         "icon_url": "https://www.yotubet.com/uploads/images/activity_config/CashWheel.png",
                    //         "is_show": 1
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
