let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Component/NodePool")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.logoPrefab = null,
                t.iconIndex = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIHallTopLogo",
                    this.RegEvent(a.GameEventDefine.DomainIcon, this.OnDomainIcon),
                    this.nodePool = this.node.addComponent(i.default),
                    this.nodePool.initPool(this.logoPrefab, 4),
                    this.iconIndex = -1,
                    this.setLogoNodeInfo(this.iconIndex, 0)
            }
            ,
            t.prototype.OnEnable = function () {
                app.GameConfigManager().RequestDomainIcon()
            }
            ,
            t.prototype.OnDomainIcon = function () {
                var e = this
                    , t = app.GameConfigManager().GetDomainIconInfo()
                    , n = this.GetList();
                if (n && n.length > 0) {
                    var o = Number(t.change_time);
                    this.iconIndex++,
                        this.iconIndex >= n.length && (this.iconIndex = 0),
                        o > 0 && this.scheduleOnce(function () {
                            var t = e.logoPrefab.data.height;
                            e.setLogoNodeInfo(e.iconIndex, -t);
                            var o = e.node.children[0]
                                , i = e.node.children[1];
                            o && i && (cc.tween(o).to(.5, {
                                position: cc.v3(0, t)
                            }).call(function (t) {
                                e.nodePool.recycleNode(t)
                            }, o).start(),
                                cc.tween(i).to(.5, {
                                    position: cc.v3(0, 0)
                                }).call(function () {
                                    n.length > 1 && e.OnDomainIcon()
                                }).start())
                        }, o)
                }
            }
            ,
            t.prototype.GetList = function () {
                var e = app.GameConfigManager().GetDomainIconInfo();
                return e ? app.ComTool().H5Platform() ? e.list.phone : e.list.pc : null
            }
            ,
            t.prototype.setLogoNodeInfo = function (e, t) {
                var n = this.nodePool.createNode();
                n.setPosition(0, t);
                var o = this.GetList();
                if (o) {
                    var i = o[e];
                    app.ImageUtil().LoadImage(n, i)
                }
                n.active = true,
                    n.opacity = 255,
                    n.parent = this.node
            }
            ,
            __decorate([c(cc.Prefab)], t.prototype, "logoPrefab", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
