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
    t.prototype.start = function() {}
    ,
    t.prototype.setRichtextStrCallBack = function(e) {
        this.getComponent(cc.RichText).string = e.str,
        this.data = e
    }
    ,
    t.prototype.handler = function(data,data2) {
        this.data.callBack(data2)
    }
    ,
    __decorate([i], t)
}(cc.Component));
n.default = a,
module.exports = n
