let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GoServerManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = window.Protocol || {}
    , r = a.Package
    , s = a.Message
    , c = {
        sys: {
            type: "js-websocket",
            version: "0.0.1",
            rsa: {}
        },
        user: {}
    }
    , l = 0
    , p = 0
    , d = 0
    , h = null
    , u = null
    , _ = 0
    , m = {}
    , f = {}
    , g = {}
    , y = function (e) {
        function t() {
            var t = e.call(this) || this;
            return t.isConnecting = false,
                t.connected = false,
                t.Emitter = new app.emitter,
                t.JS_Name = "GoServerManager",
                t.SysLog("Init"),
                t.RegisterEventHandler(),
                t
        }
        return __extends(t, e),
            t.prototype.RegisterEventHandler = function () {
                m[r.TYPE_HANDSHAKE] = this.OnHandshake.bind(this),
                    m[r.TYPE_HEARTBEAT] = this.OnHeartBeat.bind(this),
                    m[r.TYPE_DATA] = this.OnData.bind(this),
                    m[r.TYPE_KICK] = this.OnKick.bind(this)
            }
            ,
            t.prototype.Connect = function (e) {
                if (isgoServer) {
                    return
                }
                this.SysLog("connect: " + e),
                    this.isConnecting || (this.Close(),
                        this.url = e,
                        this.needConnect = true,
                        this.isConnecting = true,
                        this.connectTime = Date.now(),
                        this.connectCount++,
                        3 == this.connectCount && (this.connectCount = 0),
                        this.socket = new WebSocket(e),
                        this.socket.binaryType = "arraybuffer",
                        this.socket.onopen = this.OnOpen.bind(this),
                        this.socket.onmessage = this.OnMessage.bind(this),
                        this.socket.onerror = this.OnError.bind(this),
                        this.socket.onclose = this.OnClose.bind(this))
            }
            ,
            t.prototype.OnOpen = function () {
                if (isgoServer) {
                    return
                }
                this.SysLog("ws connected"),
                    this.connected = true,
                    this.connectCount = 0,
                    this.isConnecting = false,
                    _ = 0,
                    this.SendHandshake()
            }
            ,
            t.prototype.OnMessage = function (e) {
                try {
                    var t = r.decode(e.data);
                    Array.isArray(t) ? t.forEach(function (e) {
                        m[e.type](e.body)
                    }) : m[t.type](t.body)
                } catch (n) {
                    this.ErrLog(n.stack)
                }
                p && (d = Date.now() + p)
            }
            ,
            t.prototype.OnData = function (e) {
                var t = s.decode(e);
                if (t.type === s.TYPE_RESPONSE && t.id > 0 && (t.route = f[t.id],
                    delete f[t.id],
                    !t.route))
                    this.ErrLog("OnData error: " + t.id);
                else if (t.route) {
                    var n = JSON.parse(a.strdecode(t.body));
                    this.IsDevelopment() && this.NetLog("OnData", t.route, JSON.parse(JSON.stringify(n)), "b-gb1"),
                        this.Emitter.emit(t.route, n, g[t.id]),
                        delete g[t.id]
                } else
                    this.ErrLog("OnData error: route is null")
            }
            ,
            t.prototype.OnError = function (e) {
                this.ErrLog("OnError:", e)
            }
            ,
            t.prototype.OnClose = function (e) {
                this.SysLog("OnClose:", e),
                    this.onWebSocketClose()
            }
            ,
            t.prototype.SendHandshake = function () {
                var e = r.encode(r.TYPE_HANDSHAKE, a.strencode(JSON.stringify(c)));
                this.Send(e)
            }
            ,
            t.prototype.OnHandshake = function (e) {
                var t = JSON.parse(a.strdecode(e));
                501 !== t.code ? 200 === t.code ? (function (e) {
                    e.sys && e.sys.heartbeat ? (l = 1e3 * e.sys.heartbeat,
                        p = 2 * l) : (l = 0,
                            p = 0)
                }(t),
                    this.OnHeartBeat(),
                    this.Send(r.encode(r.TYPE_HANDSHAKE_ACK)),
                    this.SysLog("handshake success"),
                    app.Client.OnEvent(i.GameEventDefine.GO_GAME_SERVER_CONNECTED)) : this.ErrLog("handshake fail") : this.ErrLog("client version not fullfill")
            }
            ,
            t.prototype.OnHeartBeat = function () {
                var e = this;
                if (l) {
                    var t = r.encode(r.TYPE_HEARTBEAT);
                    h && (clearTimeout(h),
                        h = null),
                        u || (u = setTimeout(function () {
                            u = null,
                                e.SysLog("Send HeartBeat"),
                                e.Send(t),
                                d = Date.now() + p;
                            var n = function () {
                                var t = d - Date.now();
                                t > 100 ? h = setTimeout(n, t) : (e.SysLog("HeartBeatTimeOut"),
                                    e.needConnect = true,
                                    e.onWebSocketClose())
                            };
                            h = setTimeout(n, p)
                        }, l))
                }
            }
            ,
            t.prototype.OnKick = function (e) {
                var t = JSON.parse(a.strdecode(e));
                this.NetLog("OnData", t),
                    this.needConnect = false
            }
            ,
            t.prototype.SendMessage = function (e, t) {
                _++,
                    this.IsDevelopment() && this.SysLog("SendData", "reqId:" + _, e, t, "b-g");
                var n = s.encode(_, s.TYPE_REQUEST, 0, e, a.strencode(JSON.stringify(t)))
                    , o = r.encode(r.TYPE_DATA, n);
                this.Send(o),
                    f[_] = e,
                    g[_] = t
            }
            ,
            t.prototype.Send = function (e) {
                this.socket && this.connected && this.socket.send(e.buffer)
            }
            ,
            t.prototype.RegisterMsgHandler = function (e, t, n) {
                "string" == typeof e ? t && n ? this.Emitter.on(e, t, n) : this.ErrLog("RegisterMsgHandler :%s error", e) : this.ErrLog("RegisterMsgHandler need String head")
            }
            ,
            t.prototype.UnregisterMsgHandler = function (e, t, n) {
                "string" == typeof e ? t ? this.Emitter.off(e, t, n) : this.ErrLog("UnregisterHandler head:%s error", e) : this.ErrLog("UnregisterHandler need String head")
            }
            ,
            t.prototype.onWebSocketClose = function () {
                this.SysLog("onWebSocketClose"),
                    this.Close(),
                    this.needConnect && this.Reconnect()
            }
            ,
            t.prototype.CloseConnect = function () {
                this.needConnect = false,
                    this.Close()
            }
            ,
            t.prototype.Reconnect = function () {
                var e = this;
                Date.now() - this.connectTime >= 4e3 ? this.Connect(this.url) : setTimeout(function () {
                    e.Connect(e.url)
                }, 4e3)
            }
            ,
            t.prototype.Close = function () {
                if (this.socket) {
                    this.connected = false,
                        this.isConnecting = false,
                        u && (clearTimeout(u),
                            u = null),
                        h && (clearTimeout(h),
                            h = null),
                        this.socket.onopen = null,
                        this.socket.onerror = null,
                        this.socket.onclose = null,
                        this.socket.onmessage = null;
                    try {
                        this.socket.close(),
                            this.SysLog("\u8fde\u63a5\u65ad\u5f00:%s", this.url, "w-g")
                    } catch (e) {
                        this.ErrLog("\u5173\u95ed\u7f51\u7edc\u94fe\u63a5\u9519\u8bef: message:%s stack:%s", e.message)
                    }
                    this.socket = null
                }
            }
            ,
            t.prototype.SetServerTimeOffset = function (e) {
                this.serverTimeOffset = e
            }
            ,
            Object.defineProperty(t.prototype, "GetServerTime", {
                get: function () {
                    return Math.floor(Date.now() / 1e3) + this.serverTimeOffset
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetServerTimeString", {
                get: function () {
                    return undefined === this.serverTimeOffset ? "" : new Date(1e3 * this.GetServerTime).format("yyyy-MM-dd hh:mm:ss")
                },
                enumerable: false,
                configurable: true
            }),
            t
    }(o.Singleton);
n.GoServerManager = y,
    module.exports = n
