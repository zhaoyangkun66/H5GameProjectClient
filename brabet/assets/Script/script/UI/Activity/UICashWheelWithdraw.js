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
            return t.btn_copy = null,
                t.btn_Withdraw = null,
                t.agree3 = null,
                t.receivedGold = null,
                t.needgold = null,
                t.totalGold = null,
                t.lasttime = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {

            }
            ,
            t.prototype.OnShow = function (data) {
                this.data = data

                var e = this;
                this.EndTime = app.GameConfigManager().GetAsTime() + data.lasttime
                this.UpdateSeconds(),
                    this.unscheduleAllCallbacks()
                this.schedule(function () {
                    e.UpdateSeconds()
                }, 1)

                //  this.receivedGold.string = app.GameConfigManager().GetCurrency + " " + data.receivedGold
                this.needgold.string = app.ScoreUtil().toFixed(data.totalGold - data.receivedGold)
                this.totalGold.string = app.ScoreUtil().toFixed(data.totalGold) + " " + app.GameConfigManager().GetCurrency
                if (data.receivedGold >= data.totalGold) {
                    this.agree3.isChecked = true
                    this.btn_copy.active = false
                    this.btn_Withdraw.active = true
                }
                else {
                    this.agree3.isChecked = false
                    this.btn_copy.active = true
                    this.btn_Withdraw.active = false
                }
                let self = this
                var obj = {};
                obj.num = 0;
                self.receivedGold.string = obj.num;
                cc.tween(obj).to(0.5, { num: data.receivedGold }, {
                    progress: (start, end, current, t) => {
                        let current2 = start + (end - start) * t;
                        self.receivedGold.string = app.GameConfigManager().GetCurrency + " " + app.ScoreUtil().toFixed(current2)
                        return start + (end - start) * t;
                    }
                }).start();
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {

                if ("btn_Withdraw" == e) {
                    app.StoreManager().ShowStoreUI({
                        ShowType: ShareDefine.WIN_TYPE.CASHOUT,
                        AgentTx: true,
                        in_type: TrackEventName.default.PAGETRACK_EVENT_WITHDRAW_SHARE
                    })
                }
                else if ("btn_copy" == e) {
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelShare);
                }

            }
            ,
            t.prototype.UpdateSeconds = function () {
                if (this.EndTime > 0) {
                    var e = app.GameConfigManager().GetAsTime()
                        , t = Number(this.EndTime) - e;
                    if (t < 1)
                        return void this.unscheduleAllCallbacks();
                    this.lasttime.string = app.TimeUtil().FormatTimeWithNum(t)
                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Node)], t.prototype, "btn_copy", undefined),
            __decorate([c(cc.Node)], t.prototype, "btn_Withdraw", undefined),
            __decorate([c(cc.Toggle)], t.prototype, "agree3", undefined),
            __decorate([c(cc.Label)], t.prototype, "receivedGold", undefined),
            __decorate([c(cc.Label)], t.prototype, "needgold", undefined),
            __decorate([c(cc.Label)], t.prototype, "totalGold", undefined),
            __decorate([c(cc.Label)], t.prototype, "lasttime", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
