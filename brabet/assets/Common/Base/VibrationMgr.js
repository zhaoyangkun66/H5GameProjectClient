let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.VibrationMgr = undefined;
var o = function(e) {
    function t() {
        var t = e.call(this) || this;
        return t.OpenVibration = false,
        t.JS_Name = "VibrationMgr",
        t.Log("Init"),
        t.OpenVibration = app.LocalDataManager().GetConfigProperty("SysSetting", "ShieldShake"),
        t
    }
    return __extends(t, e),
    t.prototype.SetVibration = function(e) {
        this.OpenVibration = e,
        app.LocalDataManager().SetConfigProperty("SysSetting", "ShieldShake", e)
    }
    ,
    Object.defineProperty(t.prototype, "GetOpenVibration", {
        get: function() {
            return this.OpenVibration
        },
        enumerable: false,
        configurable: true
    }),
    t
}(require("./Singleton").Singleton);
n.VibrationMgr = o,
module.exports = n
