let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("./UIAccMessageItem")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.content = null,
        t.MessageItem = null,
        t.moveHeight = 0,
        t.currShowCount = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIAccMessage",
        this.currShowCount = 0,
        this.RegEvent(i.GameEventDefine.UserCenterActivities, this.OnUpdateInfo)
    }
    ,
    t.prototype.OnEnable = function() {
        this.initView()
    }
    ,
    t.prototype.initView = function() {
        this.unschedule(this.scheduleCallBack),
        this.content.removeAllChildren();
        var e = app.ActivityManager().getUserActivities();
        if (e)
            if (0 != e.activitie.length) {
                for (var t = e.activitie, n = 0; n < t.length; n++) {
                    var o = this.content.children[n];
                    o || ((o = cc.instantiate(this.MessageItem)).parent = this.content);
                    var i = t[n];
                    n == this.currShowCount ? o.setPosition(0, 0) : o.setPosition(0, this.moveHeight),
                    o.id = i.id,
                    o.getComponent(a.default).renderInfo(i)
                }
                this.content.active = true,
                t.length > 1 && this.schedule(this.scheduleCallBack, 5)
            } else
                this.node.active = false;
        else
            this.node.active = false
    }
    ,
    t.prototype.OnUpdateInfo = function() {
        var e = app.ActivityManager().getUserActivities().activitie;
        e.length == this.content.childrenCount ? this.content.children.forEach(function(t, n) {
            var o = e[n];
            t.getComponent(a.default).OnUpdateInfo(o)
        }) : (this.currShowCount = 0,
        this.initView())
    }
    ,
    t.prototype.scheduleCallBack = function() {
        if (this.content.childrenCount < 2)
            this.unschedule(this.scheduleCallBack);
        else {
            var e = this.currShowCount + 1;
            e >= this.content.childrenCount && (e = 0),
            this.OnPlayAnim(this.currShowCount, e)
        }
    }
    ,
    t.prototype.OnPlayAnim = function(e, t) {
        var n = this
          , o = this.content.children[e];
        o && cc.tween(o).to(1, {
            position: cc.v3(0, -this.moveHeight)
        }).hide().set({
            y: this.moveHeight
        }).start();
        var i = this.content.children[t];
        i && cc.tween(i).show().to(1, {
            position: cc.v3(0, 0)
        }).call(function() {
            n.currShowCount = t
        }).start()
    }
    ,
    t.prototype.OnDisable = function() {
        this.unschedule(this.scheduleCallBack),
        this.content.children.forEach(function(e) {
            e.stopAllActions(),
            e.active = true
        }),
        this.content.active = false
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "content", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "MessageItem", undefined),
    __decorate([c({
        tooltip: "\u79fb\u52a8\u8ddd\u79bb"
    })], t.prototype, "moveHeight", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
