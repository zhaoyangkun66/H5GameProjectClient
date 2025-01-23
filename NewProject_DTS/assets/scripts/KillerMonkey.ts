import { _decorator, Component, dragonBones, find } from 'cc';
const { ccclass, property } = _decorator;
import { goRoomTween, goWaitTween } from "./CommonUtils";
import { GameStore } from "./GameStore";
import { AudioManager } from "./AudioManager";
@ccclass('KillerMonkey')
export class KillerMonkey extends Component {
    @property(AudioManager)
    audioManagerComponent: AudioManager = null!;
    @property(dragonBones.ArmatureDisplay)
    dragonBones: dragonBones.ArmatureDisplay = null!;
    onLoad = function () {
        this.audioManagerComponent = find("Canvas/audio").getComponent(AudioManager)
    }
    playAnimation = function (n, o) {
        void 0 === o && (o = 0),
            this.dragonBones && (this.dragonBones.timeScale = 1,
                this.dragonBones.playAnimation(n, o))
    }
    goRoom = function (n, o) {
        var e = this;
        void 0 === o && (o = null),
            this.node.active = true,
            "" == this.node.getComponent(GameStore).checkRoomID && (this.onTheWay = true,
                this.node.setSiblingIndex(9999),
                this.node.getComponent(GameStore).checkRoomID = n,
                this.playAnimation("zou"),
                goRoomTween(n, this.node, (function (n) {
                    e.onTheWay = false,
                        e.node.getComponent(GameStore).checkRoomPath = n.pathPoints,
                        e.playAnimation("adle"),
                        e.audioManagerComponent.playKnife(),
                        e.audioManagerComponent.playKilled(),
                        o && o()
                }
                )))
    }
    back = function () {
        var n = this;
        this.onTheWay = true,
            this.playAnimation("zou"),
            goWaitTween(this.node, (function () {
                n.onTheWay = false,
                    n.node.active = false
            }
            ))
    }
    update(deltaTime: number) {

    }
}


