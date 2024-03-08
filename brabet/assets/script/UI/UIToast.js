let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.nodeBg = null,
        t.copyTip = null,
        t.labelTip = null,
        t.defalutPos = 0,
        t.waitQueue = [],
        t.isRunning = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.nodeBg = this.GetWndNode("bg"),
        this.labelTip = this.GetWndComponent("bg/text", cc.Label);
        var e = cc.instantiate(this.labelTip.node);
        this.copyTip = e.getComponent(cc.Label)
    }
    ,
    t.prototype.OnShow = function(e, t) {
        this.checkRepetition(e) && (this.waitQueue.push({
            msgID: e,
            paramList: t
        }),
        this.defalutPos = this.node.height / 2,
        this.doAction())
    }
    ,
    t.prototype.checkRepetition = function(e) {
        for (var t = 0; t < this.waitQueue.length; t++)
            if (this.waitQueue[t].msgID == e)
                return false;
        return true
    }
    ,
    t.prototype.setBgWidth = function() {
        var e = this.copyTip.node.width
          , t = 50;
        this.labelTip.overflow = cc.Label.Overflow.NONE,
        e >= 640 ? (this.labelTip.node.width = 640,
        this.labelTip.overflow = cc.Label.Overflow.RESIZE_HEIGHT,
        t += 640) : t += e <= 200 ? 200 : e,
        this.nodeBg.width = t,
        this.nodeBg.getComponent(cc.Layout).updateLayout()
    }
    ,
    t.prototype.doAction = function() {
        var e = this;
        if (!this.isRunning) {
            var t = this.waitQueue.shift();
            if (t) {
                this.isRunning = true;
                var n = app.SysNotifyManager().GetSysMsgContentByMsgID(t.msgID, t.paramList);
                this.labelTip.string = n,
                this.copyTip.string = n,
                this.copyTip._forceUpdateRenderData(),
                this.setBgWidth(),
                this.Log(this.nodeBg.height);
                var o = new cc.Vec3(0,this.defalutPos + this.nodeBg.height)
                  , i = this.nodeBg.height + 30
                  , a = new cc.Vec3(0,o.y - i)
                  , r = new cc.Vec3(0,o.y + i);
                cc.tween(this.nodeBg).set({
                    position: o
                }).to(.8, {
                    position: a,
                    opacity: 255
                }).delay(1.2).to(.8, {
                    position: r,
                    opacity: 0
                }).call(function() {
                    e.isRunning = false,
                    e.doAction()
                }).start()
            } else
                this.CloseForm()
        }
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
