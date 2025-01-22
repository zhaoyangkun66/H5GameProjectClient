let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.PushTrackRecordManager = n.PointType = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/HttpServerDefine");
n.PointType = {
    HOME: 1,
    FIRST_LOADING: 2,
    ENTER_HALL: 3,
    FIRST_SIGN: 4,
    ENTER_GAME: 5,
    WAY_SELECT: 6,
    SIGN_LOAD_SUCCESS: 7
};
var a = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.translateKey = {
            launch_start_begin: 1,
            enter_hall_scene: 3,
            get_user_sign: 4,
            enter_game: 5,
            get_way_select: 6,
            sign_load_success: 7
        },
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "PushTrackRecordManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(i.HttpAPI.TRACK_RECORD, this.onTrackRecord, this)
    }
    ,
    t.prototype.RequestTrackRecord = function(e) {
        var t = app.UserManager().GetUserInfo ? app.UserManager().GetUserInfo.uid : 0
          , n = {
            deviceid: this.getLocalDeviceID(),
            type: 0 | e.type,
            gid: 0 | e.gid,
            way_id: 0 | e.wayid,
            uid: t,
            clienttype: app.ComTool().getPackageName()
        };
        app.HttpServerManager().SendHttpPack(i.HttpAPI.TRACK_RECORD, n)
    }
    ,
    t.prototype.PushTrackRecord = function(e, t) {
        var n = t || {};
        this.translateKey[e] && (n.type = this.translateKey[e],
        this.RequestTrackRecord(n))
    }
    ,
    t.prototype.onTrackRecord = function(e) {
        this.Log(e)
    }
    ,
    t.prototype.getLocalDeviceID = function() {
        return app.LoginManager().GetDeviceID()
    }
    ,
    t
}(o.Singleton);
n.PushTrackRecordManager = a,
module.exports = n
