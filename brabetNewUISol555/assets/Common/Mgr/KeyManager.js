let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._callbacks = [],
            t._targets = [],
            t.clickBackTime = 0,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            for (var e = this, t = [], n = 0; n < arguments.length; n++)
                t[n] = arguments[n];
            this.JS_Name = "KeyManager",
                cc.systemEvent.on(cc.SystemEvent.EventType.KEY_DOWN, this.OnKeyDown, this),
                cc.systemEvent.on("onBackKey", this.OnBackKey, this),
                window.onpopstate = function (t) {
                    try {
                        if (t && t.state && "object" == typeof t.state) {
                            var n = t.state
                                , o = n.name
                                , i = n.data;
                            if (!o)
                                return;
                            app.Client.GetIndependentChildren().length > 0 && app.HallManager().CloseIndependentForm(),
                                app.FormManager().ShowForm(o, i)
                        }
                    } catch (a) {
                        e.ErrLog("onpopstate: ", a)
                    }
                }
        }
        ,
        t.prototype.OnKeyDown = function (e) {
            var t = e.keyCode;
            this.Log("onKeyDown ==>>", t),
                app.ComTool().DesktopPlatform() && (t == cc.macro.KEY.escape || t == cc.macro.KEY.f5 && location.reload())
        }
        ,
        t.prototype.OnBackKey = function () {
            this.Log("onBackKey");
            var e = this._callbacks.length;
            if (0 != e) {
                if (!app.RoomManager().IsOutGoldGamePop())
                    for (var t = 0; t < e; t++)
                        return void this._callbacks[t].apply(this._targets[t])
            } else if (app.ComTool().H5Platform()) {
                if (app.NativeMgr().getApkVersion() >= 1) {
                    if (Date.now() - this.clickBackTime >= 2e3)
                        return this.clickBackTime = Date.now(),
                            void app.SysNotifyManager().ShowToast("ExitTip");
                    app.NativeMgr().exitApp()
                }
                return
            }
        }
        ,
        t.prototype.RegBackEvent = function (e, t) {
            e && t ? (this._callbacks.splice(0, 0, e),
                this._targets.splice(0, 0, t)) : this.ErrLog("RegBackEvent: error")
        }
        ,
        t.prototype.UnRegBackEvent = function (e, t) {
            for (var n = 0; n < this._callbacks.length; n++)
                if (this._callbacks[n] === e && this._targets[n] === t) {
                    this._callbacks.splice(n, 1),
                        this._targets.splice(n, 1);
                    break
                }
        }
        ,
        t.prototype.RegRouterEvent = function (e, t) {
            var n, o = e.JS_Name, i = (location ? location.origin + location.pathname : "") + "?f=" + o;
            if (t && t instanceof Array && t[0]) {
                var a = t[0];
                if (n = a,
                    Number.isInteger(Number(a)))
                    i += "&d=" + a;
                else if ("[object Object]" === Object.prototype.toString.call(a))
                    for (var r in a)
                        Object.prototype.hasOwnProperty.call(a, r) && (i += "&" + r + "=" + a[r])
            }
            if (app.ClientConfigManager().GetClientConfig.agentID != "") {
                i = i + "&agentid=" + app.ClientConfigManager().GetClientConfig.agentID
            }
            if (app.ClientConfigManager().GetClientConfig.click_id != 0) {
                i = i + "&click_id=" + app.ClientConfigManager().GetClientConfig.click_id
            }
            if (app.ClientConfigManager().GetClientConfig.ttclid != 0) {
                i = i + "&ttclid=" + app.ClientConfigManager().GetClientConfig.ttclid
            }
            history && history.pushState({
                name: o,
                data: n
            }, null, i)
        }
        ,
        t
}(require("../Base/Singleton").Singleton);
n.default = o,
    module.exports = n
