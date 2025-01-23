import { _decorator, Component, Label } from 'cc';
const { ccclass, property } = _decorator;
import { LanguageData } from "./i18n_script/LanguageData";

@ccclass('BalanceManager')
export class BalanceManager extends Component {
    updateBalance = function (n) {
        this.node.getComponent(Label).string = LanguageData.inst().t("BalanceManager1") + Number(n).toFixed(2)
    }
}


