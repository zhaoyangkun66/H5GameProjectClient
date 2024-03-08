let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
    , i = require("../../Common/Define/GameEventDefine")
    , a = require("../../Common/Define/ShareDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.RedDotIDArr = [],
                t.SprRedNode = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.SprRedNode.active = false,
                    this.RegEvent(i.GameEventDefine.SHOW_REDDOT_RECEIVE, this.onShow_RedDot_Receive)
            }
            ,
            t.prototype.OnEnable = function () {
                this.onShow_RedDot_Receive(app.RedDotManager().ShowRedDotDataResult)
            }
            ,
            t.prototype.start = function () { }
            ,
            t.prototype.onShow_RedDot_Receive = function (e) {

              //  e["spread_way"].is_show = 1
              //  e["spread_way"].value = 1
                // if (e) {
                //     for (var t = 0; t < this.RedDotIDArr.length; t++) {
                //         var n = this.RedDotIDArr[t]
                //           , o = e[a.RedDotEnum[n]];
                //         if (o && o.is_show)
                //             return void (this.SprRedNode.active = !!o.is_show)
                //     }
                //     this.SprRedNode.active = false
                // }
                if (e) {
                    for (var t = 0; t < this.RedDotIDArr.length; t++) {
                        var n = this.RedDotIDArr[t]
                            , o = e[a.RedDotEnum[n]];
                           // o.value=155
                           // o.is_show=1
                        if (o && o.is_show) {
                            if (this.SprRedNode.active = o.is_show,
                                o.value && n === a.RedDotEnum.mail) {
                                var i = this.GetWndComponent("label_num", cc.Label, this.SprRedNode);
                                i && (i.string = o.value >= 99 ? "99+" : o.value)
                            }
                            return
                        }
                    }
                    this.SprRedNode.active = false
                }
                //this.SprRedNode.active = true
            }
            ,
            __decorate([c({
                tooltip: "\u7ea2\u70b9\u7c7b\u578b\u96c6\u5408 \u6709\u5173\u90fd\u9009",
                type: cc.Enum(a.RedDotEnum)
            })], t.prototype, "RedDotIDArr", undefined),
            __decorate([c(cc.Node)], t.prototype, "SprRedNode", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
