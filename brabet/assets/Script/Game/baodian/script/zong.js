let a ={} 
Object.defineProperty(a, "__esModule", {
    value: true
});
var n = cc._decorator
  , o = n.ccclass
  , i = (n.property,
function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.createTimer = null,
        e.waitPlay = null,
        e.PosY = 105,
        e
    }
    return __extends(e, t),
    e.prototype.onLoad = function() {
        this.PosY = app.ComTool().H5Platform() ? 105 : 105//102
    }
    ,
    e.prototype.reset = function() {
        clearTimeout(this.waitPlay),
        clearInterval(this.createTimer);
        for (var t = 0; t < this.node.childrenCount; t++) {
            var e = this.node.children[t];
            e.stopAllActions(),
            t > 4 ? (e.active = false,
            e.destroy()) : (e.opacity = 255,
            e.y = t * this.PosY,
            e.getChildByName("label").getComponent(cc.Label).string = (.2 * t + 1).toFixed(1) + "x")
        }
    }
    ,
    e.prototype.playAct = function(t) {
        var e = this;
        this.waitPlay = setTimeout(function() {
            e.isValid ? (e.node.children.forEach(function(t, e) {
                t.stopAllActions(),
                e > 0 && cc.tween(t).to(2 * e, {
                    y: 40
                }).to(.3, {
                    opacity: 0
                }).start()
            }),
            e.creat()) : clearTimeout(e.waitPlay)
        }, t)
    }
    ,
    e.prototype.creat = function() {
        var t = this;
        clearInterval(this.createTimer),
        this.createTimer = setInterval(function() {
            if (t.isValid && t.createTimer) {
                var e = cc.instantiate(t.node.children[0]);
                e.parent = t.node,
                e.y = 4 * t.PosY,
                e.opacity = 255;
                var a = cc.find("peilv", t.node.parent.parent)
                  , n = "";
                for (var o in a.children) {
                    var i = a.children[o];
                    i.active && (n += i.getComponent(cc.Label).string)
                }
                var s = n.split(".");
                e.getChildByName("label").getComponent(cc.Label).string = s[0] + "." + s[1].substr(0, 1) + "x",
                cc.tween(e).to(8, {
                    y: 40
                }).to(.3, {
                    opacity: 0
                }).start()
            } else
                clearInterval(t.createTimer)
        }, 2e3)
    }
    ,
    e.prototype.onDestroy = function() {
        this.reset()
    }
    ,
    __decorate([o], e)
}(cc.Component));
a.default = i,
module.exports = a
