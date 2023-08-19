let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"), a = require("../../../Common/Define/UINameDefine"), r = cc._decorator, s = r.ccclass, c = r.property, l = (o = cc.Node,
__extends(function() {
    return null !== o && o.apply(this, arguments) || this
}, o),
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.layout1 = null,
        t.layout2 = null,
        t.layout3 = null,
        t.faqItem1 = null,
        t.faqItem2 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnShow = function() {
        this.layout1.removeAllChildren(),
        this.layout2.removeAllChildren(),
        this.layout3.removeAllChildren(),
        this.initViewFaq(),
        this.node.height = app.ComTool().H5Platform() ? 800 : 720
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (e.startsWith("btn_FAQ")) {
            var n = t;
            app.FormManager().ShowForm(a.UINameDefine.UIText, n.tagname)
        }
    }
    ,
    t.prototype.initViewFaq = function() {
        var e = this
          , t = app.HallManager().GetFaqList();
        t.faq_list && t.faq_list.forEach(function(t, n) {
            var o = null
              , i = null;
            if (n <= 5 ? (o = n <= 2 ? e.layout1 : e.layout2,
            (i = cc.instantiate(e.faqItem1)).y = 0) : (o = e.layout3,
            i = cc.instantiate(e.faqItem2)),
            i.active = true,
            o && i) {
                var a = t;
                i.tagname = a.name,
                cc.find("Background/Label", i).getComponent(cc.Label).string = a.title,
                o.addChild(i)
            }
        })
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "layout1", undefined),
    __decorate([c(cc.Node)], t.prototype, "layout2", undefined),
    __decorate([c(cc.Node)], t.prototype, "layout3", undefined),
    __decorate([c(cc.Node)], t.prototype, "faqItem1", undefined),
    __decorate([c(cc.Node)], t.prototype, "faqItem2", undefined),
    __decorate([s], t)
}(i.default));
n.default = l,
module.exports = n
