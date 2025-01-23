import { _decorator, Component, Label, Node, Prefab, instantiate, Sprite, SpriteFrame } from 'cc';
const { ccclass, property } = _decorator;
import { getRoomNameById } from "./CommonUtils";
import { LanguageData } from "./i18n_script/LanguageData";

@ccclass('RecordView')
export class RecordView extends Component {
    @property(Prefab)
    itemPrefab: Prefab = null!;
    @property([Label])
    KillRoomTimes: Label[] = []
    @property([Label])
    KillRoomName: Label[] = []
    @property([Label])
    KillRoom: Label[] = []
    @property(Label)
    allInvestment: Label = null!;
    @property(Label)
    allReward: Label = null!;
    @property(Node)
    content: Node = null!;
    back() {
        this.node.active = false
    }
    start() { }
    setData(data) {
        data = data.data
        for (let index = 0; index < this.KillRoomTimes.length; index++) {
            this.KillRoomTimes[index].string = data.bet_room_id[index];
        }
        for (let index = 0; index < this.KillRoomName.length; index++) {
            this.KillRoomName[index].string = getRoomNameById(data.killer_room_info[index].killer_room_id)
        }
        for (let index = 0; index < this.KillRoom.length; index++) {
            this.KillRoom[index].string = LanguageData.inst().t("recordPrefab6").replace("%d", Number(data.killer_room_info[index].round_id).toFixed(0))
        }
        this.allInvestment.string = data.total_bet
        this.allReward.string = data.total_reward
        this.content.removeAllChildren()
        if (!data.recent_record) {
            data.recent_record = []
        }
        for (let index = 0; index < data.recent_record.length; index++) {
            const item = instantiate(this.itemPrefab)
            item.getChildByName("gameid").getComponent(Label).string = LanguageData.inst().t("recordPrefab6").replace("%d", Number(data.recent_record[index].recent_issue_id).toFixed(0)) + ' ' + data.recent_record[index].recent_time
            item.getChildByName("MySelect").getComponent(Label).string = '「 ' + getRoomNameById(data.recent_record[index].recent_bet_room_id) + '」'
            item.getChildByName("KillerSelect").getComponent(Label).string = '「 ' + getRoomNameById(data.recent_record[index].recent_reward_room_id) + '」'
            item.getChildByName("Investment").getComponent(Label).string = data.recent_record[index].recent_bet_amount
            item.getChildByName("reward").getComponent(Label).string = data.recent_record[index].recent_reward_amount
            if (data.recent_record[index].recent_bet_room_id == data.recent_record[index].recent_reward_room_id) {
                item.getChildByName("winAndFail").getComponent(Label).string = LanguageData.inst().t("recordPrefab8")
            }
            else {
                item.getChildByName("winAndFail").getComponent(Label).string = LanguageData.inst().t("recordPrefab7")
            }
            this.content.addChild(item)
        }
    }

    update(deltaTime: number) {

    }
}


