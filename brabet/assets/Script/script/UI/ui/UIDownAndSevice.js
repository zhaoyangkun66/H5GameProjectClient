let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = (r.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.UIDownApp_IOS = null,
                    t.UIDownApp_Android = null,
                    t.UISevice = null,
                    t.DownApp = null,
                    t.UIRecharge = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.DownApp = cc.find("DownApp", this.node),
                        this.UISevice = cc.find("UISevice", this.node),
                        this.UIDownApp_IOS = cc.find("DownApp/UIDownApp_IOS", this.node),
                        this.UIDownApp_Android = cc.find("DownApp/UIDownApp_Android", this.node),
                        this.UIRecharge = cc.find("UIRecharge", this.node),
                        this.RegEvent(i.GameEventDefine.RECHARGE_ACTIVITY, this.initRechargeView)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t];
                    this.UISevice.active = true,
                        true === app.ClientConfigManager().GetGlobalConfig.HideBtnDownLoad ? this.DownApp.active = false : (this.UIDownApp_IOS.active = cc.sys.os == cc.sys.OS_IOS,
                            this.UIDownApp_Android.active = cc.sys.os == cc.sys.OS_ANDROID,
                            this.onIsShowDownBtn()),
                        this.initRechargeView()
                }
                ,
                t.prototype.OnClick = function () { }
                ,
                t.prototype.initRechargeView = function () {
                    var e = app.UserManager().GetUserRechargeActivity;
                    e && 1 == e.status && (this.UIRecharge.active = e && 1 == e.status)
                }
                ,
                t.prototype.onIsShowDownBtn = function () {
                    if (app.ComTool().H5Platform()) {
                        cc.find("icon", this.UIDownApp_IOS).getComponent(cc.Label).string = cc.sys.os == cc.sys.OS_ANDROID ? app.i18n.t("UI_Menu_downloadAndroid") : app.i18n.t("UI_Dice_Add_to_Home_Screen");
                        var e = app.UserManager().UserInfo.user_config.show_arr;
                        if (e && 0 == e[a.VisibleBtnTag.DownloadBtn])
                            return void (this.DownApp.active = false);
                        if (cc.sys.os == cc.sys.OS_ANDROID)
                            this.DownApp.active = !app.ComTool().AndroidHybirdPlatform();
                        else if (cc.sys.os == cc.sys.OS_IOS) {
                            var t = app.ClientConfigManager().getLocalUrlDataByName("ioswebclip");
                            this.DownApp.active = !(1 == Number(t)),
                                app.ComTool().getIosBrowserType() && (this.DownApp.active = false)
                        } else
                            this.DownApp.active = true
                    } else
                        this.DownApp.active = false
                }
                ,
                __decorate([s], t)
        }(o.default));
n.default = c,
    module.exports = n
