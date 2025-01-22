let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
}),
    i.GetModel = i.Game1053Mgr = void 0;
var n = require("../../../Common/Base/BaseHttpMgr")
    , o = require("../../../Common/Bundle/BundleConfig")
    , a = require("../../../Common/Bundle/BundleManager")
    , r = require("./Game1053Define")
    , s = function (t) {
        function e() {
            var e = null !== t && t.apply(this, arguments) || this;
            return e.GameDates = null,
                e._isLuckMode = false,
                e.RiskStrList = [],
                e._LuckIndex = 0,
                e.hisToryDate = [],
                e.BetResultData = null,
                e._IsTurbo = false,
                e._Level = 1,
                e._LuckDataList = [],
                e.AddAndReduceIdx = 0,
                e.BaseBetNum = 2,
                e.baseLevel = 1,
                e.isAutoIng = false,
                e.sureWin = 0,
                e
        }
        return __extends(e, t),
            e.prototype.Init = function () {
                for (var e = [], i = 0; i < arguments.length; i++)
                    e[i] = arguments[i];
                t.prototype.Init.apply(this, e),
                    this.JS_Name = "Game1053Mgr",
                    this.RegHttpEvent(r.Game1053HttpAPI.GameDates, this.OnGameDates),
                    this.RegHttpEvent(r.Game1053HttpAPI.BetResult, this.OnBetResult),
                    this.RegHttpEvent(r.Game1053HttpAPI.BetHistory, this.OnBetHistory),
                    this.RegHttpEvent(r.Game1053HttpAPI.BetOneDayHistory, this.OnBetOneDayHistoryResult)
            }
            ,
            Object.defineProperty(e.prototype, "MyHistory", {
                get: function () {
                    return this._MyHistory
                },
                set: function (t) {
                    this._MyHistory = t
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(e.prototype, "DailyList", {
                get: function () {
                    return this._DailyList
                },
                set: function (t) {
                    this._DailyList = t
                },
                enumerable: false,
                configurable: true
            }),
            e.prototype.OnReload = function () {
                t.prototype.OnReload.call(this),
                    this.ClearBasket()
            }
            ,
            e.prototype.OnClear = function () {
                t.prototype.OnClear.call(this),
                    this.ClearBasket(),
                    this.GameDates = null
            }
            ,
            Object.defineProperty(e.prototype, "isLuckMode", {
                get: function () {
                    return this._isLuckMode
                },
                set: function (t) {
                    this._isLuckMode = t
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(e.prototype, "LuckIndex", {
                get: function () {
                    return this._LuckIndex
                },
                set: function (t) {
                    this._LuckIndex = t
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(e.prototype, "Level", {
                get: function () {
                    return this._Level
                },
                set: function (t) {
                    this._Level = t
                },
                enumerable: false,
                configurable: true
            }),
            e.prototype.RequestGameDates = function () {
                var t = {
                    token: app.UserManager().UserInfo.token
                };

                if (isgoServer && CC_BUILD) {// && CC_BUILD
                    app.HttpServerManager().SendHttpPack(r.Game1053HttpAPI.GameDates, t)
                }
                else {
                    this.GameDates = {
                        "props": [
                            {
                                "props": { //1花生 2橘子 3爆竹 4钱袋 5红包 6福 7wild
                                    "1": 4,
                                    "2": 1,
                                    "3": 5,
                                    "4": 2,
                                    "5": 7,
                                    "6": 4,
                                    "7": 5,
                                    "8": 2,
                                    "9": 4
                                },
                                "win_arrs": [{
                                    roll: 4,//1或 2或 3或 4或 5
                                    win_amount: 30,//bet*level*win_odd*multiple
                                    multiple: 1,//倍数
                                    win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                },
                                {
                                    roll: 5,//1或 2或 3或 4或 5
                                    win_amount: 50,//bet*level*win_odd*multiple
                                    multiple: 1,//倍数
                                    win_odd: 50//3或 5或 15 或30 或50或 100或 300 
                                }]
                            }
                        ],
                        "type": 1,//1普通类型 2幸运类型
                        "level": 1,
                        "total_win": 80,//bet_gold + change_gold,
                        "big_win": true,//0不打开big_win界面1打开big_win界面
                        "bet_gold": 5, //bet*level*5
                        "change_gold": 75,
                        "bet": 1, //bet size
                        "end_gold": 1000,
                    }
                    this.CheckMultiple(this.GameDates)
                    setTimeout(function () {
                        app.Client.OnEvent(r.Game1053HttpAPI.GameDates)
                    }, 300);

                }
            }
            ,
            e.prototype.OnGameDates = function (t) {
                this.GameDates = t
                this.CheckMultiple(this.GameDates)
                app.Client.OnEvent(r.Game1053HttpAPI.GameDates)
            }
            ,
            e.prototype.CheckMultiple = function (ResultData) {
                if (ResultData.type == 2) {
                    for (let index = 0; index < ResultData.props.length; index++) {
                        const props = ResultData.props[index].props;
                        // props["4"] = 0
                        // props["5"] = 0
                        // props["6"] = 0
                    }
                }
                else {

                }
            }
            ,
            e.prototype.RequestGameBet = function () {
                var t = {
                    token: app.UserManager().UserInfo.token,
                    bet_gold: this.BaseBetNum,
                    level: this.Level
                };
                if (isgoServer && CC_BUILD) {// && CC_BUILD
                    app.HttpServerManager().SendHttpPack(r.Game1053HttpAPI.BetResult, t, false)
                }
                else {
                    if (Math.random() > 0) {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1花生 2橘子 3爆竹 4钱袋 5红包 6福 7wild
                                        "1": 1,
                                        "2": 2,
                                        "3": 3,
                                        "4": 7,
                                        "5": 7,
                                        "6": 7,
                                        "7": 4,
                                        "8": 5,
                                        "9": 6
                                    },
                                    "win_arrs": []
                                },
                                {
                                    "props": {
                                        "1": 4,
                                        "2": 4,
                                        "3": 4,
                                        "4": 7,
                                        "5": 7,
                                        "6": 7,
                                        "7": 4,
                                        "8": 4,
                                        "9": 4
                                    },
                                    "win_arrs": [{
                                        roll: 1,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    },
                                    {
                                        roll: 2,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    },
                                    {
                                        roll: 3,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    },
                                    {
                                        roll: 4,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    },
                                    {
                                        roll: 5,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    }]
                                }
                            ],
                            "type": 2,//1普通类型 2幸运类型
                            "level": 1,
                            "total_win": 150,//bet_gold + change_gold,
                            "big_win": false,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 5, //bet*level*5
                            "change_gold": 145,
                            "bet": 1, //bet size
                            "end_gold": 1000,
                        }
                    }
                    else {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1花生 2橘子 3爆竹 4钱袋 5红包 6福 7wild
                                        "1": 4,
                                        "2": 1,
                                        "3": 5,
                                        "4": 2,
                                        "5": 7,
                                        "6": 4,
                                        "7": 5,
                                        "8": 2,
                                        "9": 4
                                    },
                                    "win_arrs": [{
                                        roll: 4,//1或 2或 3或 4或 5
                                        win_amount: 30,//bet*level*win_odd*multiple
                                        multiple: 1,//倍数
                                        win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                    },
                                    {
                                        roll: 5,//1或 2或 3或 4或 5
                                        win_amount: 50,//bet*level*win_odd*multiple
                                        multiple: 1,//倍数
                                        win_odd: 50//3或 5或 15 或30 或50或 100或 300 
                                    }]
                                }
                            ],
                            "type": 1,//1普通类型 2幸运类型
                            "level": 1,
                            "total_win": 80,//bet_gold + change_gold,
                            "big_win": false,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 5, //bet*level*5
                            "change_gold": 75,
                            "bet": 1, //bet size
                            "end_gold": 1000,
                        }
                    }
                    this.CheckMultiple(this.BetResultData)
                    app.Client.OnEvent(r.Game1053HttpAPI.BetResult, this.BetResultData)
                }
            }
            ,
            Object.defineProperty(e.prototype, "IsTurbo", {
                get: function () {
                    return this._IsTurbo
                },
                set: function (t) {
                    this._IsTurbo = t
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(e.prototype, "LuckDataList", {
                get: function () {
                    return this._LuckDataList
                },
                set: function (t) {
                    this._LuckDataList = t
                },
                enumerable: false,
                configurable: true
            }),
            e.prototype.ClearBasket = function () {
                this.isLuckMode = false,
                    this.LuckDataList = [],
                    this.LuckIndex = 0,
                    this.hisToryDate = [],
                    this.Level = 1,
                    this.IsTurbo = false,
                    this.AddAndReduceIdx = 0,
                    this.baseLevel = 1,
                    this.isAutoIng = false
            }
            ,
            e.prototype.OnBetResult = function (t) {
                this.BetResultData = t
                this.CheckMultiple(this.BetResultData)
                app.Client.OnEvent(r.Game1053HttpAPI.BetResult, t)
            }
            ,
            e.prototype.RequestBetHistory = function (t) {
                var e = {
                    token: app.UserManager().UserInfo.token,
                    page_size: 30,
                    page: t
                };
                app.HttpServerManager().SendHttpPack(r.Game1053HttpAPI.BetHistory, e)
            }
            ,
            e.prototype.RequestBetOneDayHistory = function (t) {
                var e = {
                    token: app.UserManager().UserInfo.token,
                    startDay: t.startDay,
                    endDay: t.endDay,
                    page_size: 30,
                    page: t.page
                };
                this.DailyListSend = e

                if (isgoServer && CC_BUILD) {
                    app.HttpServerManager().SendHttpPack(r.Game1053HttpAPI.BetOneDayHistory, e)
                }
                else {
                    t = {
                        "list": [
                            {
                                "day": 1706670000,
                                "time": 1706693912,
                                "bet": 1,
                                "level": 1,
                                "type": 2,
                                "order_id": "449015317538799617",
                                "change_gold": 145,
                                "result": [
                                    {
                                        "props": { //1花生 2橘子 3爆竹 4钱袋 5红包 6福 7wild
                                            "1": 1,
                                            "2": 2,
                                            "3": 3,
                                            "4": 7,
                                            "5": 7,
                                            "6": 7,
                                            "7": 4,
                                            "8": 5,
                                            "9": 6
                                        },
                                        "win_arrs": []
                                    },
                                    {
                                        "props": {
                                            "1": 4,
                                            "2": 4,
                                            "3": 4,
                                            "4": 7,
                                            "5": 7,
                                            "6": 7,
                                            "7": 4,
                                            "8": 4,
                                            "9": 4
                                        },
                                        "win_arrs": [{
                                            roll: 1,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        },
                                        {
                                            roll: 2,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        },
                                        {
                                            roll: 3,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        },
                                        {
                                            roll: 4,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        },
                                        {
                                            roll: 5,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        }]
                                    }
                                ],
                                "bet_gold": 5,
                                "end_gold": 11111
                            },
                            {
                                "day": 1706670000,
                                "time": 1706693912,
                                "bet": 1,
                                "level": 1,
                                "type": 1,
                                "order_id": "449015317538799617",
                                "change_gold": 75,
                                "result": [
                                    {
                                        "props": { //1花生 2橘子 3爆竹 4钱袋 5红包 6福 7wild
                                            "1": 4,
                                            "2": 1,
                                            "3": 5,
                                            "4": 2,
                                            "5": 7,
                                            "6": 4,
                                            "7": 5,
                                            "8": 2,
                                            "9": 4
                                        },
                                        "win_arrs": [{
                                            roll: 4,//1或 2或 3或 4或 5
                                            win_amount: 30,//bet*level*win_odd*multiple
                                            multiple: 1,//倍数
                                            win_odd: 30//3或 5或 15 或30 或50或 100或 300 
                                        },
                                        {
                                            roll: 5,//1或 2或 3或 4或 5
                                            win_amount: 50,//bet*level*win_odd*multiple
                                            multiple: 1,//倍数
                                            win_odd: 50//3或 5或 15 或30 或50或 100或 300 
                                        }]
                                    }
                                ],
                                "bet_gold": 5,
                                "end_gold": 11111
                            },
                        ],
                        "statistics": {
                            "total_bet_gold": 10,
                            "total_change_gold": 225
                        }
                    }
                    this.DailyList = t,
                        app.Client.OnEvent(r.Game1053HttpAPI.BetOneDayHistory, e)
                }
            }
            ,
            e.prototype.OnBetOneDayHistoryResult = function (t, send) {
                this.DailyList = t
                if (this.DailyList && this.DailyList.list == null) {
                    this.DailyList.list = []
                }
                app.Client.OnEvent(r.Game1053HttpAPI.BetOneDayHistory, send)
            }
            ,
            e.prototype.OnBetHistory = function (t) {
                this.MyHistory = t,
                    app.Client.OnEvent(r.Game1053HttpAPI.BetHistory)
            }
            ,
            e.prototype.bundleloadres = function (t, e) {
                t && (null != e ? a.BundleManager.LoadAssets(e, o.BundleNames.Game1053, cc.SpriteFrame).then(function (e) {
                    t.getComponent(cc.Sprite).spriteFrame = e
                }) : t.getComponent(cc.Sprite).spriteFrame = null)
            }
            ,
            e.prototype.bundleloadresmultiple = function (t, e) {
                t.getComponent(cc.Sprite).spriteFrame = e
            }
            ,
            e.prototype.GetSpriteFrame = function (t, e) {
                a.BundleManager.LoadAssets(t, o.BundleNames.Game1053, cc.SpriteFrame).then(function (t) {
                    return e(t)
                })
            }
            ,
            e.prototype.bundleLoadSpine = function (t, e, animationName) {
                if (!animationName) {
                    animationName = "win_idle"
                }
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1053, sp.SkeletonData).then(function (e) {
                    var i = t.getChildByName("SpineNode");
                    if (t.getChildByName("spr_prop").active = false,
                        i)
                        (n = i.getComponent(sp.Skeleton)).skeletonData = e,
                            i.active = true,
                            n.setAnimation(0, animationName, true);
                    else {
                        var n, o = new cc.Node("SpineNode");
                        (n = o.addComponent(sp.Skeleton)).skeletonData = e,
                            t.addChild(o),
                            n.setAnimation(0, animationName, true)
                    }
                })
            }
            ,
            e.prototype.bundleLoadPrefab = function (t, e, i, n) {
                var r = this;
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1053, cc.Prefab).then(function (e) {
                    if (t.getChildByName("wild")) {
                        var o = t.getChildByName("wild")
                        if (0 == n) {
                            o.active = false
                        }
                        else {
                            o.active = true
                        }
                        r.playWildAnimation(o, false, i)
                    }
                    else {
                        var o = cc.instantiate(e);
                        o.name = "wild",
                            0 == n && (o.active = false),
                            t.addChild(o),
                            r.playWildAnimation(o, false, i)
                    }
                })
            }
            ,
            e.prototype.playWildAnimation = function (t, e, i) {
                var n = i ? "idle" : "idle";
                t.getChildByName("wild_ani").getComponent(sp.Skeleton).setAnimation(0, n, true)
                //  e && !this.isLuckMode && app.SoundManager().PlaySound("game1053_wild2")
            }
            ,
            e.prototype.addThousandSeparator = function (t) {
                var e = Number(t).toFixed(2)
                    , i = e + "";
                return -1 !== i.indexOf(".") ? /^\d+\.\d$/.test(e.toString()) ? i + "0" : i : i + ".00"
            }
            ,
            e.prototype.GetDefaultBetCount = function () {
                var e = app.GameBetCommonMgr().betAmountConfig
                // var t = app.UserManager().UserInfo.gold / 100,
                // for (var i = 0; i < e.length; i++) {
                //     var n = e[i];
                //     if (n <= t)
                //         return n
                // }
                return e.length > 0 ? e[e.length - 1] : 1
            }
            ,
            e.prototype.getGameDefaultBetGold = function () {
                var t = app.UserManager().UserInfo.uid + "Game1053LocalBet1"
                    , e = app.LocalDataManager().GetConfigObject(t)
                    , i = "";
                if (null == e ? void 0 : e.level) {
                    if (e.sureWin == 1) {
                        i = e.subGold / 4
                    }
                    else {
                        i = e.subGold
                    }
                    if (app.GameBetCommonMgr().IndexJson[Number(i)])
                        return this.BaseBetNum = e.bet,
                            this.Level = e.level,
                            this.sureWin = e.sureWin,
                            this.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(i)),
                            i;
                }
                i = this.GetDefaultBetCount().toString(),
                    this.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(i));
                var n = app.GameBetCommonMgr().IndexJson[i];
                return n && (this.BaseBetNum = app.GameBetCommonMgr().betSizeConfig[n.sizeIndex],
                    this.Level = app.GameBetCommonMgr().betLevelConfig[n.LevelIndex]),
                    i
            }
            ,
            e.prototype.setGameDefaultBetGold = function (t) {
                var e = app.UserManager().UserInfo.uid + "Game1053LocalBet1";
                app.LocalDataManager().SetConfigObject(e, t)
            }
            ,
            e.prototype.LeaveRoom = function () {
                this.gameId = 0,
                    app.RoomManager().gameId = 0,
                    app.UserManager().UserInfo.roomMode = 0,
                    app.GameManager().BackHallScene()
            }
            ,
            e
    }(n.BaseHttpMgr);
i.Game1053Mgr = s;
var l = null;
i.GetModel = function () {
    return null == l && (l = new s),
        l
}
    ,
    module.exports = i
