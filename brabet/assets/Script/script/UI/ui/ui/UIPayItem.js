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
        this.RegEvent(i.GameEventDefine.PAY_ITEM_CLICK, this.UpdateChose)
    }
    ,
    t.prototype.InitInfo = function(e) {
        this.data = e;
        for (var t = this.ui.toggle_bg.children, n = 0; n < t.length; n++) {
            var o = t[n];
            this.GetWndNode("label", o).getComponent(cc.Label).string = e.channel_name
        }
        this.UpdateChose()
    }
    ,
    t.prototype.UpdateChose = function() {
        this.data.id == app.Store2Manager().ChosePayChennelId ? this.ui.toggle_bg.getComponent(cc.Toggle).check() : this.ui.toggle_bg.getComponent(cc.Toggle).uncheck()
    }
    ,
    t.prototype.OnClick = function(e) {
        if (e == this.ui.toggle_bg.name) {
            if (app.Store2Manager().ChosePayChennelId == this.data.id)
                return void this.ui.toggle_bg.getComponent(cc.Toggle).check();
            app.Store2Manager().ChosePayChennelId = this.data.id,
            app.Client.OnEvent(i.GameEventDefine.PAY_ITEM_CLICK)
        }
    }
    ,
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIPayItem_V")], t)
}(o.default));
n.default = c,
module.exports = n
