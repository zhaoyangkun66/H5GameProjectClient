let t = module

var n = null
    , o = /(?:_|\\u005[Ff])(?:_|\\u005[Ff])(?:p|\\u0070)(?:r|\\u0072)(?:o|\\u006[Ff])(?:t|\\u0074)(?:o|\\u006[Ff])(?:_|\\u005[Ff])(?:_|\\u005[Ff])/
    , i = /(?:c|\\u0063)(?:o|\\u006[Ff])(?:n|\\u006[Ee])(?:s|\\u0073)(?:t|\\u0074)(?:r|\\u0072)(?:u|\\u0075)(?:c|\\u0063)(?:t|\\u0074)(?:o|\\u006[Ff])(?:r|\\u0072)/;
t.exports = function (t) {
    var a = {
        strict: false,
        storeAsString: false,
        alwaysParseAsBig: false,
        useNativeBigInt: false,
        protoAction: "error",
        constructorAction: "error"
    };
    if (null != t) {
        if (true === t.strict && (a.strict = true),
            true === t.storeAsString && (a.storeAsString = true),
            a.alwaysParseAsBig = true === t.alwaysParseAsBig && t.alwaysParseAsBig,
            a.useNativeBigInt = true === t.useNativeBigInt && t.useNativeBigInt,
            undefined !== t.constructorAction) {
            if ("error" !== t.constructorAction && "ignore" !== t.constructorAction && "preserve" !== t.constructorAction)
                throw new Error('Incorrect value for constructorAction option, must be "error", "ignore" or undefined but passed ' + t.constructorAction);
            a.constructorAction = t.constructorAction
        }
        if (undefined !== t.protoAction) {
            if ("error" !== t.protoAction && "ignore" !== t.protoAction && "preserve" !== t.protoAction)
                throw new Error('Incorrect value for protoAction option, must be "error", "ignore" or undefined but passed ' + t.protoAction);
            a.protoAction = t.protoAction
        }
    }
    var r, s, c, l, p = {
        '"': '"',
        "\\": "\\",
        "/": "/",
        b: "\b",
        f: "\f",
        n: "\n",
        r: "\r",
        t: "\t"
    }, d = function (e) {
        throw {
            name: "SyntaxError",
            message: e,
            at: r,
            text: c
        }
    }, h = function (e) {
        return e && e !== s && d("Expected '" + e + "' instead of '" + s + "'"),
            s = c.charAt(r),
            r += 1,
            s
    }, u = function () {
        var t, o = "";
        for ("-" === s && (o = "-",
            h("-")); s >= "0" && s <= "9";)
            o += s,
                h();
        if ("." === s)
            for (o += "."; h() && s >= "0" && s <= "9";)
                o += s;
        if ("e" === s || "E" === s)
            for (o += s,
                h(),
                "-" !== s && "+" !== s || (o += s,
                    h()); s >= "0" && s <= "9";)
                o += s,
                    h();
        if (t = +o,
            isFinite(t))
            return null == n && (n = require("bignumber")),
                o.length > 15 ? a.storeAsString ? o : a.useNativeBigInt ? BigInt(o) : _(o) : a.alwaysParseAsBig ? a.useNativeBigInt ? BigInt(t) : _(o) : t;
        d("Bad number")
    }, _ = function (e) {
        var t = new n(e);
        if (t.c) {
            for (var o = "", i = 0; i < t.c.length; i++)
                o += t.c[i];
            return o
        }
        return new n(e)
    }, m = function () {
        var e, t, n, o = "";
        if ('"' === s)
            for (var i = r; h();) {
                if ('"' === s)
                    return r - 1 > i && (o += c.substring(i, r - 1)),
                        h(),
                        o;
                if ("\\" === s) {
                    if (r - 1 > i && (o += c.substring(i, r - 1)),
                        h(),
                        "u" === s) {
                        for (n = 0,
                            t = 0; t < 4 && (e = parseInt(h(), 16),
                                isFinite(e)); t += 1)
                            n = 16 * n + e;
                        o += String.fromCharCode(n)
                    } else {
                        if ("string" != typeof p[s])
                            break;
                        o += p[s]
                    }
                    i = r
                }
            }
        d("Bad string")
    }, f = function () {
        for (; s && s <= " ";)
            h()
    }, g = function () {
        switch (s) {
            case "t":
                return h("t"),
                    h("r"),
                    h("u"),
                    h("e"),
                    true;
            case "f":
                return h("f"),
                    h("a"),
                    h("l"),
                    h("s"),
                    h("e"),
                    false;
            case "n":
                return h("n"),
                    h("u"),
                    h("l"),
                    h("l"),
                    null
        }
        d("Unexpected '" + s + "'")
    }, y = function () {
        var e = [];
        if ("[" === s) {
            if (h("["),
                f(),
                "]" === s)
                return h("]"),
                    e;
            for (; s;) {
                if (e.push(l()),
                    f(),
                    "]" === s)
                    return h("]"),
                        e;
                h(","),
                    f()
            }
        }
        d("Bad array")
    }, v = function () {
        var e, t = Object.create(null);
        if ("{" === s) {
            if (h("{"),
                f(),
                "}" === s)
                return h("}"),
                    t;
            for (; s;) {
                if (e = m(),
                    f(),
                    h(":"),
                    true === a.strict && Object.hasOwnProperty.call(t, e) && d('Duplicate key "' + e + '"'),
                    true === o.test(e) ? "error" === a.protoAction ? d("Object contains forbidden prototype property") : "ignore" === a.protoAction ? l() : t[e] = l() : true === i.test(e) ? "error" === a.constructorAction ? d("Object contains forbidden constructor property") : "ignore" === a.constructorAction ? l() : t[e] = l() : t[e] = l(),
                    f(),
                    "}" === s)
                    return h("}"),
                        t;
                h(","),
                    f()
            }
        }
        d("Bad object")
    };
    return l = function () {
        switch (f(),
        s) {
            case "{":
                return v();
            case "[":
                return y();
            case '"':
                return m();
            case "-":
                return u();
            default:
                return s >= "0" && s <= "9" ? u() : g()
        }
    }
        ,
        function (e, t) {
            var n;
            return c = e + "",
                r = 0,
                s = " ",
                n = l(),
                f(),
                s && d("Syntax error"),
                "function" == typeof t ? function e(n, o) {
                    var i, a = n[o];
                    return a && "object" == typeof a && Object.keys(a).forEach(function (t) {
                        undefined !== (i = e(a, t)) ? a[t] = i : delete a[t]
                    }),
                        t.call(n, o, a)
                }({
                    "": n
                }, "") : n
        }
}