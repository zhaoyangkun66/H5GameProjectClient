let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , HttpServerDefine = require("../../../../Common/Define/HttpServerDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.turntable = null,
                t.lastCashWheelNum = null,
                t.receivedCount = null,
                t.btTurn = null,
                t.UICashWheelWithdrawRecord = null,
                t.receivedGold = null,
                t.needgold = null,
                t.baifeibi = null,
                t.lasttime = null,
                t.sliderbaifeibi = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_cashWheel, this.onGetCashWheel)
                this.RegEvent(i.GameEventDefine.open_cashWheel, this.onGetCashWheel)
            }
            ,
            t.prototype.OnShow = function (e) {

                this.UICashWheelWithdrawRecord.getComponent(UICashWheelWithdrawRecord.default).setOldRoundsData()
                this.UICashWheelWithdrawRecord.getComponent(UICashWheelWithdrawRecord.default).setIsRequest(false)
                this.UICashWheelWithdrawRecord.getComponent(UICashWheelWithdrawRecord.default).GetInitRequest()
                //  this.node.active = false
                app.ActivityManager().RequestCashWheel()
                // app.HttpServerManager().SendHttpPack(HttpServerDefine.HttpAPI.GET_cashWheel, {
                //     token: app.UserManager().GetUserInfo.token
                // })

            }
            ,
            t.prototype.onGetCashWheel = function (data) {
                this.data = data

                if (data.resultid == 1 || data.resultid == 2 || data.resultid == 3) {
                    data.resultid = 7
                }
                else if (data.resultid == 4) {
                    data.resultid = 1
                }
                else if (data.resultid == 5) {
                    data.resultid = 6
                }

                var e = this;
                this.EndTime = app.GameConfigManager().GetAsTime() + data.lasttime
                this.UpdateSeconds(),
                    this.unscheduleAllCallbacks()
                this.schedule(function () {
                    e.UpdateSeconds()
                }, 1)

                this.lastCashWheelNum.string = data.lastwheel
                this.lastCashWheelNum.node.active = true
                this.receivedCount.node.active = false
                let resultid = Number(data.resultid)
                if (resultid >= 1 && resultid <= 8) {
                    let self = this
                    this.btTurn.interactable = false

                    this.lastCashWheelNum.string = data.lastwheel
                    let zhuanjiao = (8 - resultid + 1) + 32;
                    let xuanzhuan = cc.rotateBy(5.0, 45 * zhuanjiao);
                    let easeExponentialInOut = xuanzhuan.easing(cc.easeExponentialInOut())
                    let yanchi = cc.delayTime(1.0);
                    let funcall = cc.callFunc(function () {

                        self.lastCashWheelNum.node.active = false
                        self.receivedCount.node.active = true

                        var obj = {};
                        obj.num = 0;
                        self.receivedCount.string = obj.num;
                        cc.tween(obj).to(1, { num: data.resultgold }, {
                            progress: (start, end, current, t) => {
                                let current2 = start + (end - start) * t;
                                current2 = current2.toFixed(2)
                                self.receivedCount.string = "+" + current2
                                return start + (end - start) * t;
                            }
                        }).start();
                        self.btTurn.interactable = true

                        self.receivedGold.string = app.GameConfigManager().GetCurrency + " " + data.receivedGold
                        self.needgold.string = app.ScoreUtil().toFixed(data.totalGold - data.receivedGold)
                        self.baifeibi.string = ((data.receivedGold / data.totalGold) * 100).toFixed(2) + "%"
                        self.sliderbaifeibi.progress = (data.receivedGold / data.totalGold)
                    });
                    let yici = cc.sequence(easeExponentialInOut, yanchi, funcall);
                    this.turntable.angle = 0
                    this.turntable.runAction(yici);
                }
                else {
                    this.receivedGold.string = app.GameConfigManager().GetCurrency + " " + data.receivedGold
                    this.needgold.string = app.ScoreUtil().toFixed(data.totalGold - data.receivedGold)
                    this.baifeibi.string = ((data.receivedGold / data.totalGold) * 100).toFixed(2) + "%"
                    this.sliderbaifeibi.progress = (data.receivedGold / data.totalGold)
                }
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {

                if ("buttonShare" == e) {
                    app.NativeMgr().copyToClipBoard(window.location.origin + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid)
                }
                else if ("btTurn" == e) {
                    // app.ActivityManager().RequestOpenCashWheel()
                    let data =
                    {
                        "lastwheel": 0,                             //剩余几次转盘的机会
                        "receivedGold": 47923,                      //已经累计获得了多少转盘奖励
                        "totalGold": 50000,                         //一共需要获得多少奖励才算完成任务（结合receivedGold组成奖励完成进度）
                        "resultid": 5,                              //转盘奖励索引(1~5)(只有在opencashWheel消息中会返回值)
                        "resultgold": 232,                            //本次旋转获得多少奖励(只有在opencashWheel消息中会返回值)
                        "lasttime": 121765                          //活动结束剩余时间(剩余多少秒)
                    }
                    this.onGetCashWheel(data)



                    // if (this.data.canReceive == 0) {
                    //     app.SysNotifyManager().ShowToast("UI.UIStoreAndCashCompletethe")
                    // }
                    // else {

                    // }
                    // if (this.data) {
                    //     if (this.data.lLastNorSignNum == 0) {
                    //         UIManager.openTipEffect("今日免费次数已用完，请明日再来！")
                    //         return;
                    //     }
                    // }
                    // appFacade.retrieveProxy('GameToolProxy').RequestSingUpState(1)
                }
                else if ("btn_Receive" == e) {
                    app.NativeMgr().copyToClipBoard(window.location.origin + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid)
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
            __decorate([c(cc.Node)], t.prototype, "turntable", undefined),
            __decorate([c(cc.Label)], t.prototype, "lastCashWheelNum", undefined),
            __decorate([c(cc.Label)], t.prototype, "receivedCount", undefined),
            __decorate([c(cc.Button)], t.prototype, "btTurn", undefined),
            __decorate([c(cc.Node)], t.prototype, "UICashWheelWithdrawRecord", undefined),
            __decorate([c(cc.Label)], t.prototype, "receivedGold", undefined),
            __decorate([c(cc.Label)], t.prototype, "needgold", undefined),
            __decorate([c(cc.Label)], t.prototype, "baifeibi", undefined),
            __decorate([c(cc.Label)], t.prototype, "lasttime", undefined),
            __decorate([c(cc.Slider)], t.prototype, "sliderbaifeibi", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
