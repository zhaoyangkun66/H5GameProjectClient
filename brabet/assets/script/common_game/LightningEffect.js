let n ={} 
Object.defineProperty(n, "__esModule", {
    value: !0
});
var o = cc._decorator
, i = o.ccclass
, a = (o.property,
    function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t._BSwitch = !1,
                t.listenEvent = null,
                t
        }
        return __extends(t, e),
            Object.defineProperty(t.prototype, "BSwitch", {
                get: function () {
                    return this._BSwitch
                },
                set: function (e) {
                    this._BSwitch = e,
                        this.updateMenu()
                },
                enumerable: !1,
                configurable: !0
            }),
            t.prototype.onLoad = function () {
                var e = new cc.Component.EventHandler;
                e.target = this.node,
                    e.component = "LightningEffect",
                    e.handler = "Callback",
                    this.node.getComponent(cc.Button).clickEvents = [],
                    this.node.getComponent(cc.Button).clickEvents.push(e)
            }
            ,
            t.prototype.updateMenu = function () {
                this.node.getChildByName("icon_turboOn").active = this.BSwitch,
                    this.node.getChildByName("icon_turboOff").active = !this.BSwitch;
                var e = this.BSwitch ? "TURBO" : "OFF";
                this.node.getChildByName("label").getComponent(cc.Label).string = e,
                    this.BSwitch ? (this.schedule(this.lightNingPlay, 1),
                        this.schedule(this.lightblowup, 4)) : (this.unschedule(this.lightNingPlay),
                            this.unschedule(this.lightblowup))
            }
            ,
            t.prototype.lightNingPlay = function () {
                var e = Math.round(2 * Math.random() + 1);
                this.node.getComponent(cc.Animation).playAdditive("turbo_shangdian" + e)
            }
            ,
            t.prototype.lightblowup = function () {
                this.node.getComponent(cc.Animation).playAdditive("turbo_shangdian4")
            }
            ,
            t.prototype.Callback = function () {
                this.BSwitch = !this.BSwitch,
                    this.listenEvent && this.listenEvent(this.BSwitch)
            }
            ,
            t.prototype.start = function () { }
            ,
            __decorate([i], t)
    }(cc.Component));
n.default = a,
module.exports = n
