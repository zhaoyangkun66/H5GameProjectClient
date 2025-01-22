let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Net/MsgEventDefine")
  , i = require("../common/room_mode_tool")
  , a = require("../../Common/Net/BaseDefine")
  , r = require("../../Common/Define/ShareDefine")
  , s = function() {
    function e(e, t, n, o) {
        this.view = null,
        this.roomModel = null,
        this.tableModel = null,
        this.message_handler = null,
        this.view = e,
        this.roomModel = t,
        this.tableModel = n,
        this.message_handler = o
    }
    return e.prototype.init = function() {
        cc.mg.global.setRoomMsgController(this),
        this.register_events()
    }
    ,
    e.prototype.destroy = function() {
        this.view = null,
        cc.mg.global.setRoomMsgController(null),
        this.unregister_events()
    }
    ,
    e.prototype.register_events = function() {
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_INFO, this.resp_room_info, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_JOIN_ROOM, this.resp_join_room, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_LEAVE_ROOM, this.resp_leave_room, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_READY, this.resp_ready, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROUND_READY, this.resp_round_ready, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_VOTE_DISSOVLE_ROOM, this.resp_vote_dissolve_room, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_DISSOVLE_ROOM, this.resp_dissolve_room, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_START, this.resp_start, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_START_GAME, this.resp_room_start_game, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_END_GAME, this.resp_room_end_game, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_OPERATION, this.resp_room_operation, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_FACE, this.resp_face, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_CHAT, this.resp_room_chat, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ONLINE_STATE, this.resp_online_state, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_ROOM_RECYCLE, this.resp_room_recycle, this),
        cc.systemEvent.on("Room_" + o.default.EVENT_MATCH_COUNTDOWN, this.resp_match_countdown, this),
        cc.systemEvent.on("btnLoginOut", this.onBtnLeave, this),
        cc.systemEvent.on(o.default.EVENT_CREATE_ROOM, this.respCreateRoom, this),
        cc.systemEvent.on("cleanTable", this.onCleanTable, this)
    }
    ,
    e.prototype.unregister_events = function() {
        cc.systemEvent.targetOff(this)
    }
    ,
    e.prototype.resp_room_start_game = function(e) {
        this.message_handler && this.message_handler.onRspRoomStartGame(e)
    }
    ,
    e.prototype.resp_room_end_game = function(e) {
        this.message_handler && this.message_handler.onRspRoomEndGame(e),
        this.view && 2 != e.Body.RoomEndGame.Reason && (this.tableModel.GetIsEndGame() ? this.view.showEndGamePanel && this.view.showEndGamePanel() : 3 == e.Body.RoomEndGame.Reason || (app.UserManager().GetUserInfo.room_no = 0,
        app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL)))
    }
    ,
    e.prototype.resp_room_operation = function(e) {
        this.message_handler && this.message_handler.onRspRoomOperation(e)
    }
    ,
    e.prototype.resp_room_info = function(e) {
        if (0 != e.code)
            return app.UserManager().GetUserInfo.room_no = 0,
            void app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL, function() {
                app.SysNotifyManager().ShowToast(app.i18n.t("Toast_RoomInfo_Error") + e.code)
            });
        this.roomModel.Init(e);
        var t = app.UserManager().GetUserInfo.uid;
        1 != e.state && (this.roomModel.isWatcher(t) || app.UserManager().GetUserInfo.is_reconned),
        this.message_handler && this.message_handler.onRspRoomInfo(e)
    }
    ,
    e.prototype.resp_join_room = function(e) {
        this.roomModel.get_member(e.uid) && this.roomModel.del_member(e.uid),
        this.roomModel.add_member(e),
        this.message_handler && this.message_handler.onRspJoinRoom(e)
    }
    ,
    e.prototype.resp_leave_room = function(e) {
        for (var t = app.GameManager().curr_scene_name, n = this.roomModel.get_members(), o = 0; o < n.length; o++) {
            var s = n[o];
            if (s.uno == e.uno) {
                app.RoomManager().IsRoomCard ? this.message_handler.setHeadItemVisible && this.message_handler.setHeadItemVisible(e.uno, false) : this.roomModel.GetRoomState() != a.COMMONGAME_ROOM_STATE.COMMONGAME_ROOM_STATE_END && 10 != e.code && this.message_handler.setHeadItemVisible && this.message_handler.setHeadItemVisible(e.uno, false),
                this.roomModel.del_member(s.uid);
                break
            }
        }
        e.uno == app.UserManager().GetUserInfo.uid ? (app.UserManager().GetUserInfo.gold += e.gold_change - 0,
        app.RoomMessageCenter().clearMessageQueue(),
        7 == e.code ? app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmOK, "20\u5206\u949f\u672a\u5f00\u59cb\u6e38\u620f\uff0c\u7cfb\u7edf\u81ea\u52a8\u5173\u95ed\u623f\u95f4\uff01", null, function() {
            app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL)
        }) : 8 == e.code ? (app.SysNotifyManager().ShowToast("\u957f\u65f6\u95f4\u672a\u64cd\u4f5c, \u9000\u51fa\u623f\u95f4"),
        app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL)) : 10 == e.code || -86 == e.code ? app.GameManager().curr_scene_name == i.GameScene.ERMJ ? cc.systemEvent.emit("e_not_enough_money") : setTimeout(function() {
            app.GameManager().curr_scene_name == t && app.ActivityManager().selectShop()
        }, 4e3) : 12 == e.code || -85 == e.code ? setTimeout(function() {
            app.GameManager().curr_scene_name == t && app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmOK, "\u60a8\u7684\u91d1\u5e01\u8d85\u989d\u5566\uff0c\u6b22\u8fce\u524d\u5f80\u66f4\u9ad8\u7ea7\u573a\u6b21\u6e38\u620f!", null, function() {
                app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL)
            })
        }, 4e3) : 11 == e.code && app.GameManager().curr_scene_name == i.GameScene.ERMJ || (app.RoomManager().IsRoomCard ? app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL) : 0 == e.changeRoom ? this.message_handler && this.message_handler.PSZ_REMATCH && app.GameManager().curr_scene_name == i.GameScene.PSZ ? (this.message_handler.PSZ_REMATCH = false,
        cc.log("psz_rematch")) : this.message_handler && this.message_handler.DZPK_REMATCH && i.GameSceneTool.isDzpkScene(app.GameManager().curr_scene_name) ? cc.log("dzpk_rematch") : cc.mg.global.MJ_REMATCH && app.GameManager().curr_scene_name == i.GameScene.MJ ? cc.log("mj_rematch") : app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL) : this.roomModel.delete_all_member())) : e.uno == this.roomModel.get_creator() && 0 == this.tableModel.GetStartTime() && 2 != this.roomModel.get_curConfig().settle_type && app.RoomManager().IsRoomCard && app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL, function() {
            app.SysNotifyManager().ShowToast("\u623f\u4e3b\u5df2\u7ecf\u9500\u623f\uff0c\u6e38\u620f\u7ed3\u675f\uff01")
        }),
        this.message_handler && this.message_handler.onRspLeaveRoom(e)
    }
    ,
    e.prototype.resp_ready = function(e) {
        var t = this.roomModel.get_member(e.uid);
        null != t && (t.ready = e.ready,
        this.message_handler && this.message_handler.onRspReady(e))
    }
    ,
    e.prototype.resp_round_ready = function(e) {
        var t = e.data
          , n = this.roomModel.get_member(t.Uin);
        null != n && (n.ready = t.Data,
        this.message_handler && this.message_handler.onRspRoundReady(e))
    }
    ,
    e.prototype.resp_vote_dissolve_room = function(e) {
        this.message_handler && this.message_handler.onRspVoteDissolveRoom(e)
    }
    ,
    e.prototype.resp_dissolve_room = function(e) {
        if (1 == e.data.Data) {
            if (this.roomModel.SetRoomDestory(true),
            this.view.dissolvePanel.active = false,
            0 == this.isDealCard)
                return;
            null == this.view.getDunPaiData().HeadCards ? (app.SysNotifyManager().ShowToast("\u60a8\u8fd8\u670930\u79d2\u6446\u724c\u65f6\u95f4\u3002"),
            this.view && this.view.showTimeBreak(3, 29)) : app.SysNotifyManager().ShowToast("\u9500\u623f\u6210\u529f\uff0c\u5176\u4ed6\u73a9\u5bb6\u8fd8\u670930\u79d2\u6446\u724c\u65f6\u95f4\u3002")
        } else
            -1 == e.data.Data ? (this.view && this.view.onDissolveRoomResult(e),
            app.SysNotifyManager().ShowToast("\u90e8\u5206\u73a9\u5bb6\u62d2\u7edd\u9500\u623f\uff0c\u6e38\u620f\u7ee7\u7eed!")) : cc.log("unknow how to do???");
        this.message_handler && this.message_handler.onRspDissolveRoom(e)
    }
    ,
    e.prototype.resp_start = function(e) {
        0 != e.Eno && (app.SysNotifyManager().ShowToast("\u5f00\u59cb\u623f\u95f4\u5931\u8d25\uff01\u9519\u8befID\uff1a" + e.Eno),
        this.view && (this.view.nodeReady.active = true)),
        this.message_handler && this.message_handler.onRspStart(e)
    }
    ,
    e.prototype.resp_face = function(e) {
        if (this.view) {
            if (0 == e.Body.RoomNotify.Eno) {
                var t = e.Body.RoomNotify.Data.NotifyInfo.Data
                  , n = e.Body.RoomNotify.Data.NotifyInfo.Uin
                  , o = e.Body.RoomNotify.Data.NotifyInfo.Target;
                n > 0 && o > 0 ? this.view.onMsgProperty(t, n, o) : this.view.onMsgFace(t, n)
            } else
                app.SysNotifyManager().ShowToast("\u53d1\u9001\u8868\u60c5\u5931\u8d25!");
            this.message_handler && this.message_handler.onRspFace(e)
        }
    }
    ,
    e.prototype.resp_room_chat = function(e) {
        if (0 != e.Body.RoomChat.Content.length) {
            var t = new Uint8Array(e.Body.RoomChat.Content)
              , n = app.ChatUtil().uintToString(t)
              , o = e.Body.RoomChat.Data;
            1e4 == o ? (cc.mg.talk_manager.onVoiceMessage(n),
            cc.mg.talk_manager.setVoiceID(e.Body.RoomChat.Uin, n)) : this.view && this.view.onChatMessage(e.Body.RoomChat.Uin, n, o),
            this.message_handler && this.message_handler.onRspRoomChat(e)
        }
    }
    ,
    e.prototype.resp_online_state = function(e) {
        this.message_handler && this.message_handler.onRspOnlineState(e)
    }
    ,
    e.prototype.resp_room_recycle = function(e) {
        this.view && this.view.onRoomRecycle && this.view.onRoomRecycle(e),
        this.message_handler && this.message_handler.onRspRoomRecycle(e)
    }
    ,
    e.prototype.resp_match_countdown = function(e) {
        var t = e.Body.RoomNotify.Data.NotifyInfo;
        this.view && this.view.onMatchCountdown && this.view.onMatchCountdown(t),
        this.message_handler && this.message_handler.onMatchCountdown && this.message_handler.onMatchCountdown(t)
    }
    ,
    e.prototype.onBtnLeave = function() {
        var e = this.roomModel.GetRoomState();
        this.tableModel.GetIsEndGame() ? app.GameServerManager().send("req_leave_room") : 0 == this.tableModel.GetStartTime() || app.RoomManager().IsRoomGold && e == a.ROOM_STATE.ROOM_STATE_END ? app.GameServerManager().send("req_leave_room") : this.roomModel.GetRoomDestory() ? app.SysNotifyManager().ShowToast("\u5df2\u9500\u623f\u6210\u529f\uff0c\u8bf7\u7b49\u5f85\u6700\u540e\u4e00\u5c40\u6bd4\u724c\u7ed3\u675f\u3002") : app.GameServerManager().send("req_leave_room")
    }
    ,
    e.prototype.onCleanTable = function() {
        app.RoomManager().IsRoomGold && (this.resetGameUI(),
        this.view.setAllHeadItemVisible(),
        this.view.setAllPlayerInfo())
    }
    ,
    e.prototype.respCreateRoom = function(e) {
        app.UserManager().GetUserInfo.roomMode = e.RoomMode,
        app.RoomManager().IsRoomGold && (app.UserManager().GetUserInfo.room_no = e.RoomID,
        this.view && this.resetGameUI(),
        this.message_handler && this.message_handler.onRspCreateRoom(e))
    }
    ,
    e.prototype.SendReady = function() {
        app.GameServerManager().send("req_ready", {
            ready: true
        })
    }
    ,
    e.prototype.SendNextRoundReady = function() {
        app.GameServerManager().send("req_round_ready", {
            ready: true
        })
    }
    ,
    e.prototype.quest_reconnGame = function() {
        app.GameServerManager().sendGamePacket(2, {
            ReconnGame: {
                Res: 0
            }
        })
    }
    ,
    e.prototype.quest_roomInfo = function() {
        app.UserManager().GetUserInfo.room_no > 0 ? app.GameServerManager().send("req_roominfo") : (app.UserManager().GetUserInfo.room_no = 0,
        app.GameManager().enterSceneByRoomMode(i.RoomMode.HALL))
    }
    ,
    e.prototype.SendReqStartGame = function() {
        app.GameServerManager().send("ReqStartGame")
    }
    ,
    e.prototype.resetGameUI = function() {
        this.view && (this.view.showRoomRound(),
        this.view.setRoomOptionInfo(),
        this.view.setAllCurrentScoreVisible(false),
        this.view.setAllPlayerReadyVisible(false),
        this.view.setDunCardsVisible(false),
        this.view.setNodeScoreVisible(false),
        this.view.removeAllGunHole(),
        this.view.hideAllBetNode(),
        this.view.hideBankerTag())
    }
    ,
    e
}();
n.default = s,
module.exports = n
