let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.ClientConfigManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../../script/common/global_config")
    , a = function () { }
    , r = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.maxRetryCount = 0,
                t.deltaTime = 0,
                t.GlobalConfig = i,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "ClientConfigManager",
                    this.Log("Init"),
                    this.ClientConfig = new a
            }
            ,
            Object.defineProperty(t.prototype, "GetClientConfig", {
                get: function () {
                    return this.ClientConfig
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetVersion", {
                get: function () {
                    var e = app.NativeMgr().getApkVersion() ? "-" + app.NativeMgr().getApkVersion() : "";
                    return "V" + i.mainVer + "." + i.subVer + "." + i.buildVer + e
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.LoadStartInfo = function () {
                if (app.ComTool().CheckPlatform()) {
                    var e = window.g_config;
                    e && (this.Log("g_config = " + JSON.stringify(e)),
                        this.ClientConfig.webapi_url = e.webapi_url,
                        this.ClientConfig.channel_id = e.channel_id,
                        this.ClientConfig.channel_account = e.channel_account)
                } else
                    this.ClientConfig.channel_id = app.NativeMgr().getChannel(),
                        this.ClientConfig.channel_account = "";
                this.ClientConfig.currentHostIndex = app.LocalDataManager().GetConfigProperty("ServerInfo", "LastConnectedHostIndex"),
                    this.LocalUrlInfo = app.ComTool().GetUrlParam();
                var t = app.ClientConfigManager().getLocalUrlDataByName("agentid");
                t ? (this.ClientConfig.agentID = t,
                    app.LocalDataManager().SetConfigProperty("LocalInfo", "agentID", this.ClientConfig.agentID)) : (this.ClientConfig.agentID = app.LocalDataManager().GetConfigProperty("LocalInfo", "agentID"),
                        this.ClientConfig.ajtrackerName = app.LocalDataManager().GetConfigProperty("LocalInfo", "ajtrackerName"),
                        this.ClientConfig.aj_gaid = app.LocalDataManager().GetConfigProperty("LocalInfo", "aj_gaid"));
                var n = app.ClientConfigManager().getLocalUrlDataByName("f");
                n && (n.startsWith("game") ? this.startRouterG = n : this.startRouterF = n,
                    this.startData = app.ClientConfigManager().getLocalUrlDataByName("d"))
            }
            ,
            t.prototype.SetRoomNumber = function () {
                var e = 0
                    , t = app.NativeMgr().getContentFromClipBoard();
                if (t && "" != t) {
                    var n = "" + t
                        , o = n.indexOf("[")
                        , i = n.indexOf("]");
                    if (o > -1 && i > -1 && i - o > 0) {
                        if (e = parseInt(n.substring(o + 1, i)),
                            isNaN(e))
                            return;
                        app.NativeMgr().copyToClipBoard(" ")
                    }
                }
                this.ClientConfig.roomNumber = e
            }
            ,
            Object.defineProperty(t.prototype, "GetStartRouterF", {
                get: function () {
                    return this.startRouterF
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.ResetRouterF = function () {
                this.startRouterF = null
            }
            ,
            Object.defineProperty(t.prototype, "GetStartRouterG", {
                get: function () {
                    return this.startRouterG
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.ResetRouterG = function () {
                this.startRouterG = null
            }
            ,
            Object.defineProperty(t.prototype, "GetStartData", {
                get: function () {
                    return this.startData
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.StartRouter = function () {
                var e = this.GetStartRouterF;
                e && (this.ResetRouterF(),
                    !app.FormManager().IsFormShow(e) && (app.FormManager().IsSupportVisitor(e) ? app.FormManager().ShowForm(e, this.GetStartData): app.UserManager().getIsOfficialAccount() && app.FormManager().ShowForm(e, this.GetStartData)));
                var t = this.GetStartRouterG;
                if (t) {
                    this.ResetRouterG();
                    var n = app.RoomManager().GetRoomModeInfoBySceneName(t);
                    n ? app.HallManager().EnterRoomGame(Number(n.RoomMode)) : this.ErrLog("GetRoomModeInfoBySceneName error: " + e)
                }
            }
            ,
            t.prototype.setAgentID = function () {
                if (!this.ClientConfig.agentID) {
                    var e = app.NativeMgr().getAll_preinstallKey();
                    if (e)
                        return this.ClientConfig.agentID = e,
                            void app.LocalDataManager().SetConfigProperty("LocalInfo", "agentID", this.ClientConfig.agentID);
                    var t = app.NativeMgr().getAdJustData();
                    if (t) {
                        var n = t.clickLabel || t.trackerToken;
                        n && (this.ClientConfig.agentID = n,
                            app.LocalDataManager().SetConfigProperty("LocalInfo", "agentID", this.ClientConfig.agentID));
                        var o = t.trackerName;
                        o && (this.ClientConfig.ajtrackerName = o,
                            app.LocalDataManager().SetConfigProperty("LocalInfo", "ajtrackerName", this.ClientConfig.ajtrackerName));
                        var i = t.adid;
                        i && (this.ClientConfig.aj_gaid = i,
                            app.LocalDataManager().SetConfigProperty("LocalInfo", "aj_gaid", this.ClientConfig.aj_gaid))
                    }
                }
            }
            ,
            t.prototype.OnTimer = function (e) {
                this.maxRetryCount > 5 || (this.deltaTime += e,
                    this.deltaTime <= 1 || (this.deltaTime = 0,
                        this.maxRetryCount++,
                        this.ClientConfig.agentID || this.setAgentID(),
                        this.ClientConfig.gaid || (this.ClientConfig.gaid = app.NativeMgr().getAdvertisingId())))
            }
            ,
            Object.defineProperty(t.prototype, "GetGlobalConfig", {
                get: function () {
                    return this.GlobalConfig
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "ApiUrl", {
                get: function () {
                    return this.ClientConfig.webapi_url || this.GetGlobalConfig.scheme + "://" + this.GetGlobalConfig.hosts[0]
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.getLocalUrlDataByName = function (e) {
                // if (isgoServer) {
                //     if (!this.LocalUrlInfo["agentid"]) {
                //         this.LocalUrlInfo["agentid"] = "1"
                //     }
                // }
                return this.LocalUrlInfo[e]
            }
            ,
            t
    }(o.Singleton);
n.ClientConfigManager = r

module.exports = n
