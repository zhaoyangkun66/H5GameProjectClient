let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function() {
    function e() {
        e.obsArray = {}
    }
    return Object.defineProperty(e, "Inst", {
        get: function() {
            return e._instance || (e._instance = new e),
            e._instance
        },
        enumerable: false,
        configurable: true
    }),
    e.prototype.addEventListener = function(t, n, o) {
        for (var i in undefined === e.obsArray[t] && (e.obsArray[t] = []),
        e.obsArray[t]) {
            var a = e.obsArray[t][i];
            if (a.func == n && a.ob == o)
                return
        }
        e.obsArray[t].push({
            func: n,
            ob: o
        })
    }
    ,
    e.prototype.removeEventListener = function(t, n, o) {
        var i = false
          , a = e.obsArray[t];
        if (a)
            for (var r in a) {
                var s = a[r]
                  , c = s.func
                  , l = s.ob;
                n == c && o == l && (this.removeByElements(a, s),
                i = true)
            }
        return i
    }
    ,
    e.prototype.removeEventListenerWithObject = function(t) {
        for (var n in e.obsArray) {
            var o = e.obsArray[n];
            for (var i in o) {
                var a = o[i];
                a.ob == t && this.removeByElements(o, a)
            }
        }
    }
    ,
    e.prototype.cleanAllEventListener = function() {
        e.obsArray = {}
    }
    ,
    e.prototype.dispatchMsg = function(t, n) {
        var o = e.obsArray[t];
        if (undefined !== o)
            for (var i in o) {
                var a = o[i]
                  , r = a.func
                  , s = a.ob;
                r && s && r.apply(s, [n])
            }
        else
            console.warn("\u6d88\u606f\u5217\u8868\u4e2d\u4e0d\u5b58\u5728: " + t + " \u6570\u636e\uff1a" + n)
    }
    ,
    e.prototype.removeByElements = function(e, t) {
        for (var n = -1, o = 0; o < e.length; o++)
            if (e[o] == t) {
                n = o;
                break
            }
        0 <= n && e.splice(n, 1)
    }
    ,
    e._instance = null,
    e.obsArray = {},
    e
}();
n.default = o

module.exports = n
