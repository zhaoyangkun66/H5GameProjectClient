let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.pageView = null,
        t.btn_next = null,
        t.btn_close = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGameHelp",
        this.pageView && this.pageView.node.on("scroll-ended", this.pageTurnEnded.bind(this))
    }
    ,
    t.prototype.OnShow = function() {
        this.pageView.scrollToPage(0, this.pageView.pageTurningSpeed),
        this.setBtnDisable(true)
    }
    ,
    t.prototype.setBtnDisable = function(e) {
        this.btn_next.active = e,
        this.btn_close.active = !e
    }
    ,
    t.prototype.pageTurnEnded = function() {
        this.pageView.getCurrentPageIndex() >= this.pageView.getPages().length - 1 ? this.setBtnDisable(false) : this.setBtnDisable(true)
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_next" != e)
            ;
        else {
            var t = this.pageView.getCurrentPageIndex();
            this.pageView.scrollToPage(t + 1, this.pageView.pageTurningSpeed)
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([r(cc.PageView)], t.prototype, "pageView", undefined),
    __decorate([r(cc.Node)], t.prototype, "btn_next", undefined),
    __decorate([r(cc.Node)], t.prototype, "btn_close", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
