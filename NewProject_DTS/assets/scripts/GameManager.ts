import { _decorator, Prefab, Node, find, Label, NodePool, instantiate, v3, Component, tween, UITransform, Vec3, Tween } from 'cc';
const { ccclass, property } = _decorator;
import { getBrowserValue, randomPositionInRect, killTurnBack, getRoomNameById } from "./CommonUtils";
import { KillerMonkey } from "./KillerMonkey";
import { otherMonkey } from "./OtherMonkey";
import { MyMonkey } from "./MyMonkey";
import { Http } from "./Http";
import { GameStore } from "./GameStore";
import { RightMenu } from "./RightMenu";
import { CountDown } from "./CountDown";
import { DoorManager } from "./DoorManager";
import { killerAppears } from "./KillerAppears";
import { RocksManager } from "./RocksManager";
import { AudioManager } from "./AudioManager";
import { QuantityManager } from "./QuantityManager";
import { GameResultManager } from "./GameResultManager";
import { CoinFlyToRoom } from "./CoinFlyToRoom";
import { BalanceManager } from "./BalanceManager";
import { Toast } from "./Toast";
import { global } from "./GlobalDef";
import { LanguageData } from "./i18n_script/LanguageData";
import { RecordView } from "./RecordView";
@ccclass('GameManager')
export class GameManager extends Component {
    @property(Prefab)
    otherMonkey: Prefab = null!;
    @property(Prefab)
    myMonkey: Prefab = null!;
    @property(Prefab)
    killerMonkey: Prefab = null!;
    @property(Prefab)
    rulePrefab: Prefab = null!;
    @property(Prefab)
    recordPrefab: Prefab = null!;
    public wsInstance = void 0;
    wsMessage = void 0
    public gameState = 0;
    public lastGameId = 0;
    public gameTimer = 0;
    public checkoutRoomId = void 0;
    public checkoutAmount = 0;
    public joinRoomId = 0;
    public preKillerRoom = 0;
    public killerRoom = 0;
    public existingUserNodes = {};
    public amountOption = [];
    public testFlag = false;
    public userID = 0;
    public balance = 0;
    public joinAmount = 0;
    public monkeyPool = null;
    public killerMonKeyNode = void 0;
    @property(DoorManager)
    doorManagerComponent: DoorManager = null!;
    @property(RightMenu)
    rightMenuComponent: RightMenu = null!;
    @property(CountDown)
    countDownComponent: CountDown = null!;
    @property(killerAppears)
    killerAppearsComponent: killerAppears = null!;
    @property(AudioManager)
    audioManagerComponent: AudioManager = null!;
    @property(QuantityManager)
    quantityManagerComponent: QuantityManager = null!;
    @property(BalanceManager)
    balanceManagerComponent: BalanceManager = null!;
    @property(GameResultManager)
    gameResultManagerComponent: GameResultManager = null!;
    @property(CoinFlyToRoom)
    coinFlyToRoomComponent: CoinFlyToRoom = null!;
    @property(Node)
    submitBtnNode: Node = null!;
    @property(Node)
    tipNode: Node = null!;
    buffer: ArrayBuffer;
    rpos: number;
    temp_e: any;
    temp_n: { game_id: number; room_id: number; amount: any; };
    public jwttoken = "";
    txtContent: Label;
    txtContentview: Node;
    txtContentPool = [];
    pre_killer_room = 1;
    onLoad() {
        var e = getBrowserValue("token") || "";
        e ? localStorage.setItem("token", e) : Toast.show(LanguageData.inst().t("GameManager1")),
            this.registerListening()

        this.txtContent = this.tipNode.getChildByName("view").getChildByName("tipLabel").getComponent(Label)
        this.txtContentview = this.tipNode.getChildByName("view")
    }
    registerListening() {
        this.submitBtnNode.getChildByName("left").on(Node.EventType.TOUCH_START, this.toggleCheckPrice, this),
            this.submitBtnNode.getChildByName("right").on(Node.EventType.TOUCH_START, this.targetJoin, this)
    }
    start() {
        this.initKiller(),
            //  this.initGame(),
            this.initWebSocket()
        if (global.GameTypeGlobal == 1) {
            this.initAmountOption([1, 10, 100])
        } else {
            this.initAmountOption([100, 1000, 10000])
        }
        this.RunTxtAct()
    }
    initGame() {
        var e = this;
        if (global.isArraybuffer) {
            // this.wsInstance.send(this.sendArrayBuffers(9, {
            //     JwtToken: this.jwttoken
            // }))
        }
        else {
            Http.get("/BattleRoyale/initGame").then((function (o) {
                e.initGameResult(o)
            }
            ))
        }
    }
    initGameResult(o) {
        if (200 == o.code) {
            this.balance = o.data.balance
            this.rightMenuComponent.updateQs(o.data.game_id)
            this.balanceManagerComponent.updateBalance(this.balance)
            // if (global.GameTypeGlobal == 1) {
            //     this.initAmountOption([1, 10, 100])
            // } else {
            //     this.initAmountOption([10, 100, 1000])
            // }
        }
    }
    initWebSocket() {
        this.wsInstance = Http.initSocket()
        this.wsInstance.onmessage = this.onmessage.bind(this)

        if (global.isArraybuffer) {
            this.wsInstance.binaryType = "arraybuffer";
            this.wsInstance.onopen = this.onopen.bind(this)				// 指定连接成功后的回调函数
        }
    }
    checkoutRoomMask(e) {
        find("Canvas/content/rooms").children.forEach((function (o) {
            o.getChildByName("mask").active = false,
                o.name == "room" + e && (o.getChildByName("mask").active = true)
        }
        ))
    }
    readUint32() {
        var buf = new Uint8Array(this.buffer, this.rpos);
        this.rpos += 4;
        return (buf[0] << 24) + (buf[1] << 16) + (buf[2] << 8) + buf[3];
    }
    readStringUTF8(skip) {
        var buf = new Uint8Array(this.buffer, this.rpos, skip);
        if (!!skip) {
            this.rpos += skip;
        }
        return Http.utf8ArrayToString(buf);
    }
    onopen() {
        // var n = { Token: localStorage.getItem("token"), RoomID: 0, Amount: 0 };
        var token = getBrowserValue("token");
        if (token) {
            let data = { LoginMethod: "thirdServer", Account: "", PassWord: "", Token: token }
            this.wsInstance.send(this.sendArrayBuffers(3, data))
        }
        else {
            // let data = { LoginMethod: "test", Account: "", PassWord: "", Token: "" }
            // this.wsInstance.send(this.sendArrayBuffers(3, data))
        }
    }
    onmessage(e) {
        let dataMessage = e.data
        let msgid = 0
        if (global.isArraybuffer) {
            let size_or_buffer = dataMessage
            this.buffer = size_or_buffer;
            this.rpos = 0; // 读(read)数据的时候的偏移量
            msgid = this.readUint32()
            let length = this.readUint32()
            dataMessage = this.readStringUTF8(length)
            if (!global.isPush) {
                console.log("Received message:", msgid, JSON.parse(dataMessage))
            }
            if (msgid != 12) {
                if (msgid == 10) {
                    this.initGameResult(JSON.parse(dataMessage))
                }
                else if (msgid == 8) {
                    this.joinResult(JSON.parse(dataMessage))
                }
                else if (msgid == 4) {
                    let dataMessage2 = JSON.parse(dataMessage)
                    this.jwttoken = dataMessage2.data.jwt_token
                    this.userID = dataMessage2.data.user_id
                    this.initGameResult({
                        "code": 200,
                        "msg": "获取成功",
                        "data": {
                            "balance": dataMessage2.data.score,
                            "game_id": 1
                        }
                    })
                }
                else if (msgid == 14) {
                    this.onRecordBtnResult(JSON.parse(dataMessage))
                }
                return
            }

        }
        var o = this
            , n = JSON.parse(dataMessage);
        this.wsMessage = n,
            this.lastGameId && this.lastGameId != n.game_id && this.resetGameData(),
            this.lastGameId = n.game_id
        this.gameState = n.state
        this.gameTimer = n.timer
        this.pre_killer_room = n.pre_killer_room
        if (n.user_id) {
            this.userID = n.user_id
        }
        if (3 != n.state) {
            if (this.testFlag = true,
                this.killerRoom = 0,
                !n.user_list)
                return;
            this.rightMenuComponent.updateQs(n.game_id),
                this.rightMenuComponent.updatePlayer(n.join_people, n.max_people),
                2 == n.state && (this.rightMenuComponent.hide(),
                    this.countDownComponent.show(),
                    this.countDownComponent.updateCountDownTime(n.timer)),
                2 == n.state && n.timer <= 10 && this.audioManagerComponent.playCountdown(),
                this.joinAmount = Number(n.user_amount),
                this.quantityManagerComponent.updateNumber(this.joinAmount.toFixed(2) + ""),
                n.room_list.forEach((function (e) {
                    find("Canvas/content/rooms/room" + e.room_id).getComponent(RocksManager).updateRocksNumber(e.amount + "")
                }
                )),
                n.user_list.forEach((function (e) {
                    var n = e.user_id
                        , t = e.room_id;
                    if (o.userID === n) {
                        var i = find("Canvas/content/player/myMonKey");
                        if (!i) {
                            if (!(i = o.initMonkey(o.myMonkey, "myMonKey")))
                                return;
                            o.existingUserNodes[n] = i
                        }
                        t && (o.joinRoomId = t,
                            o.checkoutRoomMask(t),
                            i.getComponent(MyMonkey).goRoom("room" + t))
                    } else {
                        var a = find("Canvas/content/player/otherMonKey_" + n);
                        if (!a) {
                            if (!(a = o.initMonkey(o.otherMonkey, "otherMonKey_" + n, e.nick_name)))
                                return;
                            o.existingUserNodes[n] = a
                        }
                        t && a.getComponent(otherMonkey).goRoom("room" + t)
                    }
                }
                )),
                this.clearUserList(n.user_list)
        } else {
            if (!this.testFlag)
                return Toast.show(LanguageData.inst().t("GameManager2")),
                    void this.rightMenuComponent.updatePlayerWait();
            if (this.killerRoom)
                return;
            if (this.audioManagerComponent.stopCountdown(),
                this.countDownComponent.hide(),
                this.killerAppearsComponent.show(),
                !this.checkUserGoRoomState())
                return;
            this.killerRoom = n.killer_room,
                this.doorManagerComponent.closeDoor(),
                this.scheduleOnce((function () {
                    o.killerMonKeyNode.getComponent(KillerMonkey).goRoom("room" + o.killerRoom, (function () {
                        o.scheduleOnce((function () {
                            o.killerMonKeyNode.getComponent(KillerMonkey).back(),
                                o.killRoomUserDie(n.killer_room)
                        }
                        ), 2),
                            o.scheduleOnce((function () {
                                if (o.joinRoomId != o.killerRoom) {
                                    o.gameResultManagerComponent.showSuccess(n)
                                    o.balanceManagerComponent.updateBalance(o.balance + Number(n.user_bonus))
                                    //- o.joinAmount 
                                }
                                else {
                                    o.gameResultManagerComponent.showFail(n)
                                }
                            }
                            ), 2),
                            o.scheduleOnce((function () {
                                o.doorManagerComponent.openDoor(),
                                    o.scheduleOnce((function () {
                                        o.allUserBack()
                                    }
                                    ), .7)
                            }
                            ), 4),
                            o.scheduleOnce((function () {
                                var e = find("Canvas/content/rooms").getChildByName("room" + o.killerRoom);
                                o.coinFlyToRoomComponent.playAnim(e)
                            }
                            ), 5)
                    }
                    ))
                }
                ), .7)
        }
    }
    targetJoin() {
        if (this.checkoutAmount > this.balance) {
            Toast.show(LanguageData.inst().t("game11"))
            return
        }
        if (this.checkoutAmount <= 0) {
            return Toast.show(LanguageData.inst().t("GameManager3")),
                void console.log("join====>金额错误" + this.checkoutAmount);
        }
        this.audioManagerComponent.playClickAudio(),
            this.join(this.checkoutAmount)
    }
    join(e) {
        var o = this;
        if (void 0 === e && (e = 0),
            2 == this.gameState && this.gameTimer <= 0)
            console.log("join====>游戏倒计时结束");
        else if (1 == this.gameState || 2 == this.gameState) {
            if (!this.checkoutRoomId)
                return Toast.show(LanguageData.inst().t("GameManager4")),
                    void console.log("join====>没有选中房间");
            var n = {
                game_id: this.lastGameId,
                room_id: Number(this.checkoutRoomId.replace("room", "")),
                amount: e
            };
            this.temp_e = e
            this.temp_n = n
            if (global.isArraybuffer) {
                this.wsInstance.send(this.sendArrayBuffers(7, {
                    JwtToken: this.jwttoken,
                    room_id: Number(this.checkoutRoomId.replace("room", "")),
                    amount: e
                }))
            }
            else {
                console.log("join====>params", n),
                    Http.get("/BattleRoyale/join", n).then((function (t) {
                        o.joinResult(t)
                    }
                    ))
            }
        } else
            console.log("join====>游戏状态不允许")
    }
    joinResult(t) {
        let e = this.temp_e
        let n = this.temp_n
        var o = this;
        if (200 == t.code) {
            if (o.joinRoomId = n.room_id,
                e > 0) {
                o.joinAmount += e
                o.quantityManagerComponent.updateNumber(o.joinAmount.toFixed(2) + "");
                o.balance -= e
                o.balanceManagerComponent.updateBalance(o.balance.toFixed(2))
            }
        } else {
            Toast.show(t.msg)
        }
    }
    initAmountOption(e) {
        var o = e[0] ? e[0] : 0;
        this.setCheckoutAmount(o),
            this.amountOption = e
    }
    toggleCheckPrice() {
        this.submitBtnNode.getChildByName("prices").active = !this.submitBtnNode.getChildByName("prices").active
    }
    setCheckoutAmount(e) {
        this.checkoutAmount = e,
            find("Canvas/content/submitBtn/left/price").getComponent(Label).string = String(e)
    }
    resetGameData() {
        for (var e in this.existingUserNodes) {
            var o = this.existingUserNodes[e];
            delete this.existingUserNodes[e],
                o.isValid && o.destroy()
        }
        this.initGame(),
            find("Canvas/content/rooms").children.forEach((function (e) {
                e.getChildByName("mask").active = false
            }
            )),
            this.killerRoom = 0,
            this.killerAppearsComponent.reset(),
            this.gameTimer = 0,
            this.gameState = 0,
            this.checkoutRoomId = "",
            this.joinRoomId = 0,
            this.testFlag = false,
            this.joinAmount = 0
    }
    clearUserList(e) {
        var o = this;
        if (0 != e.length) {
            var n = function (n) {
                if (!e.some((function (e) {
                    return e.user_id == n
                }
                ))) {
                    var t = o.existingUserNodes[n];
                    delete o.existingUserNodes[n],
                        t.isValid && t.destroy()
                }
            };
            for (var t in this.existingUserNodes)
                n(t)
        }
    }
    allUserBack() {
        for (var e in this.existingUserNodes) {
            var o = this.existingUserNodes[e];
            o.name.includes("otherMonKey") && o.getComponent(otherMonkey).back(),
                o.name.includes("myMonKey") && o.getComponent(MyMonkey).back(),
                this.rightMenuComponent.updatePlayerWait(),
                this.rightMenuComponent.show()
        }
    }
    killRoomUserDie(e) {
        this.node.children.forEach((function (o) {
            o.name.includes("otherMonKey") && o.getComponent(GameStore).checkRoomID == "room" + e && o.destroy(),
                o.name.includes("myMonKey") && o.getComponent(GameStore).checkRoomID == "room" + e && o.destroy()
        }
        ))
    }
    checkUserGoRoomState() {
        for (var e in this.existingUserNodes)
            if (this.existingUserNodes[e]) {
                var o = this.existingUserNodes[e];
                if (o.name.includes("otherMonKey") && o && o.active && o.getComponent(otherMonkey).onTheWay)
                    return false;
                if (o.name.includes("myMonKey") && o && o.active && o.getComponent(MyMonkey).onTheWay)
                    return false
            }
        return true
    }
    initOther() {
        var e = this;
        this.schedule((function () {
            var o = e.initMonkey(e.otherMonkey, "otherMonKey_");
            setTimeout((function () {
                var e = ["room6"]
                    , n = e[Math.floor(Math.random() * e.length)];
                "room0" != n && o.getComponent(otherMonkey).goRoom(n)
            }
            ), 2e3)
        }
        ), .01, 200)
    }
    initOwn() {
        this.initMonkey(this.myMonkey, "myMonKey")
    }
    initMonkeyPool = function (e) {
        void 0 === e && (e = 200),
            this.monkeyPool = new NodePool;
        for (var o = 0; o < e; o++) {
            var n = instantiate(this.otherMonkey);
            this.monkeyPool.put(n)
        }
    }
    initMonkey(e, o, n = void 0) {
        var t;
        return void 0 === n && (n = ""),
            (t = instantiate(e)).name = o,
            t.setParent(this.node),
            t.setPosition(randomPositionInRect(v3(0, 0), v3(700, 70))),
            n && (t.getChildByName("name").getComponent(Label).string = n),
            t
    }
    initKiller() {
        var e = instantiate(this.killerMonkey);
        e.name = "killerMonKey",
            e.setParent(this.node),
            e.setPosition(v3(780, 240)),
            killTurnBack(e, "left"),
            e.active = false,
            this.killerMonKeyNode = e
    }
    close() {
        console.log("close...")
        // uni.navigateBack({
        //     delta: 1
        // })
    }
    goRule() {
        var e = find("Canvas/rulePrefab");
        e ? e.active = true : instantiate(this.rulePrefab).setParent(find("Canvas/"))
    }
    onRecordBtn() {
        if (global.isArraybuffer) {
            this.wsInstance.send(this.sendArrayBuffers(13, {
                JwtToken: this.jwttoken
            }))
            // let data = {
            //     BetRoomID: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
            //     KillerRoomID: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
            //     TotalBet: 0,
            //     TotalReward: 0,
            //     recent_issue_id: 111,
            //     recent_time: '2025/01/15 17:07:47',
            //     recent_bet_room_id: 1,
            //     recent_reward_room_id: 2,
            //     recent_bet_amount: 1,
            //     recent_reward_amount: 2,
            //     Record: [
            //         {
            //             recent_issue_id: 111,
            //             recent_time: '2025/01/15 17:07:47',
            //             recent_bet_room_id: 1,
            //             recent_reward_room_id: 2,
            //             recent_bet_amount: 1,
            //             recent_reward_amount: 2,
            //         }
            //     ]
            // }
            // this.onRecordBtnResult(data)
        }
    }
    onRecordBtnResult(data) {
        var recordPrefab = find("Canvas/recordPrefab");
        if (recordPrefab) {
            recordPrefab.active = true;
        } else {
            recordPrefab = instantiate(this.recordPrefab);
            recordPrefab.setParent(find("Canvas/"))
        }
        recordPrefab.getComponent(RecordView).setData(data)
    }
    sendArrayBuffers(msgid, data) {
        if (!global.isPush) {
            console.log("req", msgid, data)
        }
        let encoder = new TextEncoder();
        let view3 = encoder.encode(JSON.stringify(data));
        const buffer1 = new ArrayBuffer(4);
        const view1 = new DataView(buffer1);
        view1.setInt32(0, msgid, false);
        const buffer2 = new ArrayBuffer(4);
        const view2 = new DataView(buffer2);
        view2.setInt32(0, view3.byteLength, false);
        return this.mergeArrayBuffers([view1.buffer, view2.buffer, view3.buffer]);
    }
    mergeArrayBuffers(arrayBuffers) {
        let totalLength = 0;
        for (let i = 0; i < arrayBuffers.length; i++) {
            totalLength += arrayBuffers[i].byteLength;
        }

        let mergedBuffer = new ArrayBuffer(totalLength);
        let mergedView = new Uint8Array(mergedBuffer);

        let offset = 0;
        for (let i = 0; i < arrayBuffers.length; i++) {
            let arrayBuffer = arrayBuffers[i];
            let view = new Uint8Array(arrayBuffer);
            mergedView.set(view, offset);
            offset += view.byteLength;
        }

        return mergedBuffer;
    }
    RunTxtAct() {
        if (this.txtContentPool.length <= 0) {
            this.txtContentPool = [LanguageData.inst().t("game8").replace("%s", getRoomNameById(this.pre_killer_room)), LanguageData.inst().t("game9"), LanguageData.inst().t("game10")]
        }
        if (this.txtContentPool.length > 0) {
            Tween.stopAllByTarget(this.txtContent.node)
            this.txtContent.string = this.txtContentPool[0]
            this.txtContent.updateRenderData();
            this.txtContentPool.splice(0, 1)
            this.txtContent.node.position = v3(this.txtContentview.getComponent(UITransform).width, this.txtContent.node.position.y, this.txtContent.node.position.z)
            let width = this.txtContentview.getComponent(UITransform).width + this.txtContent.node.getComponent(UITransform).width
            tween(this.txtContent.node).by(6, { position: new Vec3(-width, 0) }).call((function () {
                this.RunTxtAct()
            }).bind(this)).start()

        }
        else {

        }
    }
    // RunTxtActInsufficientBalance() {
    //     Tween.stopAllByTarget(this.txtContent.node)
    //     this.txtContent.string = LanguageData.inst().t("game11")
    //     this.txtContent.updateRenderData();
    //     this.txtContent.node.position = v3(this.txtContentview.getComponent(UITransform).width / 2 - this.txtContent.node.getComponent(UITransform).width / 2, this.txtContent.node.position.y, this.txtContent.node.position.z)
    //     // let width = this.txtContentview.getComponent(UITransform).width + this.txtContent.node.getComponent(UITransform).width
    //     tween(this.txtContent.node).by(2, {}).call((function () {
    //         this.RunTxtAct()
    //     }).bind(this)).start()
    // }
}


