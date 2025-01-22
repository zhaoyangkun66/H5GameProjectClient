let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = (o.property,
o.disallowMultiple)
  , r = o.menu
  , s = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype._onTouchEnded = function(e) {
        var t = this._impl;
        t && (t.beginEditing(),
        t._elem.autocomplete = "off"),
        e.stopPropagation()
    }
    ,
    t.prototype.editBoxTextChanged = function(e) {
        e = this._updateLabelStringStyle(e, true),
        this.string = e,
        cc.Component.EventHandler.emitEvents(this.textChanged, e, this),
        this.node.emit("text-changed", this),
        this.focus()
    }
    ,
    __decorate([i, a(), r("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/EditBox")], t)
}(cc.EditBox);
n.default = s,
module.exports = n
