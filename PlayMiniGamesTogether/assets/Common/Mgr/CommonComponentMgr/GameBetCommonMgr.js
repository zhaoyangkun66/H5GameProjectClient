let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameBetCommonMgr = undefined;
var o = require("../../Base/Singleton")
    , i = require("../../Bundle/BundleManager")
    , a = require("../../Bundle/EventDefine")
    , r = function (e) {
        function t() {
            var t = e.call(this) || this;
            return t._Level = 1,
                t.betLevelConfig = [],
                t.betLinesConfig = [],
                t.betAmountConfig = [],
                t.betSizeConfig = [],
                t.BaseBetNum = 2,
                t.baseLevel = 1,
                t.onLoad(),
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "GameBetCommonMgr"
            }
            ,
            t.prototype.onLoad = function () {
                this.Level = 1,
                    this.baseLevel = 1
            }
            ,
            t.prototype.InitDataConfig = function (e) {
                e ? (this.betSizeConfig = e.betSizeConfig,
                    this.betLevelConfig = e.betLevelConfig,
                    this.betLinesConfig = e.betLinesConfig) : (this.betSizeConfig = [0.08, 0.8, 3, 10].reverse(),
                        this.betLevelConfig = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].reverse(),
                        this.betLinesConfig = [5]),
                    this.SetbetAmountConfig()
            }
            ,
            Object.defineProperty(t.prototype, "Level", {
                get: function () {
                    return this._Level
                },
                set: function (e) {
                    this._Level = e
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetBetAmountConfigByLevel = function (e) {
                return 1 == this.Level && "100" == e ? {
                    sizeIndex: 1,
                    LevelIndex: 9,
                    LinesIndex: 0
                } : this.IndexJson[e]
            }
            ,
            t.prototype.SetbetAmountConfig = function () {
                this.IndexJson = {},
                    this.betAmountConfig = [];
                for (var e = 0; e < this.betSizeConfig.length; e++)
                    for (var t = this.betSizeConfig[e], n = 0; n < this.betLevelConfig.length; n++)
                        for (var o = this.betLevelConfig[n], i = 0; i < this.betLinesConfig.length; i++) {
                            var a = this.betLinesConfig[i]
                                , r = Big(Big(t).times(o).toNumber()).times(a).toNumber();
                            this.betAmountConfig.push(r),
                                this.IndexJson[r] = {
                                    sizeIndex: e,
                                    LevelIndex: n,
                                    LinesIndex: i
                                }
                        }
                for (var s = this.betAmountConfig, c = [], l = 0; l < s.length; l++)
                    -1 === c.indexOf(s[l]) && c.push(s[l]);
                this.betAmountConfig = c
            }
            ,
            t.prototype.LoadGameBet = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                var n = "GameBetCom"
                    , o = i.BundleManager.Instance.GetLoadedBundle(n);
                o ? cc.systemEvent.emit(a.default.ENTER_GAME_COMMON, {
                    customData: e
                }) : i.BundleManager.Instance.enterCommonBundle(n, e)
            }
            ,
            t
    }(o.Singleton);
n.GameBetCommonMgr = r,
    module.exports = n
