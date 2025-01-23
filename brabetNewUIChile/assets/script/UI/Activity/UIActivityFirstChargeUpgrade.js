let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , ShareDefine = require("../../../Common/Define/ShareDefine")
    , TrackEventName = require("../../../Common/Define/TrackEventName")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.lasttime = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {

            }
            ,
            t.prototype.OnShow = function (data) {
                this.lasttime.string = ""
                var e = this;
                this.EndTime = app.GameConfigManager().GetGameConfig().FirstChargeUpgradeTimeAs //app.GameConfigManager().GetAsTime() + app.GameConfigManager().
                this.UpdateSeconds()
                this.unscheduleAllCallbacks()
                this.schedule(function () {
                    e.UpdateSeconds()
                }, 1)
            }
            ,
            t.prototype.OnInitView = function (e) {

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
            t.prototype.OnClick = function (e) {
                if ("btn_Deposit" == e) {
                    if (!app.UserManager().GetIsOfficialPopup2()) {
                        app.StoreManager().ShowStoreUI({
                            in_type: TrackEventName.default.PAGETRACK_EVENT_RECHARGE_ENTER
                        });
                    }

                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                app.FormManager().ShowNextQueueForm("hall")
            }
            ,
            __decorate([c(cc.Label)], t.prototype, "lasttime", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n