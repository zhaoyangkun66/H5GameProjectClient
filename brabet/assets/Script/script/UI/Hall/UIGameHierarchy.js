let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/UINameDefine")
  , a = require("./UIGameSelectAll")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.menu,
r.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._data = null,
        t.nodeGame = null,
        t.lb_tit = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGameHierarchy",
        this.nodeGame = this.GetWndNode("node/game"),
        this.lb_tit = this.GetWndComponent("node/top/lb_tit", cc.Label)
    }
    ,
    t.prototype.OnShow = function(e) {
        if (this.lb_tit.string = e.topName,
        "number" == typeof e.subInfo) {
            var t = app.GameTypeManager().GetOtherFactoryGame(e.subInfo);
            t ? this._data = t : this.ErrLog("OtherGameFactory fail:", e.subInfo)
        } else
            this._data = e.subInfo;
        this.nodeGame.getComponent(a.default).renderGame(this._data)
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_back" !== e || app.FormManager().ShowForm(i.UINameDefine.UIHall)
    }
    ,
    t.prototype.onEditBoxEnd = function(e) {
        var t = e.string;
        this.nodeGame.getComponent(a.default).OnSearchGameList(t)
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
