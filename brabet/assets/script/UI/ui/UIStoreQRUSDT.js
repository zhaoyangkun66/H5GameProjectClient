let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.count = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        var e = this;
        this.RegEvent(i.GameEventDefine.COMPANY_PAYMENT, function() {
            e.CloseForm()
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = this, t = [], n = 0; n < arguments.length; n++)
            t[n] = arguments[n];
        var o = app.StoreManager().GetPayGoodResult();
        this.count = t[0];
        var i = t[1];
        cc.find("/bg/layer/connect/view/layout/li_order/label", this.node).getComponent(cc.Label).string = "" + o.order_id,
        cc.find("/bg/layer/connect/view/layout/li_num/label", this.node).getComponent(cc.Label).string = "" + this.count,
        cc.find("/bg/layer/connect/view/layout/li_address/label", this.node).getComponent(cc.Label).string = o.targe_wallet,
        cc.find("/bg/layer/connect/view/layout/li_time/label", this.node).getComponent(cc.Label).string = o.create_time,
        cc.find("/bg/layer/connect/view/layout/li_time1/label", this.node).getComponent(cc.Label).string = o.expired_time,
        cc.find("/bg/layer/connect/view/layout/tip", this.node).getComponent(cc.Label).string = i;
        var a = new Image;
        a.src = o.img,
        a.onload = function() {
            var t = new cc.Texture2D;
            t.initWithElement(a),
            t.handleLoadedTexture(),
            cc.find("/bg/layer/connect/view/layout/QRcode/code", e.node).getComponent(cc.Sprite).spriteFrame = new cc.SpriteFrame(t)
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_service" != e) {
            var t = app.StoreManager().GetPayGoodResult();
            "btn_order" != e ? "btn_num" != e ? "btn_address" != e ? "btn_time" != e ? "btn_time1" != e || app.NativeMgr().copyToClipBoard(t.create_time) : app.NativeMgr().copyToClipBoard(t.expired_time) : app.NativeMgr().copyToClipBoard(t.targe_wallet) : app.NativeMgr().copyToClipBoard(this.count) : app.NativeMgr().copyToClipBoard(t.order_id)
        }
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
