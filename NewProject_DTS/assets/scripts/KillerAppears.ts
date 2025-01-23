import { _decorator, Component, tween, v3 } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('killerAppears')
export class killerAppears extends Component {
    showState = false;
    show() {
        var t = this;
        this.showState || (this.showState = true,
            this.node.active = true,
            tween(this.node).to(.7, {
                scale: v3(1.1, 1.1, 1)
            }).to(.7, {
                scale: v3(1, 1, 1)
            }).union().repeat(3).call((function () {
                t.hide()
            }
            )).start())
    }
    hide() {
        this.node.active = false
    }
    reset() {
        this.showState = false
    }
}


