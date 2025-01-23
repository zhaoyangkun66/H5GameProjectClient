import { _decorator, Component, Node } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('RuleMgr')
export class RuleMgr extends Component {
    back() {
        this.node.active = false
    }
    start() {

    }

    update(deltaTime: number) {

    }
}


