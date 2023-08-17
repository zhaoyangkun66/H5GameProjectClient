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
        return t._NodePool = null,
        t._Prefab = null,
        t._NodeArr = [],
        t
    }
    return __extends(t, e),
    t.prototype.start = function() {}
    ,
    t.prototype.initPool = function(e, t, n) {
        if (undefined === t && (t = 5),
        e) {
            this._Prefab = e,
            this._NodePool || (this._NodePool = new cc.NodePool(n)),
            this.clear();
            for (var o = 0; o < t; o++) {
                var i = this.instantiateNode();
                this._NodePool.put(i)
            }
        }
    }
    ,
    t.prototype.instantiateNode = function() {
        return cc.instantiate(this._Prefab)
    }
    ,
    t.prototype.createNode = function() {
        var e = this._NodePool.get() || this.instantiateNode();
        return this._NodeArr.push(e),
        e
    }
    ,
    t.prototype.recycleNode = function(e) {
        e && (this._NodePool.put(e),
        this._NodeArr.Remove(e))
    }
    ,
    t.prototype.recycleAllNode = function() {
        for (var e = this._NodeArr.length - 1; e >= 0; e--) {
            var t = this._NodeArr[e];
            this.recycleNode(t)
        }
        this._NodeArr = []
    }
    ,
    t.prototype.clear = function() {
        this._NodePool.clear()
    }
    ,
    t.prototype.onDestroy = function() {
        this.clear()
    }
    ,
    __decorate([i], t)
}(cc.Component));
n.default = a

module.exports = n
