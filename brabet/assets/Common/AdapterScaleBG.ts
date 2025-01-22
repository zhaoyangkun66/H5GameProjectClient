// Learn TypeScript:
//  - https://docs.cocos.com/creator/2.4/manual/en/scripting/typescript.html
// Learn Attribute:
//  - https://docs.cocos.com/creator/2.4/manual/en/scripting/reference/attributes.html
// Learn life-cycle callbacks:
//  - https://docs.cocos.com/creator/2.4/manual/en/scripting/life-cycle-callbacks.html

const { ccclass, property } = cc._decorator;

@ccclass
export default class NewClass extends cc.Component {

    @property
    scaleInput: number = 0.6;

    // LIFE-CYCLE CALLBACKS:

    onLoad() {
        if (app.ComTool().DesktopPlatform()) {
            this.node.scale = this.scaleInput
        }
    }

    start() {

    }

    // update (dt) {}
}
