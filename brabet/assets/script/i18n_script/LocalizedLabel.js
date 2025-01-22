let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = cc._decorator
  , i = o.ccclass
  , a = o.property
  , r = o.executeInEditMode
  , s = o.menu
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._dataID = "",
        t._debouncedUpdateLabel = null,
        t.label = null,
        t.opt = null,
        t
    }
    return __extends(t, e),
    Object.defineProperty(t.prototype, "dataID", {
        get: function() {
            return this._dataID
        },
        set: function(e) {
            this._dataID !== e && (this._dataID = e,
            this.updateLabel())
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.onLoad = function() {
        this.fetchRender()
    }
    ,
    t.prototype.onEnable = function() {
        this.fetchRender()
    }
    ,
    t.prototype.fetchRender = function() {
        var e = this.getComponent(cc.Label) || this.getComponent(cc.RichText);
        if (e)
            return this.label = e,
            void this.updateLabel()
    }
    ,
    t.prototype.updateLabel = function() {
        if (this.label && cc.isValid(this.label)) {
            var e = app.i18n.t(this.dataID, this.opt);
            e && "" != e && (this.label.string = e)
        } else
            cc.warn("Failed to update localized label, label component is invalid!")
    }
    ,
    t.prototype.setT = function(e, t) {
        this.opt = t,
        this.dataID = e,
        this.updateLabel()
    }
    ,
    __decorate([a], t.prototype, "_dataID", undefined),
    __decorate([a], t.prototype, "dataID", null),
    __decorate([i, s("i18n/LocalizedLabel"), r], t)
}(cc.Component);
n.default = c,
module.exports = n
