let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
    , i = require("../../Common/Define/GameEventDefine")
    , LanguageDefine = require("../../Common/Define/LanguageDefine")
    , a = cc._decorator
    , r = a.ccclass
    , p = a.property
    , s = (a.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.toggle_Region = [],
                    t
            }
            return __extends(t, e),
                t.prototype.OnShow = function () { }

                ,
                t.prototype.OnClick = function (e, t, n) {
                    if ("btn" == e) {
                        for (let index = 0; index < this.toggle_Region.length; index++) {
                            if (this.toggle_Region[index].isChecked) {
                                app.LanguageManager().SetSelectRegion(index + 1)
                                if (index == 0) {
                                    app.LanguageManager().SetLanguage(LanguageDefine.default.ptpt)
                                } else {
                                    app.LanguageManager().SetLanguage(LanguageDefine.default.eses)
                                }
                                app.Client.OnEvent(i.GameEventDefine.INIT_SelectRegion)
                                this.CloseForm()
                                break
                            }
                        }
                    }
                }
                ,
                __decorate([p([cc.Toggle])], t.prototype, "toggle_Region", undefined),
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
