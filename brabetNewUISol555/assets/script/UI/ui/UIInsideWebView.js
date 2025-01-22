let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.layerWin = [],
        t.webview = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIInsideWebView",
        this.webview = cc.find("layer/webview", this.node).getComponent(cc.WebView)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        this.webview.url = this.data.url,
        cc.sys.isNative || this.schedule(this.ChangeWebViewDiv, .1)
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.ChangeWebViewDiv = function() {
        try {
            this.webview._impl._div && (this.webview._impl._div.style.width = "100%",
            this.webview._impl._div.style.height = "95%",
            this.webview._impl._div.style.transform = "",
            this.webview._impl._div.style["-webkit-transform"] = "")
        } catch (e) {
            cc.error("ChangeWebViewDiv  Error")
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "layerWin", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
