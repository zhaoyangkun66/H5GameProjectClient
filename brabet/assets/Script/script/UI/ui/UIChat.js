let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {}
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.Client.OnEvent(i.GameEventDefine.HallWidgetVariety),
        app.Client.OnEvent(i.GameEventDefine.SELECT_TOPTOOGLE, a.Hall_SelectTopToggle.Email),
        this.openEmail(),
        cc.find("right/connect/toggleContainer/toggle1", this.node).getComponent(cc.Toggle).check()
    }
    ,
    t.prototype.OnClose = function() {
        app.Client.OnEvent(i.GameEventDefine.HallWidgetVariety)
    }
    ,
    t.prototype.OnClick = function(e) {
        "toggle1" != e ? "toggle2" != e ? "btn_exit" != e || this.CloseForm() : this.openEmail() : this.openNotice()
    }
    ,
    t.prototype.openNotice = function() {
        cc.find("right/connect/scrollview_notice", this.node).active = true,
        cc.find("right/connect/scrollview_mail", this.node).active = false,
        cc.find("right/mail_btn", this.node).active = false
    }
    ,
    t.prototype.openEmail = function() {
        cc.find("right/connect/scrollview_notice", this.node).active = false,
        cc.find("right/connect/scrollview_mail", this.node).active = true,
        cc.find("right/mail_btn", this.node).active = true
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
