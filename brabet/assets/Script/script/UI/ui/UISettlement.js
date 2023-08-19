let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../common/GIDTool")
  , a = require("../../i18n_script/LocalizedLabel")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.gameInfo = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UISettlement",
        this.nodeText = this.GetWndNode("Gold/lbl")
    }
    ,
    t.prototype.OnShow = function(e) {
        this.gameInfo = e;
        var t = ""
          , n = app.ExternGameManager().GetGid;
        n == i.GIDTool.PG ? t = "PG" : n == i.GIDTool.EVO ? t = "EVO" : n == i.GIDTool.PINGBO && (t = "PINGBO"),
        this.nodeText.getComponent(a.default).setT("HallGameDownTip", {
            game: t
        })
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.gameInfo && app.HallManager().EnterGame(this.gameInfo.gid, this.gameInfo.subGid)
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
