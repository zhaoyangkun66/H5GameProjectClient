let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameServerManager = undefined;
var o = require("./MsgEventDefine")
    , i = require("../../script/common/error_define")
    , a = require("../Define/GameEventDefine")
    , r = require("../Base/Singleton")
    , s = require("../Define/ShareDefine")
    , c = require("../../script/common/room_mode_tool")
    , l = require("../Define/EventWaitType")
    , p = require("../Lib/jsonBigint/JsonBigint")
    , d = 0
    , h = null
    , u = null
    , _ = {
        req_login: {
            key: "req_login",
            name: "ReqQuickLogin",
            code: 1002
        },
        req_myinfo: {
            key: "req_myinfo",
            name: "ReqAccountInfo",
            code: 1007
        },
        req_list_line: {
            key: "req_list_line",
            name: "ReqListLine",
            code: 1011
        },
        req_choose_line: {
            key: "req_choose_line",
            name: "ReqChooseLine",
            code: 1013
        },
        req_logout_line: {
            key: "req_logout_line",
            name: "ReqLogoutLine",
            code: 1015
        },
        req_create_room: {
            key: "req_create_room",
            name: "ReqCreateRoom",
            code: 1021
        },
        req_join_room: {
            key: "req_join_room",
            name: "ReqJoinRoom",
            code: 1023
        },
        req_roominfo: {
            key: "req_roominfo",
            name: "ReqRoomInfo",
            code: 1048
        },
        req_leave_room: {
            key: "req_leave_room",
            name: "ReqLeaveRoom",
            code: 1025
        },
        req_vote_dissolve_room: {
            key: "req_vote_dissolve_room",
            name: "ReqRoomOperation",
            code: 1029
        },
        req_ready: {
            key: "req_ready",
            name: "ReqRoomOperation",
            code: 1029
        },
        req_round_ready: {
            key: "req_round_ready",
            name: "ReqRoomOperation",
            code: 1029
        },
        req_match_room: {
            key: "req_match_room",
            name: "ReqMatchRoom",
            code: 1035
        },
        req_start: {
            key: "req_start",
            name: "RoomStartGame",
            code: 1060
        },
        req_start_round: {
            key: "req_start_round",
            name: "CreateRoomReq",
            code: 1021
        },
        ReqStartGame: {
            key: "ReqStartGame",
            name: "ReqStartGame",
            code: 1031
        },
        reconnGame: {
            key: "reconnGame",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 1,
            sub_name: "ReconnGame"
        },
        DealCards: {
            key: "DealCards",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 5,
            sub_name: "DealCards"
        },
        PlayCards: {
            key: "PlayCards",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 11,
            sub_name: "PlayCards"
        },
        MatchResult: {
            key: "MatchResult",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 13,
            sub_name: "MatchResult"
        },
        GMSetDeck: {
            key: "GMSetDeck",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 100,
            sub_name: "GMSetDeck"
        },
        PlayerCard: {
            key: "PlayerCard",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 14,
            sub_name: "PlayerCard"
        },
        DummyPlay: {
            key: "DummyPlay",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 36,
            sub_name: "DummyPlay"
        },
        CompeteBanker: {
            key: "CompeteBanker",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 21,
            sub_name: "CompeteBanker"
        },
        Bet: {
            key: "Bet",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 22,
            sub_name: "Bet"
        },
        Pass: {
            key: "Pass",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 20,
            sub_name: "Pass"
        },
        Discard: {
            key: "Discard",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 25,
            sub_name: "Discard"
        },
        Follow: {
            key: "Follow",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 26,
            sub_name: "Follow"
        },
        trustee: {
            key: "trustee",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 27,
            sub_name: "Trustee"
        },
        Lock: {
            key: "Lock",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 40,
            sub_name: "Lock"
        },
        Fire: {
            key: "Fire",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 41,
            sub_name: "Fire"
        },
        SwitchFire: {
            key: "SwitchFire",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 42,
            sub_name: "SwitchFire"
        },
        HitFish: {
            key: "HitFish",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 43,
            sub_name: "HitFish"
        },
        KillFish: {
            key: "KillFish",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 44,
            sub_name: "KillFish"
        },
        GenerateFish: {
            key: "GenerateFish",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 47,
            sub_name: "GenerateFish"
        },
        SpecialEventTime: {
            key: "SpecialEventTime",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 48,
            sub_name: "SpecialEventTime"
        },
        ActionFail: {
            key: "ActionFail",
            name: "GameJsonPkg",
            code: 1071,
            sub_code: 50,
            sub_name: "ActionFail"
        },
        req_join_hall: {
            key: "req_join_hall",
            name: "ReqJoinHall",
            code: 1081
        },
        req_leave_hall: {
            key: "req_leave_hall",
            name: "ReqLeaveHall",
            code: 1083
        },
        req_hall_info: {
            key: "req_hall_info",
            name: "ReqHallInfo",
            code: 1087
        },
        game_ping: {
            key: "game_ping",
            name: "Tick",
            code: 1100
        }
    }
    , m = {
        RspLogin: {
            key: "RspLogin"
        },
        RspLogout: {
            key: "RspLogout"
        },
        RspAccountInfo: {
            key: "RspAccountInfo"
        },
        UpdateRoomCard: {
            key: "UpdateRoomCard"
        },
        Notify: {
            key: "Notify"
        },
        RspListLine: {
            key: "RspListLine"
        },
        RspChooseLine: {
            key: "RspChooseLine"
        },
        RspCreateRoom: {
            key: "RspCreateRoom"
        },
        RspJoinRoom: {
            key: "RspJoinRoom"
        },
        RspLeaveRoom: {
            key: "RspLeaveRoom"
        },
        RoomChat: {
            key: "RoomChat"
        },
        RspRoomOperation: {
            key: "RspRoomOperation"
        },
        RspStartGame: {
            key: "RspStartGame"
        },
        RspRoomInfo: {
            key: "RspRoomInfo"
        },
        RoomNotify: {
            key: "RoomNotify"
        },
        RoomStartGame: {
            key: "RoomStartGame"
        },
        RoomEndGame: {
            key: "RoomEndGame"
        },
        GameJsonPkg: {
            key: "GameJsonPkg"
        },
        RspJoinHall: {
            key: "RspJoinHall"
        },
        RspLeaveHall: {
            key: "RspLeaveHall"
        },
        RspHallInfo: {
            key: "RspHallInfo"
        },
        HallEndRound: {
            key: "HallEndRound"
        },
        HallNotify: {
            key: "HallNotify"
        },
        Tick: {
            key: "Tick"
        }
    }
    , f = new Map;
f.set(1004, m.RspLogin.key),
    f.set(1006, m.RspLogout.key),
    f.set(1008, m.RspAccountInfo.key),
    f.set(1009, m.UpdateRoomCard.key),
    f.set(1010, m.Notify.key),
    f.set(1012, m.RspListLine.key),
    f.set(1014, m.RspChooseLine.key),
    f.set(1022, m.RspCreateRoom.key),
    f.set(1024, m.RspJoinRoom.key),
    f.set(1026, m.RspLeaveRoom.key),
    f.set(1027, m.RoomChat.key),
    f.set(1030, m.RspRoomOperation.key),
    f.set(1032, m.RspStartGame.key),
    f.set(1049, m.RspRoomInfo.key),
    f.set(1050, m.RoomNotify.key),
    f.set(1060, m.RoomStartGame.key),
    f.set(1061, m.RoomEndGame.key),
    f.set(1071, m.GameJsonPkg.key),
    f.set(1082, m.RspJoinHall.key),
    f.set(1084, m.RspLeaveHall.key),
    f.set(1088, m.RspHallInfo.key),
    f.set(1089, m.HallEndRound.key),
    f.set(1090, m.HallNotify.key),
    f.set(1100, m.Tick.key);
var g = function (e, t, n, o) {
    var i = {
        Head: {},
        Body: {}
    }
        , a = i.Head;
    a.version = 2,
        a.Cmd = t.code,
        a.Uin = e,
        a.Headlen = 12,
        a.Bodylen = 0;
    var r = i.Body
        , s = t.name;
    if (n && (r[s] = n),
        o) {
        var c = r[s] = {};
        c.RoomID = app.UserManager().GetUserInfo.room_no;
        var l = {
            Head: {},
            Body: {}
        }
            , p = l.Head
            , d = l.Body;
        p.Cmd = t.sub_code,
            p.Uin = e,
            d[t.sub_name] = o,
            c.JsonContent = JSON.stringify(l)
    }
    return i
}
    , y = function (e) {
        for (var t in this.version = 2,
            this.Cmd = 0,
            this.Uin = 0,
            this.Headlen = 12,
            this.Bodylen = 0,
            e)
            e.hasOwnProperty(t) && (this[t] = e[t])
    }
    , v = function (e, t) {
        this.Head = new y(e),
            this.Body = t
    }
    , C = function (e) {
        function t() {
            var t = e.call(this) || this;
            return t.delayMS = 0,
                t.heartBeatFlag = false,
                t.isConnecting = false,
                t.connectTime = (new Date).getTime(),
                t.connectCount = 0,
                t.connected = false,
                t.needConnect = true,
                t.needSendEvent = true,
                t.handlers = {},
                t.rsp_key_map = m,
                t.req_key_map = _,
                t.IsLoginSuccess = false,
                t.JS_Name = "GameServerManager",
                t.Log("Init"),
                t.RegisterEventHandler(),
                t
        }
        return __extends(t, e),
            t.prototype.RegisterEventHandler = function () {
                var e = this
                    , t = [];
                t.push(o.default.EVENT_LOGIN),
                    t.push(o.default.EVENT_LOGIN_FINISH),
                    t.push(o.default.EVENT_LOGOUT),
                    t.push(o.default.EVENT_CREATE_ROOM),
                    t.push(o.default.EVENT_JOIN_ROOM),
                    t.push(o.default.EVENT_SELF_JOIN_ROOM),
                    t.push(o.default.EVENT_ROOM_INFO),
                    t.push(o.default.EVENT_ROOM_OPERATION),
                    t.push(o.default.EVENT_LEAVE_ROOM),
                    t.push(o.default.EVENT_VOTE_DISSOVLE_ROOM),
                    t.push(o.default.EVENT_DISSOVLE_ROOM),
                    t.push(o.default.EVENT_ROOM_START_GAME),
                    t.push(o.default.EVENT_ROOM_END_GAME),
                    t.push(o.default.EVENT_GAME_MESSAGE),
                    t.push(o.default.EVENT_READY),
                    t.push(o.default.EVENT_START),
                    t.push(o.default.EVENT_FACE),
                    t.push(o.default.EVENT_ROOM_CHAT),
                    t.push(o.default.EVENT_ONLINE_STATE),
                    t.push(o.default.EVENT_ROOM_RECYCLE),
                    t.push(o.default.EVENT_MATCH_COUNTDOWN),
                    t.push(o.default.EVENT_ROUND_READY),
                    t.push(o.default.EVENT_DISCONNECT),
                    t.forEach(function (t) {
                        e.AddHandler(t, function (e) {
                            cc.systemEvent.emit(t, e)
                        })
                    })
            }
            ,
            t.prototype.AddHandler = function (e, t) {
                this.handlers[e] ? this.WarnLog("event:" + e + "' handler has been registered.") : this.handlers[e] = function (n) {
                    e != o.default.EVENT_DISCONNECT && "string" == typeof n && (n = JSON.parse(n)),
                        t(n)
                }
            }
            ,
            t.prototype.connect = function (e) {
                if (isgoServer) {
                    this.Log("connect: " + e),
                        this.isConnecting || (this.Close(),
                            this.url = e,
                            this.needConnect = true,
                            this.isConnecting = true,
                            this.connectTime = Date.now(),
                            this.connectCount++,
                            3 == this.connectCount && (app.Client.OnEvent(a.GameEventDefine.GAME_SERVER_UNCONNECTED),
                                this.connectCount = 0),
                            this.socket = new WebSocket(e),
                            //  this.socket.binaryType = "Blob",
                            this.curr_lineID = "0.0.0.0",
                            this.socket.onopen = this.OnOpen.bind(this),
                            this.socket.onmessage = this.OnMessage.bind(this),
                            this.socket.onerror = this.OnError.bind(this),
                            this.socket.onclose = this.OnClose.bind(this))
                }
                else {
                    this.Log("connect: " + e),
                        this.isConnecting || (this.Close(),
                            this.url = e,
                            this.needConnect = true,
                            this.isConnecting = true,
                            this.connectTime = Date.now(),
                            this.connectCount++,
                            3 == this.connectCount && (app.Client.OnEvent(a.GameEventDefine.GAME_SERVER_UNCONNECTED),
                                this.connectCount = 0),
                            this.socket = new WebSocket(e),
                            this.socket.binaryType = "arraybuffer",
                            this.curr_lineID = "0.0.0.0",
                            this.socket.onopen = this.OnOpen.bind(this),
                            this.socket.onmessage = this.OnMessage.bind(this),
                            this.socket.onerror = this.OnError.bind(this),
                            this.socket.onclose = this.OnClose.bind(this))
                }
            }
            ,
            t.prototype.OnOpen = function () {
                this.SysLog("ws connected"),
                    this.connected = true,
                    this.connectCount = 0,
                    this.isConnecting = false,
                    this.needSendEvent = true,
                    this.heartBeatFlag = false,
                    cc.systemEvent.emit(a.GameEventDefine.GAME_SERVER_CONNECTED),
                    this.ResetHeartbeat()
            }
            ,
            t.prototype.OnMessage = function (e) {
                this.heartBeatFlag && (this.heartBeatFlag = false,
                    this.lastReceivedTime = Date.now(),
                    this.delayMS = this.lastReceivedTime - this.lastSendTime);
                if (isgoServer) {
                    var t = e.data
                    var n = e.data
                }
                else {
                    var t, n = pako.inflate(e.data, {
                        to: "string"
                    });
                }
                try {
                    var r = '"RoomAccId":';
                    t = (d = n.indexOf(r)) > -1 ? JSON.parse(JSON.stringify(p.parse(n))) : JSON.parse(n)
                } catch (w) {
                    var d;
                    if (this.ErrLog("\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u9519\u8bef strBody:%s,error:%s", n, w.stack),
                        r = '"Nickname":"',
                        !((d = n.indexOf(r)) > -1))
                        return;
                    var h = n.indexOf('"', d + r.length);
                    n = n.substring(0, d + r.length) + n.substring(h, n.length);
                    try {
                        t = p.parse(n)
                    } catch (w) {
                        return void this.ErrLog("\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u9519\u8bef strBody:%s,error:%s", n, w.stack)
                    }
                }
                if (!CC_BUILD) {
                    console.log("OnMessage", t)
                }
                switch (1100 != t.Head.Cmd && this.IsDevelopment() && this.NetLog("OnMessage: ", JSON.parse(JSON.stringify(n)), "b-gb1"),
                t.Head.Cmd) {
                    case 1004:
                        t.Body.RspLogin.Eno > 0 ? (0,
                            this.handlers[o.default.EVENT_LOGOUT])({
                                code: t.Body.RspLogin.Eno
                            }) : (this.uid = t.Head.Uin,
                                this.tick = t.Body.RspLogin.Tick,
                                this.send(_.req_myinfo.key, {
                                    uid: this.uid
                                }));
                        break;
                    case 1008:
                        var u = this.handlers[o.default.EVENT_LOGIN]
                            , m = t.Body.RspAccountInfo.UserInfo
                            , g = {
                                uid: m.Uin,
                                uno: m.Uin,
                                lineid: m.LineID,
                                roomMode: t.Body.RspAccountInfo.RoomMode,
                                room_no: t.Body.RspAccountInfo.RoomID,
                                unionid: m.Unionid,
                                wx_openid: m.Openid,
                                nickname: m.Nickname,
                                sex: m.Sex,
                                headimg: m.Headimgurl,
                                card_num: m.RoomCard,
                                gold: m.GoldCoin - m.BankGold,
                                bankgold: m.BankGold,
                                ip: m.IP,
                                time: this.tick
                            };
                        this.IsLoginSuccess = false,
                            "0.0.0.0" != t.Body.RspAccountInfo.LineID && (this.curr_lineID = t.Body.RspAccountInfo.LineID,
                                this.send("req_choose_line")),
                            u(g),
                            "0.0.0.0" == this.curr_lineID && (this.IsLoginSuccess = true,
                                this.handlers[o.default.EVENT_LOGIN_FINISH]());
                        break;
                    case 1009:
                        this.Log("充值");
                        var y = t.Body.UpdateUserinfo;
                        if (null == y)
                            return void cc.error("receive error data");
                        app.UserManager().GetUserInfo.gold = y.GoldCoin - y.BankGold,
                            app.UserManager().GetUserInfo.card_num = y.RoomCard,
                            app.RoomManager().EnableRefresh && app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_INFO);
                        break;
                    case 1010:
                        var C = {
                            id: t.Body.Notify.NotifyID,
                            loop: t.Body.Notify.LoopCount,
                            interval: t.Body.Notify.Interval,
                            content: t.Body.Notify.NotifyContent
                        };
                        cc.systemEvent.emit(o.default.EVENT_NOTIFY, C);
                        break;
                    case 1012:
                        t.Body.RspListLine.LineCount > 0 && "0.0.0.0" == this.curr_lineID && (this.curr_lineID = t.Body.RspListLine.LineInfos[0].LineID,
                            this.send("req_choose_line"));
                        break;
                    case 1014:
                        if (0 != t.Body.RspChooseLine.Eno) {
                            var I = app.GameConfigManager().GetGameConfig().stop_server_prompt;
                            I ? app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmOK, I, null, null) : app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmOK, "UI.System_7", null, null)
                        } else
                            this.IsLoginSuccess || (this.IsLoginSuccess = true,
                                this.handlers[o.default.EVENT_LOGIN_FINISH]());
                        break;
                    case 1022:
                        (u = this.handlers[o.default.EVENT_CREATE_ROOM])(t.Body.RspCreateRoom);
                        break;
                    case 1024:
                        u = this.handlers[o.default.EVENT_SELF_JOIN_ROOM];
                        var E = t.Body.RspJoinRoom.Eno;
                        if (0 == E || 30103 == E)
                            app.UserManager().GetUserInfo.room_no = t.Body.RspJoinRoom.RoomID,
                                app.UserManager().GetUserInfo.roomMode = t.Body.RspJoinRoom.RoomMode,
                                30103 == E && (app.UserManager().GetUserInfo.is_reconned = true),
                                u({
                                    code: 0,
                                    room_no: app.UserManager().GetUserInfo.room_no,
                                    room_mode: app.UserManager().GetUserInfo.roomMode
                                });
                        else {
                            var S = t.Body.RspJoinRoom.Eno
                                , b = i.get(S)
                                , M = "Join Room Error: " + S;
                            b && (M = b()),
                                u({
                                    code: S,
                                    msg: M,
                                    room_no: t.Body.RspJoinRoom.RoomID
                                }),
                                app.Client.OnEvent(a.GameEventDefine.GAME_LOADING_FAILED)
                        }
                        break;
                    case 1026:
                        0 == t.Body.RspLeaveRoom.Eno ? (u = this.handlers[o.default.EVENT_LEAVE_ROOM])({
                            code: t.Body.RspLeaveRoom.Reason,
                            changeRoom: t.Body.RspLeaveRoom.ChangeRoom,
                            uid: t.Head.Uin,
                            uno: t.Head.Uin,
                            gold_change: t.Body.RspLeaveRoom.GoldChange,
                            event_type: o.default.EVENT_LEAVE_ROOM
                        }) : t.Head.Uin == this.uid && 30110 == t.Body.RspLeaveRoom.Eno && this.ErrLog("RspLeaveRoom Eno 30110");
                        break;
                    case 1027:
                        u = this.handlers[o.default.EVENT_ROOM_CHAT],
                            t.event_type = o.default.EVENT_ROOM_CHAT,
                            u(t);
                        break;
                    case 1030:
                        u = this.handlers[o.default.EVENT_ROOM_OPERATION];
                        var G = t.Body.RspRoomOperation;
                        G.event_type = o.default.EVENT_ROOM_OPERATION,
                            u(G);
                        break;
                    case 1032:
                        u = this.handlers[o.default.EVENT_START];
                        var T = t.Body.RspStartGame;
                        T.event_type = o.default.EVENT_START,
                            u(T);
                        break;
                    case 1049:
                        if (app.Client.OnEvent("ModalLayer", l.EventWaitType.ReceiveNet),
                            u = this.handlers[o.default.EVENT_ROOM_INFO],
                            30105 == t.Body.RspRoomInfo.Eno) {
                            app.GameManager().enterSceneByRoomMode(c.RoomMode.HALL);
                            break
                        }
                        for (var N = t.Body.RspRoomInfo.RoomInfo, D = {
                            owner: N.Owner,
                            code: t.Body.RspRoomInfo.Eno,
                            room_no: N.RoomID,
                            lineid: N.LineID,
                            state: N.State,
                            gid: N.RoomMode,
                            type: N.RoomMode,
                            name: N.RoomName,
                            creator_uid: N.Owner.Uin,
                            creator_uno: N.Owner.Uin,
                            create_time: N.CreateTime,
                            GameBeginTime: N.GameBeginTime,
                            RoundBeginTime: N.RoundBeginTime,
                            RoundEndTime: N.RoundEndTime,
                            start_mode: N.StartMode,
                            MaxTurnCount: N.MaxTurnCount,
                            MatchCDTime: N.MatchCDTime,
                            RoomType: N.RoomType,
                            RoomAccId: N.RoomAccId,
                            players: [],
                            watchers: [],
                            player_num: N.MemberCount,
                            conf: {
                                rounds_type: N.MaxRoundCount,
                                pnum_type: N.MaxMemberCount,
                                settle_type: N.CardType,
                                rule_type: 0
                            },
                            MaxMemberCount: N.MaxMemberCount,
                            gameSettings: {}
                        }, R = 0; R < N.MemberInfo.length; R++) {
                            var O = N.MemberInfo[R];
                            D.players[R] = {
                                uid: O.Uin,
                                uno: O.Uin,
                                nickname: O.Nickname,
                                sex: O.Sex,
                                headimg: O.Imageurl,
                                online: O.Online,
                                ready: !!O.IsReady,
                                vote_dissolve: O.IsVoteDestroyRoom,
                                gold: O.Cash,
                                seat: O.Seat,
                                ip: O.ClientIP
                            }
                        }
                        if (N.ObserverInfo)
                            for (R = 0; R < N.ObserverInfo.length; R++) {
                                var L = {
                                    uid: (O = N.ObserverInfo[R]).Uin,
                                    uno: O.Uin,
                                    nickname: O.Nickname,
                                    sex: O.Sex,
                                    headimg: O.Imageurl,
                                    online: O.Online,
                                    ready: !!O.IsReady,
                                    vote_dissolve: O.IsVoteDestroyRoom,
                                    gold: O.Cash,
                                    seat: O.Seat,
                                    ip: O.ClientIP
                                };
                                D.players.push(L)
                            }
                        D.gameSettings = N.GameSettings,
                            D.DestroyDeclarePlayerID = N.DestroyDeclarePlayerID,
                            D.DestroyBeginTick = N.DestroyBeginTick,
                            D.WinMulti = N.WinMulti,
                            D.event_type = o.default.EVENT_ROOM_INFO,
                            u(D);
                        break;
                    case 1050:
                        switch (t.Body.RoomNotify.Type) {
                            case 1:
                                app.UserManager().GetUserInfo.room_no = t.Body.RoomNotify.RoomID,
                                    (u = this.handlers[o.default.EVENT_CREATE_ROOM])({
                                        room_no: t.Body.RoomNotify.RoomID,
                                        event_type: o.default.EVENT_CREATE_ROOM
                                    });
                                break;
                            case 2:
                                u = this.handlers[o.default.EVENT_JOIN_ROOM],
                                    O = t.Body.RoomNotify.Data.Join.Member,
                                    u({
                                        code: 0,
                                        room_no: t.Body.RoomNotify.RoomID,
                                        seat: O.Seat,
                                        uid: O.Uin,
                                        uno: O.Uin,
                                        nickname: O.Nickname,
                                        sex: O.Sex,
                                        headimg: O.Imageurl,
                                        ready: !!O.IsReady,
                                        vote_dissolve: O.IsVoteDestroyRoom,
                                        gold: O.Cash,
                                        online: O.Online,
                                        ip: O.ClientIP,
                                        event_type: o.default.EVENT_JOIN_ROOM
                                    });
                                break;
                            case 3:
                                (u = this.handlers[o.default.EVENT_LEAVE_ROOM])({
                                    code: 0,
                                    uid: t.Body.RoomNotify.Data.NotifyInfo.Uin,
                                    uno: t.Body.RoomNotify.Data.NotifyInfo.Uin,
                                    event_type: o.default.EVENT_LEAVE_ROOM
                                });
                                break;
                            case 5:
                            case 6:
                                break;
                            case 7:
                                (u = this.handlers[o.default.EVENT_READY])({
                                    code: 0,
                                    uid: t.Body.RoomNotify.Data.NotifyInfo.Uin,
                                    uno: t.Body.RoomNotify.Data.NotifyInfo.Uin,
                                    ready: !!t.Body.RoomNotify.Data.NotifyInfo.Data,
                                    event_type: o.default.EVENT_READY
                                });
                                break;
                            case 8:
                                u = this.handlers[o.default.EVENT_FACE],
                                    t.event_type = o.default.EVENT_FACE,
                                    u(t);
                                break;
                            case 9:
                                (u = this.handlers[o.default.EVENT_VOTE_DISSOVLE_ROOM])({
                                    code: 0,
                                    uid: t.Body.RoomNotify.Data.ReqDestroy.Uin,
                                    uno: t.Body.RoomNotify.Data.ReqDestroy.Uin,
                                    agree: t.Body.RoomNotify.Data.ReqDestroy.Data,
                                    wait_time: t.Body.RoomNotify.Data.ReqDestroy.LeftSeconds,
                                    create_uid: t.Body.RoomNotify.Data.ReqDestroy.Uin,
                                    create_uno: t.Body.RoomNotify.Data.ReqDestroy.Uin,
                                    event_type: o.default.EVENT_VOTE_DISSOVLE_ROOM
                                });
                                break;
                            case 10:
                                (u = this.handlers[o.default.EVENT_DISSOVLE_ROOM])({
                                    data: t.Body.RoomNotify.Data.NotifyInfo,
                                    room_no: t.Body.RoomNotify.RoomID,
                                    event_type: o.default.EVENT_DISSOVLE_ROOM
                                });
                                break;
                            case 11:
                                break;
                            case 12:
                                u = this.handlers[o.default.EVENT_ROUND_READY],
                                    0 == t.Body.RoomNotify.Eno ? u({
                                        code: 0,
                                        room_no: t.Body.RoomNotify.RoomID,
                                        data: t.Body.RoomNotify.Data.NotifyInfo,
                                        event_type: o.default.EVENT_ROUND_READY
                                    }) : cc.log("error number = " + t.Body.RoomNotify.Eno);
                                break;
                            case 13:
                                u = this.handlers[o.default.EVENT_ONLINE_STATE],
                                    t.event_type = o.default.EVENT_ONLINE_STATE,
                                    u(t);
                                break;
                            case 14:
                                u = this.handlers[o.default.EVENT_ROOM_RECYCLE],
                                    t.event_type = o.default.EVENT_ROOM_RECYCLE,
                                    u(t);
                                break;
                            case 21:
                                u = this.handlers[o.default.EVENT_MATCH_COUNTDOWN],
                                    t.event_type = o.default.EVENT_MATCH_COUNTDOWN,
                                    u(t)
                        }
                        break;
                    case 1060:
                        u = this.handlers[o.default.EVENT_ROOM_START_GAME],
                            t.event_type = o.default.EVENT_ROOM_START_GAME,
                            u(t);
                        break;
                    case 1061:
                        u = this.handlers[o.default.EVENT_ROOM_END_GAME],
                            t.event_type = o.default.EVENT_ROOM_END_GAME,
                            u(t);
                        break;
                    case 1071:
                        if (t.Body.GameJsonPkg.RoomID != app.UserManager().GetUserInfo.room_no)
                            break;
                        var A = JSON.parse(t.Body.GameJsonPkg.JsonContent);
                        u = this.handlers[o.default.EVENT_GAME_MESSAGE],
                            A.event_type = o.default.EVENT_GAME_MESSAGE,
                            u(A);
                        break;
                    case 1100:
                        t.Body.Tick.NeedReply ? t = new v({
                            Cmd: 1100,
                            Uin: this.uid
                        }, {
                            Tick: {
                                Time: t.Body.Tick.Time,
                                NeedReply: 0
                            }
                        }) : this.ResetHeartbeat();
                        break;
                    case 1006:
                        (0,
                            this.handlers[o.default.EVENT_LOGOUT])({
                                code: t.Body.RspLogout.Eno
                            });
                        break;
                    case 2000:
                        app.ExternGameManager().OnWebSocketGameProgress(t.Body);
                        break;
                    case 1082:
                    case 1084:
                    case 1088:
                    case 1089:
                    case 1090:
                        app.Client.OnEvent("ModalLayer", l.EventWaitType.ReceiveNet);
                        var B = f.get(t.Head.Cmd)
                            , U = this.getHandler(B);
                        1090 == t.Head.Cmd && t.Body.HallNotify && 20 == t.Body.HallNotify.Type && (app.UserManager().GetUserInfo.room_no = 0,
                            app.GameManager().enterSceneByRoomMode(c.RoomMode.HALL, function () {
                                app.SysNotifyManager().ShowToast("UI.System_7")
                            }));
                        var P = t.Body[B];
                        P.event_type = B,
                            U(P)
                }
            }
            ,
            t.prototype.OnError = function (e) {
                this.ErrLog("OnError:", e)
            }
            ,
            t.prototype.OnClose = function (e) {
                this.SysLog("OnClose:", e),
                    this.onWebSocketClose()
            }
            ,
            t.prototype.ResetHeartbeat = function () {
                var e = this;
                h && (clearTimeout(h),
                    h = null),
                    u && clearTimeout(u),
                    u = setTimeout(function () {
                        u = null,
                            e.send("game_ping"),
                            d = Date.now() + 2e4;
                        var t = function () {
                            var n = d - Date.now();
                            n > 100 ? h = setTimeout(t, n) : e.TickTimeOut()
                        };
                        h = setTimeout(t, 2e4)
                    }, 1e4)
            }
            ,
            t.prototype.getHandler = function (e) {
                var t = this.handlers[e];
                return t || function (t) {
                    cc.log(e, t),
                        cc.systemEvent.emit(e, t)
                }
            }
            ,
            t.prototype.send = function (e, t, n) {
                if (null != this.socket && this.connected) {
                    var o;
                    this.lastSendTime = Date.now(),
                        this.heartBeatFlag = true,
                        this.ResetHeartbeat();
                    var i = _[e];
                    if (!i)
                        return void cc.error("\u672a\u627e\u5230\u6d88\u606f" + e + "\u5b9a\u4e49");
                    switch (t || (t = {}),
                    t.uid || (t.uid = this.uid),
                    e) {
                        case _.req_login.key:
                            o = g(t.uid, i, {
                                ClientVersion: 100,
                                CSProtoVer: 1,
                                Token: t.token
                            });
                            break;
                        case _.req_myinfo.key:
                        case _.req_list_line.key:
                            o = g(t.uid, i, {
                                Res: 0
                            });
                            break;
                        case _.req_choose_line.key:
                        case _.req_logout_line.key:
                            o = g(t.uid, i, {
                                LineID: this.curr_lineID
                            });
                            break;
                        case _.req_create_room.key:
                            o = g(t.uid, i, {
                                RoomID: 0,
                                RoomAccId: 0,
                                LineID: this.curr_lineID,
                                RoomMode: t.gid,
                                StartMode: t.StartMode,
                                CardType: t.settle_type,
                                RoomType: t.RoomType,
                                MaxMemberCount: t.pnum_type,
                                MaxRoundCount: t.rounds_type,
                                GameSettings: t.GameSettings
                            });
                            break;
                        case _.req_join_room.key:
                            o = g(t.uid, i, {
                                RoomID: t.room_no,
                                RoomType: t.RoomType
                            });
                            break;
                        case _.req_roominfo.key:
                        case _.req_leave_room.key:
                        case _.ReqStartGame.key:
                            o = g(t.uid, i, {
                                RoomID: app.UserManager().GetUserInfo.room_no
                            });
                            break;
                        case _.req_vote_dissolve_room.key:
                            o = g(t.uid, i, {
                                RoomID: app.UserManager().GetUserInfo.room_no,
                                Operation: 5,
                                Target: 0,
                                Data: t.agree ? 1 : -1
                            });
                            break;
                        case _.req_ready.key:
                            o = g(t.uid, i, {
                                RoomID: app.UserManager().GetUserInfo.room_no,
                                Operation: 2,
                                Target: 0,
                                Data: Number(t.ready)
                            });
                            break;
                        case _.req_round_ready.key:
                            o = g(t.uid, i, {
                                RoomID: app.UserManager().GetUserInfo.room_no,
                                Operation: 6,
                                Target: 0,
                                Data: 1
                            });
                            break;
                        case _.req_start.key:
                            o = g(t.uid, i, {
                                RoomID: app.UserManager().GetUserInfo.room_no,
                                Owner: 0
                            });
                            break;
                        case _.req_start_round.key:
                            o = g(t.uid, i, {
                                Uin: 0,
                                Line: 0,
                                Operation: 6,
                                Data: 1,
                                RoomSettings: 0
                            });
                            break;
                        case _.PlayCards.key:
                            o = g(t.uid, i, null, {
                                SpecialPatternID: t.SpecialPatternID,
                                SpecialCards: t.SpecialCards,
                                HeadCards: t.HeadCards,
                                MiddleCards: t.MiddleCards,
                                LastCards: t.LastCards
                            });
                            break;
                        case _.GMSetDeck.key:
                            o = g(t.uid, i, null, {
                                CardCount: 26,
                                Cards: [60, 5, 37, 27, 23, 6, 22, 36, 65, 30, 62, 19, 35, 61, 11, 57, 40, 7, 55, 20, 52, 12, 28, 38, 2, 34]
                            });
                            break;
                        case _.reconnGame.key:
                            1 == app.UserManager().GetUserInfo.roomMode ? i.sub_code = 2 : 5 == app.UserManager().GetUserInfo.roomMode && (i.sub_code = 35),
                                o = g(t.uid, i, null, {
                                    Res: 0
                                });
                            break;
                        case _.CompeteBanker.key:
                            o = g(t.uid, i, null, {
                                CompeteGold: t.CompeteGold,
                                Compete: t.Compete
                            });
                            break;
                        case _.Bet.key:
                            o = g(t.uid, i, null, {
                                BetSeat: t.BetSeat,
                                BetGold: t.BetGold,
                                BetPlayerID: t.BetPlayerID,
                                BetMulti: t.BetMulti
                            });
                            break;
                        case _.DealCards.key:
                            o = g(t.uid, i, null, t);
                            break;
                        case _.Discard.key:
                        case _.Follow.key:
                        case _.Pass.key:
                        case _.trustee.key:
                            o = g(t.uid, i, null, t);
                            break;
                        case _.req_join_hall.key:
                        case _.req_leave_hall.key:
                        case _.req_hall_info.key:
                            o = g(t.uid, i, {
                                HallId: t.hall_id
                            });
                            break;
                        case _.game_ping.key:
                            o = g(t.uid, i, {
                                Time: Date.now(),
                                NeedReply: 1
                            });
                            break;
                        case _.req_match_room.key:
                            o = g(t.uid, i, {
                                LineID: null == t.LineID ? this.curr_lineID : t.LineID,
                                RoomMode: t.RoomMode,
                                Rematch: null == t.Rematch ? 0 : t.Rematch,
                                GameSettings: t.GameSettings
                            });
                            break;
                        case _.Lock.key:
                        case _.Fire.key:
                        case _.SwitchFire.key:
                        case _.HitFish.key:
                            o = g(t.uid, i, null, t);
                            break;
                        case _.PlayerCard.key:
                        case _.DummyPlay.key:
                            o = g(t.uid, i, null, {
                                PlayerID: t.uid,
                                PatternID: t.PatternID,
                                CardCount: 0,
                                Cards: 0
                            })
                    }
                    this.sendPacket(o, n)
                } else
                    this.ErrLog("socket is not connected.")
            }
            ,
            t.prototype.sendPacket = function (e, t) {
                if (!CC_BUILD) {
                    console.log("sendPacket", e)
                }
                // if (isgoServer) {
                //     return
                // }
                if (null != this.socket && this.connected) {
                    var n = JSON.stringify(e)
                    var o = pako ? pako.deflate(n, {}) : n;
                    if (isgoServer) {
                        var o = n;
                    }

                    1100 != e.Head.Cmd && this.SysLog("SendMessage: ", n, "b-g"),
                        t && app.Client.OnEvent("ModalLayer", l.EventWaitType.OpenNet),
                        this.socket.send(o)
                } else
                    app.Client.OnEvent(a.GameEventDefine.GAME_SERVER_UNCONNECTED)
            }
            ,
            t.prototype.sendGamePacket = function (e, t) {
                var n = {
                    Head: {
                        Cmd: e,
                        Uin: this.uid
                    },
                    Body: t
                }
                    , o = JSON.stringify(n)
                    , i = {
                        GameJsonPkg: {
                            RoomID: app.UserManager().GetUserInfo.room_no,
                            JsonContent: o
                        }
                    }
                    , a = new v({
                        Cmd: 1071,
                        Uin: this.uid
                    }, i);
                this.sendPacket(a)
            }
            ,
            t.prototype.onWebSocketClose = function () {
                this.SysLog("onWebSocketClose"),
                    this.needSendEvent && cc.systemEvent.emit(o.default.EVENT_DISCONNECT),
                    app.HallMessageCenter().stopMonitorEvent(),
                    app.RoomMessageCenter().stopMonitorEvent(),
                    this.Close(),
                    this.needConnect && this.Reconnect()
            }
            ,
            t.prototype.closeNeedntConnect = function () {
                this.needConnect = false,
                    this.Close()
            }
            ,
            t.prototype.TickTimeOut = function () {
                this.SysLog("TickTimeOut"),
                    this.needConnect = true,
                    this.onWebSocketClose()
            }
            ,
            t.prototype.Reconnect = function () {
                var e = this;
                this.needSendEvent = false,
                    Date.now() - this.connectTime >= 4e3 ? this.connect(this.url) : setTimeout(function () {
                        e.connect(e.url)
                    }, 4e3)
            }
            ,
            t.prototype.onIosOffLine = function () {
                this.Close()
            }
            ,
            t.prototype.Close = function () {
                if (this.socket) {
                    this.IsLoginSuccess = false,
                        this.connected = false,
                        this.isConnecting = false,
                        this.delayMS = 0,
                        this.heartBeatFlag = false,
                        u && (clearTimeout(u),
                            u = null),
                        h && (clearTimeout(h),
                            h = null),
                        this.socket.onopen = null,
                        this.socket.onerror = null,
                        this.socket.onclose = null,
                        this.socket.onmessage = null;
                    try {
                        this.socket.close(),
                            this.SysLog("\u8fde\u63a5\u65ad\u5f00:%s", this.url, "w-g")
                    } catch (e) {
                        this.ErrLog("\u5173\u95ed\u7f51\u7edc\u94fe\u63a5\u9519\u8bef: message:%s stack:%s", e.message)
                    }
                    this.socket = null
                }
            }
            ,
            Object.defineProperty(t.prototype, "GetLoginSuccess", {
                get: function () {
                    return this.IsLoginSuccess
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetDelayMS", {
                get: function () {
                    return this.delayMS > 100 || 0 == this.delayMS ? 1 : 0
                },
                enumerable: false,
                configurable: true
            }),
            t
    }(r.Singleton);
n.GameServerManager = C,
    module.exports = n
