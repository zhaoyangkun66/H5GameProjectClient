let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./UIHall")
    , GameEventDefine = require("../../../Common/Define/GameEventDefine")
    , s = require("../../../Common/Define/UINameDefine")
    , i = cc._decorator
    , a = i.ccclass
    , r = (i.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    e.prototype.OnCreateInit.call(this),
                        app.GameTypeManager().SetRecentColumCount(8),
                        app.GameTypeManager().SetMaxHistoryGame(8),
                        this.toggleGroup = this.GetWndNode("node_home/game_type_buttons/type/view/content/toggleContainer"),
                        this.typeNode = this.GetWndNode("node_home/game_type_buttons/type")
                    this.RegEvent(GameEventDefine.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.apply(this, t)
                    app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, true)
                }
                ,
                t.prototype.LoadHallSuccess = function () {
                    app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, true)
                }
                ,
                t.prototype.OnClose = function () {
                    e.prototype.OnClose.call(this),
                        app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, false)
                }
                ,
                __decorate([a], t)
        }(o.default));
n.default = r,
    module.exports = n
