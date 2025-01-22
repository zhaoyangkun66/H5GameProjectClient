let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = (o.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.chipPrefab = null,
        t
    }
    return __extends(t, e),
    t.prototype.setChipPrefab = function() {}
    ,
    t.prototype.start = function() {}
    ,
    t.prototype.initPool = function(e, t) {
        e && (this.chipPrefab = e),
        this.chipPool = new cc.NodePool;
        for (var n = t, o = 0; o < n; ++o) {
            var i = cc.instantiate(this.chipPrefab);
            this.chipPool.put(i)
        }
    }
    ,
    t.prototype.createChip = function() {
        var e = null;
        return this.chipPool && (this.chipPool.size() > 0 ? ((e = this.chipPool.get()).active = true,
        e.used = false) : (e = cc.instantiate(this.chipPrefab)).used = false),
        e
    }
    ,
    t.prototype.recycleChip = function(e) {
        this.chipPool && this.chipPool.put(e)
    }
    ,
    t.prototype.onDestroy = function() {
        this.chipPool && this.chipPool.clear()
    }
    ,
    __decorate([i], t)
}(cc.Component));
n.default = a,
module.exports = n
