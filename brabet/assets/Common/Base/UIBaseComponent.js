let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("./BaseComponent")
  , i = require("./EventFunAdapter")
  , a = cc._decorator.ccclass
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._effectDict = {},
        t.isInit = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.EventFunAdapter || (this.EventFunAdapter = new i.EventFunAdapter(this)),
        this.isInit || (this.isInit = true,
        this.OnLoadInit())
    }
    ,
    t.prototype.onEnable = function() {
        this.EventFunAdapter.RegisterEvent();
        try {
            this.OnEnable()
        } catch (e) {
            this.ErrLog("err", e)
        }
    }
    ,
    t.prototype.onDisable = function() {
        this.EventFunAdapter.UnRegisterEvent(),
        this.OnDisable()
    }
    ,
    t.prototype.RegEvent = function(e, t) {
        this.EventFunAdapter.RegEvent(e, t)
    }
    ,
    t.prototype.RegHttpEvent = function(e, t) {
        this.EventFunAdapter.RegHttpEvent(e, t)
    }
    ,
    t.prototype.RegRoomEvent = function(e, t) {
        this.EventFunAdapter.RegRoomEvent(e, t)
    }
    ,
    t.prototype.RegSystemEvent = function(e, t) {
        this.EventFunAdapter.RegSystemEvent(e, t)
    }
    ,
    t.prototype.update = function(e) {
        try {
            this.OnUpdate(e)
        } catch (t) {
            this.ErrLog("update:%s", t.stack)
        }
    }
    ,
    t.prototype.OnLoadInit = function() {}
    ,
    t.prototype.OnUpdate = function() {}
    ,
    t.prototype.WaitForConfirm = function(e, t, n) {
        app.ConfirmManager().ShowConfirm(e, t, n, this.OnConFirm, this.OnCancel, this)
    }
    ,
    t.prototype.OnConFirm = function(e, t) {
        this.ErrLog("\u6ca1\u6709\u7ee7\u627f\u5b9e\u73b0 OnConFirm(%s,%s,%s)", e, t)
    }
    ,
    t.prototype.OnCancel = function(e, t) {
        this.WarnLog("\u6ca1\u6709\u7ee7\u627f\u5b9e\u73b0 OnCancel(%s,%s,%s)", e, t)
    }
    ,
    t.prototype.OnEffectEnd = function() {}
    ,
    t.prototype.OnClick_Toggle = function(e, t) {
        try {
            var n = e.node
              , o = n.name;
            n.getComponent("ButtonSound") || app.ComUtil().playBtnClick(),
            this.OnClick(o, e, t)
        } catch (i) {
            this.ErrLog("OnClick_Toggle:%s", i.stack)
        }
    }
    ,
    t.prototype.OnClick_BtnWnd = function(e, t) {
        try {
            var n = e.currentTarget
              , o = n.name;
            n.getComponent("ButtonSound") || app.ComUtil().playBtnClick();
            var i = n.getComponent("DependentClickEvent");
            if (i && i.IsOutGamePop())
                return;
            this.OnClick(o, n, t)
        } catch (a) {
            this.ErrLog("OnClick_BtnWnd:%s", a.stack)
        }
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.OnDisable = function() {}
    ,
    __decorate([a], t)
}(o.default);
n.default = r

module.exports = n
