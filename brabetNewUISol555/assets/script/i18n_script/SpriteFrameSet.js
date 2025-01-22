let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.SpriteFrameSet = undefined;
var o = cc._decorator
    , i = o.ccclass
    , a = o.property
    , r = function () {
        function e() {
            this.language = "",
                this.spriteFrame = null
        }
        return __decorate([a(cc.String)], e.prototype, "language", undefined),
            __decorate([a(cc.SpriteFrame)], e.prototype, "spriteFrame", undefined),
            __decorate([i("SpriteFrameSet")], e)
    }();
n.SpriteFrameSet = r,
    module.exports = n
