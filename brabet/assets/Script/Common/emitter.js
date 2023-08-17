var n = function() {
    function e(e) {
        if (e)
            return o(e)
    }
    return e.prototype.on = function(e, t, n) {
        return n || (n = this),
        this._callbacks = this._callbacks || {},
        (this._callbacks[e] = this._callbacks[e] || []).push({
            target: n,
            cb: t
        }),
        this
    }
    ,
    e.prototype.once = function(e, t, n) {
        var o = this;
        function i() {
            o.off(e, i),
            t.apply(n, arguments)
        }
        return this._callbacks = this._callbacks || {},
        n || (n = this),
        i.fn = t,
        this.on(e, i),
        this
    }
    ,
    e.prototype.off = function(e, t, n) {
        if (this._callbacks = this._callbacks || {},
        0 == arguments.length)
            return this;
        var o, i = this._callbacks[e];
        if (!i)
            return this;
        if (1 == arguments.length)
            return delete this._callbacks[e],
            this;
        for (var a = 0; a < i.length; a++)
            if (!((o = i[a]).cb !== t && o.cb.fn !== t || null != n && o.target != n)) {
                i.splice(a, 1);
                break
            }
        return this
    }
    ,
    e.prototype.emit = function(e) {
        for (var t = [], n = 1; n < arguments.length; n++)
            t[n - 1] = arguments[n];
        this._callbacks = this._callbacks || {};
        var o = this._callbacks[e];
        if (!o)
            return this;
        for (var i = 0, a = (o = o.slice(0)).length; i < a; ++i)
            o[i].cb.apply(o[i].target, t);
        return this
    }
    ,
    e.prototype.listeners = function(e) {
        return this._callbacks = this._callbacks || {},
        this._callbacks[e] || []
    }
    ,
    e.prototype.hasListeners = function(e) {
        return !!this.listeners(e).length
    }
    ,
    e
}();
function o(e) {
    for (var t in n.prototype)
        e[t] = n.prototype[t];
    return e
}
module.exports = n

