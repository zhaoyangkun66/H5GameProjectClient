let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
}),
    i.GetModel = i.Game1051Mgr = void 0;
var n = require("../../../Common/Base/BaseHttpMgr")
    , o = require("../../../Common/Bundle/BundleConfig")
    , a = require("../../../Common/Bundle/BundleManager")
    , r = require("./Game1051Define")
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
                e
        }
        return __extends(e, t),
            e.prototype.Init = function () {
                for (var e = [], i = 0; i < arguments.length; i++)
                    e[i] = arguments[i];
                t.prototype.Init.apply(this, e),
                    this.JS_Name = "Game1051Mgr",
                    this.RegHttpEvent(r.Game1051HttpAPI.GameDates, this.OnGameDates),
                    this.RegHttpEvent(r.Game1051HttpAPI.BetResult, this.OnBetResult),
                    this.RegHttpEvent(r.Game1051HttpAPI.BetHistory, this.OnBetHistory),
                    this.RegHttpEvent(r.Game1051HttpAPI.BetOneDayHistory, this.OnBetOneDayHistoryResult)
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
                app.HttpServerManager().SendHttpPack(r.Game1051HttpAPI.GameDates, t)
            }
            ,
            e.prototype.OnGameDates = function (t) {
                if (isgoServer) {
                }
                else {
                    t = {
                        "props": [
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    "1": 3,
                                    "4": 3,
                                    "7": 3,
                                },
                                "win_arrs": [{
                                    roll: 2,//1或 2或 3或 4或 5
                                    win_amount: 8,//bet*level*win_odd*multiple
                                    multiple: 10,//1倍或10倍
                                    win_odd: 8//3或 5或 8 或10 或25或 10或 250 
                                }]
                            },
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    "8": 7,
                                },
                                "win_arrs": []
                            },
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    "3": 3,
                                    "9": 7
                                },
                                "win_arrs": []
                            },
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    "2": 3
                                },
                                "win_arrs": []
                            },
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    "5": 3
                                },
                                "win_arrs": [{ roll: 1, win_amount: 8, multiple: 10, win_odd: 8 },
                                { roll: 4, win_amount: 8, multiple: 10, win_odd: 8 },
                                { roll: 5, win_amount: 8, multiple: 10, win_odd: 8 }
                                ]
                            },
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                },
                                "win_arrs": []
                            }
                        ],
                        "type": 2,//1普通类型 2幸运类型10倍
                        "luck_prop": 3,//幸运类型动画显示图片 0无 1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                        "level": 1,
                        "big": 0, //big_win=true时候big有效 0不播放big动画1播放big动画
                        "total_win": 100,//第一次打开界面显示total_win，后面显示bet_gold + change_gold,
                        "big_win": true,//0不打开big_win界面1打开big_win界面
                        "bet_gold": 0.5, //bet*level*5
                        "change_gold": 29.5,
                        "bet": 0.1, //bet size
                        "end_gold": 33,
                    }
                }
                this.GameDates = t,
                    app.Client.OnEvent(r.Game1051HttpAPI.GameDates)
            }
            ,
            e.prototype.RequestGameBet = function () {
                var t = {
                    token: app.UserManager().UserInfo.token,
                    bet_gold: this.BaseBetNum,
                    level: this.Level
                };
                if (isgoServer) {
                    app.HttpServerManager().SendHttpPack(r.Game1051HttpAPI.BetResult, t, false)
                }
                else {
                    if (Math.random() > 0) {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "1": 3,
                                        "4": 3,
                                        "7": 3,
                                    },
                                    "win_arrs": [{
                                        roll: 2,//1或 2或 3或 4或 5
                                        win_amount: 8,//bet*level*win_odd*multiple
                                        multiple: 10,//1倍或10倍
                                        win_odd: 8//3或 5或 8 或10 或25或 10或 250 
                                    }]
                                },
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "8": 7,
                                    },
                                    "win_arrs": []
                                },
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "3": 3,
                                        "9": 7
                                    },
                                    "win_arrs": []
                                },
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "2": 3
                                    },
                                    "win_arrs": []
                                },
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "5": 3
                                    },
                                    "win_arrs": [{ roll: 1, win_amount: 8, multiple: 10, win_odd: 8 },
                                    { roll: 4, win_amount: 8, multiple: 10, win_odd: 8 },
                                    { roll: 5, win_amount: 8, multiple: 10, win_odd: 8 }
                                    ]
                                },
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                    },
                                    "win_arrs": []
                                }
                            ],
                            "type": 2,//1普通类型 2幸运类型10倍
                            "luck_prop": 3,//幸运类型动画显示图片 0无 1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                            "level": 1,
                            "big": 0, //big_win=true时候big有效 0不播放big动画1播放big动画
                            "total_win": 100,//第一次打开界面显示total_win，后面显示bet_gold + change_gold,
                            "big_win": true,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 0.5, //bet*level*5
                            "change_gold": 29.5,
                            "bet": 0.1, //bet size
                            "end_gold": 33,
                        }
                    }
                    else {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        "1": 3,
                                        "2": 1,
                                        "3": 2,
                                        "4": 3,
                                        "5": 4,
                                        "6": 5,
                                        "7": 3,
                                        "8": 6,
                                        "9": 7
                                    },
                                    "win_arrs": [{
                                        roll: 2,//1或 2或 3或 4或 5
                                        win_amount: 5,//bet*level*win_odd*multiple
                                        multiple: 10,//1倍或10倍
                                        win_odd: 5//3或 5或 8 或10 或25或 10或 250 
                                    }]
                                }
                            ],
                            "type": 1,//1普通类型 2幸运类型10倍
                            "luck_prop": 0,//幸运类型动画显示图片 0无 1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                            "level": 1,
                            "big": 0, //big_win=true时候big有效 0不播放big动画1播放big动画
                            "total_win": 100,//第一次打开界面显示total_win，后面显示bet_gold + change_gold,
                            "big_win": true,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 0.5, //bet*level*5
                            "change_gold": 29.5,
                            "bet": 0.1, //bet size
                            "end_gold": 33,
                        }
                    }
                    app.Client.OnEvent(r.Game1051HttpAPI.BetResult, this.BetResultData)
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
                this.BetResultData = t,
                    app.Client.OnEvent(r.Game1051HttpAPI.BetResult, t)
            }
            ,
            e.prototype.RequestBetHistory = function (t) {
                var e = {
                    token: app.UserManager().UserInfo.token,
                    page_size: 30,
                    page: t
                };
                app.HttpServerManager().SendHttpPack(r.Game1051HttpAPI.BetHistory, e)
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
                app.HttpServerManager().SendHttpPack(r.Game1051HttpAPI.BetOneDayHistory, e)
            }
            ,
            e.prototype.OnBetOneDayHistoryResult = function (t, send) {
                if (isgoServer) {

                }
                else {
                    t = {
                        "list": [
                            {
                                "day": 1706670000,
                                "time": 1706693912,
                                "bet": 0.1,
                                "level": 1,
                                "type": 1,
                                "big": 1,
                                "order_id": "449015317538799617",
                                "change_gold": 29.5,
                                "result": [
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "1": 7,
                                            "2": 2,
                                            "3": 5,
                                            "4": 7,
                                            "5": 2,
                                            "6": 6,
                                            "7": 7,
                                            "8": 2,
                                            "9": 4
                                        },
                                        "win_arrs": [{
                                            roll: 2,//1或 2或 3或 4或 5
                                            win_amount: 25,//bet*level*win_odd*multiple
                                            multiple: 1,//1倍或10倍
                                            win_odd: 250//3或 5或 8 或10 或25或 10或 250 
                                        },
                                        { roll: 1, win_amount: 5, multiple: 10, win_odd: 5 }]
                                    }
                                ],
                                "bet_gold": 0.1,
                                "end_gold": 33
                            },
                            {
                                "day": 1706670000,
                                "time": 1706690998,
                                "bet": 0.1,
                                "level": 1,
                                "type": 2,
                                "big": 0,
                                "order_id": "449003091251560449",
                                "change_gold": -0.5,
                                "result": [
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "1": 3,
                                            "4": 3,
                                            "7": 3,
                                        },
                                        "win_arrs": [{
                                            roll: 2,//1或 2或 3或 4或 5
                                            win_amount: 8,//bet*level*win_odd*multiple
                                            multiple: 10,//1倍或10倍
                                            win_odd: 8//3或 5或 8 或10 或25或 10或 250 
                                        }]
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "8": 7,
                                        },
                                        "win_arrs": []
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "3": 3,
                                            "9": 7
                                        },
                                        "win_arrs": []
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "2": 3
                                        },
                                        "win_arrs": []
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "5": 3
                                        },
                                        "win_arrs": [{ roll: 1, win_amount: 8, multiple: 10, win_odd: 8 },
                                        { roll: 4, win_amount: 8, multiple: 10, win_odd: 8 },
                                        { roll: 5, win_amount: 8, multiple: 10, win_odd: 8 }
                                        ]
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                        },
                                        "win_arrs": []
                                    }
                                ],
                                "bet_gold": 0.5,
                                "end_gold": 0.8
                            },
                            {
                                "day": 1706670000,
                                "time": 1706690994,
                                "bet": 0.1,
                                "level": 1,
                                "type": 1,
                                "big": 0,
                                "order_id": "449003074827714561",
                                "change_gold": -0.5,
                                "result": [
                                    {
                                        "props": {
                                            "1": 2,
                                            "2": 3,
                                            "3": 4,
                                            "4": 5,
                                            "5": 5,
                                            "6": 2,
                                            "7": 4,
                                            "8": 6,
                                            "9": 6
                                        },
                                        "win_arrs": []
                                    }
                                ],
                                "bet_gold": 0.5,
                                "end_gold": 1.3
                            }
                        ],
                        "statistics": {
                            "total_bet_gold": 1.5,
                            "total_change_gold": -1.5
                        }
                    }


                }
                this.DailyList = t
                if (this.DailyList && this.DailyList.list == null) {
                    this.DailyList.list = []
                }
                app.Client.OnEvent(r.Game1051HttpAPI.BetOneDayHistory, send)
            }
            ,
            e.prototype.OnBetHistory = function (t) {
                if (false && isgoServer) {

                }
                else {
                    t = {
                        "list": [
                            {
                                "bet_gold": 0,
                                "change_gold": 0,
                                "day": 1707188400
                            },
                            {
                                "bet_gold": 1.5,
                                "change_gold": -1.5,
                                "day": 1706670000
                            }
                        ],
                        "statistics": {
                            "total_bet_gold": "1.50",
                            "total_change_gold": "-1.50"
                        }
                    }
                }


                this.MyHistory = t,
                    app.Client.OnEvent(r.Game1051HttpAPI.BetHistory)
            }
            ,
            e.prototype.bundleloadres = function (t, e) {
                t && (null != e ? a.BundleManager.LoadAssets(e, o.BundleNames.Game1051, cc.SpriteFrame).then(function (e) {
                    t.getComponent(cc.Sprite).spriteFrame = e
                }) : t.getComponent(cc.Sprite).spriteFrame = null)
            }
            ,
            e.prototype.GetSpriteFrame = function (t, e) {
                a.BundleManager.LoadAssets(t, o.BundleNames.Game1051, cc.SpriteFrame).then(function (t) {
                    return e(t)
                })
            }
            ,
            e.prototype.bundleLoadSpine = function (t, e) {
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1051, sp.SkeletonData).then(function (e) {
                    var i = t.getChildByName("SpineNode");
                    if (t.getChildByName("spr_prop").active = false,
                        i)
                        (n = i.getComponent(sp.Skeleton)).skeletonData = e,
                            i.active = true,
                            n.setAnimation(0, "win_idle", true);
                    else {
                        var n, o = new cc.Node("SpineNode");
                        (n = o.addComponent(sp.Skeleton)).skeletonData = e,
                            t.addChild(o),
                            n.setAnimation(0, "win_idle", true)
                    }
                })
            }
            ,
            e.prototype.bundleLoadPrefab = function (t, e, i, n) {
                var r = this;
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1051, cc.Prefab).then(function (e) {
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
                var n = i ? "win" : "idle";
                i && t.getChildByName("wild_ani").getComponent(sp.Skeleton).setAnimation(0, n, true)
                // e && !this.isLuckMode && app.SoundManager().PlaySound("game1051_wild2")
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
                var t = app.UserManager().UserInfo.uid + "Game1051LocalBet"
                    , e = app.LocalDataManager().GetConfigObject(t)
                    , i = "";
                if ((null == e ? void 0 : e.level) && (i = e.subGold,
                    app.GameBetCommonMgr().IndexJson[Number(i)]))
                    return this.BaseBetNum = e.bet,
                        this.Level = e.level,
                        this.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(i)),
                        i;
                i = this.GetDefaultBetCount().toString(),
                    this.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(i));
                var n = app.GameBetCommonMgr().IndexJson[i];
                return n && (this.BaseBetNum = app.GameBetCommonMgr().betSizeConfig[n.sizeIndex],
                    this.Level = app.GameBetCommonMgr().betLevelConfig[n.LevelIndex]),
                    i
            }
            ,
            e.prototype.setGameDefaultBetGold = function (t) {
                var e = app.UserManager().UserInfo.uid + "Game1051LocalBet";
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
i.Game1051Mgr = s;
var l = null;
i.GetModel = function () {
    return null == l && (l = new s),
        l
}
    ,
    module.exports = i
