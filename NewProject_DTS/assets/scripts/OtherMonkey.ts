import { _decorator, Component, dragonBones } from 'cc';
const { ccclass, property } = _decorator;
import { getRandomPositionByRoom, goRoomTween, goWaitTween } from "./CommonUtils";
import { GameStore } from "./GameStore";

@ccclass('otherMonkey')
export class otherMonkey extends Component {
    @property(dragonBones.ArmatureDisplay)
    dragonBones: dragonBones.ArmatureDisplay = null!;
    start = function () { }
    playAnimation = function (o, n) {
        void 0 === n && (n = 0),
            this.dragonBones && (this.dragonBones.timeScale = 1,
                this.dragonBones.playAnimation(o, n))
    }
    goRoom = function (o) {
        var n = this;
        if (!this.onTheWay) {
            var t = this.node.getComponent(GameStore).checkRoomID;
            "" == t ? (this.onTheWay = true,
                this.playAnimation("zou"),
                goRoomTween(o, this.node, (function (t) {
                    n.node.getComponent(GameStore).checkRoomID = o,
                        n.node.getComponent(GameStore).checkRoomPath = t.pathPoints,
                        n.onTheWay = false,
                        n.playAnimation("adle", 0)
                }
                ))) : t != o && (this.node.setPosition(getRandomPositionByRoom(o)),
                    this.node.getComponent(GameStore).checkRoomID = o)
        }
    }
    back = function () {
        var o = this;
        this.onTheWay || (this.onTheWay = true,
            this.playAnimation("zou"),
            goWaitTween(this.node, (function () {
                o.playAnimation("adle", 0),
                    o.onTheWay = false
            }
            )))
    }
}


