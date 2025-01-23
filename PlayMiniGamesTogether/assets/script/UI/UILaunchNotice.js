var n = require("../../Common/Base/BaseForm")
    , o = cc._decorator.ccclass
    , i = cc._decorator.property
    , a = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.LabelContent = null,
                t.LabelTitle = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnShow = function (e) {
                this.LabelContent.string = e.content,
                    this.LabelTitle.string = e.title
            }
            ,
            __decorate([i(cc.RichText)], t.prototype, "LabelContent", undefined),
            __decorate([i(cc.Label)], t.prototype, "LabelTitle", undefined),
            __decorate([o], t)
    }(n.default);
module.exports = a

