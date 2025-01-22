let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/ShareDefine")
    , a = require("../../../Common/Define/TrackEventName")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.lbl = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UICashWheelRefresh"
            }
            ,
            t.prototype.OnShow = function (data) {
                var t = data.userstate == 0 ? "UI.UICashWheel8" : "UI.UICashWheel9";
                this.lbl.string = app.i18n.t(t)
            }
            ,
            t.prototype.OnClick = function (e) {
                app.ActivityManager().RequestCashWheelreset()
                this.CloseForm()
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];

            }
            ,
            __decorate([c(cc.Label)], t.prototype, "lbl", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
