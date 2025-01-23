import { _decorator, Component, tween, v3 } from 'cc';
const { ccclass, property } = _decorator;
import { GameStore } from "./GameStore";

@ccclass('DoorManager')
export class DoorManager extends Component {
    start() { }
    closeDoor(o = 0) {
        var t = .7
            , e = "door" + o;
        (o ? [this.node.getChildByName(e)] : this.node.children).forEach((function (o) {
            o.getComponent(GameStore).DoorState && (o.getComponent(GameStore).DoorState = false,
                "door0" == o.name && (tween(o.getChildByName("left")).by(t, {
                    position: v3(90, 0, 0)
                }).start(),
                    tween(o.getChildByName("right")).by(t, {
                        position: v3(-90, 0, 0)
                    }).start()),
                "door1" == o.name && tween(o.children[0]).by(t, {
                    position: v3(60, 0, 0)
                }).start(),
                -1 != ["door4", "door6", "door7"].indexOf(o.name) && tween(o.children[0]).by(t, {
                    position: v3(0, 40, 0)
                }).start(),
                -1 != ["door2", "door3", "door5", "door8"].indexOf(o.name) && (tween(o.getChildByName("left")).by(t, {
                    position: v3(48, 0, 0)
                }).start(),
                    tween(o.getChildByName("right")).by(t, {
                        position: v3(-48, 0, 0)
                    }).start()))
        }
        ))
    }
    openDoor(o = 0) {
        var t = .7
            , e = "door" + o;
        (o ? [this.node.getChildByName(e)] : this.node.children).forEach((function (o) {
            o.getComponent(GameStore).DoorState || (o.getComponent(GameStore).DoorState = true,
                "door0" == o.name && (tween(o.getChildByName("left")).by(t, {
                    position: v3(-90, 0, 0)
                }).start(),
                    tween(o.getChildByName("right")).by(t, {
                        position: v3(90, 0, 0)
                    }).start()),
                "door1" == o.name && tween(o.children[0]).by(t, {
                    position: v3(-60, 0, 0)
                }).start(),
                -1 != ["door4", "door6", "door7"].indexOf(o.name) && tween(o.children[0]).by(t, {
                    position: v3(0, -40, 0)
                }).start(),
                -1 != ["door2", "door3", "door5", "door8"].indexOf(o.name) && (tween(o.getChildByName("left")).by(t, {
                    position: v3(-48, 0, 0)
                }).start(),
                    tween(o.getChildByName("right")).by(t, {
                        position: v3(48, 0, 0)
                    }).start()))
        }
        ))
    }
}


