var MD5 = function(n) {
    function r(n) {
        for (var r = [], t = 0; t < 8; t++)
            r.push(255 & n),
            n >>>= 8;
        return r
    }
    function t(n, r, t) {
        return n & r | ~n & t
    }
    function e(n, r, t) {
        return t & n | ~t & r
    }
    function o(n, r, t) {
        return n ^ r ^ t
    }
    function a(n, r, t) {
        return r ^ (n | ~t)
    }
    function f(n, r) {
        return n[r + 3] << 24 | n[r + 2] << 16 | n[r + 1] << 8 | n[r]
    }
    function u(n) {
        for (var r = [], t = 0; t < n.length; t++)
            if (n.charCodeAt(t) <= 127)
                r.push(n.charCodeAt(t));
            else
                for (var e = encodeURIComponent(n.charAt(t)).substr(1).split("%"), o = 0; o < e.length; o++)
                    r.push(parseInt(e[o], 16));
        return r
    }
    function i(n, r, t, e) {
        for (var o, a = "", f = 0, u = 0, i = 3; i >= 0; i--)
            f = 255 & (u = arguments[i]),
            f <<= 8,
            f |= 255 & (u >>>= 8),
            f <<= 8,
            f |= 255 & (u >>>= 8),
            f <<= 8,
            a += (undefined,
            o = ((f |= u >>>= 8) >>> 0).toString(16),
            "00000000".substr(0, 8 - o.length) + o);
        return a
    }
    function c(n) {
        for (var r = new Array(n.length), t = 0; t < n.length; t++)
            r[t] = n[t];
        return r
    }
    var s = null;
    function y(n) {
        return n.slice()
    }
    var h = null;
    function l(n, r) {
        return 4294967295 & n + r
    }
    return "string" == typeof n ? s = u(n) : n.constructor == Array ? 0 === n.length ? s = y(n) : "string" == typeof n[0] ? s = function(n) {
        for (var r = [], t = 0; t < n.length; t++)
            r = r.concat(u(n[t]));
        return r
    }(n) : "number" == typeof n[0] ? s = y(n) : h = typeof n[0] : "undefined" != typeof ArrayBuffer ? n instanceof ArrayBuffer ? s = c(new Uint8Array(n)) : n instanceof Uint8Array || n instanceof Int8Array ? s = c(n) : n instanceof Uint32Array || n instanceof Int32Array || n instanceof Uint16Array || n instanceof Int16Array || n instanceof Float32Array || n instanceof Float64Array ? s = c(new Uint8Array(n.buffer)) : h = typeof n : h = typeof n,
    h && alert("MD5 type mismatch, cannot process " + h),
    function() {
        function n(n, r, t, e) {
            var o, a, f = I;
            I = U,
            U = d,
            d = l(d, (o = l(g, l(n, l(r, t)))) << (a = e) & 4294967295 | o >>> 32 - a),
            g = f
        }
        var u = s.length;
        s.push(128);
        var c = s.length % 64;
        if (c > 56) {
            for (var y = 0; y < 64 - c; y++)
                s.push(0);
            c = s.length % 64
        }
        for (y = 0; y < 56 - c; y++)
            s.push(0);
        s = s.concat(r(8 * u));
        var h = 1732584193
          , p = 4023233417
          , A = 2562383102
          , v = 271733878
          , g = 0
          , d = 0
          , U = 0
          , I = 0;
        for (y = 0; y < s.length / 64; y++) {
            g = h;
            var b = 64 * y;
            n(t(d = p, U = A, I = v), 3614090360, f(s, b), 7),
            n(t(d, U, I), 3905402710, f(s, b + 4), 12),
            n(t(d, U, I), 606105819, f(s, b + 8), 17),
            n(t(d, U, I), 3250441966, f(s, b + 12), 22),
            n(t(d, U, I), 4118548399, f(s, b + 16), 7),
            n(t(d, U, I), 1200080426, f(s, b + 20), 12),
            n(t(d, U, I), 2821735955, f(s, b + 24), 17),
            n(t(d, U, I), 4249261313, f(s, b + 28), 22),
            n(t(d, U, I), 1770035416, f(s, b + 32), 7),
            n(t(d, U, I), 2336552879, f(s, b + 36), 12),
            n(t(d, U, I), 4294925233, f(s, b + 40), 17),
            n(t(d, U, I), 2304563134, f(s, b + 44), 22),
            n(t(d, U, I), 1804603682, f(s, b + 48), 7),
            n(t(d, U, I), 4254626195, f(s, b + 52), 12),
            n(t(d, U, I), 2792965006, f(s, b + 56), 17),
            n(t(d, U, I), 1236535329, f(s, b + 60), 22),
            n(e(d, U, I), 4129170786, f(s, b + 4), 5),
            n(e(d, U, I), 3225465664, f(s, b + 24), 9),
            n(e(d, U, I), 643717713, f(s, b + 44), 14),
            n(e(d, U, I), 3921069994, f(s, b), 20),
            n(e(d, U, I), 3593408605, f(s, b + 20), 5),
            n(e(d, U, I), 38016083, f(s, b + 40), 9),
            n(e(d, U, I), 3634488961, f(s, b + 60), 14),
            n(e(d, U, I), 3889429448, f(s, b + 16), 20),
            n(e(d, U, I), 568446438, f(s, b + 36), 5),
            n(e(d, U, I), 3275163606, f(s, b + 56), 9),
            n(e(d, U, I), 4107603335, f(s, b + 12), 14),
            n(e(d, U, I), 1163531501, f(s, b + 32), 20),
            n(e(d, U, I), 2850285829, f(s, b + 52), 5),
            n(e(d, U, I), 4243563512, f(s, b + 8), 9),
            n(e(d, U, I), 1735328473, f(s, b + 28), 14),
            n(e(d, U, I), 2368359562, f(s, b + 48), 20),
            n(o(d, U, I), 4294588738, f(s, b + 20), 4),
            n(o(d, U, I), 2272392833, f(s, b + 32), 11),
            n(o(d, U, I), 1839030562, f(s, b + 44), 16),
            n(o(d, U, I), 4259657740, f(s, b + 56), 23),
            n(o(d, U, I), 2763975236, f(s, b + 4), 4),
            n(o(d, U, I), 1272893353, f(s, b + 16), 11),
            n(o(d, U, I), 4139469664, f(s, b + 28), 16),
            n(o(d, U, I), 3200236656, f(s, b + 40), 23),
            n(o(d, U, I), 681279174, f(s, b + 52), 4),
            n(o(d, U, I), 3936430074, f(s, b), 11),
            n(o(d, U, I), 3572445317, f(s, b + 12), 16),
            n(o(d, U, I), 76029189, f(s, b + 24), 23),
            n(o(d, U, I), 3654602809, f(s, b + 36), 4),
            n(o(d, U, I), 3873151461, f(s, b + 48), 11),
            n(o(d, U, I), 530742520, f(s, b + 60), 16),
            n(o(d, U, I), 3299628645, f(s, b + 8), 23),
            n(a(d, U, I), 4096336452, f(s, b), 6),
            n(a(d, U, I), 1126891415, f(s, b + 28), 10),
            n(a(d, U, I), 2878612391, f(s, b + 56), 15),
            n(a(d, U, I), 4237533241, f(s, b + 20), 21),
            n(a(d, U, I), 1700485571, f(s, b + 48), 6),
            n(a(d, U, I), 2399980690, f(s, b + 12), 10),
            n(a(d, U, I), 4293915773, f(s, b + 40), 15),
            n(a(d, U, I), 2240044497, f(s, b + 4), 21),
            n(a(d, U, I), 1873313359, f(s, b + 32), 6),
            n(a(d, U, I), 4264355552, f(s, b + 60), 10),
            n(a(d, U, I), 2734768916, f(s, b + 24), 15),
            n(a(d, U, I), 1309151649, f(s, b + 52), 21),
            n(a(d, U, I), 4149444226, f(s, b + 16), 6),
            n(a(d, U, I), 3174756917, f(s, b + 44), 10),
            n(a(d, U, I), 718787259, f(s, b + 8), 15),
            n(a(d, U, I), 3951481745, f(s, b + 36), 21),
            h = l(h, g),
            p = l(p, d),
            A = l(A, U),
            v = l(v, I)
        }
        return i(v, A, p, h)
    }()
};
