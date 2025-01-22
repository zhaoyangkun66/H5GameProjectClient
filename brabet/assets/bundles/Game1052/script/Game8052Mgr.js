let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
}),
    i.GetModel = i.Game1052Mgr = void 0;
var n = require("../../../Common/Base/BaseHttpMgr")
    , o = require("../../../Common/Bundle/BundleConfig")
    , a = require("../../../Common/Bundle/BundleManager")
    , r = require("./Game1052Define")
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
                    this.JS_Name = "Game1052Mgr",
                    this.RegHttpEvent(r.Game1052HttpAPI.GameDates, this.OnGameDates),
                    this.RegHttpEvent(r.Game1052HttpAPI.BetResult, this.OnBetResult),
                    this.RegHttpEvent(r.Game1052HttpAPI.BetHistory, this.OnBetHistory),
                    this.RegHttpEvent(r.Game1052HttpAPI.BetOneDayHistory, this.OnBetOneDayHistoryResult)
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

                if (isgoServer) {// && CC_BUILD
                    app.HttpServerManager().SendHttpPack(r.Game1052HttpAPI.GameDates, t)
                }
                else {
                    this.GameDates = {
                        "props": [
                            {
                                "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
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
                                "multiple": [5],//2或 5或 10 普通类型一个或两个数。
                                "win_arrs": []
                            }
                        ],
                        "type": 1,//1普通类型 2幸运类型10倍
                        "level": 1,
                        "total_win": 350,//bet_gold + change_gold,
                        "big_win": true,//0不打开big_win界面1打开big_win界面
                        "bet_gold": 10, //bet*level*5
                        "change_gold": 340,
                        "bet": 2, //bet size
                        "end_gold": 1000,
                    }
                    this.CheckMultiple(this.GameDates)
                    setTimeout(function () {
                        app.Client.OnEvent(r.Game1052HttpAPI.GameDates)
                    }, 300);

                }
            }
            ,
            e.prototype.OnGameDates = function (t) {
                this.GameDates = t
                this.CheckMultiple(this.GameDates)
                app.Client.OnEvent(r.Game1052HttpAPI.GameDates)
            }
            ,
            e.prototype.CheckMultiple = function (ResultData) {
                if (ResultData.type == 2) {
                    ResultData.big_win = true
                    for (let index = 0; index < ResultData.props.length; index++) {
                        if (ResultData.props[index].multiple.length > 4) {
                            ResultData.props[index].multiple = []
                        }
                    }
                }
                else {
                    for (let index = 0; index < ResultData.props.length; index++) {
                        if (ResultData.props[index].multiple.length > 2) {
                            ResultData.props[index].multiple = []
                        }
                    }
                }
            }
            ,
            e.prototype.RequestGameBet = function () {
                var t = {
                    token: app.UserManager().UserInfo.token,
                    bet_gold: this.BaseBetNum,
                    level: this.Level,
                    sureWin: this.sureWin
                };
                if (isgoServer) {// && CC_BUILD
                    app.HttpServerManager().SendHttpPack(r.Game1052HttpAPI.BetResult, t, false)
                }
                else {
                    if (Math.random() > 0) {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1铜钱 2绳结 3爆竹 4灯笼 5红包 6元宝 7wild
                                        "1": 1,
                                        "2": 1,
                                        "3": 3,
                                        "4": 4,
                                        "5": 1,
                                        "6": 6,
                                        "7": 7,
                                        "8": 1,
                                        "9": 7
                                    },
                                    "multiple": [2, 5, 10],//2或 5或 10 幸运类型三个或四个数。三个数时实际倍数三个数相加，四个数时实际倍数中间两个数相加
                                    "win_arrs": [{
                                        roll: 1,//1或 2或 3或 4或 5
                                        win_amount: 68,//bet*level*win_odd*multiple
                                        multiple: 17,//倍速
                                        win_odd: 2//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 2,
                                        "2": 1,
                                        "3": 2,
                                        "4": 2,
                                        "5": 4,
                                        "6": 6,
                                        "7": 2,
                                        "8": 2,
                                        "9": 7
                                    },
                                    "multiple": [2, 2, 10],
                                    "win_arrs": [{
                                        roll: 2,//1或 2或 3或 4或 5
                                        win_amount: 84,//bet*level*win_odd*multiple
                                        multiple: 14,//
                                        win_odd: 3//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 3,
                                        "2": 1,
                                        "3": 3,
                                        "4": 3,
                                        "5": 6,
                                        "6": 3,
                                        "7": 3,
                                        "8": 6,
                                        "9": 3
                                    },
                                    "multiple": [2, 5, 10, 2],//
                                    "win_arrs": [{
                                        roll: 3,//1或 2或 3或 4或 5
                                        win_amount: 150,//bet*level*win_odd*multiple
                                        multiple: 15,//
                                        win_odd: 5//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 4,
                                        "2": 1,
                                        "3": 6,
                                        "4": 3,
                                        "5": 4,
                                        "6": 5,
                                        "7": 2,
                                        "8": 6,
                                        "9": 4
                                    },
                                    "multiple": [5, 5, 10],
                                    "win_arrs": [{
                                        roll: 4,//1或 2或 3或 4或 5
                                        win_amount: 400,//bet*level*win_odd*multiple
                                        multiple: 20,//
                                        win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 3,
                                        "2": 1,
                                        "3": 5,
                                        "4": 2,
                                        "5": 5,
                                        "6": 4,
                                        "7": 5,
                                        "8": 2,
                                        "9": 7
                                    },
                                    "multiple": [2, 5, 5],
                                    "win_arrs": [{
                                        roll: 5,//1或 2或 3或 4或 5
                                        win_amount: 600,//bet*level*win_odd*multiple
                                        multiple: 12,
                                        win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 3,
                                        "2": 1,
                                        "3": 4,
                                        "4": 4,
                                        "5": 2,
                                        "6": 4,
                                        "7": 3,
                                        "8": 6,
                                        "9": 7
                                    },
                                    "multiple": [2, 5, 10, 5],
                                    "win_arrs": []
                                },
                                {
                                    "props": {
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
                                    "multiple": [2, 5, 10, 10],
                                    "win_arrs": [{
                                        roll: 4,//1或 2或 3或 4或 5
                                        win_amount: 300,//bet*level*win_odd*multiple
                                        multiple: 15,
                                        win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                    },
                                    {
                                        roll: 5,//1或 2或 3或 4或 5
                                        win_amount: 750,//bet*level*win_odd*multiple
                                        multiple: 15,
                                        win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                },
                                {
                                    "props": {
                                        "1": 3,
                                        "2": 1,
                                        "3": 4,
                                        "4": 4,
                                        "5": 4,
                                        "6": 5,
                                        "7": 3,
                                        "8": 6,
                                        "9": 7
                                    },
                                    "multiple": [2, 10, 5, 10],
                                    "win_arrs": []
                                }
                            ],
                            "type": 2,//1普通类型 2幸运类型
                            "level": 1,
                            "total_win": 2352,//bet_gold + change_gold,
                            "big_win": false,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 10, //bet*level*5
                            "change_gold": 2342,
                            "bet": 2, //bet size
                            "end_gold": 1000,
                        }
                    }
                    else {
                        this.BetResultData = {
                            "props": [
                                {
                                    "props": { //1铜钱 2绳结 3爆竹 4灯笼 5红包 6元宝 7wild
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
                                    "multiple": [5],//2或 5或 10 普通类型一个或两个数。
                                    "win_arrs": [{
                                        roll: 4,//1或 2或 3或 4或 5
                                        win_amount: 100,//bet*level*win_odd*multiple
                                        multiple: 5,//倍数
                                        win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                    },
                                    {
                                        roll: 5,//1或 2或 3或 4或 5
                                        win_amount: 250,//bet*level*win_odd*multiple
                                        multiple: 5,//倍数
                                        win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                    }]
                                }
                            ],
                            "type": 1,//1普通类型 2幸运类型
                            "level": 1,
                            "total_win": 350,//bet_gold + change_gold,
                            "big_win": true,//0不打开big_win界面1打开big_win界面
                            "bet_gold": 10, //bet*level*5
                            "change_gold": 340,
                            "bet": 2, //bet size
                            "end_gold": 1000,
                        }
                        let multipleRandom = [2, 5, 10]
                        if (Math.random() > 0.5) {
                            this.BetResultData.props[0].multiple = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                        }
                        else {
                            this.BetResultData.props[0].multiple = [multipleRandom[Math.round(2 * Math.random())]]
                        }
                    }
                    this.CheckMultiple(this.BetResultData)
                    app.Client.OnEvent(r.Game1052HttpAPI.BetResult, this.BetResultData)
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
                app.Client.OnEvent(r.Game1052HttpAPI.BetResult, t)
            }
            ,
            e.prototype.RequestBetHistory = function (t) {
                var e = {
                    token: app.UserManager().UserInfo.token,
                    page_size: 30,
                    page: t
                };
                app.HttpServerManager().SendHttpPack(r.Game1052HttpAPI.BetHistory, e)
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
                app.HttpServerManager().SendHttpPack(r.Game1052HttpAPI.BetOneDayHistory, e)
                if (isgoServer) {

                }
                else {
                    t = {
                        "list": [
                            {
                                "day": 1706670000,
                                "time": 1706693912,
                                "bet": 2,
                                "level": 1,
                                "type": 2,
                                "order_id": "449015317538799617",
                                "change_gold": 2332,
                                "result": [
                                    {
                                        "props": { //1铜钱 2绳结 3爆竹 4灯笼 5红包 6元宝 7wild
                                            "1": 1,
                                            "2": 1,
                                            "3": 3,
                                            "4": 4,
                                            "5": 1,
                                            "6": 6,
                                            "7": 7,
                                            "8": 1,
                                            "9": 7
                                        },
                                        "multiple": [2, 5, 10],//2或 5或 10 幸运类型三个或四个数。三个数时实际倍数三个数相加，四个数时实际倍数中间两个数相加
                                        "win_arrs": [{
                                            roll: 1,//1或 2或 3或 4或 5
                                            win_amount: 68,//bet*level*win_odd*multiple
                                            multiple: 17,//倍速
                                            win_odd: 2//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": {
                                            "1": 2,
                                            "2": 1,
                                            "3": 2,
                                            "4": 2,
                                            "5": 4,
                                            "6": 6,
                                            "7": 2,
                                            "8": 2,
                                            "9": 7
                                        },
                                        "multiple": [2, 2, 10],
                                        "win_arrs": [{
                                            roll: 2,//1或 2或 3或 4或 5
                                            win_amount: 84,//bet*level*win_odd*multiple
                                            multiple: 14,//
                                            win_odd: 3//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": {
                                            "1": 3,
                                            "2": 1,
                                            "3": 3,
                                            "4": 3,
                                            "5": 6,
                                            "6": 3,
                                            "7": 3,
                                            "8": 6,
                                            "9": 3
                                        },
                                        "multiple": [2, 5, 10, 2],//
                                        "win_arrs": [{
                                            roll: 3,//1或 2或 3或 4或 5
                                            win_amount: 150,//bet*level*win_odd*multiple
                                            multiple: 15,//
                                            win_odd: 5//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": {
                                            "1": 4,
                                            "2": 1,
                                            "3": 6,
                                            "4": 3,
                                            "5": 4,
                                            "6": 5,
                                            "7": 2,
                                            "8": 6,
                                            "9": 4
                                        },
                                        "multiple": [5, 5, 10],
                                        "win_arrs": [{
                                            roll: 4,//1或 2或 3或 4或 5
                                            win_amount: 400,//bet*level*win_odd*multiple
                                            multiple: 20,//
                                            win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "1": 3,
                                            "2": 1,
                                            "3": 5,
                                            "4": 2,
                                            "5": 5,
                                            "6": 4,
                                            "7": 5,
                                            "8": 2,
                                            "9": 7
                                        },
                                        "multiple": [2, 5, 5],
                                        "win_arrs": [{
                                            roll: 5,//1或 2或 3或 4或 5
                                            win_amount: 600,//bet*level*win_odd*multiple
                                            multiple: 12,
                                            win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "1": 3,
                                            "2": 1,
                                            "3": 4,
                                            "4": 4,
                                            "5": 2,
                                            "6": 4,
                                            "7": 3,
                                            "8": 6,
                                            "9": 7
                                        },
                                        "multiple": [2, 5, 10, 5],
                                        "win_arrs": []
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
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
                                        "multiple": [2, 5, 10, 10],
                                        "win_arrs": [{
                                            roll: 4,//1或 2或 3或 4或 5
                                            win_amount: 300,//bet*level*win_odd*multiple
                                            multiple: 15,
                                            win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                        },
                                        {
                                            roll: 5,//1或 2或 3或 4或 5
                                            win_amount: 750,//bet*level*win_odd*multiple
                                            multiple: 15,
                                            win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    },
                                    {
                                        "props": { //1竹子 2水果 3铜钱 4武器 5钱袋 6玉佩 7wild
                                            "1": 3,
                                            "2": 1,
                                            "3": 4,
                                            "4": 4,
                                            "5": 4,
                                            "6": 5,
                                            "7": 3,
                                            "8": 6,
                                            "9": 7
                                        },
                                        "multiple": [2, 10, 5, 10],
                                        "win_arrs": []
                                    }
                                ],
                                "bet_gold": 10,
                                "end_gold": 11111
                            },
                            {
                                "day": 1706670000,
                                "time": 1706693912,
                                "bet": 0.1,
                                "level": 1,
                                "type": 1,
                                "order_id": "449015317538799617",
                                "change_gold": 340,
                                "result": [
                                    {
                                        "props": { //1铜钱 2绳结 3爆竹 4灯笼 5红包 6元宝 7wild
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
                                        "multiple": [5],//2或 5或 10 普通类型一个或两个数。
                                        "win_arrs": [{
                                            roll: 4,//1或 2或 3或 4或 5
                                            win_amount: 100,//bet*level*win_odd*multiple
                                            multiple: 5,//倍数
                                            win_odd: 10//2或 3或 5 或10 或25或 50或 100 
                                        },
                                        {
                                            roll: 5,//1或 2或 3或 4或 5
                                            win_amount: 250,//bet*level*win_odd*multiple
                                            multiple: 5,//倍数
                                            win_odd: 25//2或 3或 5 或10 或25或 50或 100 
                                        }]
                                    }
                                ],
                                "bet_gold": 10,
                                "end_gold": 11111
                            },
                            {
                                "day": 1706670000,
                                "time": 1706690998,
                                "bet": 2,
                                "level": 1,
                                "type": 1,
                                "order_id": "449003091251560449",
                                "change_gold": -10,
                                "result": [
                                    {
                                        "props": {
                                            "1": 4,
                                            "2": 4,
                                            "3": 2,
                                            "4": 1,
                                            "5": 6,
                                            "6": 3,
                                            "7": 1,
                                            "8": 7,
                                            "9": 2
                                        },
                                        "multiple": [5],
                                        "win_arrs": []
                                    }
                                ],
                                "bet_gold": 10,
                                "end_gold": 11111
                            }
                        ],
                        "statistics": {
                            "total_bet_gold": 30,
                            "total_change_gold": 2662
                        }
                    }
                    this.DailyList = t,
                        app.Client.OnEvent(r.Game1052HttpAPI.BetOneDayHistory, e)
                }
            }
            ,
            e.prototype.OnBetOneDayHistoryResult = function (t, send) {
                this.DailyList = t
                if (this.DailyList && this.DailyList.list == null) {
                    this.DailyList.list = []
                }
                app.Client.OnEvent(r.Game1052HttpAPI.BetOneDayHistory, send)
            }
            ,
            e.prototype.OnBetHistory = function (t) {
                this.MyHistory = t,
                    app.Client.OnEvent(r.Game1052HttpAPI.BetHistory)
            }
            ,
            e.prototype.bundleloadres = function (t, e) {
                t && (null != e ? a.BundleManager.LoadAssets(e, o.BundleNames.Game1052, cc.SpriteFrame).then(function (e) {
                    t.getComponent(cc.Sprite).spriteFrame = e
                }) : t.getComponent(cc.Sprite).spriteFrame = null)
            }
            ,
            e.prototype.bundleloadresmultiple = function (t, e) {
                t.getComponent(cc.Sprite).spriteFrame = e
            }
            ,
            e.prototype.GetSpriteFrame = function (t, e) {
                a.BundleManager.LoadAssets(t, o.BundleNames.Game1052, cc.SpriteFrame).then(function (t) {
                    return e(t)
                })
            }
            ,
            e.prototype.bundleLoadSpine = function (t, e) {
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1052, sp.SkeletonData).then(function (e) {
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
                a.BundleManager.LoadAssets(e, o.BundleNames.Game1052, cc.Prefab).then(function (e) {
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
                //  e && !this.isLuckMode && app.SoundManager().PlaySound("game1052_wild2")
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
                var t = app.UserManager().UserInfo.uid + "Game1052LocalBet1"
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
                var e = app.UserManager().UserInfo.uid + "Game1052LocalBet1";
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
i.Game1052Mgr = s;
var l = null;
i.GetModel = function () {
    return null == l && (l = new s),
        l
}
    ,
    module.exports = i
