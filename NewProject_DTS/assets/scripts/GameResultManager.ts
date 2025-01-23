import { _decorator, Component, Node, find, Label } from 'cc';
const { ccclass, property } = _decorator;
import { getRoomNameById } from "./CommonUtils";
import { AudioManager } from "./AudioManager";
import { LanguageData } from "./i18n_script/LanguageData";
@ccclass('GameResultManager')
export class GameResultManager extends Component {

    @property(Node)
    successNode: Node = null
    @property(Node)
    failNode: Node = null
    audioManagerComponent = void 0

    onLoad() {
        this.audioManagerComponent = find("Canvas/audio").getComponent(AudioManager)
    }
    showSuccess(e) {
        var t = this;
        this.successNode.getChildByName("tips").getComponent(Label).string = LanguageData.inst().t("GameResultManager1").replace("%d", Number(e.user_amount).toFixed(0)).replace("%d", Number(e.user_bonus).toFixed(2)),
            this.audioManagerComponent.playSuccess(),
            this.successNode.active = true,
            this.scheduleOnce((function () {
                t.successNode.active = false
            }
            ), 3)
    }
    showFail(e) {
        var t = this;
        this.failNode.getChildByName("tips").getComponent(Label).string = LanguageData.inst().t("GameResultManager2").replace("%s", getRoomNameById(e.killer_room)),
            this.audioManagerComponent.playFail(),
            this.failNode.active = true,
            this.scheduleOnce((function () {
                t.failNode.active = false
            }
            ), 3)
    }
}


