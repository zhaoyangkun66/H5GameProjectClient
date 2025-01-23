let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Component/ListView")
  , a = require("../../../../Common/Define/GameEventDefine")
  , r = require("../../../../Common/Define/UINameDefine")
  , s = require("../../autoui/Deposit_Withdraw/auto_UIWithdrawRecord")
  , c = require("./UIWithdrawRecordItem")
  , l = cc._decorator
  , p = l.ccclass
  , d = l.menu
  , h = l.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.RecordItem = null,
        t.n_IsSend = true,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIWithdrawRecord",
        this.RecordView = new i.ListView({
            scrollview: this.GetWndComponent("general/list", cc.ScrollView),
            mask: this.GetWndNode("general/list/view"),
            item_tpl: this.RecordItem,
            item_setter: function(e, t) {
                e.getComponent(c.default).SetItemData(t)
            }
        }),
        this.RegEvent(a.GameEventDefine.GET_TXRECORD, this.RenderHistory)
    }
    ,
    t.prototype.OnLoad = function() {
        this.ui = this.node.addComponent(s.default),
        this.ui.AutoBindEvent(this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.n_page = 1,
        this.RequestTxRecord()
    }
    ,
    t.prototype.RenderHistory = function(e) {
        var t;
        if (e) {
            if (e.length <= 0)
                return this.n_IsSend = false,
                void (this.n_page <= 1 && this.RecordView.set_data(e));
            this.n_IsSend ? this.RecordView.set_data(e) : (this.n_IsSend = true,
            this.n_page > 1 ? (t = this.RecordView).append_data.apply(t, e) : this.RecordView.set_data(e))
        }
    }
    ,
    t.prototype.scrollEvents = function(e) {
        Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsSend && (this.n_page += 1,
        this.n_IsSend = false,
        this.RequestTxRecord())
    }
    ,
    t.prototype.RequestTxRecord = function() {
        app.CashOutManager().RequestTxRecord(this.n_page)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_setting || app.FormManager().CloseForm(r.UINameDefine.UIWithdrawRecord)
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([h(cc.Prefab)], t.prototype, "RecordItem", undefined),
    __decorate([p, d("UI/Deposit_Withdraw/UIWithdrawRecord")], t)
}(o.default);
n.default = u,
module.exports = n
