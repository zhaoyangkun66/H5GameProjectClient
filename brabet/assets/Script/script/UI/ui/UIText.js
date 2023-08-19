let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.richText = null,
        t.content = null,
        t.nodeHeight = 500,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.RegEvent(i.GameEventDefine.GET_FAQ_INFO, this.onFaqInfo),
        this.nodeHeight = app.ComTool().H5Platform() ? 800 : 500
    }
    ,
    t.prototype.OnShow = function(e) {
        app.Client.OnEvent(i.GameEventDefine.SET_NODE_ZERO),
        this.content.getComponent(cc.Layout).enabled = false,
        this.richText.string = "",
        this.richText.node.active = false;
        var t = app.HallManager().GetFaqText(e);
        t ? this.getLbl(t) : app.HallManager().RequestTextInfo(e, 1)
    }
    ,
    t.prototype.onFaqInfo = function(e) {
        e.sendData.type && this.getLbl(e.recvData.value)
    }
    ,
    t.prototype.getLbl = function(e) {
        this.richText.string = app.ComTool().htmlRestore(e) || "",
        this.richText.node.active = true,
        this.richText.node.height > this.nodeHeight ? (this.content.getComponent(cc.Layout).enabled = true,
        this.content.getComponent(cc.Layout).updateLayout()) : this.content.height = this.nodeHeight
    }
    ,
    __decorate([s(cc.RichText)], t.prototype, "richText", undefined),
    __decorate([s(cc.Node)], t.prototype, "content", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
