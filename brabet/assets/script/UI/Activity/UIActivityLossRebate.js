let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.imgFrame_ReemBolso = [],
                t.img_ReemBolso = null,
                t.lbl_FL = null,
                t.lbl_tz = null,
                t.lbl_need = null,
                t.lbl_vip = null,
                t.lbl_vip2 = null,
                t.lbl_time1 = null,
                t.lbl_time2 = null,
                t.lbl_flsl = null,
                t.progressBar = null,
                t.btn_Receive = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_LossRebate, this.onGetLossRebate)
                this.RegEvent(i.GameEventDefine.GET_LossRebateReceive, this.onGetLossRebateReceive)
            }
            ,
            t.prototype.OnShow = function (e) {
                app.ActivityManager().RequestLossRebate()
            }
            ,
            t.prototype.onGetLossRebate = function (data) {

                if (data.vip < 1) {
                    data.vip = 1
                }
                if (data.vip > 10) {
                    data.vip = 10
                }
                let ReemBolso = [13, 14, 15, 16, 17, 18, 19, 20, 21, 25]
                this.lbl_FL.string = 'ReemBolso ' + ReemBolso[data.vip - 1] + '%'
                this.lbl_tz.string = data.bet
                this.lbl_vip.string = data.vip
                this.lbl_vip2.string = 'VIP' + data.vip
                this.lbl_need.string = (data.vipExperienceMax - data.vipExperience) + ' apuestas a'
                this.progressBar.progress = data.vipExperience / data.vipExperienceMax
                this.img_ReemBolso.spriteFrame = this.imgFrame_ReemBolso[data.vip - 1]
                this.lbl_flsl.string = 'Vas a ganar ' + data.receiveGold + ' COP en juego de cashback esta semana.'
                this.lbl_time1.string = 'periodo ' + data.begin_timeAccumulated + '~' + data.end_timeAccumulated
                this.lbl_time2.string = 'tiempo de reclamo ' + data.begin_timeGet + '~' + data.end_timeGet
                if (data.receiveState == 0) {
                    this.btn_Receive.interactable = false
                }
                else {
                    this.btn_Receive.interactable = true
                }
            }
            ,
            t.prototype.onGetLossRebateReceive = function (data) {
                app.GoldRewardManager().FormGoldReward({
                    gold: data.gold,
                    source: app.i18n.t("UI_Reward")
                })
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                // if (this.data.canReceive == 0) {
                //     app.SysNotifyManager().ShowToast("UI.UIStoreAndCashCompletethe")
                // }
                // else {
                app.ActivityManager().RequestLossRebateReceive()
                // }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c([cc.SpriteFrame])], t.prototype, "imgFrame_ReemBolso", undefined),
            __decorate([c(cc.Sprite)], t.prototype, "img_ReemBolso", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_FL", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_tz", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_need", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_vip", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_vip2", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_time1", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_time2", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_flsl", undefined),
            __decorate([c(cc.ProgressBar)], t.prototype, "progressBar", undefined),
            __decorate([c(cc.Button)], t.prototype, "btn_Receive", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
