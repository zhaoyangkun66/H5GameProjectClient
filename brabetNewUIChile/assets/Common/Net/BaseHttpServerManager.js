let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.BaseHttpServerManager = undefined;
var o = require("../Define/EventWaitType")
    , i = require("../Base/Singleton")
    , a = require("../Define/ShareDefine")
    , r = new Map
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.Emitter = new app.emitter,
                t.HadFailed = false,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "BaseHttpServerManager",
                    this.Log("Init"),
                    this.HttpRequest = app.HttpRequest(),
                    this.CurrentHostIndex = app.LocalDataManager().GetConfigProperty("ServerInfo", "LastConnectedHostIndex")
            }
            ,
            t.prototype.RegNetPack = function (e, t, n) {
                this.Emitter.on(e, t, n)
            }
            ,
            t.prototype.UnRegNetPack = function (e, t, n) {
                this.Emitter.off(e, t, n)
            }
            ,
            t.prototype.SendHttpPack = function (e, t, n, i) {
                undefined === n && (n = true),
                    undefined === i && (i = false),
                    t || (t = {}),
                    this.ObserverFailedEvent(e) && i && r.set(e, 2);
                var a, s = app.ClientConfigManager().GetGlobalConfig.hosts;
                this.HadFailed && s.length > 1 ? (this.HadFailed = false,
                    this.CurrentHostIndex = ++this.CurrentHostIndex % s.length,
                    a = s[this.CurrentHostIndex]) : s.length > 0 ? a = s[0] : this.ErrLog("Get Hosts error");
                var c = app.ClientConfigManager().GetGlobalConfig.scheme + "://" + a;
                n && app.Client.OnEvent("ModalLayer", o.EventWaitType.OpenNet),
                    this.NetLog("[SendHttp]:", c + e, t, "b-g"),
                    this.HttpRequest.SendHttpRequest(c, e, "POST", t, this.OnReceiveHttpPack.bind(this), this.OnConnectHttpFail.bind(this))
            }
            ,
            t.prototype.OnReceiveHttpPack = function (e, t, n, i) {
                var s;
                r.delete(t),
                    app.Client.OnEvent("ModalLayer", o.EventWaitType.ReceiveNet);
                try {
                    s = JSON.parse(n)
                } catch (l) {
                    return void this.ErrLog("OnReceiveHttpPack(%s) error:%s", t, n)
                }
                this.IsDevelopment() && this.NetLog("[RecvHttp]:", e + t, JSON.parse(JSON.stringify(s)), "b-gb");
                if (isgoServer == true) {
                    if (s.code == -1) {
                        s.code = 1
                    }
                    if (s.message) {
                        s.msg = s.message
                    }
                }
                var c = s.code;
                if (t == '/config/commonConfig') {
                    s.data.current_sys_time = s.time
                }
                // if (t == 'gold/agentCashTransfer') {
                //     s.code = 0
                //     c = 0
                // }

                // if (t == '/account/getUserInfo') {
                //     c = a.ReqFailCode.TokenInviable
                // }
                // if (t == '/activitie/newbieBonusReceive') {
                //     c = 1002
                //     s.code = 1002
                // }
                if (c) {
                    if (this.ErrLog("OnReceiveHttpPack HttpCode:", t, s),
                        c == a.ReqFailCode.TokenInviable)
                        return app.LoginManager().RemoveCurrentUser(),
                            void app.GameManager().BackLoginScene();
                    c != a.ReqFailCode.IP_Limit && c != a.ReqFailCode.LOGIN_FAILED_VERIFICATION && c != a.ReqFailCode.CPFverify && app.SysNotifyManager().ShowToast(s.msg),
                        this.ObserverErrorEvent(t) && this.Emitter.emit(t, s, i)
                } else
                    try {
                        this.Emitter.emit(t, s.data, i)
                    } catch (p) {
                        return void this.ErrLog("OnReceiveHttpPack(%s)httpResText:%s, error:%s", t, n, p)
                    }
            }
            ,
            t.prototype.OnConnectHttpFail = function (e, t, n, i, a) {
                return __awaiter(this, undefined, undefined, function () {
                    var n;
                    return __generator(this, function (i) {
                        switch (i.label) {
                            case 0:
                                return app.Client.OnEvent("ModalLayer", o.EventWaitType.ReceiveNet),
                                    this.ErrLog("OnConnectHttpFail(%s%s)", e, t),
                                    this.HadFailed = true,
                                    (n = r.get(t)) > 0 ? (r.set(t, --n),
                                        [4, (1e3,
                                            new Promise(function (e) {
                                                return setTimeout(e, 1e3)
                                            }
                                            ))]) : [3, 2];
                            case 1:
                                return i.sent(),
                                    this.SendHttpPack(t, a, true, false),
                                    [2];
                            case 2:
                                try {
                                    this.ObserverFailedEvent(t) ? this.Emitter.emit(t, null, a) : app.SysNotifyManager().ShowToast("UI.System_44")
                                } catch (s) {
                                    return this.ErrLog("OnConnectHttpFail Emit (%s%s)", e, t),
                                        [2]
                                }
                                return [2]
                        }
                    })
                })
            },
            t.prototype.SendHttpCB = function (e, t, n, i) {
                var r = this;
                void 0 === t && (t = {}),
                    void 0 === i && (i = !1);
                var s = app.LanguageManager().GetLocalLanguage(!0);
                t.language = s;
                var c = app.ClientConfigManager().GetGlobalConfig.hosts
                    , l = app.ClientConfigManager().GetGlobalConfig.scheme + "://" + c[this.CurrentHostIndex];
                i && app.Client.OnEvent("ModalLayer", o.EventWaitType.OpenNet),
                    this.NetLog("[SendHttp]:", l + e, t, "b-g"),
                    this.HttpRequest.SendHttpRequest(l, e, "POST", t, function (e, t, s) {
                        var c;
                        i && app.Client.OnEvent("ModalLayer", o.EventWaitType.ReceiveNet);
                        try {
                            c = JSON.parse(s)
                        } catch (l) {
                            return void r.ErrLog("OnReceiveHttpPack(%s) error:%s", t, s)
                        }
                        if (r.IsDevelopment() && r.NetLog("[RecvHttp]:", e + t, JSON.parse(JSON.stringify(c)), "b-gb"),
                            c.code == a.ReqFailCode.TokenInviable)
                            return app.GameManager().BackLoginScene(),
                                void r.Log("TokenInviable");
                        try {
                            n && n(c)
                        } catch (p) {
                            return void r.ErrLog("SendHttpCB (%s%s)", e, t)
                        }
                    }, function () {
                        app.Client.OnEvent("ModalLayer", o.EventWaitType.ReceiveNet),
                            app.SysNotifyManager().ShowToast("UI.System_44")
                    })
            },
            t
    }(i.Singleton);
n.BaseHttpServerManager = s,
    module.exports = n
