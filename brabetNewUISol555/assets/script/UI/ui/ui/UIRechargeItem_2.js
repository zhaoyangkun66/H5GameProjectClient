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
        t.Percentgold = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.ACTIVITY_BONUS_CLICK, this.ExtraMoney),
        this.RegEvent(i.GameEventDefine.ONLINE_PAY_EDITOBX_ENDED, this.UpdateInfo)
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.InitInfo = function(e, t, n, o) {
        this.index = n,
        this.data = e,
        this.ChannelInfo = t;
        var i = app.GameConfigManager().GetCurrency;
        this.ui.label_num.string = i + e.amount + t.multiple_unit,
        this.ExtraMoney(o),
        this.UpdateInfo()
    }
    ,
    t.prototype.ExtraMoney = function(e) {
        if (this.isChose = e,
        this.Percentgold = 0,
        this.data.activity_info && e) {
            var t = Number(this.data.send_percent);
            t > 0 ? (this.Percentgold = Number(this.data.amount) * t / 100,
            this.ui.label_extraNum.string = "+" + this.Percentgold + this.ChannelInfo.multiple_unit,
            this.ui.node_mask.active = true) : this.ui.node_mask.active = false
        } else
            this.ui.node_mask.active = false
    }
    ,
    t.prototype.CheckDateEvent = function(e, t) {
        var n = this.ChannelInfo.sale.cur_time - Math.round(Date.now() / 1e3)
          , o = Math.round(Date.now() / 1e3) + n;
        return !(!e || !t || o > t || o < e)
    }
    ,
    t.prototype.UpdateInfo = function(e) {
        undefined === e && (e = "");
        var t = Number(e)
          , n = Number(this.data.amount) == t;
        this.ui.node_ChoseBg.active = n,
        this.ui.node_ChoseText.active = n,
        this.ui.node_UnChoseBg.active = !n,
        this.ui.node_UnChoseText.active = !n
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (t == this.ui.btn_bg) {
            if (this.ui.node_ChoseBg.active)
                return;
            app.Client.OnEvent(i.GameEventDefine.RECHARGE_ITEM_CLICK, {
                amount: this.data.amount,
                Percentgold: this.Percentgold
            })
        }
    }
    ,
    __decorate([r, s("UI/Vietnam_DepositWithdraw/UIRechargeItem_2_V")], t)
}(o.default));
n.default = c,
module.exports = n
