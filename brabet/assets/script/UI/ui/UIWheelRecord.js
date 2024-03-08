let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.type = 1,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.GET_WheelRecord, this.OnGetWheelRecord)
    }
    ,
    t.prototype.OnEnable = function() {
        app.WheelManager().RequestWheelRecord(this.type)
    }
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.SetType = function(e) {
        this.type = e
    }
    ,
    t.prototype.OnGetWheelRecord = function(e) {
        if (e == this.type)
            switch (e) {
            case 1:
                this.OnMyRecord();
                break;
            case 2:
                this.OnAllRecord()
            }
    }
    ,
    t.prototype.OnMyRecord = function() {
        app.WheelManager().GetWheelRecord
    }
    ,
    t.prototype.OnAllRecord = function() {
        app.WheelManager().GetWheelRecord
    }
    ,
    __decorate([r], t)
}(o.default));
n.default = s,
module.exports = n
