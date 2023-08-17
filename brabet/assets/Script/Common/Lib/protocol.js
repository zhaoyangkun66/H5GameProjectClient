(function(e, n) {
    var r = e
      , o = r.Package = {}
      , t = r.Message = {};
    o.TYPE_HANDSHAKE = 1,
    o.TYPE_HANDSHAKE_ACK = 2,
    o.TYPE_HEARTBEAT = 3,
    o.TYPE_DATA = 4,
    o.TYPE_KICK = 5,
    t.TYPE_REQUEST = 0,
    t.TYPE_NOTIFY = 1,
    t.TYPE_RESPONSE = 2,
    t.TYPE_PUSH = 3,
    r.strencode = function(e) {
        for (var r = new n(3 * e.length), o = 0, t = 0; t < e.length; t++) {
            var u, i = e.charCodeAt(t);
            u = i <= 127 ? [i] : i <= 2047 ? [192 | i >> 6, 128 | 63 & i] : [224 | i >> 12, 128 | (4032 & i) >> 6, 128 | 63 & i];
            for (var E = 0; E < u.length; E++)
                r[o] = u[E],
                ++o
        }
        var l = new n(o);
        return f(l, 0, r, 0, o),
        l
    }
    ,
    r.strdecode = function(e) {
        for (var r = new n(e), o = [], t = 0, f = 0, u = r.length; t < u; )
            r[t] < 128 ? (f = r[t],
            t += 1) : r[t] < 224 ? (f = ((63 & r[t]) << 6) + (63 & r[t + 1]),
            t += 2) : (f = ((15 & r[t]) << 12) + ((63 & r[t + 1]) << 6) + (63 & r[t + 2]),
            t += 3),
            o.push(f);
        return String.fromCharCode.apply(null, o)
    }
    ,
    o.encode = function(e, r) {
        var o = r ? r.length : 0
          , t = new n(4 + o)
          , u = 0;
        return t[u++] = 255 & e,
        t[u++] = o >> 16 & 255,
        t[u++] = o >> 8 & 255,
        t[u++] = 255 & o,
        r && f(t, 4, r, 0, o),
        t
    }
    ,
    o.decode = function(e) {
        for (var r = 0, o = new n(e), t = 0, u = []; r < o.length; ) {
            var i = o[r++]
              , E = (t = (o[r++] << 16 | o[r++] << 8 | o[r++]) >>> 0) ? new n(t) : null;
            f(E, 0, o, r, t),
            r += t,
            u.push({
                type: i,
                body: E
            })
        }
        return 1 === u.length ? u[0] : u
    }
    ,
    t.encode = function(e, o, t, f, c) {
        var d = 1 + (u(o) ? E(e) : 0);
        if (i(o))
            if (t) {
                if ("number" != typeof f)
                    throw new Error("error flag for number route!");
                d += 2
            } else if (d += 1,
            f) {
                if ((f = r.strencode(f)).length > 255)
                    throw new Error("route maxlength is overflow");
                d += f.length
            }
        c && (d += c.length);
        var T = new n(d)
          , P = 0;
        return P = l(o, t, T, P),
        u(o) && (P = a(e, T, P)),
        i(o) && (P = w(t, f, T, P)),
        c && (P = h(c, T, P)),
        T
    }
    ,
    t.decode = function(e) {
        var o = new n(e)
          , t = o.length || o.byteLength
          , E = 0
          , l = 0
          , a = null
          , w = o[E++]
          , h = 1 & w
          , c = w >> 1 & 7;
        if (u(c)) {
            var d = parseInt(o[E])
              , T = 0;
            do {
                l += (127 & (d = parseInt(o[E]))) * Math.pow(2, 7 * T),
                E++,
                T++
            } while (d >= 128)
        }
        if (i(c))
            if (h)
                a = o[E++] << 8 | o[E++];
            else {
                var P = o[E++];
                P ? (a = new n(P),
                f(a, 0, o, E, P),
                a = r.strdecode(a)) : a = "",
                E += P
            }
        var g = t - E
          , s = new n(g);
        return f(s, 0, o, E, g),
        {
            id: l,
            type: c,
            compressRoute: h,
            route: a,
            body: s
        }
    }
    ;
    var f = function(e, n, r, o, t) {
        if ("function" == typeof r.copy)
            r.copy(e, n, o, o + t);
        else
            for (var f = 0; f < t; f++)
                e[n++] = r[o++]
    }
      , u = function(e) {
        return e === t.TYPE_REQUEST || e === t.TYPE_RESPONSE
    }
      , i = function(e) {
        return e === t.TYPE_REQUEST || e === t.TYPE_NOTIFY || e === t.TYPE_PUSH
    }
      , E = function(e) {
        var n = 0;
        do {
            n += 1,
            e >>= 7
        } while (e > 0);
        return n
    }
      , l = function(e, n, r, o) {
        if (e !== t.TYPE_REQUEST && e !== t.TYPE_NOTIFY && e !== t.TYPE_RESPONSE && e !== t.TYPE_PUSH)
            throw new Error("unkonw message type: " + e);
        return r[o] = e << 1 | (n ? 1 : 0),
        o + 1
    }
      , a = function(e, n, r) {
        do {
            var o = e % 128
              , t = Math.floor(e / 128);
            0 !== t && (o += 128),
            n[r++] = o,
            e = t
        } while (0 !== e);
        return r
    }
      , w = function(e, n, r, o) {
        if (e) {
            if (n > 65535)
                throw new Error("route number is overflow");
            r[o++] = n >> 8 & 255,
            r[o++] = 255 & n
        } else
            n ? (r[o++] = 255 & n.length,
            f(r, o, n, 0, n.length),
            o += n.length) : r[o++] = 0;
        return o
    }
      , h = function(e, n, r) {
        return f(n, r, e, 0, e.length),
        r + e.length
    };
    "undefined" != typeof window && (window.Protocol = r)
}
)("undefined" == typeof window ? module.exports : this.Protocol = {}, "undefined" == typeof window ? Buffer : Uint8Array);
