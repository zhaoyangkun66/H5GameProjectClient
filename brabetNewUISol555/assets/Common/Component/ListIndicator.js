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
    t.prototype.setPageView = function(e) {
        this._pageView = e,
        this._refresh()
    }
    ,
    t.prototype._changedState = function() {
        var e = this._indicators;
        if (0 !== e.length) {
            var t = this._pageView.curPageNum;
            if (!(t >= e.length)) {
                for (var n = 0; n < e.length; ++n)
                    e[n].opacity = 127.5;
                e[t].opacity = 255
            }
        }
    }
    ,
    t.prototype._refresh = function() {
        if (this._pageView) {
            var e = this._indicators
              , t = this._pageView._numItems;
            if (t !== e.length) {
                var n = 0;
                if (t > e.length)
                    for (n = 0; n < t; ++n)
                        e[n] || (e[n] = this._createIndicator());
                else
                    for (n = e.length - t; n > 0; --n) {
                        var o = e[n - 1];
                        this.node.removeChild(o),
                        e.splice(n - 1, 1)
                    }
                this._layout && this._layout.enabledInHierarchy && this._layout.updateLayout(),
                this._changedState()
            }
        }
    }
    ,
    __decorate([i], t)
}(cc.PageViewIndicator));
n.default = a,
module.exports = n
