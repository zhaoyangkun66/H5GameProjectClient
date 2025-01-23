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
        return t.itemPrefab = null,
        t.contentAll = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(i.GameEventDefine.GET_WheelHelpDesc, this.OnGetWheelHelp),
        this.contentAll = this.GetWndNode("content/list/view/content")
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.node.scale = app.ComTool().H5Platform() ? 1 : .7,
        app.WheelManager().GetWheelHelpDesc ? this.OnGetWheelHelp() : app.WheelManager().RequestWheelHelpDesc()
    }
    ,
    t.prototype.OnGetWheelHelp = function() {
        this.contentAll.removeAllChildren(),
        this.OnGetWheelHelpAll(),
        this.OnGetWheelHelpToday(),
        this.OnGetWheelHelpYesterday()
    }
    ,
    t.prototype.OnGetWheelHelpAll = function() {
        var e = this
          , t = app.WheelManager().GetWheelHelpDesc;
        if (t.all && this.isShowHelp(t.all)) {
            var n = cc.instantiate(this.itemPrefab);
            this.GetWndComponent("label_title", cc.Label, n).string = app.i18n.t("UI_Wheel_HelpTit1");
            var o = this.GetWndNode("form", n);
            o.children.forEach(function(e, t) {
                0 != t && (e.active = false)
            }),
            this.GetWndComponent("title/label_01", cc.Label, o).string = app.i18n.t("UI_Wheel_Helptxt1");
            var i = this.GetWndNode("row", o);
            t.all.forEach(function(t, n) {
                var a = o.children[n + 1];
                a || ((a = cc.instantiate(i)).parent = o),
                a.active = true,
                e.GetWndComponent("label_01", cc.Label, a).string = t.min_recharge + "-" + t.max_recharge,
                e.GetWndComponent("label_02", cc.Label, a).string = "" + t.reward_num
            }),
            o.getComponent(cc.Layout).updateLayout(),
            n.active = true,
            n.parent = this.contentAll
        }
    }
    ,
    t.prototype.OnGetWheelHelpToday = function() {
        var e = app.WheelManager().GetWheelHelpDesc;
        e.today && this.isShowHelp(e.today) && this.OnWheelHelpDay(e.today, "UI_Wheel_HelpTit2", "UI_Wheel_Helptxt2")
    }
    ,
    t.prototype.OnGetWheelHelpYesterday = function() {
        var e = app.WheelManager().GetWheelHelpDesc;
        e.yesterday && this.isShowHelp(e.yesterday) && this.OnWheelHelpDay(e.yesterday, "UI_Wheel_HelpTit3", "UI_Wheel_Helptxt2")
    }
    ,
    t.prototype.OnWheelHelpDay = function(e, t, n) {
        var o = this
          , i = cc.instantiate(this.itemPrefab);
        this.GetWndComponent("label_title", cc.Label, i).string = app.i18n.t(t);
        var a = this.GetWndNode("form", i);
        a.children.forEach(function(e, t) {
            0 != t && (e.active = false)
        }),
        this.GetWndComponent("title/label_01", cc.Label, a).string = app.i18n.t(n);
        var r = this.GetWndNode("row", a);
        e.forEach(function(e, t) {
            var n = a.children[t + 1];
            n || ((n = cc.instantiate(r)).parent = a),
            n.active = true,
            o.GetWndComponent("label_01", cc.Label, n).string = "" + e.recharge,
            o.GetWndComponent("label_02", cc.Label, n).string = "" + e.reward_num
        }),
        a.getComponent(cc.Layout).updateLayout(),
        i.active = true,
        i.parent = this.contentAll
    }
    ,
    t.prototype.isShowHelp = function(e) {
        var t = 0;
        return e.forEach(function(e) {
            e.reward_num > 0 && t++
        }),
        e.length > 0 && t > 0
    }
    ,
    __decorate([s(cc.Prefab)], t.prototype, "itemPrefab", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
