let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.WinThresholdsModel = void 0;
var s = require("Utils")
  , e = function() {
    function t(t) {
        t && (this.$p = JSON.parse(JSON.stringify(t)),
        this.pm = t.mw,
        this.mm = t.bw,
        this.bm = t.mgw,
        this.Sm = t.smgw)
    }
    return t.prototype.getAllThresholds = function(t, i, n) {
        var e = t * i * n;
        return {
            mediumWinThreshold: s.toDecimalWithExp(e * this.pm, 2),
            bigWinThreshold: s.toDecimalWithExp(e * this.mm, 2),
            megaWinThreshold: s.toDecimalWithExp(e * this.bm, 2),
            superMegaWinThreshold: s.toDecimalWithExp(e * this.Sm, 2)
        }
    }
    ,
    Object.defineProperty(t.prototype, "rawData", {
        get: function() {
            return this.$p
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "mediumWin", {
        get: function() {
            return this.pm
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "bigWin", {
        get: function() {
            return this.mm
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "megaWin", {
        get: function() {
            return this.bm
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "superMegaWin", {
        get: function() {
            return this.Sm
        },
        enumerable: false,
        configurable: true
    }),
    t
}();
n.WinThresholdsModel = e,
module.exports = n
