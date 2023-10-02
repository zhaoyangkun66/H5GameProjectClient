let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
    , i = o.ccclass
    , a = (o.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.onLoad = function () {
                    if (app.ComTool().DesktopPlatform()) {
                        this.node.scale = 0.6
                      //  this.node.y = 1334 * 0.6 / 2
                        // this.getComponent(cc.Widget).enabled = false
                        //  this.node.height = 750
                    }
                },
                
                __decorate([i()], t)
        }(cc.Component));
n.default = a,
    module.exports = n
