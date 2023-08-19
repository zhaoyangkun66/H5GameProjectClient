let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/TrackEventName")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIVIPReduced",
        this.lbContent = this.GetWndComponent("layer/lb_con", cc.Label)
    }
    ,
    t.prototype.OnShow = function() {
        var e = app.UserManager().GetUserInfo;
        this.lbContent.string = app.i18n.t("UI_VIPReduced_CONTENT", {
            2: e.keep_level_conf,
            1: e.vip_id - 1
        })
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_recharge" == e) {
            var t = app.StoreManager().GetStoreName();
            app.FormManager().InsertForm({
                formName: t,
                key: "hall",
                argumentsList: [{
                    in_type: i.default.PAGETRACK_EVENT_RECHARGE_RELEGATION
                }]
            }),
            this.CloseForm()
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.UserManager().GetUserInfo.keep_level_conf = 0,
        app.FormManager().ShowNextQueueForm("hall")
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
