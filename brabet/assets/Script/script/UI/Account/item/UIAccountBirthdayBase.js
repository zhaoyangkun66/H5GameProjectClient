let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/Component/ListView")
  , a = require("../../../../Common/Define/ColorDefine")
  , r = require("../../../../Common/Define/HttpServerDefine")
  , s = cc._decorator.ccclass
  , c = cc.color(89, 103, 124)
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.dateIndex = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIAccountBirthdayBase"
    }
    ,
    t.prototype.OnLoad = function() {
        this.init()
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.showDateView(false)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        this.ui.btn_close == t ? this.OnClick_Return() : this.ui.btn_yy == t ? this.showYY() : this.ui.btn_mm == t ? this.showMM() : this.ui.btn_dd == t ? this.showDD() : this.ui.btn_set == t && this.changeConfirm()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.init = function() {
        var e = this.ui.scrollview_date.getComponent(cc.ScrollView)
          , t = e.content.children;
        this.itemNode = t[0];
        for (var n = 0; n < t.length; n++)
            t[n].active = false;
        this.ui.lb_yy.string = "1970",
        this.ui.lb_mm.string = "1",
        this.ui.lb_dd.string = "1";
        var o = this;
        this.listView = new i.ListView({
            scrollview: e,
            mask: e.content.parent,
            item_tpl: o.itemNode,
            gap_y: 0,
            left: 0,
            item_setter: function(e, t) {
                !e.getComponent(cc.Button) && e.addComponent(cc.Button);
                var n = new cc.Component.EventHandler;
                n.target = o.node,
                n.component = o.JS_Name,
                n.handler = "dateItemCallBack";
                var i = JSON.stringify(t);
                n.customEventData = i,
                e.getComponent(cc.Button).clickEvents = [],
                e.getComponent(cc.Button).clickEvents.push(n),
                o.GetWndComponent("lbl_num", cc.Label, e).string = t;
                var r = o.ui.lb_yy.string;
                1 == o.dateIndex ? r = o.ui.lb_mm.string : 2 == o.dateIndex && (r = o.ui.lb_dd.string);
                var s = r == t;
                o.GetWndNode("select_check", e).active = s,
                o.GetWndNode("lbl_num", e).color = s ? a.default.Color_White : c
            }
        })
    }
    ,
    t.prototype.showDateView = function(e) {
        this.ui.scrollview_date.active = e
    }
    ,
    t.prototype.showYY = function() {
        this.dateIndex = 0,
        this.showDateView(true);
        for (var e = (new Date).getFullYear(), t = [], n = e; n >= e - 100; n--)
            t.push(n);
        this.listView.set_data(t),
        this.scrollItem(t, this.ui.lb_yy.string)
    }
    ,
    t.prototype.showMM = function() {
        this.dateIndex = 1,
        this.showDateView(true);
        for (var e = [], t = 1; t <= 12; t++)
            e.push(t);
        this.listView.set_data(e),
        this.scrollItem(e, this.ui.lb_mm.string)
    }
    ,
    t.prototype.showDD = function() {
        this.dateIndex = 2,
        this.showDateView(true);
        for (var e = this.getDaysInCurrentMonth(), t = [], n = 1; n <= e; n++)
            t.push(n);
        this.listView.set_data(t),
        this.scrollItem(t, this.ui.lb_dd.string)
    }
    ,
    t.prototype.dateItemCallBack = function(e, t) {
        this.showDateView(false);
        var n = JSON.parse(t);
        0 == this.dateIndex ? this.ui.lb_yy.string = "" + n : 1 == this.dateIndex ? (this.ui.lb_mm.string = "" + n,
        this.getDaysInCurrentMonth() < Number(this.ui.lb_dd.string) && (this.ui.lb_dd.string = "1")) : 2 == this.dateIndex && (this.ui.lb_dd.string = "" + n),
        this.Log(n)
    }
    ,
    t.prototype.changeConfirm = function() {
        this.OnClick_Return();
        var e = this.ui.lb_yy.string + "-" + this.ui.lb_mm.string + "-" + this.ui.lb_dd.string
          , t = {
            token: app.UserManager().GetUserInfo.token,
            birthday: new Date(e.replace(/-/g, "/")).getTime() / 1e3
        };
        app.HttpServerManager().SendHttpPack(r.HttpAPI.CHANGE_BIRTHDAY, t)
    }
    ,
    t.prototype.scrollItem = function(e, t) {
        var n = e.indexOf(Number(t));
        this.listView.scroll_to(n)
    }
    ,
    t.prototype.getDaysInCurrentMonth = function() {
        var e = Number(this.ui.lb_yy.string)
          , t = Number(this.ui.lb_mm.string);
        return new Date(e,t,0).getDate()
    }
    ,
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
