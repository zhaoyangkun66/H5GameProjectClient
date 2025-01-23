let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.WheelManager = n.WheelRecordType = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/HttpServerDefine");
(function(e) {
    e[e.Myrecord = 1] = "Myrecord",
    e[e.Allrecord = 2] = "Allrecord"
}
)(n.WheelRecordType || (n.WheelRecordType = {}));
var r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.wheelInfo = null,
        t.wheelRecord = null,
        t.wheelHelpDesc = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "WheelManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WHEEL_CONF, this.onGetWheelConf, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WHEEL_RUN, this.onGetWheelRun, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WHEEL_HELPDESC, this.onGetWheelHelpDesc, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_WHEEL_RECORD, this.onGetWheelRecord, this)
    }
    ,
    t.prototype.onGetWheelRun = function(e) {
        this.wheelInfo.draw_num = e.draw_num,
        app.Client.OnEvent(i.GameEventDefine.GET_WheelRun, e)
    }
    ,
    t.prototype.RequestWheelRun = function() {
        app.RoomManager().SetWheelAnimation(true),
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WHEEL_RUN, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.RequestWheelConf = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WHEEL_CONF, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onGetWheelConf = function(e) {
        this.wheelInfo = e,
        app.Client.OnEvent(i.GameEventDefine.GET_WheelInfo)
    }
    ,
    Object.defineProperty(t.prototype, "GetWheelInfo", {
        get: function() {
            return this.wheelInfo
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.onGetWheelRecord = function(e, t) {
        this.wheelRecord = e,
        app.Client.OnEvent(i.GameEventDefine.GET_WheelRecord, t.type)
    }
    ,
    Object.defineProperty(t.prototype, "GetWheelRecord", {
        get: function() {
            return this.wheelRecord
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestWheelRecord = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WHEEL_RECORD, {
            token: app.UserManager().GetUserInfo.token,
            type: e,
            limit: 1 == e ? 20 : 50
        })
    }
    ,
    t.prototype.onGetWheelHelpDesc = function(e) {
        this.wheelHelpDesc = e,
        app.Client.OnEvent(i.GameEventDefine.GET_WheelHelpDesc)
    }
    ,
    Object.defineProperty(t.prototype, "GetWheelHelpDesc", {
        get: function() {
            return this.wheelHelpDesc
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestWheelHelpDesc = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_WHEEL_HELPDESC, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t
}(o.Singleton);
n.WheelManager = r,
module.exports = n
