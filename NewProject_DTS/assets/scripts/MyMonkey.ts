import { _decorator, Component, dragonBones } from 'cc';
const { ccclass, property } = _decorator;
import { goWaitTween, getRandomPositionByRoom, goRoomTween } from "./CommonUtils";
import { GameStore } from "./GameStore";
@ccclass('MyMonkey')
export class MyMonkey extends Component {
    @property
    checkRoomID = "";
    @property
    checkRoomPath = [];
    @property(dragonBones.ArmatureDisplay)
    dragonBones: dragonBones.ArmatureDisplay = null!;
    back = function () {
        var o = this;
        this.onTheWay = true,
            this.playAnimation("zou"),
            goWaitTween(this.node, (function () {
                o.onTheWay = false,
                    o.playAnimation("adle")
            }
            ))
    }
    playAnimation = function (o, n) {
        void 0 === n && (n = 0),
            this.dragonBones && (this.dragonBones.timeScale = 1,
                this.dragonBones.playAnimation(o, n))
    }
    goRoom = function (o) {
        var n = this;
        this.onTheWay;
        var e = this.node.getComponent(GameStore).checkRoomID;
        "" == e ? (this.onTheWay = true,
            this.playAnimation("zou"),
            goRoomTween(o, this.node, (function (e) {
                n.node.getComponent(GameStore).checkRoomID = o,
                    n.node.getComponent(GameStore).checkRoomPath = e.pathPoints,
                    n.onTheWay = false,
                    n.playAnimation("adle")
            }
            ))) : e != o && (this.node.setPosition(getRandomPositionByRoom(o)),
                this.node.getComponent(GameStore).checkRoomID = o)
    }
}


