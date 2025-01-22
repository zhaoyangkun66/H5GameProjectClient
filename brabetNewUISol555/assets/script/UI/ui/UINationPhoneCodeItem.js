let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
  , i = require("../../../Common/Define/UINameDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.data = null,
        t.cb = null,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.node.getComponent(cc.Button) || this.node.addComponent(cc.Button),
        this.node.on("click", this.onClick, this)
    }
    ,
    t.prototype.setData = function(e) {
        this.data = e;
        var t = this.node.children;
        t[1].getComponent(cc.Label).string = "" + app.ComUtil().cutStr(e.nation, 14),
        t[2].getComponent(cc.Label).string = "+" + e.code
    }
    ,
    t.prototype.setCB = function(e) {
        this.cb = e
    }
    ,
    t.prototype.onClick = function() {
        app.Client.OnEvent(o.GameEventDefine.NATION_PHONE_CODE, this.data),
        app.FormManager().CloseForm(i.UINameDefine.UINationPhoneCode)
    }
    ,
    __decorate([r], t)
}(cc.Component));
n.default = s,
module.exports = n
