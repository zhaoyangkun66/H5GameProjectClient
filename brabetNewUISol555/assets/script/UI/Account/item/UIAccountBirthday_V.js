let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../autoui/Account/auto_UIAccountBirthday_V")
    , i = require("./UIAccountBirthdayBase")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.menu
    , c = (a.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.ui = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.JS_Name = "UIAccountBirthday_V"
                }
                ,
                t.prototype.OnLoad = function () {
                    this.ui = this.node.addComponent(o.default),
                        this.ui.AutoBindEvent(this),
                        e.prototype.OnLoad.call(this)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.call(this)
                }
                ,
                t.prototype.OnClick = function (t, n, o) {
                    e.prototype.OnClick.call(this, t, n, o)
                }
                ,
                t.prototype.OnClose = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t]
                }
                ,
                __decorate([r, s("UI/Account/UIAccountBirthday_V")], t)
        }(i.default));
n.default = c,
    module.exports = n
