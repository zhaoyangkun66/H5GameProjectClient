import { _decorator, Component, Node } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('GameStore')
export class GameStore extends Component {
    @property
    checkRoomID = "";
    @property
    checkRoomPath = null;
    @property
    DoorState = true;
    start() {

    }

    update(deltaTime: number) {

    }
}


