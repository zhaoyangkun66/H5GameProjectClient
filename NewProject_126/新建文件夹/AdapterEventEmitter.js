let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
import s from './Utils'
import ew from './AudioAdapterConstant'
var  e = (
function() {
    function t() {
        this.t = Object.create(null),
        this.h = s.deferCallback(this)
    }
    return t.prototype.once = function(t, i, n) {
        this.on(t, i, n, true)
    }
    ,
    t.prototype.emit = function(t, i, n, e) {
        void 0 === e && (e = false);
        var o = this.t
          , c = o[t];
        c || (c = o[t] = []);
        for (var r = 0, h = function(o) {
            var h = c[o];
            h.id && h.id !== i || (r = o,
            a.h(function() {
                var c = h.fn;
                c !== s.emptyFunc && (h.once && this.off(t, c, h.id),
                c(i, n)),
                o === r && void 0 !== i && e && this.off(i)
            }))
        }, a = this, u = 0, l = c.length; u < l; u++)
            h(u)
    }
    ,
    t.prototype.on = function(t, i, n, s) {
        var e = this.t
          , o = e[t];
        o || (o = e[t] = []);
        for (var c = 0, r = o.length; c < r; c++) {
            var h = o[c];
            if (h.fn === i) {
                if (h.id === n)
                    return;
                if (!n || !h.id)
                    return
            }
        }
        o.push({
            id: n,
            fn: i,
            once: !!s
        })
    }
    ,
    t.prototype.off = function(t, i, n) {
        if (void 0 !== t)
            switch (typeof t) {
            case "number":
                return this.u(void 0, t);
            case "function":
                return this.u(t, i);
            default:
                return "number" == typeof i && (n = i,
                i = void 0),
                this.l(t, i, n)
            }
        else
            for (var s in this.t)
                this.t[s].length = 0
    }
    ,
    t.prototype.l = function(t, i, n) {
        var s = this.t[t];
        s && (void 0 !== i || void 0 !== n ? this.t[t] = s.filter(function(t) {
            return o(t, i, n)
        }) : s.length = 0)
    }
    ,
    t.prototype.u = function(t, i) {
        for (var n in this.t)
            this.t[n] = this.t[n].filter(function(n) {
                return o(n, t, i)
            })
    }
    ,
    t
}());
n.default = e,
module.exports = n
