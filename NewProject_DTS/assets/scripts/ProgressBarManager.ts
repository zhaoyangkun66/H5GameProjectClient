import { _decorator, Component, ProgressBar, director, Node, Label, view, ResolutionPolicy } from 'cc';
const { ccclass, property } = _decorator;
import { LanguageData } from "./i18n_script/LanguageData";
import { getBrowserValue } from "./CommonUtils";
import { global } from "./GlobalDef";
@ccclass('ProgressBarManager')
export class ProgressBarManager extends Component {
    @property(ProgressBar)
    progressBarView: ProgressBar = null!;
    @property(Label)
    progressBarLabel: Label = null!;
    @property(Node)
    openGameNode: Node = null!;
    onLoad = function () {
        let frameSize = view.getFrameSize();
        let rtFrame = frameSize.width / frameSize.height;
        let deFrame = 1334 / 750;
        if (rtFrame < deFrame) {
            view.setDesignResolutionSize(750, 1334, ResolutionPolicy.FIXED_WIDTH)
        } else {
            view.setDesignResolutionSize(750, 1334, ResolutionPolicy.FIXED_HEIGHT)
        }
// http://192.168.1.100:280/clientTelegram/dts/?game_uid=8100&token=14cae004cb7731177935eb00a9cc8236@10171638&language=es&member_account=10171638


        var self = this;
        this.progressBarView.progress = 0
        // this.openGameNode.on(Node.EventType.TOUCH_START, this.openGame, this),
        // language=PT
        var language = getBrowserValue("language") || "pt-pt";

        if (language == "PT") {
          //  language = "pt-pt"
           // global.GameTypeGlobal = 1
            language = "es_co"
            global.GameTypeGlobal = 2
        }
        else if (language == "es") {
            language = "es_co"
            global.GameTypeGlobal = 2
        }
        LanguageData.inst().loadConfig().then(function () {
            LanguageData.inst().selectLang(language);
            director.preloadScene("game", self._onProgress.bind(self), (function () {
                self.progressBarLabel.string = LanguageData.inst().t("ProgressBarManager2"),
                    director.loadScene("game")
            }
            ))
        }).catch(function (t) {

        });
    }
    _onProgress = function (e, r, o) {
        this.progressBarView.progress = e / r,
            this.progressBarLabel.string = LanguageData.inst().t("ProgressBarManager1") + (100 * this.progressBarView.progress).toFixed(2) + "%"
    }
    openGame = function () {
        director.loadScene("game")
    }
}


