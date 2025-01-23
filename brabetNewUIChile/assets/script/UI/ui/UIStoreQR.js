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
        return null !== e && e.apply(this, arguments) || this
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
        this.data = t[0],
        cc.find("/bg/layer/connect/view/content/li_Amount/label", this.node).getComponent(cc.Label).string = app.GameConfigManager().GetCurrency + this.data.amount,
        cc.find("/bg/layer/connect/view/content/li_Payuntil/label", this.node).getComponent(cc.Label).string = this.data.time;
        var o = new Image;
        o.src = this.data.img,
        o.onload = function() {
            var t = new cc.Texture2D;
            t.initWithElement(o),
            t.handleLoadedTexture(),
            cc.find("/bg/layer/connect/view/content/QRcode/code", e.node).getComponent(cc.Sprite).spriteFrame = new cc.SpriteFrame(t)
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_copy" != e || app.NativeMgr().copyToClipBoard(this.data.card_num)
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
