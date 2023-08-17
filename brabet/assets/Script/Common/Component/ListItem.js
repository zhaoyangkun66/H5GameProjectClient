let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o,
    i = cc._decorator,
    a = i.ccclass,
    r = i.property,
    s = i.disallowMultiple,
    c = i.menu,
    l = i.executionOrder;
(function (e) {
    e[e.NONE = 0] = "NONE",
        e[e.TOGGLE = 1] = "TOGGLE",
        e[e.SWITCH = 2] = "SWITCH"
}
)(o || (o = {}));

var p = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.icon = null,
            t.title = null,
            t.selectedMode = o.NONE,
            t.selectedFlag = null,
            t.selectedSpriteFrame = null,
            t._unselectedSpriteFrame = null,
            t.adaptiveSize = false,
            t._selected = false,
            t._eventReg = false,
            t
    }
    return __extends(t, e),
        Object.defineProperty(t.prototype, "selected", {
            get: function () {
                return this._selected
            },
            set: function (e) {
                if (this._selected = e,
                    this.selectedFlag)
                    switch (this.selectedMode) {
                        case o.TOGGLE:
                            this.selectedFlag.active = e;
                            break;
                        case o.SWITCH:
                            var t = this.selectedFlag.getComponent(cc.Sprite);
                            t && (t.spriteFrame = e ? this.selectedSpriteFrame : this._unselectedSpriteFrame)
                    }
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "btnCom", {
            get: function () {
                return this._btnCom || (this._btnCom = this.node.getComponent(cc.Button)),
                    this._btnCom
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.onLoad = function () {
            if (this.selectedMode == o.SWITCH) {
                var e = this.selectedFlag.getComponent(cc.Sprite);
                this._unselectedSpriteFrame = e.spriteFrame
            }
        }
        ,
        t.prototype.onDestroy = function () {
            this.node.off(cc.Node.EventType.SIZE_CHANGED, this._onSizeChange, this)
        }
        ,
        t.prototype._registerEvent = function () {
            this._eventReg || (this.btnCom && this.list.selectedMode > 0 && this.btnCom.clickEvents.unshift(this.createEvt(this, "onClickThis")),
                this.adaptiveSize && this.node.on(cc.Node.EventType.SIZE_CHANGED, this._onSizeChange, this),
                this._eventReg = true)
        }
        ,
        t.prototype._onSizeChange = function () {
            this.list._onItemAdaptive(this.node)
        }
        ,
        t.prototype.createEvt = function (e, t, n) {
            if (undefined === n && (n = null),
                e.isValid) {
                e.comName = e.comName || e.name.match(/\<(.*?)\>/g).pop().replace(/\<|>/g, "");
                var o = new cc.Component.EventHandler;
                return o.target = n || e.node,
                    o.component = e.comName,
                    o.handler = t,
                    o
            }
        }
        ,
        t.prototype.showAni = function (e, t, n) {
            var o, i = this;
            switch (e) {
                case 0:
                    o = cc.tween(i.node).to(.2, {
                        scale: .7
                    }).by(.3, {
                        y: 2 * i.node.height
                    });
                    break;
                case 1:
                    o = cc.tween(i.node).to(.2, {
                        scale: .7
                    }).by(.3, {
                        x: 2 * i.node.width
                    });
                    break;
                case 2:
                    o = cc.tween(i.node).to(.2, {
                        scale: .7
                    }).by(.3, {
                        y: -2 * i.node.height
                    });
                    break;
                case 3:
                    o = cc.tween(i.node).to(.2, {
                        scale: .7
                    }).by(.3, {
                        x: -2 * i.node.width
                    });
                    break;
                default:
                    o = cc.tween(i.node).to(.3, {
                        scale: .1
                    })
            }
            (t || n) && o.call(function () {
                if (n) {
                    i.list._delSingleItem(i.node);
                    for (var e = i.list.displayData.length - 1; e >= 0; e--)
                        if (i.list.displayData[e].id == i.listId) {
                            i.list.displayData.splice(e, 1);
                            break
                        }
                }
                t()
            }),
                o.start()
        }
        ,
        t.prototype.onClickThis = function () {
            this.list.selectedId = this.listId
        }
        ,
        __decorate([r({
            type: cc.Sprite,
            //tooltip: false
        })], t.prototype, "icon", undefined),

        __decorate([r({
            type: cc.Node,
            //tooltip: false
        })], t.prototype, "title", undefined),
        __decorate([r({
            type: cc.Enum(o),
            //tooltip: false
        })], t.prototype, "selectedMode", undefined),
        __decorate([r({
            type: cc.Node,
            //tooltip: false,
            visible: function () {
                return this.selectedMode > o.NONE
            }
        })], t.prototype, "selectedFlag", undefined),
        __decorate([r({
            type: cc.SpriteFrame,
            //tooltip: false,
            visible: function () {
                return this.selectedMode == o.SWITCH
            }
        })], t.prototype, "selectedSpriteFrame", undefined),
        __decorate([r({
            //tooltip: false
        })], t.prototype, "adaptiveSize", undefined),
        __decorate([a, s(), c("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/List Item"), l(-5001)], t)
}(cc.Component);

// cc.Class({
//     extends: cc.Component,

//     properties: {
//         label: {
//             default: null,
//             type: cc.Label
//         },
//         // defaults, set visually when attaching this script to the Canvas
//         text: 'Hello, World!'
//     },

//     // use this for initialization
//     onLoad: function () {
//         this.label.string = this.text;
//     },

//     // called every frame
//     update: function (dt) {

//     },
// });

n.default = p,
    module.exports = n
