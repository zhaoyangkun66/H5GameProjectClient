let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var s = require("SystemModel")
  , e = require("WinThresholdsModel")
  , o = function(t) {
    function i() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(i, t),
    i.prototype.updateGameInfo = function(t) {
        var i = t.cs
          , n = t.ml
          , s = t.mxl
          , o = t.fbbm
          , c = t.wt;
        this.vv = i || [],
        this._v = n || [],
        this.pv = s,
        this.mv = o,
        this.bv = c ? new e.WinThresholdsModel(c) : void 0
    }
    ,
    Object.defineProperty(i.prototype, "betLevelList", {
        get: function() {
            return this._v
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "betSizeList", {
        get: function() {
            return this.vv
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "maxLineNumber", {
        get: function() {
            return this.pv
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "featureBuyBetMultiplier", {
        get: function() {
            return this.mv
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "winThresholds", {
        get: function() {
            return this.bv
        },
        enumerable: false,
        configurable: true
    }),
    i
}(s.default);
n.default = o,
module.exports = n
