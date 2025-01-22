let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Define/ShareDefine")
  , i = cc._decorator
  , a = i.ccclass
  , r = (i.property,
{
    right: {
        DirSwitchName: "isAlignRight",
        DirValueName: "right"
    },
    left: {
        DirSwitchName: "isAlignLeft",
        DirValueName: "left"
    },
    top: {
        DirSwitchName: "isAlignTop",
        DirValueName: "top"
    },
    bottom: {
        DirSwitchName: "isAlignBottom",
        DirValueName: "bottom"
    },
    vertical: {
        DirSwitchName: "isAlignVerticalCenter",
        DirValueName: "verticalCenter"
    },
    horizontal: {
        DirSwitchName: "isAlignHorizontalCenter",
        DirValueName: "horizontalCenter"
    }
})
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.JS_Name = "BaseComponent",
        t
    }
    return __extends(t, e),
    t.prototype.IsDevelopment = function() {
        return o.Development.IsDevelopment()
    }
    ,
    t.prototype.Log = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.IsDevelopment() && (e[0] = "[" + this.JS_Name + "]\t" + e[0],
        cc.log.apply(this, e))
    }
    ,
    t.prototype.NetLog = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.IsDevelopment() && (e[0] = "[" + this.JS_Name + "]\t" + e[0],
        cc.log.apply(this, e))
    }
    ,
    t.prototype.SysLog = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.IsDevelopment() && (e[0] = "[" + this.JS_Name + "]\t" + e[0],
        cc.syslog && cc.syslog.apply(this, e))
    }
    ,
    t.prototype.WarnLog = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.IsDevelopment() && (e[0] = "[" + this.JS_Name + "]\t" + e[0],
        cc.warn.apply(this, e))
    }
    ,
    t.prototype.ErrLog = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        e[0] = "[" + this.JS_Name + "]\t" + e[0],
        cc.error.apply(this, e)
    }
    ,
    t.prototype.onLoad = function() {
        this.OnLoad()
    }
    ,
    t.prototype.OnLoad = function() {}
    ,
    t.prototype.BindButtonEvent = function(e, t, n) {
        undefined === n && (n = "");
        var o = new cc.Component.EventHandler;
        o.target = this.node,
        o.component = this.JS_Name,
        o.handler = t,
        o.customEventData = n,
        e ? e.clickEvents.push(o) : this.ErrLog("\u6309\u94ae\u6ca1\u6709\u6302\u5728\u63a7\u4ef6\u4e0a")
    }
    ,
    t.prototype.BindToggleEvent = function(e, t, n) {
        undefined === n && (n = ""),
        this.Log("BindToggleEvent");
        var o = new cc.Component.EventHandler;
        o.target = this.node,
        o.component = this.JS_Name,
        o.handler = t,
        o.customEventData = n,
        e.getComponent(cc.Toggle).checkEvents = [],
        e.getComponent(cc.Toggle).checkEvents.push(o)
    }
    ,
    t.prototype.BindEvent = function(e, t, n) {
        if (undefined === n && (n = ""),
        e) {
            var o = e.clickEvents || e.checkEvents;
            if (!o)
                return void this.ErrLog("\u8be5\u7ec4\u4ef6\u4e0d\u5b58\u5728checkEvents\u6216clickEvents\u65b9\u6cd5");
            var i = new cc.Component.EventHandler;
            i.target = this.node,
            i.component = this.JS_Name,
            i.handler = t,
            i.customEventData = n,
            o.push(i)
        } else
            this.ErrLog("\u627e\u4e0d\u5230\u7ec4\u4ef6")
    }
    ,
    t.prototype.GetWndProperty = function(e, t) {
        var n = cc.find(e, this.node);
        if (n) {
            var o = null;
            return "text" == t ? ((o = n.getComponent(cc.Label)) || (o = n.getComponent(cc.EditBox)),
            o ? o.string : void this.ErrLog("GetWndProperty(%s,%s) wnd not find cc.Label cc.EditBox", e, t)) : "position" == t ? n.getPosition() : "active" == t ? n.active : "color" == t ? n.color : "scale" == t ? n.scale : "opacity" == t ? n.opacity : "interactable" == t ? (o = n.getComponent(cc.Button)) ? o.interactable : void this.ErrLog("GetWndProperty(%s,%s) wnd not find cc.Button", e, t) : "progress" == t ? (o = n.getComponent(cc.ProgressBar)) ? o.progress : void this.ErrLog("GetWndProperty(%s,%s) wnd not find cc.ProgressBar", e, t) : void this.ErrLog("GetWndProperty(%s,%s) property error", e, t)
        }
        this.ErrLog("GetWndProperty(%s,%s) not find wndPath", e, t)
    }
    ,
    t.prototype.SetWndProperty = function(e, t, n, o) {
        var i = this.GetWndNode(e, o);
        if (i) {
            var a = null;
            if ("text" == t) {
                if ((a = i.getComponent(cc.Label)) || (a = i.getComponent(cc.RichText) ? i.getComponent(cc.RichText) : i.getComponent(cc.EditBox)),
                !a)
                    return void this.ErrLog("SetWndProperty(%s,%s,%s) wnd not find cc.Label cc.EditBox", e, t, n);
                a.string = n + ""
            } else if ("position" == t)
                i.setPosition(n);
            else if ("active" == t)
                i.active = n;
            else if ("color" == t)
                i.color = n;
            else if ("image" == t)
                this.SetWndImage(e, n);
            else if ("scale" == t)
                i.scale = n;
            else if ("opacity" == t)
                i.opacity = n;
            else if ("interactable" == t) {
                if (!(a = i.getComponent(cc.Button)))
                    return void this.ErrLog("SetWndProperty(%s,%s,%s) wnd not find cc.Button", e, t, n);
                a.interactable = n
            } else if ("progress" == t) {
                if (!(a = i.getComponent(cc.ProgressBar)))
                    return void this.ErrLog("SetWndProperty(%s,%s,%s) wnd not find cc.ProgressBar", e, t, n);
                a.progress = n
            } else {
                if ("widget" != t)
                    return void this.ErrLog("SetWndProperty(%s,%s,%s) property error", e, t, n);
                if (!(a = i.getComponent(cc.Widget)))
                    return void this.ErrLog("SetWndProperty(%s,%s,%s) wnd not find cc.Widget", e, t, n);
                for (var s = Object.keys(r), c = s.length, l = 0; l < c; l++) {
                    var p = s[l]
                      , d = r[p]
                      , h = d.DirValueName
                      , u = d.DirSwitchName;
                    n.hasOwnProperty(p) ? (a[u] = true,
                    a[h] = n[p]) : a[u] = false
                }
                a.updateAlignment()
            }
        } else
            this.ErrLog("SetWndProperty(%s,%s,%s) not find wndPath", e, t, n)
    }
    ,
    t.prototype.SetWndImage = function(e, t) {
        if (!cc.find(e, this.node))
            return this.ErrLog("(%s) SetWndImageByFilePath not find node Image:(%s)", e, t),
            Promise.resolve(false)
    }
    ,
    t.prototype.ClearWndImage = function(e) {
        cc.find(e, this.node) || this.ErrLog("ClearWndImage(%s) not find node", e)
    }
    ,
    t.prototype.GetWndNode = function(e, t) {
        var n = this.node;
        return t instanceof cc.Component ? n = t.node : t instanceof cc.Node && (n = t),
        (n = cc.find(e, n)) || (this.WarnLog("GetWndNode(%s) not find", e),
        null)
    }
    ,
    t.prototype.GetWndComponent = function(e, t, n) {
        var o = this.node;
        if (n instanceof cc.Component ? o = n.node : n instanceof cc.Node && (o = n),
        o = cc.find(e, o)) {
            var i = o.getComponent(t);
            if (i)
                return i;
            this.ErrLog("GetWndComponent wndPath(%s) not find Component(%s)", e, t.name)
        } else
            this.WarnLog("GetWndComponent wndPath(%s) error", e)
    }
    ,
    t.prototype.GetOrSetComponent = function(e, t) {
        return t || (t = this.node),
        t.getComponent(e) || t.addComponent(e)
    }
    ,
    t.prototype.GetOrSetWndComponent = function(e, t, n) {
        try {
            n || (n = this.node);
            var o = null;
            return n instanceof cc.Component ? o = n.node : n instanceof cc.Node && (o = n),
            (o = cc.find(e, o)) ? this.GetOrSetComponent(t, o) : void this.WarnLog("GetWndComponent wndPath(%s) error", e)
        } catch (i) {
            this.ErrLog("GetOrSetWndComponent \u83b7\u53d6\u7ec4\u4ef6\u5931\u8d25:", i)
        }
    }
    ,
    __decorate([a], t)
}(cc.Component);
n.default = s

module.exports = n
