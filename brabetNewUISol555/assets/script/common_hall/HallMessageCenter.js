let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.HallMessageCenter = undefined;
var o = require("../../Common/Base/Singleton")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/ShareDefine")
  , r = require("../../Common/Net/MsgEventDefine")
  , s = []
  , c = function() {
    for (var e = 0; e < s.length; e++) {
        var t = s[e];
        cc.systemEvent.emit("Hall_" + t.event_type, t)
    }
    s.length = 0
}
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.sceneReady = false,
        t.getRspHallInfo = false,
        t._startMonitorEvent = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        cc.systemEvent.on(r.default.RSP_HALL_INFO, this.resp_hall_info, this),
        cc.systemEvent.on(r.default.EVENT_GAME_MESSAGE, this.resp_hall_info, this),
        cc.systemEvent.on(r.default.HALL_END_ROUND, this.resp_hall_info, this),
        cc.systemEvent.on(r.default.HALL_NOTIFY, this.resp_hall_info, this),
        cc.systemEvent.on(app.GameServerManager().rsp_key_map.RspLeaveHall.key, this.resp_hall_info, this),
        cc.systemEvent.on(app.GameServerManager().rsp_key_map.RspJoinHall.key, this.OnRspJoinHall, this)
    }
    ,
    t.prototype.resp_hall_info = function(e) {
        if (app.UserManager().GetUserInfo && app.UserManager().GetUserInfo.room_no && !(app.UserManager().GetUserInfo.roomMode < 1e4) && this._startMonitorEvent) {
            if (e.event_type == r.default.RSP_HALL_INFO) {
                this.getRspHallInfo = true,
                s.unshift(e);
                var t = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().GetUserInfo.roomMode);
                return t ? app.GameManager().curr_scene_name != t.SceneName ? void app.GameManager().enterSceneByRoomMode(app.UserManager().GetUserInfo.roomMode) : (this.sceneReady = true,
                cc.systemEvent.emit(i.GameEventDefine.RESET_HALL_SCENE),
                void c()) : void cc.error("GetRoomModeInfoByRoomMode error: " + app.UserManager().GetUserInfo.roomMode)
            }
            this.getRspHallInfo && (this.sceneReady ? s.length > 0 ? (s.push(e),
            c()) : cc.systemEvent.emit("Hall_" + e.event_type, e) : s.push(e))
        }
    }
    ,
    t.prototype.sceneStandBy = function() {
        c(),
        this.sceneReady = true
    }
    ,
    t.prototype.clearMessageQueue = function() {
        this.sceneReady = false,
        this.getRspHallInfo = false,
        s = []
    }
    ,
    t.prototype.startMonitorEvent = function() {
        this.clearMessageQueue(),
        this._startMonitorEvent = true
    }
    ,
    t.prototype.stopMonitorEvent = function() {
        this.clearMessageQueue(),
        this._startMonitorEvent = false
    }
    ,
    t.prototype.OnRspJoinHall = function(e) {
        var t = e.Eno;
        0 == t ? (this.startMonitorEvent(),
        app.UserManager().GetUserInfo.room_no = e.HallId,
        app.UserManager().GetUserInfo.roomMode = e.RoomMode,
        app.GameServerManager().send(app.GameServerManager().req_key_map.req_hall_info.key, {
            hall_id: app.UserManager().GetUserInfo.room_no
        })) : 30122 == t ? app.ConfirmManager().ShowConfirm(a.ConfirmType.ConfirmOK, "UI.TP_0_Main_23", null, function() {
            cc.systemEvent.emit("open_xs_win")
        }, null, this) : 30103 == t ? (this.ErrLog("OnRspJoinHall:", t),
        app.SysNotifyManager().ShowToast("Error_Join_Hall")) : 30900 == t ? app.SysNotifyManager().ShowToast("UI.System_7") : (this.ErrLog("OnRspJoinHall:", t),
        app.SysNotifyManager().ShowToast("Error_Join_Hall"))
    }
    ,
    t
}(o.Singleton);
n.HallMessageCenter = l,
module.exports = n
