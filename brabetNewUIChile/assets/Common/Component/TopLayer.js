let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.TopLayer = undefined;
var o = cc._decorator.ccclass
  , i = cc._decorator.property
  , a = require("../Base/BaseComponent")
  , r = require("../Define/EventWaitType")
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.loading = null,
        t.waitEventNameList = [],
        t
    }
    return __extends(t, e),
    t.prototype.OnLoad = function() {
        this.JS_Name = "TopLayer",
        this.button = this.getComponent(cc.Button),
        this.button.enabled = false,
        this.ModalDelayTick = 1e3,
        this.showModalTick = 0,
        this.waitEventNameList = [],
        app.Client.RegEvent("ModalLayer", this.OnTopEvent, this),
        this.OnCloseModalLayer()
    }
    ,
    t.prototype.OnShowModalLayerEffect = function() {
        this.waitEventNameList.length && this.loading && !this.loading.active && (this.SysLog("\u5f00\u542f\u906e\u7f69"),
        this.loading.active = true)
    }
    ,
    t.prototype.LoadSceneEndTimeOut = function() {
        app.Client.OnEvent("ModalLayer", r.EventWaitType.LoadSceneEnd)
    }
    ,
    t.prototype.OnTopEvent = function(e) {
        e == r.EventWaitType.LoadSceneBegin && (this.unschedule(this.LoadSceneEndTimeOut),
        this.scheduleOnce(this.LoadSceneEndTimeOut, 10)),
        e % 2 == 0 ? (this.waitEventNameList.push(e),
        this.OnShowModalLayer(e)) : this.waitEventNameList = []
    }
    ,
    t.prototype.lateUpdate = function() {
        var e = Date.now();
        this.showModalTick && this.showModalTick <= e && this.OnShowModalLayerEffect(),
        this.waitEventNameList.length || this.OnCloseModalLayer()
    }
    ,
    t.prototype.OnShowModalLayer = function(e) {
        if (255 == this.node.opacity)
            return this.SetShowModalTick(e),
            void this.lateUpdate();
        this.SysLog("\u5f00\u542f\u906e\u7f69\u8282\u70b9"),
        this.button.enabled = true,
        this.node.opacity = 255,
        this.SetShowModalTick(e),
        this.loading && (this.loading.active = false)
    }
    ,
    t.prototype.SetShowModalTick = function(e) {
        var t = this.ModalDelayTick;
        e != r.EventWaitType.OpenNetNow && e != r.EventWaitType.LoadSceneBegin || (t = 0),
        this.showModalTick = Date.now() + t
    }
    ,
    t.prototype.OnCloseModalLayer = function() {
        this.button.enabled = false,
        this.node.opacity = 0,
        this.showModalTick = 0,
        this.loading && (this.loading.active = false)
    }
    ,
    t.prototype.onDestroy = function() {
        app.Client.UnRegTargetEvent("ModalLayer")
    }
    ,
    __decorate([i(cc.Node)], t.prototype, "loading", undefined),
    __decorate([o], t)
}(a.default);
n.TopLayer = s,
module.exports = n
