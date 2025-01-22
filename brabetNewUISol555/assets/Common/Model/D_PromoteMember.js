let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    Object.defineProperty(t, "ins", {
        get: function() {
            return this._ins || (this._ins = new t),
            this._ins
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.infoData = function() {
        this.allDtailList = [],
        this.dtailList = [],
        this._allDtailType = ""
    }
    ,
    Object.defineProperty(t.prototype, "allDtailList", {
        get: function() {
            return this._allDtailList
        },
        set: function(e) {
            this._allDtailList = e
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "dtailList", {
        get: function() {
            return this._dtailList
        },
        set: function(e) {
            this._dtailList = e
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.addAllDtailList = function(e, t) {
        if (null == this.allDtailList || this._allDtailType != t.level)
            this.allDtailList = e;
        else
            for (var n = 0; n < e.length; n++) {
                var o = e[n];
                this._allDtailList.push(o)
            }
        this._allDtailType = t.level
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.default = o,
module.exports = n
