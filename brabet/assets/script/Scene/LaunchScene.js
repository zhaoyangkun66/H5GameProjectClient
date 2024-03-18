let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
let LanguageDefine = require("../../Common/Define/LanguageDefine")
let EventWaitType = require("../../Common/Define/EventWaitType")
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
        return t.labelVersion = null,
            t.btn_service = null,
            t.loadState = 0,
            t.lastState = -1,
            t
    }
    return __extends(t, e),
        t.prototype.OnLoadInit = function () {
            if (this.JS_Name = "LaunchScene",
                this.Log("Onload"),
                this.hideBtnService(),
                app.ComTool().H5Platform() ? this.setOrientationVertical() : this.setOrientationHorizon(),
                this.RegEvent(i.GameEventDefine.INIT_FORM_TABLE, this.onInitFormTable),
                this.RegEvent(i.GameEventDefine.INIT_SelectRegion, this.onInitSelectRegion),
                this.RegEvent(i.GameEventDefine.INIT_TEXT, this.onInitText),
                this.RegEvent(i.GameEventDefine.GET_GAME_CONFIG_FAILED, this.onGameConfigFailed),
                this.RegEvent(i.GameEventDefine.HOT_UPDATE, this.onHotUpdate),
                this.RegEvent(i.GameEventDefine.CHECK_UPDATE_SUCCESS, this.onCheckUpdateSuccess),
                this.RegEvent(i.GameEventDefine.LOAD_RES_SUCCESS, this.onLoadResSuccess),
                this.RegEvent(i.GameEventDefine.LOGIN_IPLIMIT, this.onLoginIPLimit),
                this.RegEvent(i.GameEventDefine.REFRESH_LAUNCH, this.checkNetworkAvailable),
                this.RegEvent(i.GameEventDefine.START_LOAD_HALL, this.onHideService),
                this.RegEvent(i.GameEventDefine.SHOW_BTN_SUPPORT, this.showBtnService),
                this.RegHttpEvent(a.HttpAPI.GET_STOPGS_NOTICE, this.OnStopGSNotice),
                cc.sys.isBrowser) {
                var e = document.getElementById("loading");
                e && e.parentNode.removeChild(e),
                    this.FullScreenColor()
            }
        }
        ,
        t.prototype.FullScreenColor = function () {
            app.IndexManager().setIndexHeadColorByNode()
        }
        ,
        t.prototype.update = function () {
            var e = this;
            if (this.loadState != this.lastState)
                switch (this.lastState = this.loadState,
                this.loadState) {
                    case 0:
                        app.EventTrackManager().LogEvent(c.default.LAUNCH_GAME_CONFIG_BEGIN),
                            app.SysDataManager().InitTable();
                        break;
                    case 1:
                        app.i18n.loadConfig().then(function () {
                            app.LanguageManager().SetDefaultLanguage(),
                                e.loadState = 2
                        }).catch(function (t) {
                            return e.ErrLog("loadConfig err", t)
                        });
                        break;
                    case 2:
                       // let regionid = app.ClientConfigManager().getLocalUrlDataByName("regionid")
                        let localSelectRegion = app.LanguageManager().GetLocalSelectRegion()
                        if (channelIDGlobal == 1) {
                            regionid = 1
                        }
                        else
                        {
                            regionid = 2
                        }
                        if ((regionid == 1 || regionid == 2) && (!localSelectRegion)) {
                            app.LanguageManager().SetSelectRegion(regionid)
                            localSelectRegion = regionid
                            if (regionid == 1) {
                                app.LanguageManager().SetLanguage(LanguageDefine.default.ptpt)
                            } else {
                                app.LanguageManager().SetLanguage(LanguageDefine.default.eses)
                            }
                        }
                        if (localSelectRegion) {
                            this.onInitSelectRegion()
                        }
                        else {
                            if (isgoServer == true) {
                                let self = this
                                let xmlHttp = cc.loader.getXMLHttpRequest();
                                // if (isPushServer) {
                                //     xmlHttp.open("GET", "https://columbia.yotuwin.com/config/getipvist", true);
                                // }
                                // else {
                                //     xmlHttp.open("GET", "http://192.168.1.100:8090/config/getipvist", true);
                                // }
                                xmlHttp.open("POST", "https://columbia.yotuwin.com/config/getipvist", true);
                                xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
                                xmlHttp.onreadystatechange = function () {
                                    if (this.readyState == 4) {
                                        app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.ReceiveNet)
                                        if (this.status == 200) {
                                            // console.log("XXXXGETGETGET", xmlHttp.responseText);
                                            //e.url = JSON.parse(xmlHttp.responseText).data
                                            // {
                                            //     "code": 0,
                                            //     "data": {
                                            //         "country": "CO"
                                            //     },
                                            //     "msg": "OK",
                                            //     "time": "1708687092"
                                            // }
                                            let responseData = JSON.parse(xmlHttp.responseText)
                                            // responseData = {
                                            //     "code": 0,
                                            //     "data": {
                                            //         "country": "BR"
                                            //     },
                                            //     "msg": "OK",
                                            //     "time": "1708687092"
                                            // }
                                            if (responseData.code == 0) {
                                                if (responseData.data.country == "BR") {
                                                    let index = 0
                                                    app.LanguageManager().SetSelectRegion(index + 1)
                                                    if (index == 0) {
                                                        app.LanguageManager().SetLanguage(LanguageDefine.default.ptpt)
                                                    } else {
                                                        app.LanguageManager().SetLanguage(LanguageDefine.default.eses)
                                                    }
                                                    app.Client.OnEvent(i.GameEventDefine.INIT_SelectRegion)
                                                }
                                                else if (responseData.data.country == "CO") {
                                                    let index = 1
                                                    app.LanguageManager().SetSelectRegion(index + 1)
                                                    if (index == 0) {
                                                        app.LanguageManager().SetLanguage(LanguageDefine.default.ptpt)
                                                    } else {
                                                        app.LanguageManager().SetLanguage(LanguageDefine.default.eses)
                                                    }
                                                    app.Client.OnEvent(i.GameEventDefine.INIT_SelectRegion)
                                                }
                                                else {
                                                    app.FormManager().ShowForm(r.UINameDefine.UISelectRegion)
                                                }
                                            }
                                            else {
                                                app.SysNotifyManager().ShowToast(responseData.data)
                                                app.FormManager().ShowForm(r.UINameDefine.UISelectRegion)
                                            }
                                        }
                                        else {
                                            app.FormManager().ShowForm(r.UINameDefine.UISelectRegion)
                                        }
                                    }
                                }
                                xmlHttp.timeout = 15000;// 5 seconds for timeout
                                xmlHttp.send();
                                app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.OpenNet)
                            }
                        }
                        break;
                    case 3:
                        this.StartGameLogic()
                }
        }
        ,
        t.prototype.onLoginIPLimit = function (e) {
            app.FormManager().ShowForm(r.UINameDefine.UILimit, e)
        }
        ,
        t.prototype.onInitFormTable = function () {
            this.loadState = 1
        }
        ,
        t.prototype.onInitSelectRegion = function () {
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
            this.loadState = 3
            app.LanguageManager().RequestLangList()
            // app.EventTrackManager().LogEvent(c.default.LAUNCH_START_BEGIN)
        }
        ,
        t.prototype.OnClick = function (e) {
            if (this.Log(e),
                "btn_service" == e) {
                var t = app.GameConfigManager().GetGameConfig()
                    , n = t && t.kf_show && t.kf_show.kf_chat_url ? t.kf_show.kf_chat_url : app.ClientConfigManager().GetGlobalConfig.KEFU_URL;
                cc.sys.openURL(n)
            }
        }
        ,
        t.prototype.onHideService = function () {
            this.hideBtnService()
        }
        ,
        t.prototype.hideBtnService = function () {
            this.btn_service.active = false
        }
        ,
        t.prototype.showBtnService = function () {
            this.btn_service.active = true
        }
        ,
        t.prototype.start = function () {
            this.Log("start"),
                this.labelVersion.string = app.ClientConfigManager().GetVersion
            //app.EventTrackManager().LogEvent(c.default.LAUNCH_START_BEGIN)
        }
        ,
        t.prototype.StartGameLogic = function () {
            app.EventTrackManager().LogEvent(c.default.LAUNCH_START_END),
                app.Client.InitUILayer(),
                this.checkNetworkAvailable()
        }
        ,
        t.prototype.onGameConfigFailed = function () {
            this.showConfirmBox()
        }
        ,
        t.prototype.onHotUpdate = function () {
            this.node.getComponent(s.HotUpdate).hotUpdate(app.GameConfigManager().GetGameConfig().hu_url)
        }
        ,
        t.prototype.checkNetworkAvailable = function () {
            !cc.sys.isNative || app.NativeMgr().isNetworkAvailable() ? app.LaunchManager().RequestGameConfig() : this.showConfirmBox()
        }
        ,
        t.prototype.showConfirmBox = function () {
            app.FormManager().ShowForm(r.UINameDefine.UIFail)
        }
        ,
        t.prototype.onCheckUpdateSuccess = function () {
            app.TextManager().RequestTextInfoMore()
        }
        ,
        t.prototype.OnStopGSNotice = function (e) {
            app.FormManager().ShowForm(r.UINameDefine.UILaunchNotice, e)
        }
        ,
        t.prototype.StartLogin = function () {
            app.LaunchManager().StartLogin()
        }
        ,
        t.prototype.onLoadResSuccess = function () {
            app.EventTrackManager().LogEvent(c.default.LAUNCH_LOAD_RES_END),
                this.StartLogin()
        }
        ,
        t.prototype.startRenderPercentTimer = function () {
            app.EventTrackManager().LogEvent(c.default.LAUNCH_LOAD_RES_BEGIN),
                app.ResManager().initAsync()
        }
        ,
        t.prototype.onInitText = function () {
            this.startRenderPercentTimer()
        }
        ,
        __decorate([d(cc.Label)], t.prototype, "labelVersion", undefined),
        __decorate([d(cc.Node)], t.prototype, "btn_service", undefined),
        __decorate([p], t)
}(o.default);
n.default = h,
    module.exports = n
