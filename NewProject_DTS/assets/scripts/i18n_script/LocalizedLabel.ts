import { _decorator, Component, Node, Label, RichText, isValid } from 'cc';
const { ccclass, property, type } = _decorator;
import { LanguageData } from "./LanguageData";
@ccclass('LocalizedLabel')
export class LocalizedLabel extends Component {
    @property
    dataID = "";
    @property
    _dataID = "";
    _debouncedUpdateLabel = null;
    label = null;
    opt = null;
    onLoad() {
        this.fetchRender()
    }
    onEnable() {
        this.fetchRender()
    }
    fetchRender() {
        var e = this.getComponent(Label) || this.getComponent(RichText);
        if (e)
            return this.label = e,
                void this.updateLabel()
    }
    updateLabel() {
        if (this.label && isValid(this.label)) {
            var e = LanguageData.inst().t(this.dataID, this.opt);
            e && "" != e && (this.label.string = e)
        }
    }
    setT(e, t) {
        this.opt = t,
            this.dataID = e,
            this.updateLabel()
    }
    // get dataID() {
    //     return this._dataID
    // }

    // set dataID(value: string) {
    //     this._dataID !== value && (this._dataID = value,
    //         this.updateLabel())
    // }
}



