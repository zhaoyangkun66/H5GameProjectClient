let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.automationDec = void 0,
n.automationDec = function(t) {
    return function(i, n, s) {
        if (!s)
            return s;
        var e = s.value;
        return s.value = function() {
            for (var i = [], n = 0; n < arguments.length; n++)
                i[n] = arguments[n];
            var s = System.get("automation");
            s && t.func.apply(t, __spread(i));
            var o = e.apply(this, i);
            return o
        }
        ,
        s
    }
}
,
module.exports = n
