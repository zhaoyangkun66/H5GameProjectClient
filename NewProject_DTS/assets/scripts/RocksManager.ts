import { _decorator, Component, Label, tween, v3 } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('RocksManager')
export class RocksManager extends Component {
    @property(Label)
    rocksLabel: Label = null!;
    start() {
        this.rocksLabel.string = "0"
    }
    updateRocksNumber = function (e) {
        this.rocksLabel.string != e && (this.rocksLabel.string = e + "",
            tween(this.node.getChildByName("rocks")).to(.2, {
                scale: v3(1.1, 1.1, 1)
            }).to(.2, {
                scale: v3(1, 1, 1)
            }).start())
    }
}


