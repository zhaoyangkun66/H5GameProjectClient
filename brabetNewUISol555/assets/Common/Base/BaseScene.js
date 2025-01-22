let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../script/common/Orientation")
  , i = require("../Define/FormDefine")
  , a = require("../Define/ShareDefine")
  , r = require("./UIBaseComponent")
  , s = cc._decorator.ccclass
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.sceneType = a.SceneType.None,
        t
    }
    return __extends(t, e),
    t.prototype.OnEnable = function() {
        app.Client.GetUILayer();
        var e = app.SysDataManager().GetTableDict(i.FormDefine.SceneInfo);
        if (this.sceneType) {
            var t = e[a.SceneType[this.sceneType]].DefaultForm.slice();
            app.FormManager().CreateFormList(t)
        }
    }
    ,
    t.prototype.setOrientationVertical = function() {
        var e = this.node.getComponent(cc.Canvas);
        e && o.default.setOrientation(e, "V")
    }
    ,
    t.prototype.setOrientationHorizon = function() {
        var e = this.node.getComponent(cc.Canvas);
        e && o.default.setOrientation(e, "H")
    }
    ,
    t.prototype.onDestroy = function() {
        app.FormManager().DestroyAllForm()
    }
    ,
    __decorate([s], t)
}(r.default);
n.default = c,
module.exports = n
