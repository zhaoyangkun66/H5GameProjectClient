let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.RegExpType = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.node.on("text-changed", this.onTextChanged, this)
    }
    ,
    t.prototype.onTextChanged = function(e) {
        this.reg && (e.string = e.string.replace(this.reg, ""),
        e.focus()),
        this.textChangeCb && this.textChangeCb.apply(this.cbTarget)
    }
    ,
    t.prototype.initRegExp = function(e, t, n) {
        this.reg = e,
        this.textChangeCb = t,
        this.cbTarget = n
    }
    ,
    t
}(cc.Component);
n.default = o;
var i = function() {
    function e() {}
    return e.test = /[^A-Za-z0-9]/g,
    e.NUM_And_Zero = /^0+|[^0-9]/g,
    e
}();
n.RegExpType = i,
module.exports = n
