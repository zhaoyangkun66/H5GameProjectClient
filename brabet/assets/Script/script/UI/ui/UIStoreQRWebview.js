let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = (a.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.webview = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    var e = this;
                    this.RegEvent(i.GameEventDefine.COMPANY_PAYMENT, function () {
                        e.CloseForm()
                    })
                }
                ,
                t.prototype.OnShow = function () {
                    for (var e = this, t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    this.data = t[0]
                    this.webview.url = this.data.payURL
                }
                ,
                t.prototype.OnClick = function (e) {
                    "btn_copy" != e || app.NativeMgr().copyToClipBoard(this.data.card_num)
                },
                __decorate([a.property(cc.WebView)], t.prototype, "webview", undefined),
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
