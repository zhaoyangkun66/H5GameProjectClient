let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.menu
  , c = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.PAY_CHENNEL_CLICK, this.UpdateToggleBg)
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.InitInfo = function(e) {
        this.data = e,
        app.ImageUtil().LoadImage(this.ui.node_icon, e.logo_url),
        this.ui.label_name.string = e.show_name,
        this.UpdateToggleBg()
    }
    ,
    t.prototype.UpdateToggleBg = function() {
        app.Store3Manager().ChosePayTypeId == this.data.id ? this.ui.toggle_bg.getComponent(cc.Toggle).check() : this.ui.toggle_bg.getComponent(cc.Toggle).uncheck()
    }
    ,
    t.prototype.OnClick = function(e) {
        if (e == this.ui.toggle_bg.name)
            return app.Store3Manager().ChosePayTypeId == this.data.id ? void this.ui.toggle_bg.getComponent(cc.Toggle).check() : (app.Store3Manager().ChosePayTypeId = this.data.id,
            void app.Client.OnEvent(i.GameEventDefine.PAY_CHENNEL_CLICK))
    }
    ,
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIToggleItem_2_V")], t)
}(o.default));
n.default = c,
module.exports = n
