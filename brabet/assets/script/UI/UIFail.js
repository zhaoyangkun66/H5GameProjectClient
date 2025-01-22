let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnShow = function() {}
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_Support" != e)
            return "btn_refresh" == e ? (this.CloseForm(),
            void app.Client.OnEvent(i.GameEventDefine.REFRESH_LAUNCH)) : undefined;
        cc.sys.openURL(app.ClientConfigManager().GetGlobalConfig.KEFU_URL)
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
