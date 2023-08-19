let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/UINameDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.Label_time = null,
        t.time = 5,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UILoadingFail"
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.time = 5,
        this.Label_time.string = this.time + " S",
        this.schedule(this.updateTimeLabel, 1)
    }
    ,
    t.prototype.updateTimeLabel = function() {
        this.time--,
        this.Label_time.string = this.time + " S",
        this.time <= 0 && this.backHall()
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_lobby" != e || this.backHall()
    }
    ,
    t.prototype.backHall = function() {
        this.unscheduleAllCallbacks(),
        app.FormManager().CloseForm(i.UINameDefine.UIGameLoading),
        app.HallManager().ShowHallForm()
    }
    ,
    __decorate([s(cc.Label)], t.prototype, "Label_time", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
