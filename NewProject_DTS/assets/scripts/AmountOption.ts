import { _decorator, Prefab, UITransform, Graphics, Color, instantiate, Label, Node, Component } from 'cc';
const { ccclass, property } = _decorator;
import { SubmitBtn } from "./SubmitBtn";
import { GameManager } from "./GameManager";

@ccclass('AmountOption')
export class AmountOption extends Component {
    @property(Prefab)
    amountOptionPrefab: Prefab = null!;
    @property(SubmitBtn)
    submitBtnComponent: SubmitBtn = null!;
    @property(GameManager)
    gameManagerComponent: GameManager = null!;
    public rectHeight = void 0;
    public optionSize = void 0;
    onLoad() {
        this.optionSize = this.amountOptionPrefab.data.getComponent(UITransform);
        var t = this.gameManagerComponent.amountOption;
        this.rectHeight = this.optionSize.height * t.length + 20,
            this.drawRoundedRect(),
            this.addAmountOptions(t)
    }
    drawRoundedRect() {
        var t = this.node.getComponent(Graphics);
        t.clear(),
            t.fillColor = Color.WHITE,
            t.roundRect(0, 0, 125, this.rectHeight, 10),
            t.fill()
    }
    addAmountOptions(t) {
        var n = this
            , e = this.optionSize.width / 2
            , o = this.rectHeight - this.optionSize.height / 2 - 10;
        t.forEach((function (t, i) {
            var r = instantiate(n.amountOptionPrefab);
            r.getChildByName("amount").getComponent(Label).string = t.toString(),
                r.setPosition(e, o - i * n.optionSize.height),
                n.node.addChild(r),
                r.on(Node.EventType.TOUCH_START, n.checkPrice, n)
        }
        ))
    }
    checkPrice(t) {
        var n = t.target.getChildByName("amount").getComponent(Label).string;
        this.gameManagerComponent.setCheckoutAmount(Number(n)),
            this.gameManagerComponent.toggleCheckPrice()
    }
    start() {

    }

    update(deltaTime: number) {

    }
}


