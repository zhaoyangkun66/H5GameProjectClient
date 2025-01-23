let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = o.property
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.MarqueeMask = null,
        t.lbText = null,
        t.text = null,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {}
    ,
    t.prototype.onEnable = function() {
        this.StartMarquee()
    }
    ,
    t.prototype.onDisable = function() {
        this.isStart = false
    }
    ,
    t.prototype.StartMarquee = function() {
        this.RenderText(this.text),
        this.isStart = true,
        this.runMarqueeActionForever()
    }
    ,
    t.prototype.StartText = function(e) {
        this.text = e
    }
    ,
    t.prototype.RenderText = function(e) {
        e && (this.GetLabel().string = e)
    }
    ,
    t.prototype.GetLabel = function() {
        return this.lbText.getComponent(cc.RichText) || this.lbText.getComponent(cc.Label)
    }
    ,
    t.prototype.runMarqueeActionForever = function() {
        if (this.GetLabel()) {
            var e = this.lbText
              , t = this.MarqueeMask.width / 2;
            e.x = t,
            this.targetPosX = e.x - this.MarqueeMask.width - e.width
        }
    }
    ,
    t.prototype.update = function() {
        if (this.isStart) {
            var e = this.lbText;
            e.x -= 1,
            e.x <= this.targetPosX && this.runMarqueeActionForever()
        }
    }
    ,
    __decorate([a(cc.Node)], t.prototype, "MarqueeMask", undefined),
    __decorate([a(cc.Node)], t.prototype, "lbText", undefined),
    __decorate([i], t)
}(cc.Component);
n.default = r,
module.exports = n
