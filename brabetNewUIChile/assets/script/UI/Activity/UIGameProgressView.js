let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , ShareDefine = require("../../../Common/Define/ShareDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , TrackEventName = require("../../../Common/Define/TrackEventName")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.gameProgressNode_progressBarLabel = null,
                t.gameProgressNode_progressBar = null,
                t.gameProgressNode_progressBarGTH = null,
                t.gameProgressNode_gameProgressGet = null,
                t.gameProgressNode_gameProgressGetLabel = null,
                t.gameProgressNode_gameProgressGetDesfeito = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.HtmlGameProgress, this.OnHtmlGameProgress)
            }
            ,
            t.prototype.OnShow = function (data) {
                if (!data) {
                    app.ExternGameManager().RequestHtmlGameProgressHall(0);
                    this.gameProgressNode_progressBar.node.parent.active = false
                }
                else {
                    this.OnHtmlGameProgress(data)
                }
            },
            t.prototype.OnHtmlGameProgress = function (data) {
                this.gameProgressNode_progressBar.node.parent.active = true
                data.betGold2 = data.betGold % data.needBetGold
                this.gameProgressNode_progressBarLabel.string = data.betGold2.toFixed(2) + "/" + data.needBetGold
                this.gameProgressNode_progressBar.progress = data.betGold2 / data.needBetGold
                if (data.betGold >= data.needBetGold) {//data.receiveGold > 0 暂时
                    this.gameProgressNode_progressBarGTH.active = true
                    this.gameProgressNode_gameProgressGet.interactable = true
                    if (GameTypeGlobal == 3) {
                        this.gameProgressNode_gameProgressGetLabel.string = "$ " + data.receiveGold
                    }
                    else {
                        this.gameProgressNode_gameProgressGetLabel.string = app.GameConfigManager().GetCurrency + " " + data.receiveGold
                    }
                    this.gameProgressNode_gameProgressGetLabel.node.active = true
                    this.gameProgressNode_gameProgressGetDesfeito.active = false
                }
                else {
                    this.gameProgressNode_progressBarGTH.active = false
                    this.gameProgressNode_gameProgressGet.interactable = false
                    this.gameProgressNode_gameProgressGetLabel.node.active = false
                    this.gameProgressNode_gameProgressGetDesfeito.active = true
                }
            }
            ,
            t.prototype.OnInitView = function (e) {


            }
            ,
            t.prototype.OnClick = function (e) {
                if ("gameProgressGet" == e) {
                    app.ExternGameManager().RequestHtmlGameProgressHall(1);
                }

            }
            // ,
            // t.prototype.onCashWheelwithdraw = function (e) {
            //     if (GameTypeGlobal == 3) {
            //         app.GoldRewardManager().FormGoldReward({
            //             gold: e.gold,
            //             source: app.i18n.t("UI_Balance")
            //         })
            //     }
            //     else {
            //         app.GoldRewardManager().FormGoldReward({
            //             gold: e.gold,
            //             source: app.i18n.t("UI_Reward")
            //         })
            //     }
            // }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Label)], t.prototype, "gameProgressNode_progressBarLabel", undefined),
            __decorate([c(cc.ProgressBar)], t.prototype, "gameProgressNode_progressBar", undefined),
            __decorate([c(cc.Node)], t.prototype, "gameProgressNode_progressBarGTH", undefined),
            __decorate([c(cc.Button)], t.prototype, "gameProgressNode_gameProgressGet", undefined),
            __decorate([c(cc.Label)], t.prototype, "gameProgressNode_gameProgressGetLabel", undefined),
            __decorate([c(cc.Node)], t.prototype, "gameProgressNode_gameProgressGetDesfeito", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n