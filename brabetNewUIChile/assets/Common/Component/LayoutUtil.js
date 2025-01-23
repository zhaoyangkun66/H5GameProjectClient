let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LayoutUtil = undefined;
var o = function() {
    function e() {}
    return e.vertical_layout = function(e, t, n, o, i, a, r, s, c, l) {
        return [e % o * t + i - r + c, -Math.floor(e / o) * n - a + s - l]
    }
    ,
    e.horizontal_layout = function(e, t, n, o, i, a, r, s, c, l) {
        return [Math.floor(e / o) * t + i - r + c, -e % o * n - a + s - l]
    }
    ,
    e.vertical_center_layout = function(e, t, n, o, i, a, r, s, c) {
        return [i - r + s, -a - (n - t * o) / 2 + c + e * o]
    }
    ,
    e.horizontal_center_layout = function(e, t, n, o, i, a, r, s, c) {
        return [i + (n - t * o) / 2 + s + e * o, -a + r - c]
    }
    ,
    e.horizontal_Layout = function(e, t, n, o, i, a) {
        return (o + a) * e + o * i - t * n
    }
    ,
    e
}();
n.LayoutUtil = o,
module.exports = n
