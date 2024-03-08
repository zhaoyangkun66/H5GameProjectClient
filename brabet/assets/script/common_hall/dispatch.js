let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = (o.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        cc.log("dispatch on Load"),
        this.ready = true,
        this.queues = new Map,
        this.dt = 0
    }
    ,
    t.prototype.start = function() {}
    ,
    t.prototype.startDispatch = function() {
        this.ready = true
    }
    ,
    t.prototype.pauseDispatch = function() {
        this.ready = false
    }
    ,
    t.prototype.stopDispatch = function() {
        this.ready = false,
        this.clear()
    }
    ,
    t.prototype.reDispatch = function() {
        this.clear(),
        this.startDispatch()
    }
    ,
    t.prototype.push = function(e, t) {
        var n;
        this.queues.has(t) ? (n = this.queues.get(t)).push(e) : ((n = []).push(e),
        this.queues.set(t, n))
    }
    ,
    t.prototype.clear = function() {
        this.queues = new Map
    }
    ,
    t.prototype.update = function(e) {
        if (this.ready && (this.dt += e,
        this.dt > .2)) {
            this.dt = 0;
            for (var t = 0, n = Array.from(this.queues.values()); t < n.length; t++) {
                var o = n[t].pop();
                o && o()
            }
        }
    }
    ,
    __decorate([i], t)
}(cc.Component));
n.default = a,
module.exports = n
