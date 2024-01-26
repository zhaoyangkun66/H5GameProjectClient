let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
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
                t.CashWheelOther = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_cashWheel, this.onGetCashWheel)
                this.RegEvent(i.GameEventDefine.open_cashWheel, this.onGetCashWheel)
                this.RegEvent(i.GameEventDefine.GET_cashWheelreset, this.onGetCashWheel)
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
                this.node.active = false
                // this.turntable.angle = 0
                if (!app.UserManager().getIsOfficialAccount()) {
                    this.CashWheelOther.active = false
                }
                else {
                    this.CashWheelOther.active = true
                }
            }
            ,
            t.prototype.onGetCashWheel = function (data) {
                // data.lastwheel = 1
                this.node.active = true
                // if (data.resultid == 1 || data.resultid == 2 || data.resultid == 3) {
                //     data.resultid = 7
                // }
                // else if (data.resultid == 4) {
                //     data.resultid = 1
                // }
                // else if (data.resultid == 5) {
                //     data.resultid = 6
                // }
                var e = this;
                if (!data.lasttime2) {
                    data.lasttime2 = app.GameConfigManager().GetAsTime() + data.lasttime
                }
                this.EndTime = data.lasttime2
                // this.UpdateSeconds(),
                this.unscheduleAllCallbacks()
                this.schedule(function () {
                    e.UpdateSeconds()
                }, 1)

                this.lastCashWheelNum.string = data.lastwheel
                this.lastCashWheelNum.node.active = true
                this.receivedCount.node.active = false
                let resultid = Number(data.resultid)
                let self = this
                //data.resultgold=1
                //resultid=1
                if (resultid >= 1 && resultid <= 8) {
                    if (data.resultgold == 0) {
                        resultid = 7
                    }
                    else if (data.resultgold >= 1 && data.resultgold <= 9) {
                        resultid = Math.random() > .5 ? 4 : 8
                    }
                    else if (data.resultgold >= 10 && data.resultgold <= 99) {
                        resultid = Math.random() > .5 ? 2 : 6
                    }
                    else if (data.resultgold >= 100 && data.resultgold <= 50000) {
                        resultid = Math.random() > .5 ? 1 : 5
                    }
                    else if (data.resultgold >= 50000) {
                        resultid = 3
                    }

                    this.btTurn.interactable = false

                    this.lastCashWheelNum.string = data.lastwheel
                    let zhuanjiao = (8 - resultid + 1) + 32;

                    let xuanzhuan = cc.rotateBy(5.0, this.turntable.angle % 360 + 360 + 45 * zhuanjiao);
                    //   let ddd = this.turntable.angle % 360 + 360
                    this.turntable.angle = this.turntable.angle % 360 + 360

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
                                // current2 = current2.toFixed(2)
                                self.receivedCount.string = "+" + app.ScoreUtil().toFixed(current2)
                                return start + (end - start) * t;
                            }
                        }).start();
                        self.btTurn.interactable = true

                        self.receivedGold.string = app.GameConfigManager().GetCurrency + " " + data.receivedGold
                        if (self.receivedGold.num < data.receivedGold) {
                            var obj = {};
                            obj.num = self.receivedGold.num;
                            self.receivedGold.num = data.receivedGold
                            self.receivedGold.string = obj.num;
                            cc.tween(obj).to(0.3, { num: data.receivedGold }, {
                                progress: (start, end, current, t) => {
                                    let current2 = start + (end - start) * t;
                                    self.receivedGold.string = app.GameConfigManager().GetCurrency + " " + app.ScoreUtil().toFixed(current2)
                                    return start + (end - start) * t;
                                }
                            }).start();
                        }
                        let needgold = data.totalGold - data.receivedGold
                        self.needgold.string = needgold
                        if (self.needgold.num > needgold) {
                            var obj = {};
                            obj.num = self.needgold.num;
                            self.needgold.num = needgold
                            self.needgold.string = obj.num;
                            cc.tween(obj).to(0.3, { num: needgold }, {
                                progress: (start, end, current, t) => {
                                    let current2 = start + (end - start) * t;
                                    self.needgold.string = app.ScoreUtil().toFixed(current2)
                                    return start + (end - start) * t;
                                }
                            }).start();
                        }
                        self.baifeibi.string = ((data.receivedGold / data.totalGold) * 100).toFixed(2) + "%"
                        self.sliderbaifeibi.progress = (data.receivedGold / data.totalGold)
                        self.CashWheelOther.active = true
                        self.data = data
                    });
                    let yici = cc.sequence(easeExponentialInOut, yanchi, funcall, cc.delayTime(2.0), cc.callFunc(function () {
                        if (data.lastwheel <= 0 || data.receivedGold >= data.totalGold) {
                            app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelWithdraw, self.data);
                        }
                        self.lastCashWheelNum.node.active = true
                        self.receivedCount.node.active = false
                    }));
                    this.turntable.runAction(yici);

                }
                else {
                    if (data.lastwheel == 0) {
                        this.CashWheelOther.active = true
                    }
                    this.receivedGold.num = 0
                    this.needgold.num = data.totalGold

                    this.receivedGold.string = app.GameConfigManager().GetCurrency + " " + data.receivedGold

                    if (self.receivedGold.num < data.receivedGold) {
                        var obj = {};
                        obj.num = self.receivedGold.num;
                        self.receivedGold.num = data.receivedGold
                        self.receivedGold.string = obj.num;
                        cc.tween(obj).to(0.3, { num: data.receivedGold }, {
                            progress: (start, end, current, t) => {
                                let current2 = start + (end - start) * t;
                                self.receivedGold.string = app.GameConfigManager().GetCurrency + " " + app.ScoreUtil().toFixed(current2)
                                return start + (end - start) * t;
                            }
                        }).start();
                    }
                    let needgold = data.totalGold - data.receivedGold
                    this.needgold.string = needgold
                    if (self.needgold.num > needgold) {
                        var obj = {};
                        obj.num = self.needgold.num;
                        self.needgold.num = needgold
                        self.needgold.string = obj.num;
                        cc.tween(obj).to(0.3, { num: needgold }, {
                            progress: (start, end, current, t) => {
                                let current2 = start + (end - start) * t;
                                self.needgold.string = app.ScoreUtil().toFixed(current2)
                                return start + (end - start) * t;
                            }
                        }).start();
                    }

                    this.baifeibi.string = ((data.receivedGold / data.totalGold) * 100).toFixed(2) + "%"
                    this.sliderbaifeibi.progress = (data.receivedGold / data.totalGold)


                    this.data = data
                }
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                if ("buttonShare" == e) {
                    if (!app.UserManager().getIsOfficialAccount()) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UILoginSign, 1);
                        return
                    }
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelShare);
                }
                else if ("btTurn" == e) {
                    let data =
                    {
                        "lastwheel": 0,                             //剩余几次转盘的机会
                        "receivedGold": 50000,                      //已经累计获得了多少转盘奖励
                        "totalGold": 50000,                         //一共需要获得多少奖励才算完成任务（结合receivedGold组成奖励完成进度）
                        "resultid": 0,                              //转盘奖励索引(1~5)(只有在opencashWheel消息中会返回值)
                        "resultgold": 232,                            //本次旋转获得多少奖励(只有在opencashWheel消息中会返回值)
                        "lasttime": 10,                           //活动结束剩余时间(剩余多少秒)
                        "userstate": 0                                //0未完成  1完成 2完成已提现
                    }
                    // this.onGetCashWheel(data)

                    if (this.data && this.data.receivedGold >= this.data.totalGold) {
                        if (!app.UserManager().getIsOfficialAccount()) {
                            app.FormManager().ShowForm(UINameDefine.UINameDefine.UILoginSign, 1);
                            return
                        }
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelWithdraw, this.data);
                    }
                    else if (this.data && this.data.lastwheel <= 0) {
                        if (!app.UserManager().getIsOfficialAccount()) {
                            app.FormManager().ShowForm(UINameDefine.UINameDefine.UILoginSign, 1);
                            return
                        }
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelShare);
                    }
                    else {
                        app.ActivityManager().RequestOpenCashWheel()
                    }
                }
                else if ("btn_Receive" == e) {
                    if (!app.UserManager().getIsOfficialAccount()) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UILoginSign, 1);
                        return
                    }
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelWithdraw, this.data);
                }
                else if ("btn_invited" == e) {
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UIPromoteMain);
                    this.CloseForm()
                }

            }
            ,
            t.prototype.UpdateSeconds = function () {
                if (this.EndTime > 0) {
                    var e = app.GameConfigManager().GetAsTime()
                        , t = Number(this.EndTime) - e;
                    if (t < 1) {
                        if (this.data.userstate != 1) {
                            if (app.UserManager().getIsOfficialAccount()) {
                                app.FormManager().ShowForm(UINameDefine.UINameDefine.UICashWheelRefresh, this.data);
                            }
                        }
                        return void this.unscheduleAllCallbacks();
                    }
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
            __decorate([c(cc.Node)], t.prototype, "CashWheelOther", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
