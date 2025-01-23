let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Component/Marquee")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.lbGold = null,
                t.btnMenu = null,
                t.nodeMarquee = null,
                t.btnRefresh = null,
                t.nodeVip = null,
                t.placeholder = null,
                t.vipSpr = [],
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {

            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];

            }
            ,
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
