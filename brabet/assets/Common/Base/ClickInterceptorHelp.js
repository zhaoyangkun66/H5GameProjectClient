let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ClickInterceptorHelp = undefined;
var o = 1
  , i = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.clickFlag = o,
        t
    }
    return __extends(t, e),
    t.prototype.checkClickAllow = function(e) {
        var t = this;
        return undefined === e && (e = 200),
        this.clickFlag == o ? (this.clickFlag = 0,
        setTimeout(function() {
            t.clickFlag = o
        }, e),
        true) : (app.SysNotifyManager().ShowToast(app.i18n.t("Sc_Error_Youroperationfrequent")),
        false)
    }
    ,
    t
}(require("./Singleton").Singleton);
n.ClickInterceptorHelp = i,
module.exports = n
