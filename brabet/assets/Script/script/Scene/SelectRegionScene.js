let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseScene")
    , i = require("../../Common/Define/GameEventDefine")
    , a = require("../../Common/Define/HttpServerDefine")
    , r = require("../../Common/Define/UINameDefine")
    , s = require("../common/HotUpdate")
    , c = require("../../Common/Define/TrackEventName")
    , l = cc._decorator
    , p = l.ccclass
    , d = l.property;
cc.macro.ENABLE_TRANSPARENT_CANVAS = true;
var h = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.toggle_Region = [],
            t
    }
    return __extends(t, e),
        t.prototype.OnLoadInit = function () {
            if (this.JS_Name = "SelectRegionScene",
                this.Log("Onload"),
                app.ComTool().H5Platform() ? this.setOrientationVertical() : this.setOrientationHorizon(),
                cc.sys.isBrowser) {

            }
        }
        ,
        t.prototype.OnClick = function (e) {
            if ("btn" == e) {
                for (let index = 0; index < this.toggle_Region.length; index++) {
                    if (this.toggle_Region[index].isChecked) {
                        app.LanguageManager().SetSelectRegion(index + 1)
                        app.Client.OnEvent(i.GameEventDefine.INIT_SelectRegion)
                        let localSelectRegion = app.LanguageManager().GetLocalSelectRegion()
                        if (app.LanguageManager().GetLocalSelectRegion() == 1) {
                            window.channelID = 1
                            app.ClientConfigManager().GetGlobalConfig.hosts = [goServer_hosts1]
                            app.ClientConfigManager().GetGlobalConfig.scheme = goServer_scheme1
                        } else {
                            window.channelID = 2
                            app.ClientConfigManager().GetGlobalConfig.hosts = [goServer_hosts2]
                            app.ClientConfigManager().GetGlobalConfig.scheme = goServer_scheme2
                        }



                        break
                    }
                }
            }
        }
        ,
        __decorate([d(cc.Toggle)], t.prototype, "toggle_Region", undefined),
        __decorate([p], t)
}(o.default);
n.default = h,
    module.exports = n
