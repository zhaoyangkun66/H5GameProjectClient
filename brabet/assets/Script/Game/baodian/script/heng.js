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
        e.PosX = 130,
        e
    }
    return __extends(e, t),
    e.prototype.onLoad = function() {
        this.PosX = app.ComTool().H5Platform() ? 130 : 130//140
    }
    ,
    e.prototype.reset = function() {
        var t = this;
        clearTimeout(this.waitPlay),
        clearInterval(this.createTimer);
        var e = this.node.children;
        e.forEach(function(t) {
            t.stopAllActions()
        });
        var a = setTimeout(function() {
            clearTimeout(a),
            t.isValid && e.forEach(function(e, a) {
                a > 4 ? (e.active = false,
                e.destroy()) : (e.opacity = 255,
                e.x = a * t.PosX,
                e.getChildByName("label").getComponent(cc.Label).string = 2 * a + "s")
            })
        }, 1e3)
    }
    ,
    e.prototype.playAct = function(t) {
        var e = this;
        this.waitPlay = setTimeout(function() {
            if (clearTimeout(e.waitPlay),
            e.isValid) {
                for (var t = e.node.children, a = 0; a < t.length; a++)
                    a > 0 && cc.tween(t[a]).to(2 * a, {
                        x: 70
                    }).to(.3, {
                        opacity: 0
                    }).start();
                e.create()
            }
        }, t)
    }
    ,
    e.prototype.create = function() {
        var t = this;
        clearInterval(this.createTimer),
        this.createTimer = setInterval(function() {
            if (t.isValid) {
                var e = cc.instantiate(t.node.children[0]);
                e.parent = t.node,
                e.x = 4 * t.PosX,
                e.opacity = 255;
                var a = t.node.childrenCount - 1;
                e.getChildByName("label").getComponent(cc.Label).string = 2 * a + "s",
                cc.tween(e).to(8, {
                    x: 70
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
