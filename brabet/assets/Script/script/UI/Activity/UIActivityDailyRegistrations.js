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
            return t.img_ItemGold = [],
            t.img_ItemCheck = [],
                t.lbl = [],
                t.btn_Receive = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_DailyRegistrations, this.onGetDailyRegistrations)
            }
            ,
            t.prototype.OnShow = function (e) {

                this.node.active = false
                app.ActivityManager().RequestDailyRegistrations(0)

                // let data = {
                //     cumulativeDays: 3, //连续领取第几天
                //     isReceived: 0, //今天是否已领取 0未领取 1已领取
                //     receivedGold: 0, //已领取奖励
                //     recharge: 1, //今天充值
                //     bet: 2, //今天投注
                //     gold: 0, //领取金币大于0弹出领取奖励界面
                // }
                // this.onGetDailyRegistrations(data)
            }
            ,
            t.prototype.onGetDailyRegistrations = function (data) {
                this.data = data
                this.node.active = true
                this.lbl[0].string = app.i18n.t("UI.UIActivityDailyRegistrations1") + app.ScoreUtil().toFixed(data.cumulativeDays) + app.i18n.t("UI.UIActivityDailyRegistrations2")
                this.lbl[1].string = app.i18n.t("UI.UIActivityDailyRegistrations3") + app.ScoreUtil().toFixed(data.receivedGold)
                this.lbl[2].string = app.i18n.t("UI.UIActivityDailyRegistrations4") + app.ScoreUtil().toFixed(data.recharge) + "/60000"
                this.lbl[3].string = app.i18n.t("UI.UIActivityDailyRegistrations5") + app.ScoreUtil().toFixed(data.bet) + "/600000"

                if (data.gold > 0) {
                    app.GoldRewardManager().FormGoldReward({
                        gold: data.gold,
                        source: app.i18n.t("UI.MakeMoney_4_Promotion_3")
                    })
                }
                if (this.data.isReceived == 0) {
                    this.btn_Receive.interactable = true
                }
                else {
                    this.btn_Receive.interactable = false
                }
                
                for (let index = 0; index < this.img_ItemCheck.length; index++) {
                    this.img_ItemCheck[index].active = false
                    this.img_ItemGold[index].active = true
                }
                for (let index = 0; index < data.cumulativeDays; index++) {
                    this.img_ItemCheck[index].active = true
                    this.img_ItemGold[index].active = false
                }
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
                app.ActivityManager().RequestDailyRegistrations(1)
                // }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c([cc.Node])], t.prototype, "img_ItemGold", undefined),
            __decorate([c([cc.Node])], t.prototype, "img_ItemCheck", undefined),
            __decorate([c([cc.RichText])], t.prototype, "lbl", undefined),
            __decorate([c(cc.Button)], t.prototype, "btn_Receive", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
