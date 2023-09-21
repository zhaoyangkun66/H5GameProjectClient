let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/ShareDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {}
    ,
    t.prototype.OnEnable = function() {
        try {
            var e = app.UserManager().GetUserInfoConfig.show_arr;
            this.node.active = 1 == e[i.VisibleBtnTag.Btn_Service]
        } catch (t) {}
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("UISevice" == e) {
            cc.sys.openURL("http://192.168.1.100:280/client/kefu/")
            //var t = app.SupportManager().SelToServiceTypeName();
           // app.FormManager().ShowForm(t)
        }
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
