import { _decorator, Component, Node, find } from 'cc';
const { ccclass, property } = _decorator;
import { MyMonkey } from "./MyMonkey";
import { AudioManager } from "./AudioManager";
import { GameManager } from "./GameManager";
@ccclass('SelectRoom')
export class SelectRoom extends Component {
    audioManagerComponent = void 0
    myMonKeyNode = void 0
    gameManagerComponent = void 0
    onLoad() {
        this.audioManagerComponent = find("Canvas/audio").getComponent(AudioManager),
            this.gameManagerComponent = find("Canvas/content/player").getComponent(GameManager),
            this.node.on(Node.EventType.TOUCH_START, this.clickRoom, this)
    }
    clickRoom() {
        if (3 != this.gameManagerComponent.gameState && (this.myMonKeyNode = find("Canvas/content/player/myMonKey"),
            this.myMonKeyNode)) {
            this.myMonKeyNode.getComponent(MyMonkey).onTheWay;
            var o = this.node.name;
            this.checkoutRoom(),
                this.audioManagerComponent.playClickAudio(),
                this.myMonKeyNode.setSiblingIndex(9999),
                this.myMonKeyNode.getComponent(MyMonkey).goRoom(o),
                this.gameManagerComponent.checkoutRoomId = o,
                this.gameManagerComponent.joinRoomId && this.gameManagerComponent.join(0)
        }
    }
    checkoutRoom() {
        this.node.parent.children.forEach((function (o) {
            o.getChildByName("mask").active = false
        }
        )),
            this.node.getChildByName("mask").active = true
    }
}


