import { _decorator, Component, Label } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('QuantityManager')
export class QuantityManager extends Component {
    @property(Label)
    quantity: Label = null!;
    start() {
        this.quantity.string = "0"
    }
    updateNumber(t) {
        this.quantity.string != t && (this.quantity.string = t)
    }
}


