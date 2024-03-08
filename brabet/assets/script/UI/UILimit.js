let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
    , i = cc._decorator
    , a = i.ccclass
    , r = i.property
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.ban = null,
                t.region = null,
                t.node_ip = null,
                t.support_url = "",
                t
        }
        return __extends(t, e),
            t.prototype.OnShow = function (e) {
                this.ban.active = true,
                    this.region.active = true,
                    this.support_url = e.kf_url ? e.kf_url : app.ClientConfigManager().GetGlobalConfig.KEFU_URL,
                    this.node_ip && (e.ip ? (this.node_ip.active = true,
                        this.GetWndComponent("con1/label_num", cc.Label, this.node_ip).string = e.ip,
                        this.GetWndComponent("con2/label_num", cc.Label, this.node_ip).string = e.ip_area) : this.node_ip.active = false),
                    this.GetWndComponent("title", cc.Label, this.ban).string = app.i18n.t("UI_LimitTitle")
                app.LanguageManager().SetSelectRegion(0)
                app.LoginManager().RemoveCurrentUser()
                app.KeyManager().RegRouterEvent({ JS_Name: app.ClientConfigManager().getLocalUrlDataByName("f") }, [])
            }
            ,
            t.prototype.OnClick = function (e) {
                if ("btn_Support" == e)
                    return this.Log(this.support_url),
                        void cc.sys.openURL(this.support_url)
            }
            ,
            __decorate([r(cc.Node)], t.prototype, "ban", undefined),
            __decorate([r(cc.Node)], t.prototype, "region", undefined),
            __decorate([r(cc.Node)], t.prototype, "node_ip", undefined),
            __decorate([a], t)
    }(o.default);
n.default = s,
    module.exports = n
