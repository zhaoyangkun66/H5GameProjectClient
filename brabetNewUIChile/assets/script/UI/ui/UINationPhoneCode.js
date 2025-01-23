let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("./UINationPhoneCodeItem")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.scrollView = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UINationPhoneCode",
        this.RegEvent(i.GameEventDefine.GET_AREA_CODES, this.OnGetAreaCode)
    }
    ,
    t.prototype.hideList = function() {
        for (var e = this.scrollView.content.children, t = 0; t < e.length; t++)
            e[t].active = false
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.hideList(),
        this.receiveData = e,
        this.setShowTypePos();
        var n = app.LoginManager().GetAreaCode();
        n ? this.updateList(n) : app.LoginManager().RequestAreaCodes()
    }
    ,
    t.prototype.OnGetAreaCode = function() {
        var e = app.LoginManager().GetAreaCode();
        this.updateList(e)
    }
    ,
    t.prototype.setShowTypePos = function() {
        if (this.receiveData && this.receiveData[0]) {
            var e = cc.find("scrollview_num", this.node)
              , t = (app.ComTool().H5Platform() ? a.VListPos : a.HListPos)[this.receiveData[0].type];
            null != t.top ? (e.getComponent(cc.Widget).enabled = true,
            e.getComponent(cc.Widget).top = t.top) : (e.getComponent(cc.Widget).enabled = false,
            e.x = t.x * (this.receiveData[0].scale || 1),
            e.y = t.y * (this.receiveData[0].scale || 1))
        }
    }
    ,
    t.prototype.updateList = function(e) {
        if (e) {
            for (var t = this.scrollView.content, n = t.children, o = 0; o < e.length; o++) {
                var i = e[o]
                  , a = n[o];
                a || (a = cc.instantiate(n[0]),
                t.addChild(a)),
                a.active = true,
                (a.getComponent(r.default) || a.addComponent(r.default)).setData(i)
            }
            for (var s = e.length; s < n.length; s++)
                n[s].active = false
        } else
            cc.error("updateList fail! not data==>>" + JSON.stringify(e))
    }
    ,
    __decorate([l(cc.ScrollView)], t.prototype, "scrollView", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
