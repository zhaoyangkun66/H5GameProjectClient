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
        return t.material = null,
        t.bightness = .5,
        t.blurAmount = .5,
        t.sprite = null,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.material.setProperty("bightness", this.bightness),
        this.material.setProperty("blurAmount", this.blurAmount),
        this.spriteFrame = new cc.SpriteFrame,
        this.sprite = this.node.addComponent(cc.Sprite),
        this.sprite.spriteFrame = this.spriteFrame,
        this.sprite.type = cc.Sprite.Type.SIMPLE,
        this.sprite.sizeMode = cc.Sprite.SizeMode.CUSTOM,
        this.sprite.trim = true,
        this.sprite.setMaterial(0, this.material)
    }
    ,
    t.prototype.SetTexture = function(e) {
        this.spriteFrame.setTexture(e)
    }
    ,
    __decorate([a({
        type: cc.Material,
        displayName: "\u6a21\u7cca\u6750\u8d28",
        tooltip: "\u7528\u4e8e\u5e94\u7528\u6a21\u7cca\u6240\u7528\u7684\u6750\u8d28\uff0c\u5982\u65e0\u7279\u6b8a\u9700\u6c42\u8bf7\u4fdd\u6301\u9ed8\u8ba4"
    })], t.prototype, "material", undefined),
    __decorate([a({
        type: cc.Float,
        displayName: "\u4eae\u5ea6",
        tooltip: "\u964d\u4f4e\u80cc\u666f\u7684\u4eae\u5ea6",
        min: 0,
        max: 1
    })], t.prototype, "bightness", undefined),
    __decorate([a({
        type: cc.Float,
        displayName: "\u6a21\u7cca\u5ea6",
        tooltip: "\u80cc\u666f\u7684\u6a21\u7cca\u7a0b\u5ea6",
        min: 0,
        max: 1
    })], t.prototype, "blurAmount", undefined),
    __decorate([i], t)
}(cc.Component);
n.default = r,
module.exports = n
