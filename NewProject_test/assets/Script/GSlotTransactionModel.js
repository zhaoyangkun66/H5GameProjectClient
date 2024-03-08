let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.SpinType = void 0;
var s = require("SlotTransactionModel");
(function(t) {
    t[t.NORMAL = 1] = "NORMAL",
    t[t.RESPIN = 4] = "RESPIN"
}
)(n.SpinType || (n.SpinType = {}));
var e = function(t) {
    function i() {
        var i = null !== t && t.apply(this, arguments) || this;
        return i.Rn = void 0,
        i.rs = void 0,
        i.hs = void 0,
        i.as = void 0,
        i.us = void 0,
        i
    }
    return __extends(i, t),
    i.prototype.updateSlotGameTransactionInfo = function(t) {
        var i = t.irs
          , n = t.fws
          , s = t.ist
          , e = t.wc
          , o = t.itw;
        this.Rn = i,
        this.rs = n,
        this.hs = s,
        this.as = e,
        this.us = o
    }
    ,
    Object.defineProperty(i.prototype, "isRespin", {
        get: function() {
            return this.Rn
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "featureWinSymbol", {
        get: function() {
            return this.rs
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "isShowTease", {
        get: function() {
            return this.hs
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "wildCount", {
        get: function() {
            return this.as
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(i.prototype, "isTriggerWild", {
        get: function() {
            return this.us
        },
        enumerable: false,
        configurable: true
    }),
    i
}(s.default);
n.default = e,
module.exports = n
