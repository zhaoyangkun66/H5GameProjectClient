let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.MinesTool = void 0;
var o, i = require("../../../Common/Bundle/BundleConfig"), a = require("../../../Common/Bundle/BundleManager"), s = require("../../../Common/Define/ShareDefine"),
    u = require("./MinesDefine"), l = (o = cc.Node,
        __extends(function () {
            return null !== o && o.apply(this, arguments) || this
        }, o),
        function () {
            function t() { }
            return t.prototype.getMinesNodeSpr = function (t, e) {
                var n = u.ImageUrl[t];
                a.BundleManager.LoadAssets(s.GameAtlasPath + n, i.BundleNames.MINES, cc.SpriteFrame).then(function (t) {
                    e.getComponent(cc.Sprite).spriteFrame = t
                })
            }
                ,
                t.prototype.getMinesNodeCol = function (t, e) {
                    t.color = cc.Color.BLACK.fromHEX(e)
                }
                ,
                t.prototype.onPlayAnimEndFn = function (t, e, n) {
                    t.play(e),
                        t.once("finished", n)
                }
                ,
                t.prototype.onPlayBtnAnim = function (t, e) {
                    var n = t
                        , o = t.getComponent(cc.Animation);
                    t.active = e,
                        e ? n.is_anim || (n.is_anim = true,
                            o.play(),
                            this.onPlayAnimEndFn(o, "", function () {
                                n.is_anim = false
                            })) : (o.stop(),
                                n.is_anim = false)
                }
                ,
                t
        }());
n.MinesTool = l,
    module.exports = n
