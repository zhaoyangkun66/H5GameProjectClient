let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../Base/UIBaseComponent"), a = require("./DropDownItem"), r = cc._decorator, s = r.ccclass, c = r.property, l = r.disallowMultiple, p = r.menu;
(function(e) {
    e[e.NODE = 1] = "NODE",
    e[e.PREFAB = 2] = "PREFAB"
}
)(o || (o = {}));
var d = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.templateType = o.NODE,
        t.tmpNode = null,
        t.tmpPrefab = null,
        t.btnHead = null,
        t.nodeArrow = null,
        t.listParent = null,
        t.NodeList = null,
        t._SelectIdx = 0,
        t._OnRenderSelectIdx = null,
        t._OnRenderItem = null,
        t._Target = null,
        t._Data = null,
        t.NodeListRoot = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function(e, t, n) {
        this.JS_Name = "DropDown",
        this._Target = e,
        this._OnRenderSelectIdx = t,
        this._OnRenderItem = n
    }
    ,
    t.prototype.RenderList = function(e, t) {
        var n = this;
        undefined === t && (t = 0),
        this._SelectIdx = t;
        var i = 0;
        if ("number" == typeof e ? i = e : (this._Data = e,
        i = e.length),
        this._OnRenderItem) {
            this.listParent.node.removeAllChildren();
            for (var r = 0; r < i; r++) {
                var s = cc.instantiate(this.templateType == o.PREFAB ? this.tmpPrefab : this.tmpNode);
                this.listParent.node.addChild(s)
            }
        }
        this.listParent.node.children.forEach(function(e, t) {
            n._OnRenderItem && n._OnRenderItem.call(n._Target, e, t);
            var o = e.getComponent(a.default);
            o && o.OnRenderItem(n._Data[t]),
            e.targetOff(n),
            e.on("toggle", n.OnClick_Toggle.bind(n, e.getComponent(cc.Toggle), t), n)
        }),
        this._SelectCallBack()
    }
    ,
    t.prototype.OnEnable = function() {
        this.NodeList = this.NodeListRoot || this.listParent.node,
        this.NodeList.active = false,
        this.RenderArrow(),
        this.btnHead.node.on(cc.Node.EventType.TOUCH_END, this.OnClick_BtnWnd, this)
    }
    ,
    t.prototype.OnDisable = function() {
        this.btnHead.node.off(cc.Node.EventType.TOUCH_END, this.OnClick_BtnWnd, this)
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        if (e == this.btnHead.node.name)
            return this.NodeList.active = !this.NodeList.active,
            void this.RenderArrow();
        this._SelectIdx = Number(n),
        this.NodeList.active = false,
        this.RenderArrow(),
        this._SelectCallBack()
    }
    ,
    t.prototype.RenderArrow = function() {
        this.nodeArrow && (this.nodeArrow.angle = this.NodeList.active ? 180 : 0)
    }
    ,
    t.prototype._SelectCallBack = function() {
        if (this._OnRenderSelectIdx) {
            var e = this.listParent.node.children[this._SelectIdx]
              , t = this._Data ? this._Data[this._SelectIdx] : null;
            this._OnRenderSelectIdx.call(this._Target, this.btnHead.node, e, this._SelectIdx, t)
        }
    }
    ,
    __decorate([c({
        type: cc.Enum(o),
        //tooltip: false
    })], t.prototype, "templateType", undefined),
    __decorate([c({
        type: cc.Node,
        //tooltip: false,
        visible: function() {
            return this.templateType == o.NODE
        }
    })], t.prototype, "tmpNode", undefined),
    __decorate([c({
        type: cc.Prefab,
        //tooltip: false,
        visible: function() {
            return this.templateType == o.PREFAB
        }
    })], t.prototype, "tmpPrefab", undefined),
    __decorate([c(cc.Button)], t.prototype, "btnHead", undefined),
    __decorate([c(cc.Node)], t.prototype, "nodeArrow", undefined),
    __decorate([c(cc.ToggleContainer)], t.prototype, "listParent", undefined),
    __decorate([c(cc.Node)], t.prototype, "NodeListRoot", undefined),
    __decorate([s, l(), p("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/DropDown")], t)
}(i.default);
n.default = d,
module.exports = n
