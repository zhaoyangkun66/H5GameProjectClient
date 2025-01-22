let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./SpriteFrameSet")
    , i = cc._decorator
    , a = i.ccclass
    , r = i.property
    , s = i.executeInEditMode
    , c = i.inspector
    , l = i.menu
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.spriteFrameSet = [],
                t.sprite = null,
                t
        }
        return __extends(t, e),
            t.prototype.onEnable = function () {
                this.fetchRender()
            }
            ,
            t.prototype.fetchRender = function () {
                var e = this.getComponent(cc.Sprite);
                if (e)
                    return this.sprite = e,
                        void this.updateSprite(channelIDGlobal)
            }
            ,
            t.prototype.getSpriteFrameByLang = function (e) {
                for (var t = 0; t < this.spriteFrameSet.length; ++t)
                    if (this.spriteFrameSet[t].language == e)
                        return this.spriteFrameSet[t].spriteFrame;
                return null
            }
            ,
            t.prototype.updateSprite = function (e) {
                if (this.sprite) {
                    var t = this.getSpriteFrameByLang(e);
                    !t && this.spriteFrameSet[0] && (t = this.spriteFrameSet[0].spriteFrame),
                        t && (this.sprite.spriteFrame = t)
                } else
                    cc.error("Failed to update localized sprite, sprite component is invalid! ===>>")
            }
            ,
            __decorate([r([o.SpriteFrameSet])], t.prototype, "spriteFrameSet", undefined),
            __decorate([a, l("i18n/LocalizedSpritelogo"), s], t)
    }(cc.Component);
n.default = p,
    module.exports = n
