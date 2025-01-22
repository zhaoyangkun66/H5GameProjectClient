let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./Base/BaseComponent")
    , i = require("./Define/GameEventDefine")
    , a = require("./Define/HttpServerDefine")
    , r = require("./Define/ShareDefine")
    , s = require("./UIRoot")
    , c = cc._decorator
    , l = c.ccclass
    , p = (c.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.OnLoad = function () {
                    this.JS_Name = "ClientMgr",
                        app.Client = this,
                        cc.log("init"),
                        cc.game.addPersistRootNode(this.node),
                        cc.debug.setDisplayStats(false),
                        cc.game.setFrameRate(60),
                        this.schedule(this.OnTimer.bind(this), .1),
                        this.InitManager()
                }
                ,
                t.prototype.InitManager = function () {
                    window.t = app.TestManager(),
                        app.LogManager(),
                        app.LocalDataManager().InitConfig(),
                        app.ClientConfigManager().LoadStartInfo(),
                        app.HttpServerManager().RegNetPack(a.HttpAPI.COMMON_CONFIG, this.OnGameConfig, this),
                        app.LaunchManager(),
                        app.LoadTextManager(),
                        app.HNoticeManager(),
                        app.GuideManager(),
                        //app.LanguageManager().RequestLangList(),
                        app.NotifyManager(),
                        app.GameManager(),
                        app.HallMessageCenter(),
                        app.RoomMessageCenter(),
                        app.RedDotManager(),
                        app.KeyManager(),
                        app.EventTrackManager(),
                        app.GoogleLoginManager(),
                        app.BetBonusManager(),
                        app.GameEventMgr()
                }
                ,
                t.prototype.Reload = function () {
                    app.RedDotManager().OnReload(),
                        app.SupportManager().OnReload(),
                        app.GameTypeManager().OnReload(),
                        app.HallManager().OnReload(),
                        app.LaunchManager().ClearTimeout()
                }
                ,
                t.prototype.GetUILayer = function () {
                    return cc.find("Canvas/RootLayer/UILayer")
                }
                ,
                t.prototype.GetIndependentLayer = function () {
                    return cc.find("Canvas/RootLayer/UILayer/independent")
                }
                ,
                t.prototype.GetIndependentChildren = function () {
                    return this.GetIndependentLayer().children
                }
                ,
                t.prototype.DownloadbarActive = function (active) {
                    cc.find("Canvas/RootLayer/UILayer/contain/scrollview/view/node_home/download").active = active
                    //  this.OnEvent(i.GameEventDefine.UIChatUpdateTopWidget)
                },
                t.prototype.GetDownload = function () {
                    // let ddd=cc.find("Canvas/RootLayer/UILayer/contain/scrollview/view/node_home/download")
                    return cc.find("Canvas/RootLayer/UILayer/contain/scrollview/view/node_home/download")
                }
                ,
                t.prototype.GetContentLayer = function () {
                    return cc.find("Canvas/RootLayer/UILayer/contain/scrollview/view/node_home/content")
                }
                ,
                t.prototype.GetContentChildren = function () {
                    return this.GetContentLayer().children
                }
                ,
                t.prototype.GetHomeLayer = function () {
                    return cc.find("Canvas/RootLayer/UILayer/contain/scrollview/view/node_home/bottom")
                }
                ,
                t.prototype.InitUILayer = function () {
                    return this.GetUILayer().getComponent(s.default).InitLayer()
                }
                ,
                t.prototype.OnGameConfig = function (e) {
                    // e && e.is_debug && this.InitDebug(true)
                    if (!CC_BUILD) {
                      this.InitDebug(true)
                    }
                }
                ,
                t.prototype.InitDebug = function (e) {
                    this.EnableLog(e),
                        this.OnEvent(i.GameEventDefine.SHOW_DEBUG_FORM, e)
                }
                ,
                t.prototype.EnableLog = function (e) {
                    app.LogManager().IsOpenLog(e),
                        r.Development.SetDevelopment(e)
                }
                ,
                t.prototype.OnEvent = function (e, t, n) {
                    undefined === n && (n = false),
                        n && (t ? this.Log("OnEvent(%s):", e, t) : this.Log("OnEvent(%s)", e));
                    try {
                        this.node.emit(e, t)
                    } catch (o) {
                        this.ErrLog("OnEvent:%s", o.stack)
                    }
                }
                ,
                t.prototype.RegEvent = function (e, t, n) {
                    t && n ? this.node.on(e, t, n) : this.ErrLog("eventName:%s error", e)
                }
                ,
                t.prototype.UnRegTargetEvent = function (e, t, n) {
                    undefined === t && (t = ""),
                        t && n ? this.node.off(t, n, e) : this.node.targetOff(e)
                }
                ,
                t.prototype.OnTimer = function (e) {
                    try {
                        app.ClientConfigManager().OnTimer(e)
                    } catch (t) {
                        this.ErrLog("OnTimer:%s", t.stack)
                    }
                }
                ,
                __decorate([l], t)
        }(o.default));
n.default = p,
    module.exports = n
