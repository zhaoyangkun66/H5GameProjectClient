let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
    , o = require("../../../../../../Common/Define/ShareDefine")
    , a = require("../../../Game1051Define")
    , r = cc._decorator
    , s = r.ccclass
    , l = (r.property,
        function (t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.label_num = null,
                    e.roomMgr = null,
                    e.isUpdate = false,
                    e.addNum = 0,
                    e.playkey = -1,
                    e.IsEnd = false,
                    e.nowShow = false,
                    e.totalTime = 15e3,
                    e.WinSprList = [],
                    e.IsPlayStates = [],
                    e.StopBigWinID = [],
                    e.bgSpAnimNode = null,
                    e.Fm_animationId = null,
                    e.totalDuration = 15e3,
                    e.phaseDurationList = [.35 * e.totalDuration, .35 * e.totalDuration, .35 * e.totalDuration],
                    e.currentValue = 0,
                    e.startTime = 0,
                    e.phase1Target = 0,
                    e.phase2Target = 0,
                    e.big_winT = [],
                    e
            }
            return __extends(e, t),
                e.prototype.OnCreateInit = function () {
                    var t = this;
                    this.JS_Name = "UIGame1051Bigwin",
                        this.label_num = this.GetWndComponent("label_num", cc.Label),
                        this.RegEvent(o.GameCommonEventType.CloseBigWin, this.OnCloseSelfEvent),
                        this.WinSprList = [],
                        this.WinSprList[0] = this.GetWndNode("text_bigwin"),
                        this.WinSprList[1] = this.GetWndNode("text_meagwin"),
                        this.WinSprList[2] = this.GetWndNode("text_superwin"),
                        this.bgSpAnimNode = this.GetWndComponent("big_win", sp.Skeleton),
                        this.bgSpAnimNode.setCompleteListener(function (e) {
                            switch (e.animation.name) {
                                case a.Game1051BigWinName.bigwin_act:
                                    t.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.bigwin_loop, true);
                                    break;
                                case a.Game1051BigWinName.megawin_act:
                                    t.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.megawin_loop, true);
                                    break;
                                case a.Game1051BigWinName.supermegawin_act:
                                    t.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.supermegawin_loop, true)
                            }
                        })

                    this.big_winT[0].setCompleteListener(function (e) {
                        switch (e.animation.name) {
                            case a.Game1051BigWinName2.bigwin_act:
                                t.big_winT[0].setAnimation(0, a.Game1051BigWinName2.bigwin_loop, true);
                                break;
                            case a.Game1051BigWinName2.megawin_act:
                                t.big_winT[0].setAnimation(0, a.Game1051BigWinName2.megawin_loop, true);
                                break;
                            case a.Game1051BigWinName2.supermegawin_act:
                                t.big_winT[0].setAnimation(0, a.Game1051BigWinName2.supermegawin_loop, true)
                        }
                    })
                    this.big_winT[1].setCompleteListener(function (e) {
                        switch (e.animation.name) {
                            case a.Game1051BigWinName2.bigwin_act:
                                t.big_winT[1].setAnimation(0, a.Game1051BigWinName2.bigwin_loop, true);
                                break;
                            case a.Game1051BigWinName2.megawin_act:
                                t.big_winT[1].setAnimation(0, a.Game1051BigWinName2.megawin_loop, true);
                                break;
                            case a.Game1051BigWinName2.supermegawin_act:
                                t.big_winT[1].setAnimation(0, a.Game1051BigWinName2.supermegawin_loop, true)
                        }
                    })
                    this.big_winT[2].setCompleteListener(function (e) {
                        switch (e.animation.name) {
                            case a.Game1051BigWinName2.bigwin_act:
                                t.big_winT[2].setAnimation(0, a.Game1051BigWinName2.bigwin_loop, true);
                                break;
                            case a.Game1051BigWinName2.megawin_act:
                                t.big_winT[2].setAnimation(0, a.Game1051BigWinName2.megawin_loop, true);
                                break;
                            case a.Game1051BigWinName2.supermegawin_act:
                                t.big_winT[2].setAnimation(0, a.Game1051BigWinName2.supermegawin_loop, true)
                        }
                    })
                }
                ,
                e.prototype.OnShow = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e];
                    var i = app.LanguageManager().GetLocalLanguage(true)
                        , n = "En";
                    "pt-pt" == i ? n = "Pu" : "es-es" == i ? n = "Es" : "id-id" == i && (n = "Id"),
                        //this.bgSpAnimNode.setSkin(n),
                        this.roomMgr = app.RoomManager().GetCurHttpGameMgr(),
                        this.isUpdate = false,
                        this.IsPlayStates = [],
                        this.playkey = -1,
                        this.IsEnd = false,
                        this.old_gold = t[0],
                        this.new_gold = t[1],
                        this.nowShow = t[2],
                        this.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.bigwin_act, false),
                        this.big_winTSkeleton(0),
                        this.unscheduleAllCallbacks(),
                        this.phase1Target = 35 * this.roomMgr.BetResultData.bet_gold,
                        this.phase2Target = 50 * this.roomMgr.BetResultData.bet_gold,
                        this.updateInfo(),
                        app.ComUtil().PlayAnim(this.node, "bigwin_act_light"),
                        app.SoundManager().PlayBackMusic("game1051_win", true),
                        this.isUpdate = true,
                        this.currentValue = 0,
                        this.startTime = Date.now(),
                        this.schedule(this.updateValue)
                }
                ,
                e.prototype.updateValue = function () {
                    var t, e = Date.now() - this.startTime;
                    e < this.phaseDurationList[0] ? (t = e / this.phaseDurationList[0],
                        this.currentValue = t * this.phase1Target,
                        this.IsPlayStates[0] || (this.IsPlayStates[0] = 1,
                            app.SoundManager().PlaySound("game1051_bigt"))) : e < this.phaseDurationList[0] + this.phaseDurationList[1] ? (t = (e - this.phaseDurationList[0]) / this.phaseDurationList[1],
                                this.currentValue = this.phase1Target + t * (this.phase2Target - this.phase1Target),
                                this.IsPlayStates[1] || (this.IsPlayStates[1] = 1,
                                    app.SoundManager().PlaySound("game1051_bigt"))) : (t = Math.min((e - this.phaseDurationList[0] - this.phaseDurationList[1]) / this.phaseDurationList[2], 1),
                                        this.currentValue = this.phase2Target + t * (this.new_gold - this.phase2Target),
                                        this.IsPlayStates[2] || (this.IsPlayStates[2] = 1,
                                            app.SoundManager().PlaySound("game1051_bigt"))),
                        this.isUpdate && (this.old_gold = this.currentValue,
                            this.updateInfo()),
                        this.currentValue > this.new_gold && this.unschedule(this.updateValue)
                }
                ,
                e.prototype.big_winTSkeleton = function (indexbig_winT) {
                    for (let index = 0; index < this.big_winT.length; index++) {
                        if (index == indexbig_winT) {
                            this.big_winT[index].node.active = true
                        }
                        else {
                            this.big_winT[index].node.active = false
                        }
                    }
                    if (indexbig_winT == 0) {
                        this.big_winT[indexbig_winT].setAnimation(0, a.Game1051BigWinName2.bigwin_act, false)
                    }
                    else if (indexbig_winT == 1) {
                        this.big_winT[indexbig_winT].setAnimation(0, a.Game1051BigWinName2.megawin_act, false)
                    }
                    else if (indexbig_winT == 2) {
                        this.big_winT[indexbig_winT].setAnimation(0, a.Game1051BigWinName2.supermegawin_act, false)
                    }
                }
                ,
                e.prototype.getOddsKey = function () {
                    if (!this.roomMgr.BetResultData.ani_mul) {
                        this.roomMgr.BetResultData.ani_mul = [10, 50, 100]
                    }
                    var t = this.old_gold / this.roomMgr.BetResultData.bet_gold;
                    return t < this.roomMgr.BetResultData.ani_mul[1] && t >= 0 ? 0 : t < this.roomMgr.BetResultData.ani_mul[2] && t >= this.roomMgr.BetResultData.ani_mul[1] ? 1 : t >= this.roomMgr.BetResultData.ani_mul[2] ? 2 : void 0
                }
                ,
                e.prototype.updateInfo = function () {
                    var t = this;
                    this.old_gold >= this.new_gold && (this.old_gold = this.new_gold,
                        this.isUpdate && (this.isUpdate = false,
                            app.SoundManager().PlayBackMusic("game1051_final", false),
                            0 == this.playkey ? app.ComUtil().PlayAnim(this.node, "bigwin_act_light") : 1 == this.playkey ? app.ComUtil().PlayAnim(this.node, "megawin_act_light") : 2 == this.playkey && app.ComUtil().PlayAnim(this.node, "supermegawin_act_light"),
                            this.scheduleOnce(function () {
                                t.onCloseSend(),
                                    t.nowShow && t.CloseSelf()
                            }, 1))),
                        this.label_num.string = this.roomMgr.addThousandSeparator(this.old_gold);
                    var e = this.getOddsKey();
                    this.playkey != e && (this.playkey = e,
                        0 == this.playkey ? (this.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.bigwin_act, false), this.big_winTSkeleton(0)) : 1 == this.playkey ? (this.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.megawin_act, false), this.big_winTSkeleton(1)) : 2 == this.playkey && (this.bgSpAnimNode.setAnimation(0, a.Game1051BigWinName.supermegawin_act, false), this.big_winTSkeleton(2)))
                }
                ,
                e.prototype.stopUpdate = function () {
                    this.isUpdate ? (this.isUpdate = false,
                        this.old_gold = this.new_gold,
                        this.updateInfo()) : this.onCloseSend()
                }
                ,
                e.prototype.onCloseSend = function () {
                    app.ComUtil().PlayAnim(this.node, "bigwin_wait"),
                        this.IsEnd = true,
                        this.OnSendEndEvent(),
                        this.unscheduleAllCallbacks()
                }
                ,
                e.prototype.OnSendEndEvent = function () {
                    app.Client.OnEvent(o.GameCommonEventType.PlayBigWinEndEvent)
                }
                ,
                e.prototype.OnCloseSelfEvent = function () {
                    this.CloseSelf()
                }
                ,
                e.prototype.CloseSelf = function () {
                    this.CloseForm(),
                        this.playkey = -1,
                        this.unschedule(this.updateValue)
                }
                ,
                e.prototype.OnClick = function (t) {
                    "bigwin" == t && (this.IsEnd ? this.CloseSelf() : (this.IsEnd = true,
                        this.unscheduleAllCallbacks(),
                        this.stopUpdate(),
                        this.OnSendEndEvent()))
                }
                ,
                e.prototype.OnClose = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e];
                    for (var i = 0; i < this.StopBigWinID.length; i++) {
                        var n = this.StopBigWinID[i];
                        app.SoundManager().StopSoundByAudioID(n)
                    }
                    this.StopBigWinID = [],
                        app.SoundManager().PlayBackMusic("game1051_BGM", true)
                },
                __decorate([r.property([sp.Skeleton])], e.prototype, "big_winT", void 0),
                __decorate([s], e)
        }(n.default));
i.default = l,
    module.exports = i
