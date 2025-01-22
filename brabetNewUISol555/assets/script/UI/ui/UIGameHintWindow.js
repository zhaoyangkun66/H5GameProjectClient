let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGameHintWindow"
    }
    ,
    t.prototype.OnShow = function(e) {
        var t = app.ExternGameManager().GetExternGameInfoOrSubGameInfo(e.gid, e.sub_gid)
          , n = this.GetWndComponent("Gold/lbl", cc.RichText)
          , o = app.i18n.t("UI_gameHintTip").replace(/({st_time}|{end_time})/gi, function(e, n) {
            return {
                "{st_time}": app.ComUtil().timeStr(t.mtc_st_date),
                "{end_time}": app.ComUtil().timeStr(t.mtc_end_date)
            }[n]
        });
        n.string = o
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
