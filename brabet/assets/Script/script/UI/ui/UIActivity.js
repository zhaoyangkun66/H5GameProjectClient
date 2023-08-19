let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.img_Item = null,
        t.txt_Item = null,
        t.content = null,
        t.btn_node = null,
        t.type = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(i.GameEventDefine.RECHARGE_INFOV2, this.onRechargeInfo)
    }
    ,
    t.prototype.OnShow = function(e) {
        if (app.Client.OnEvent(i.GameEventDefine.SELECT_TOPTOOGLE, a.Hall_SelectTopToggle.Coupon),
        !(e == this.type && this.content.childrenCount > 0)) {
            this.type = e,
            this.content.removeAllChildren(),
            this.OnLayOutStatus(true);
            var t = app.RedDotManager().GetActiveInfo(a.ActivityType[this.type]);
            t ? this.OnInitView(t) : app.RedDotManager().RequestRecharge_InfoV2()
        }
    }
    ,
    t.prototype.onRechargeInfo = function() {
        var e = app.RedDotManager().GetActiveInfo(a.ActivityType[this.type]);
        e && 0 == this.content.childrenCount && this.OnInitView(e)
    }
    ,
    t.prototype.OnLayOutStatus = function(e) {
        this.node.getComponent(cc.Layout).resizeMode = e ? cc.Layout.ResizeMode.NONE : cc.Layout.ResizeMode.CONTAINER,
        this.node.getComponent(cc.Layout).updateLayout()
    }
    ,
    t.prototype.OnInitView = function(e) {
        if (e) {
            var t = cc.instantiate(this.img_Item);
            if (e.img && (app.ImageUtil().LoadImage(t, e.img),
            t.active = true,
            t.parent = this.content),
            e.content) {
                var n = cc.instantiate(this.txt_Item);
                n.getComponent(cc.RichText).string = e.content,
                n.active = true,
                n.parent = this.content
            }
            if (this.type == a.ActivityType.agency_promotion && (e.button_name = e.btn_txt),
            e.button_name) {
                var o = cc.instantiate(this.btn_node);
                cc.find("Background/Label", o).getComponent(cc.Label).string = e.button_name,
                o.active = true,
                o.parent = this.content
            }
            this.OnLayOutStatus(false)
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn" != e && "Background" != e)
            ;
        else {
            var t = app.RedDotManager().GetActiveInfo(a.ActivityType[this.type]);
            if (t.inside > 0)
                return void app.InteractionMgr().SendWndEvent(t.inside);
            var n = t.outside;
            n && cc.sys.openURL(n)
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.content.removeAllChildren()
    }
    ,
    __decorate([c(cc.Node)], t.prototype, "img_Item", undefined),
    __decorate([c(cc.Node)], t.prototype, "txt_Item", undefined),
    __decorate([c(cc.Node)], t.prototype, "content", undefined),
    __decorate([c(cc.Node)], t.prototype, "btn_node", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
