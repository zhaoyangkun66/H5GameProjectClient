let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/UIBaseComponent")
  , i = cc._decorator.ccclass
  , a = cc._decorator.property;
(function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.tgeContainer = null,
        t.pageview = null,
        t
    }
    __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIDebug";
        for (var e = 0; e < this.tgeContainer.node.children.length; e++)
            this.tgeContainer.node.children[e].on("toggle", this.OnToggleChange, this);
        this.pageview.node.on("page-turning", this.OnPageTurning, this)
    }
    ,
    t.prototype.OnEnable = function() {
        this.pageview.scrollToPage(0, 0)
    }
    ,
    t.prototype.OnClick = function(e) {
        "BtnClose" == e && (this.node.active = false)
    }
    ,
    t.prototype.OnToggleChange = function(e) {
        var t = this.tgeContainer.toggleItems.indexOf(e);
        t != this.pageview.getCurrentPageIndex() && this.pageview.scrollToPage(t, .25)
    }
    ,
    t.prototype.OnPageTurning = function() {
        var e = this.pageview.getCurrentPageIndex();
        this.tgeContainer.toggleItems[e].isChecked = true
    }
    ,
    __decorate([a(cc.ToggleContainer)], t.prototype, "tgeContainer", undefined),
    __decorate([a(cc.PageView)], t.prototype, "pageview", undefined),
    t = __decorate([i], t)
}
)(o.default),
module.exports = n
