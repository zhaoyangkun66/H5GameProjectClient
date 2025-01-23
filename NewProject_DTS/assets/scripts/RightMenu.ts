import { _decorator, Component, Label } from 'cc';
const { ccclass, property } = _decorator;
import { LanguageData } from "./i18n_script/LanguageData";

@ccclass('RightMenu')
export class RightMenu extends Component {
    @property(Label)
    qsLabel: Label = null!;
    @property(Label)
    playerLabel: Label = null!;
    start() { }
    show() {
        this.node.active || (this.node.active = true)
    }
    hide() {
        this.node.active && (this.node.active = false)
    }
    toggle() {
        this.node.active = !this.node.active
    }
    updateQs(e) {
        this.qsLabel.string = e
    }
    updatePlayer(e, t) {
        this.playerLabel.string = e + "/" + t
    }
    updatePlayerWait() {
        this.playerLabel.string = LanguageData.inst().t("GameManager2")
    }
}


