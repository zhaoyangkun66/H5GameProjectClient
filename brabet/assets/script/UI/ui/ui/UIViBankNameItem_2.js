let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/GameEventDefine")
  , a = require("../../../../Common/Define/HttpServerDefine")
  , r = require("../../../../Common/Define/UINameDefine")
  , s = require("../../autoui/Vietnam_DepositWithdraw_2/auto_UIViBankNameItem_2")
  , c = cc._decorator
  , l = c.ccclass
  , p = c.menu
  , d = c.property
  , h = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.nation = null,
        t.nation2 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIViBankNameItem_2",
        this.ui = this.node.addComponent(s.default),
        this.ui.AutoBindEvent(this)
    }
    ,
    t.prototype.SetItemData = function(e) {
        this.record = e,
        this._payTypeInfo = app.Store3Manager().GetChoseChannelItem();
        var t = ""
          , n = false;
        this._payTypeInfo.pay_type == a.PayType.Pay_Type_BANK ? (n = e.id == app.Store3Manager().PayChoseBankId,
        t = e.bank_name) : this._payTypeInfo.pay_type == a.PayType.Pay_Type_USDT && (n = e.id == app.Store3Manager().ChoseUsdtId,
        t = e.name),
        this.nation.string = app.ComUtil().cutStr(t, 40),
        this.nation2.string = app.ComUtil().cutStr(t, 40),
        this.RenderSelected(n)
    }
    ,
    t.prototype.RenderSelected = function(e) {
        this.GetWndNode("Background", this.ui.btn_bg).active = !e,
        this.GetWndNode("checkmark", this.ui.btn_bg).active = e
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (t == this.ui.btn_bg)
            return this._payTypeInfo.pay_type == a.PayType.Pay_Type_BANK ? app.Store3Manager().PayChoseBankId = this.record.id : this._payTypeInfo.pay_type == a.PayType.Pay_Type_USDT && (app.Store3Manager().ChoseUsdtId = this.record.id),
            app.Client.OnEvent(i.GameEventDefine.BANK_CODE_CLICK, this.record),
            void app.FormManager().CloseForm(r.UINameDefine.UIViBankName_2)
    }
    ,
    __decorate([d(cc.Label)], t.prototype, "nation", undefined),
    __decorate([d(cc.Label)], t.prototype, "nation2", undefined),
    __decorate([l, p("UI/Vietnam_DepositWithdraw_2/UIViBankNameItem_2")], t)
}(o.default);
n.default = h,
module.exports = n
