let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.spinBgOut = null,
                t.spinBgIn = null,
                t.btTurn = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.WithdrawalCoupon_CashWheel, this.onGetCashWheel)
            }
            ,
            t.prototype.OnShow = function (e) {
                // this.node.active = false

                // this.nodeBG.opacity = 0
                // this.turntable.angle = 0
            }
            ,
            t.prototype.onGetCashWheel = function (data) {
                //this.node.active = true
                let resultid = 1
                let self = this

                {
                    if (data.resultSaldo <= 2000) {
                        resultid = 1
                    }
                    else if (data.resultSaldo <= 3000) {
                        resultid = Math.random() > .5 ? 2 : 7
                    }
                    else if (data.resultSaldo <= 5000) {
                        resultid = Math.random() > .5 ? 3 : 8
                    }
                    else if (data.resultSaldo <= 10000) {
                        resultid = Math.random() > .5 ? 4 : 9
                    }
                    else if (data.resultSaldo <= 20000) {
                        resultid = Math.random() > .5 ? 5 : 10
                    }
                    else if (data.resultSaldo <= 100000) {
                        resultid = 6
                    }


                    this.btTurn.interactable = false

                    let zhuanjiao = (10 - resultid + 1) + 40;

                    let xuanzhuan = cc.rotateBy(5.0, this.spinBgOut.angle % 360 + 360 + 36 * zhuanjiao);
                    //   let ddd = this.turntable.angle % 360 + 360
                    this.spinBgOut.angle = this.spinBgOut.angle % 360 + 360

                    let easeExponentialInOut = xuanzhuan.easing(cc.easeExponentialInOut())
                    let yanchi = cc.delayTime(1.0);
                    let funcall = cc.callFunc(function () {
                    });
                    let yici = cc.sequence(easeExponentialInOut, yanchi, funcall);
                    this.spinBgOut.runAction(yici);
                }
                {
                    if (data.resultgold <= 2000) {
                        resultid = 1
                    }
                    else if (data.resultgold <= 5000) {
                        resultid = Math.random() > .5 ?5 : 10
                    }
                    else if (data.resultgold <= 8000) {
                        resultid = Math.random() > .5 ? 4 : 9
                    }
                    else if (data.resultgold <= 20000) {
                        resultid = Math.random() > .5 ? 3 : 8 
                    }
                    else if (data.resultgold <= 50000) {
                        resultid = Math.random() > .5 ? 2 : 7 
                    }
                    else if (data.resultgold <= 200000) {
                        resultid = 6
                    }

                    this.btTurn.interactable = false

                    let zhuanjiao = (10 - resultid + 1) + 40;

                    let xuanzhuan = cc.rotateBy(5.0, this.spinBgIn.angle % 360 + 360 - 36 * zhuanjiao);
                    //   let ddd = this.turntable.angle % 360 + 360
                    this.spinBgIn.angle = this.spinBgIn.angle % 360 + 360

                    let easeExponentialInOut = xuanzhuan.easing(cc.easeExponentialInOut())
                    let yanchi = cc.delayTime(1.0);
                    let funcall = cc.callFunc(function () {
                        self.btTurn.interactable = true
                        self.data = data
                        app.UserManager().RequstUserWallet()
                    });
                    let yici = cc.sequence(easeExponentialInOut, yanchi, funcall);
                    this.spinBgIn.runAction(yici);
                }

            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                if ("btTurn" == e) {
                    app.ActivityManager().WithdrawalCoupon_CashWheel()

                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Node)], t.prototype, "spinBgOut", undefined),
            __decorate([c(cc.Node)], t.prototype, "spinBgIn", undefined),
            __decorate([c(cc.Button)], t.prototype, "btTurn", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
