let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Net/MsgEventDefine")
  , i = require("../../Common/Net/BaseDefine")
  , a = require("../common/room_mode_tool")
  , r = require("../../Common/Define/GameEventDefine")
  , s = require("../../Common/Define/common_mj_cmd")
  , c = require("../../Common/Base/Singleton")
  , l = []
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.sceneReady = false,
        t.needWaitReconnectMsg = false,
        t._startMonitorEvent = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        cc.systemEvent.on(o.default.EVENT_ROOM_INFO, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_JOIN_ROOM, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_LEAVE_ROOM, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_READY, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROUND_READY, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_VOTE_DISSOVLE_ROOM, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_DISSOVLE_ROOM, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_START, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROOM_START_GAME, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROOM_END_GAME, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROOM_OPERATION, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_FACE, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROOM_CHAT, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ONLINE_STATE, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_GAME_MESSAGE, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_ROOM_RECYCLE, this.resp_room_info, this),
        cc.systemEvent.on(o.default.EVENT_MATCH_COUNTDOWN, this.resp_room_info, this)
    }
    ,
    t.prototype.resp_room_info = function(e) {
        if (app.UserManager().GetUserInfo && 0 != app.UserManager().GetUserInfo.room_no && !(app.UserManager().GetUserInfo.roomMode > 1e4) && this._startMonitorEvent) {
            if (o.default.EVENT_ROOM_INFO == e.event_type) {
                if (cc.mg.global.setLoadGameTime(),
                cc.log("EVENT_ROOM_INFO==========>> time:" + cc.mg.global.getLoadGameTime()),
                !(u = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().GetUserInfo.roomMode)))
                    return void cc.error("GetRoomModeInfoByRoomMode error: " + app.UserManager().GetUserInfo.roomMode);
                var t = u.SceneName;
                (a.GameSceneTool.isDzpkScene(t) || t == a.GameScene.PSZ) && this.isHasGameEndMsg() ? (l.Clear(),
                l.push(e)) : l.unshift(e);
                for (var n = e.players, c = false, p = 0; p < n.length; p++) {
                    var d = n[p];
                    if (d.uid == app.UserManager().GetUserInfo.uid) {
                        c = d.seat >= 8;
                        break
                    }
                }
                if (1 != e.state && (c || app.UserManager().GetUserInfo.is_reconned)) {
                    app.UserManager().GetUserInfo.is_reconned = false,
                    this.needWaitReconnectMsg = true;
                    var h = {
                        ReconnGame: {
                            Res: 0
                        }
                    };
                    t == a.GameScene.ERMJ ? app.GameServerManager().sendGamePacket(35, h) : t != a.GameScene.BYDR && app.GameServerManager().sendGamePacket(2, h)
                }
                if (app.GameManager().curr_scene_name != t)
                    return void app.GameManager().enterSceneByRoomMode(app.UserManager().GetUserInfo.roomMode);
                if (this.sceneReady = true,
                cc.error("GameEventDefine.RESET_ROOM_SCENE"),
                cc.systemEvent.emit(r.GameEventDefine.RESET_ROOM_SCENE),
                this.needWaitReconnectMsg)
                    return
            }
            if (null != e.Head && (null == e.Head.Cmd || e.Head.Cmd !== i.COMMONGAME_MSG.COMMONGAME_GAME_INFO && e.Head.Cmd !== i.COMMONGAME_MSG.COMMONGAME_REPLAY || (cc.mg.global.setReconnectGameTime(),
            cc.log("COMMONGAME_GAME_INFO==========>> time:" + cc.mg.global.getReconnectGameTime()))),
            this.needWaitReconnectMsg) {
                if (null == e.Head)
                    return;
                var u, _ = e.Head.Cmd;
                if (null == _)
                    return;
                if (!(u = app.RoomManager().GetRoomModeInfoByRoomMode(app.UserManager().GetUserInfo.roomMode)))
                    return void cc.error("GetRoomModeInfoByRoomMode error: " + app.UserManager().GetUserInfo.roomMode);
                if ((t = u.SceneName) == a.GameScene.ERMJ) {
                    if (_ != s.MJ_GAME_MSG.MJ_GAME_MSG_PLAYER_INFO)
                        return _ == s.MJ_GAME_MSG.MJ_GAME_MSG_GAME_INFO ? void this.pushMessage(e) : undefined;
                    this.needWaitReconnectMsg = false
                } else {
                    if (_ != i.COMMONGAME_MSG.COMMONGAME_GAME_INFO && _ != i.COMMONGAME_MSG.COMMONGAME_REPLAY)
                        return void this.pushMessage(e);
                    this.needWaitReconnectMsg = false,
                    t == a.GameScene.DDZ && l.splice(1, l.length)
                }
            }
            if (this.sceneReady)
                if (l.length > 0) {
                    e.event_type != o.default.EVENT_ROOM_INFO && this.pushMessage(e);
                    for (var m = 0; m < l.length; m++) {
                        var f = l[m];
                        cc.systemEvent.emit("Room_" + f.event_type, f)
                    }
                    l.Clear()
                } else
                    cc.systemEvent.emit("Room_" + e.event_type, e);
            else
                this.pushMessage(e)
        }
    }
    ,
    t.prototype.pushMessage = function(e) {
        l.push(e)
    }
    ,
    t.prototype.sceneStandBy = function() {
        for (var e = 0; e < l.length; e++) {
            var t = l[e];
            cc.systemEvent.emit("Room_" + t.event_type, t)
        }
        l.Clear(),
        this.sceneReady = true
    }
    ,
    t.prototype.clearMessageQueue = function() {
        this.sceneReady = false,
        this.needWaitReconnectMsg = false,
        l.Clear()
    }
    ,
    t.prototype.clearMessageQueueForReconnect = function() {
        this.needWaitReconnectMsg = false,
        l.Clear()
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
    t.prototype.isHasGameEndMsg = function() {
        for (var e = 0; e < l.length; e++) {
            var t = l[e];
            if (t.Head && t.Head.Cmd == i.COMMONGAME_MSG.COMMONGAME_ACTION_MATCH_RESULT)
                return true
        }
        return false
    }
    ,
    t.prototype.getPlayerCountFromRoomInfo = function() {
        for (var e = 0; e < l.length; e++) {
            var t = l[e];
            if (t.event_type == o.default.EVENT_ROOM_INFO)
                return t.MaxMemberCount
        }
        return 0
    }
    ,
    t
}(c.Singleton);
n.default = p,
module.exports = n
