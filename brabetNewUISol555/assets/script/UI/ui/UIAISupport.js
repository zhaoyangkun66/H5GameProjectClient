let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIAISupport",
        this.webView = this.GetWndComponent("ndoe_smallWebview/webview", cc.WebView),
        window.addEventListener("message", this.OnMessage.bind(this), false),
        this.webView.node.on("loaded", this.webviewloadedCallBack, this),
        this.webView.node.on("error", this.webviewErrorCallBack, this),
        this.webView.node.on("loading", this.webviewloadingCallBack, this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        var n = app.LanguageManager().GetLocalLanguage()
          , o = app.GameConfigManager().GetGameConfig().ai_chat_robot_switch
          , i = 1 === o ? "/#/chat?" : "/#/frequently?"
          , a = app.GameConfigManager().GetGameConfig().chat_robot_entry_host + i + "&token=" + app.UserManager().GetUserInfo.token + "&user_id=" + app.UserManager().GetUserInfo.uid + "&language=" + n;
        this.webView.url = a,
        this.webView._impl && (this.webView._impl._iframe.style.background = "#0f1923"),
        this.unscheduleAllCallbacks(),
        this.scheduleOnce(this.AutoClose, 6)
    }
    ,
    t.prototype.webviewloadedCallBack = function() {
        this.webView._impl && (this.webView._impl._iframe.id = app.SupportManager().WebviewSubIframeName)
    }
    ,
    t.prototype.webviewErrorCallBack = function() {
        this.AutoClose()
    }
    ,
    t.prototype.webviewloadingCallBack = function() {}
    ,
    t.prototype.AutoClose = function() {
        this.CloseForm()
    }
    ,
    t.prototype.OnMessage = function(e) {
        switch (e.data.iframeType) {
        case "close_page":
            this.CloseForm();
            break;
        case "jump_page":
            e.data.iframeData.inside > 0 && (this.AutoClose(),
            app.InteractionMgr().SendWndEvent(e.data.iframeData.inside)),
            e.data.iframeData.outside && cc.sys.openURL(e.data.iframeData.outside);
            break;
        case "load_show":
            this.unschedule(this.AutoClose)
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_closewebview" === e && this.CloseForm()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.unscheduleAllCallbacks(),
        this.webView.url = ""
    }
    ,
    __decorate([a], t)
}(o.default));
n.default = r,
module.exports = n
