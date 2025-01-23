import { _decorator, Component, Label, tween, v3 } from 'cc';
const { ccclass, property } = _decorator;
import { LanguageData } from "./i18n_script/LanguageData";

@ccclass('CountDown')
export class CountDown extends Component {
    @property(Label)
    timeLabel: Label = null!;
    show() {
        this.node.active || (this.node.active = true,
            tween(this.node).to(.6, {
                position: v3(180, this.node.position.y, 0)
            }).start())
    }
    hide() {
        var t = this;
        this.node.active && tween(this.node).to(.6, {
            position: v3(600, this.node.position.y, 0)
        }).call((function () {
            t.node.active = false
        }
        )).start()
    }
    updateCountDownTime(t) {
        this.timeLabel.string = LanguageData.inst().t("CountDown1").replace("%d", t)
    }
}


