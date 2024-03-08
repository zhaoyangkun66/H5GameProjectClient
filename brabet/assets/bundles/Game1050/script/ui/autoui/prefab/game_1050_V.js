let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Bundle/BundleConfig")
    , o = require("../../../../../../Common/Bundle/BundleManager")
    , a = require("../../../../../../Common/Bundle/EventDefine")
    , r = require("../../../../../../Common/Define/GameEventDefine")
    , s = require("../../../../../../Common/Define/ShareDefine")
    , l = require("../../../../../../Common/Define/UINameDefine")
    , p = require("../../../../../../script/common_game/LightningEffect")
    , d = require("../../../../../../script/common_hall/GameBaseHttpForm")
    , h = require("../../../Game1050Define")
    , m = require("../../autoui/prefab/auto_Game_1050_V")
    , c = cc._decorator
    , u = c.ccclass
    , g = c.menu
    , _ = (c.property,
        function (t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.ui = null,
                    e.roomMgr = null,
                    e.HDSprStrArr = [],
                    e.SpineStrArr = [],
                    e.BlurSprStrArr = [],
                    e.AwardReplaceSpr = [],
                    e.AwardLineArr = [],
                    e.Award9AnimSpr = [],
                    e.Award9AnimArray = [],
                    e.LineParentNode = null,
                    e.EndSprNodeList = [],
                    e.EndSprNodeList2 = [],
                    e.RandomLitsNum = [],
                    e.starToTopRedList = [],
                    e.StartPlaySwtich = false,
                    e.AwardNdoeAnim = null,
                    e.TurboBtn = null,
                    e.lbl_Usergold = null,
                    e.Node_Tips = null,
                    e.PandaDragonbones = null,
                    e.PropHintPosList = [],
                    e.autoStopData = null,
                    e.betType = 1,
                    e.isAutoIng = false,
                    e.AutoNumLabel = null,
                    e.Node_AutoStart = null,
                    e.ReplayLuckPropSwitch = false,
                    e.ReplayLuckPropList = [],
                    e.UpdatePlayIdx = -1,
                    e.node_Score = null,
                    e.ScorePosList = null,
                    e.AllPropList = [],
                    e.OutlineTipsSF = [],
                    e.TipsBg_SF = [],
                    e.node_10XScore = null,
                    e.lblWinGold = null,
                    e.StartSprClickList = [],
                    e.AllAnimSpeed = 1,
                    e.IsSucResult = false,
                    e.IsStopSuc = false,
                    e.BtnCanStop = false,
                    e.IsResend = false,
                    e.settingNode = null,
                    e.IsLongTime = false,
                    e.nodeOperate = null,
                    e.NodeSwitchIng = false,
                    e.spConfig = null,
                    e.BtnMinus = null,
                    e.BtnAdd = null,
                    e.BtnAuto = null,
                    e.BtnMenu = null,
                    e.bgGoldNode = null,
                    e.PandaLuckyBg = null,
                    e.IsAnimIng = false,
                    e.IsSpPlayIng = false,
                    e.IsSpLuckyEnd = false,
                    e.NoBetTime = 0,
                    e.IsLuckyAnim = false,
                    e
            }
            return __extends(e, t),
                e.prototype.OnCreateInit = function () {

                    var t = this;
                    this.JS_Name = "game_1050_V",
                        this.GameNode = this.GetWndNode("game"),
                        this.RegEvent(h.Game1050HttpAPI.BetResult, this.RecBetResult),
                        this.RegEvent(s.GameCommonEventType.GetRound, this.EventTypeGetRound),
                        this.RegEvent(s.GameCommonEventType.GetAmount, this.EventTypeGetAmount),
                        this.RegEvent(s.GameCommonEventType.PlayBigWinEndEvent, this.OnPlayBigWinEndEvent),
                        this.RegEvent(h.Game1050HttpAPI.GameDates, this.RecGameDates),
                        this.RegSystemEvent(a.default.ENTER_GAME_COMMON, this.OnGameBetCommon),
                        this.lblWinGold = this.GetWndComponent("win_gold/label_win", cc.Label),
                        this.LeftParent = this.GetWndNode("game/prop_left/roll_l"),
                        this.CenterParent = this.GetWndNode("game/prop_center/roll_c"),
                        this.RightParent = this.GetWndNode("game/prop_right/roll_r"),
                        this.PacketAnimList = this.GetWndComponent("effect/packet", cc.Animation),
                        this.LuckModeAniNode = this.node.getComponent(cc.Animation),
                        this.LuckResultPropSpr = this.GetWndComponent("effect/x10/packet/prop", cc.Sprite),
                        this.LuckResultPropSpr = this.GetWndComponent("effect/x10/packet/prop", cc.Sprite),
                        this.TurboBtn = this.GetWndNode("operate/btn_turbo"),
                        this.AwardNdoeAnim = this.GetWndNode("effect/award"),
                        this.lbl_Usergold = this.GetWndComponent("head/gold/label_gold", cc.Label),
                        this.Node_Tips = this.GetWndNode("state"),
                        this.PropHintNode = this.GetWndNode("game/hint_prop"),
                        this.AutoNumLabel = this.GetWndComponent("operate/btn_start/label_auto", cc.Label),
                        this.Node_AutoStart = this.GetWndNode("operate/btn_start"),
                        this.NumkeyBoard = this.GetWndComponent("win_gold/label_gold", cc.Label),
                        this.node_10XScore = this.GetWndNode("effect/x10/packet/label_10x"),
                        this.BtnMinus = this.GetWndNode("operate/btn_minus"),
                        this.BtnAdd = this.GetWndNode("operate/btn_add"),
                        this.BtnAuto = this.GetWndNode("operate/btn_auto"),
                        this.BtnMenu = this.GetWndNode("btn_menu"),
                        this.bgGoldNode = this.GetWndNode("bg/spr_bottom"),
                        this.PandaLuckyBg = this.GetWndNode("panda"),
                        this.GameNode.getComponent(cc.Animation).on("finished", function (e, i) {
                            "normal3_pai" != i.name && "za_ani_bg" != i.name && t.AnimationFinished()
                        }, this),
                        this.spConfig = {},
                        this.spConfig[h.Game1050DragonBonesName.Normal] = {
                            loop: true,
                            mark: false
                        },
                        this.spConfig[h.Game1050DragonBonesName.Normal2] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.Normal3] = {
                            loop: false,
                            mark: false
                        },
                        this.spConfig[h.Game1050DragonBonesName.za] = {
                            loop: false,
                            mark: false
                        },
                        this.spConfig[h.Game1050DragonBonesName.nod] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.win_nod] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.stare_happy] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.anger] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.happy] = {
                            loop: true,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.happy_win_show] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.happy_win_loop] = {
                            loop: true,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.happy_win_end] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.normal_show] = {
                            loop: false,
                            mark: false
                        },
                        this.spConfig[h.Game1050DragonBonesName.stare] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1050DragonBonesName.stare_loop] = {
                            loop: true,
                            mark: true
                        },
                        this.PandaDragonbones = this.GetWndComponent("panda/panda", sp.Skeleton),
                        this.GameNode.getComponent(cc.Animation).EndStop = function () {
                            app.SoundManager().PlaySound("game1050_gun_stop"),
                                t.unschedule(t.playGunSound)
                        }
                        ,
                        this.PacketAnimList.getComponent(cc.Animation).ToRed = function () {
                            app.SoundManager().PlaySound("game1050_panda_redbag")
                        }
                        ,
                        this.LuckModeAniNode.getComponent(cc.Animation).showred = function (t) {
                            "1" == t ? app.SoundManager().PlaySound("game1050_showred") : "2" == t ? app.SoundManager().PlaySound("game1050_showred2") : "3" == t && app.SoundManager().PlaySound("game1050_maybe2")
                        }
                        ,
                        this.scheduleOnce(function () {
                            t.PandaDragonbones.setMix(h.Game1050DragonBonesName.Normal2, h.Game1050DragonBonesName.nod, .2),
                                t.PandaDragonbones.setMix(h.Game1050DragonBonesName.Normal, h.Game1050DragonBonesName.stare, 1)
                        }, 1),
                        this.PandaDragonbones.setEventListener(function (e, i) {
                            var n = i.data.name;
                            "win_nod_ani" == n && app.SoundManager().PlaySound("game1050_panda_nice_" + Math.round(2 * Math.random() + 1)),
                                "normal3_ani" == n && t.GameNode.getComponent(cc.Animation).playAdditive("normal3_pai"),
                                "za_ani" == n && t.GameNode.getComponent(cc.Animation).playAdditive("za_ani_bg")
                        }),
                        this.PandaDragonbones.setCompleteListener(function (e) {
                            switch (e.animation.name) {
                                case h.Game1050DragonBonesName.Normal:
                                    t.setRandomIdleAnimation();
                                    break;
                                case h.Game1050DragonBonesName.stare:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.stare_loop),
                                        t.IsSpPlayIng = false;
                                    break;
                                case h.Game1050DragonBonesName.stare_loop:
                                    t.IsSpPlayIng = false;
                                    break;
                                case h.Game1050DragonBonesName.stare_happy:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.happy);
                                    break;
                                case h.Game1050DragonBonesName.happy:
                                    t.IsSpPlayIng = false,
                                        t.IsSpLuckyEnd && (t.PlayDragonBonesControl(h.Game1050DragonBonesName.happy_win_show),
                                            t.IsSpLuckyEnd = false);
                                    break;
                                case h.Game1050DragonBonesName.happy_win_show:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.happy_win_loop);
                                    break;
                                case h.Game1050DragonBonesName.happy_win_loop:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.happy_win_end);
                                    break;
                                case h.Game1050DragonBonesName.happy_win_end:
                                    t.IsSpPlayIng = false,
                                        t.roomMgr.BetResultData.big_win || t.GameEndEdStatus(true, 1),
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.normal_show),
                                        t.LuckModeAniNode.getComponent(cc.Animation).stop(),
                                        t.LuckModeAniNode.getComponent(cc.Animation).play("scene_x10_end");
                                    break;
                                case h.Game1050DragonBonesName.nod:
                                case h.Game1050DragonBonesName.Normal2:
                                case h.Game1050DragonBonesName.Normal3:
                                case h.Game1050DragonBonesName.za:
                                case h.Game1050DragonBonesName.win_nod:
                                case h.Game1050DragonBonesName.normal_show:
                                case h.Game1050DragonBonesName.anger:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1050DragonBonesName.Normal)
                            }
                        });
                    var e = "atlas/prop/";
                    this.HDSprStrArr = [],
                        this.HDSprStrArr[h.GameProp.NullBox] = null,
                        this.HDSprStrArr[h.GameProp.Bamboo] = e + "prop_zhuzi",
                        this.HDSprStrArr[h.GameProp.Peach] = e + "prop_shuiguo",
                        this.HDSprStrArr[h.GameProp.LuckyBag] = e + "prop_qiandai",
                        this.HDSprStrArr[h.GameProp.Weapon] = e + "prop_wuqi",
                        this.HDSprStrArr[h.GameProp.PurpleDiamonds] = e + "prop_zuanshi",
                        this.HDSprStrArr[h.GameProp.Yupei] = e + "prop_yupei",
                        this.HDSprStrArr[h.GameProp.Omnipotence] = e + "prop_wild",
                        this.SpineStrArr[h.GameProp.NullBox] = null,
                        this.SpineStrArr[h.GameProp.Bamboo] = "9Grid/prop_zhuzi",
                        this.SpineStrArr[h.GameProp.Peach] = "9Grid/prop_shuiguo",
                        this.SpineStrArr[h.GameProp.LuckyBag] = "9Grid/prop_qiandai",
                        this.SpineStrArr[h.GameProp.Weapon] = "9Grid/prop_wuqi",
                        this.SpineStrArr[h.GameProp.PurpleDiamonds] = "9Grid/prop_zuanshi",
                        this.SpineStrArr[h.GameProp.Yupei] = "9Grid/prop_yupei",
                        this.BlurSprStrArr = [],
                        this.BlurSprStrArr[h.GameProp.NullBox] = null,
                        this.BlurSprStrArr[h.GameProp.Bamboo] = e + "prop_zhuzi_roll",
                        this.BlurSprStrArr[h.GameProp.Peach] = e + "prop_shuiguo_roll",
                        this.BlurSprStrArr[h.GameProp.LuckyBag] = e + "prop_qiandai_roll",
                        this.BlurSprStrArr[h.GameProp.Weapon] = e + "prop_wuqi_roll",
                        this.BlurSprStrArr[h.GameProp.PurpleDiamonds] = e + "prop_zuanshi_roll",
                        this.BlurSprStrArr[h.GameProp.Yupei] = e + "prop_yupei_roll",
                        this.BlurSprStrArr[h.GameProp.Omnipotence] = e + "prop_wild_roll",
                        this.AwardLineArr = [],
                        this.AwardLineArr.push(this.GetWndNode("game/line/line1")),
                        this.AwardLineArr.push(this.GetWndNode("game/line/line2")),
                        this.AwardLineArr.push(this.GetWndNode("game/line/line3")),
                        this.AwardLineArr.push(this.GetWndNode("game/line/line4")),
                        this.AwardLineArr.push(this.GetWndNode("game/line/line5")),
                        this.LineParentNode = this.GetWndNode("game/line"),
                        this.Award9AnimSpr = [],
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_l2")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_l1")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_l3")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_c2")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_c1")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_c3")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_r2")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_r1")),
                        this.Award9AnimSpr.push(this.GetWndNode("game/line/prop_r3")),
                        this.Award9AnimArray = [],
                        this.Award9AnimArray[0] = [1, 4, 7],
                        this.Award9AnimArray[1] = [0, 3, 6],
                        this.Award9AnimArray[2] = [2, 5, 8],
                        this.Award9AnimArray[3] = [0, 4, 8],
                        this.Award9AnimArray[4] = [2, 4, 6],
                        this.EndSprNodeList = [],
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_left/roll_l/spr_prop1")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_left/roll_l/spr_prop2")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_left/roll_l/spr_prop3")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_center/roll_c/spr_prop1")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_center/roll_c/spr_prop2")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_center/roll_c/spr_prop3")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_right/roll_r/spr_prop1")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_right/roll_r/spr_prop2")),
                        this.EndSprNodeList.push(this.GetWndNode("game/prop_right/roll_r/spr_prop3")),
                        this.EndSprNodeList2 = [],
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_left/roll_l/spr_prop7")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_left/roll_l/spr_prop8")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_left/roll_l/spr_prop9")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_center/roll_c/spr_prop7")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_center/roll_c/spr_prop8")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_center/roll_c/spr_prop9")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_right/roll_r/spr_prop7")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_right/roll_r/spr_prop8")),
                        this.EndSprNodeList2.push(this.GetWndNode("game/prop_right/roll_r/spr_prop9")),
                        this.node_Score = this.GetWndNode("game/score"),
                        this.settingNode = this.GetWndNode("setting"),
                        this.nodeOperate = this.GetWndNode("operate"),
                        this.TipsList = [],
                        this.TipsList[0] = app.i18n.t("UI_Game1050_TipsRespins"),
                        this.TipsList[1] = app.i18n.t("UI_Game1050_TipsWinupto2500"),
                        this.TipsList[2] = app.i18n.t("UI_Game1050_Tipsx10multiplier"),
                        this.TipsList[3] = app.i18n.t("UI_Game1050_TipsFortune"),
                        this.PropHintPosList = [],
                        this.PropHintPosList[0] = cc.v2(-110, 178),
                        this.PropHintPosList[1] = cc.v2(-110, -20),
                        this.PropHintPosList[2] = cc.v2(-110, -190),
                        this.PropHintPosList[3] = cc.v2(95, 178),
                        this.PropHintPosList[4] = cc.v2(95, -20),
                        this.PropHintPosList[5] = cc.v2(95, -190),
                        this.PropHintPosList[6] = cc.v2(110, 180),
                        this.PropHintPosList[7] = cc.v2(110, -20),
                        this.PropHintPosList[8] = cc.v2(110, -190),
                        this.PropTimeList = [],
                        this.PropTimeList[0] = 3,
                        this.PropTimeList[1] = 5,
                        this.PropTimeList[2] = 8,
                        this.PropTimeList[3] = 10,
                        this.PropTimeList[4] = 25,
                        this.PropTimeList[5] = 100,
                        this.PropTimeList[6] = 250,
                        this.ScorePosList = [],
                        this.ScorePosList[0] = cc.v2(0, 0),
                        this.ScorePosList[1] = cc.v2(0, 181),
                        this.ScorePosList[2] = cc.v2(0, -200),
                        this.ScorePosList[3] = cc.v2(0, 0),
                        this.ScorePosList[4] = cc.v2(0, 0);
                    var i = this.PropHintNode.getChildByName("bg")
                        , n = i.getComponent(cc.Button) || i.addComponent(cc.Button);
                    if (n) {
                        var o = new cc.Component.EventHandler;
                        o.target = this.node,
                            o.component = this.JS_Name,
                            o.handler = "PropCloseEvent",
                            n.clickEvents = [],
                            n.clickEvents.push(o)
                    }
                    this.RegEvent(r.GameEventDefine.COMPANY_PAYMENT, function (e) {
                        t.updateMyGold(t.userAllGold += e.amount + Number(e.send_gold))
                    })
                }
                ,
                e.prototype.setRandomIdleAnimation = function () {
                    var t = this
                        , e = Math.random;
                    if (this.NoBetTime > 15)
                        return this.NoBetTime = 0,
                            void (e() < .7 && this.PlayDragonBonesControl(e() <= .5 ? h.Game1050DragonBonesName.Normal3 : h.Game1050DragonBonesName.za));
                    e() < .2 && (this.PlayDragonBonesControl(h.Game1050DragonBonesName.Normal2),
                        this.PacketAnimList.playAdditive("packet2"),
                        this.scheduleOnce(function () {
                            t.PacketAnimList.playAdditive("packet")
                        }, 2))
                }
                ,
                e.prototype.EventTypeGetAmount = function (t) {
                    this.roomMgr.Level = t.level,
                        app.GameBetCommonMgr().Level = t.level,
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(t.amount),
                        this.roomMgr.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(t.amount)),
                        this.roomMgr.BaseBetNum = t.basebetnum,
                        this.checkBtnAddLevel(),
                        this.checkBtnMinusLevel()
                }
                ,
                e.prototype.EventTypeGetRound = function (t) {
                    this.autoStopData.Rounds = Number(t),
                        this.AutoNumLabel.string = t,
                        this.startAutoBet()
                }
                ,
                e.prototype.PlayDragonBonesControl = function (t) {
                    this.IsSpPlayIng && this.PandaDragonbones.animation != h.Game1050DragonBonesName.nod || this.PandaDragonbones.animation == t && this.PandaDragonbones.animation != h.Game1050DragonBonesName.nod || this.playDragonName(t)
                }
                ,
                e.prototype.playDragonName = function (t) {
                    var e = this.spConfig[t];
                    e && (this.PandaDragonbones.setAnimation(0, t, e.loop),
                        e.mark && (this.IsSpPlayIng = true))
                }
                ,
                e.prototype.updateTipIndex = function () {
                    if (this.gameStatus != h.enum_Game1050Status.GAME_ENDED && this.gameStatus != h.enum_Game1050Status.GAME_END && (!this.roomMgr.BetResultData || 2 != this.roomMgr.BetResultData.type)) {
                        var t = Math.round(2 * Math.random());
                        this.PlayTipsIndex(t),
                            this.runFreeSpinTip1Action()
                    }
                }
                ,
                e.prototype.runFreeSpinTip1Action = function () {
                    var t = this;
                    this.unschedule(this.updateTipIndex),
                        this.runTipAction1(function () {
                            t.schedule(t.updateTipIndex, 5)
                        })
                }
                ,
                e.prototype.runTipAction1 = function (t) {
                    var e = this.GetWndNode("nodeLabel/label", this.Node_Tips);
                    e.active = true;
                    var i = e.width
                        , n = e.parent.width;
                    if (i > n) {
                        var o = i / 2 - n / 2 + 10;
                        e.position = cc.v3(o, 0, 0);
                        var a = -o - n / 2 - i / 2;
                        cc.tween(e).delay(1).by(-a / 88, {
                            position: cc.v3(a, 0, 0)
                        }).delay(1).call(function () {
                            t && t()
                        }).start()
                    } else
                        e.position = cc.Vec3.ZERO,
                            cc.tween(e).delay(3).call(function () {
                                t && t()
                            }).start()
                }
                ,
                e.prototype.PlayTipsIndex = function (t) {
                    var e, i = this;
                    if (t <= h.TipsType.randomTip4) {
                        var n = this.TipsList[t];
                        n && (this.GetWndComponent("nodeLabel/label", cc.Label, this.Node_Tips).string = n,
                            this.GetWndComponent("nodeLabel/label", cc.Label, this.Node_Tips)._forceUpdateRenderData())
                    } else if (t == h.TipsType.luckTips) {
                        var o = this.GetWndComponent("layout/prop_1", cc.Sprite, this.Node_Tips);
                        this.roomMgr.bundleloadres(o, this.HDSprStrArr[(null === (e = this.roomMgr.BetResultData) || void 0 === e ? void 0 : e.luck_prop) || 0])
                    } else if (t == h.TipsType.goldTips) {
                        if (!(this.roomMgr.BetResultData.win_gold > 0))
                            return;
                        this.Node_Tips.getComponent(cc.Animation).play("state_gold_new"),
                            this.Node_Tips.getComponent(cc.Animation).once("finished", function () {
                                i.Node_Tips.getComponent(cc.Animation).play("state_gold_normal")
                            }, this),
                            this.GetWndComponent("gold/layout_num/label", cc.Label, this.Node_Tips).string = "" + this.roomMgr.addThousandSeparator(this.roomMgr.BetResultData.win_gold)
                    }
                    if (this.UpdatePlayLineData) {
                        var a = this.GetWndComponent("gold/spr_bg", cc.Sprite, this.Node_Tips)
                            , r = this.GetWndComponent("gold/spr_border", cc.Sprite, this.Node_Tips);
                        this.TipsBg_SF.length > 0 && (a.spriteFrame = this.TipsBg_SF[this.getTipsOddsKey()]),
                            this.OutlineTipsSF.length > 0 && (r.spriteFrame = this.OutlineTipsSF[0]);
                        for (var s = [], l = 0; l < this.UpdatePlayLineData.length; l++) {
                            var p = this.UpdatePlayLineData[l];
                            s.push(p.prop)
                        }
                        s.sort(function (t, e) {
                            return e - t
                        });
                        var d = [];
                        if (d[6] = 2,
                            d[7] = 2,
                            d[5] = 1,
                            d[4] = 0,
                            s.length > 0) {
                            var m = s[0];
                            null != d[m] && (a.spriteFrame = this.TipsBg_SF[d[m]],
                                r.spriteFrame = this.OutlineTipsSF[1])
                        }
                    }
                    this.GetWndNode("nodeLabel/label", this.Node_Tips).active = t <= 3,
                        this.GetWndNode("layout", this.Node_Tips).active = 4 == t,
                        this.GetWndNode("gold", this.Node_Tips).active = 5 == t
                }
                ,
                e.prototype.getTipsOddsKey = function () {
                    var t = this.roomMgr.BetResultData.win_gold / this.roomMgr.BetResultData.bet_gold;
                    return t < 5 ? 0 : t < 20 && t >= 5 ? 1 : t >= 20 ? 2 : 0
                }
                ,
                e.prototype.PlayVoleWinAnim = function () {
                    var t = this;
                    if (this.roomMgr.BetResultData.big) {
                        this.GetWndNode("prop_c1/spr_prop", this.AwardNdoeAnim).getComponent(cc.Sprite).spriteFrame = null,
                            this.AwardNdoeAnim.active = true,
                            app.SoundManager().PlaySound("game1050_fusion"),
                            this.scheduleOnce(function () {
                                app.SoundManager().PlaySound("game1050_happy")
                            }, 2),
                            this.AwardNdoeAnim.getComponent(cc.Animation).play();
                        var e = this.GetBigProp();
                        this.roomMgr.bundleloadres(this.GetWndNode("prop_c1/spr_prop", this.AwardNdoeAnim), this.HDSprStrArr[e]),
                            this.node_10XScore.getComponent(cc.Animation).play(),
                            this.node_10XScore.getComponent(cc.Animation).once("finished", function () {
                                t.AwardNdoeAnim.active = false,
                                    t.PlayBigWinAnim()
                            }, this)
                    } else
                        this.PlayBigWinAnim()
                }
                ,
                e.prototype.PlayBigWinAnim = function () {
                    var t = "" + this.roomMgr.BetResultData.win_gold;
                    app.FormManager().ShowForm(h.Game1050UIName.UIGame1050BigWin, 0, t, this.roomMgr.isAutoIng)
                }
                ,
                e.prototype.OnPlayBigWinEndEvent = function () {
                    this.roomMgr.BetResultData && (this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                        this.GameEndEdStatus(),
                        this.PlayTipsIndex(h.TipsType.goldTips),
                        this.PlayDragonBonesControl(h.Game1050DragonBonesName.Normal),
                        this.IsStopSuc = false)
                }
                ,
                e.prototype.PlayLuckAnimation = function () {
                    var t = this;
                    (this.roomMgr.isLuckMode || this.IsLuckyAnim) && (this.LuckModeAniNode.play(),
                        app.SoundManager().PlaySound("game1050_maybe"),
                        this.PlayDragonBonesControl(h.Game1050DragonBonesName.stare),
                        this.IsAnimIng = true,
                        this.IsLuckyAnim = false,
                        this.LuckModeAniNode.once("finished", function () {
                            t.roomMgr.isLuckMode ? (t.PlayDragonBonesControl(h.Game1050DragonBonesName.stare_happy),
                                app.SoundManager().PlayBackMusic("game1050_RespinBGM", true),
                                t.LuckModeAniNode.play("scene_x10"),
                                t.PlayLuckEffect(),
                                t.ReplayLuckPropSwitch = true,
                                t.LuckModeAniNode.once("finished", function () {
                                    t.PlayTipsIndex(h.TipsType.randomTip4)
                                }, t)) : (t.PlayDragonBonesControl(h.Game1050DragonBonesName.anger),
                                    app.SoundManager().PlaySound("game1050_en_")),
                                t.IsAnimIng = false
                        }, this))
                }
                ,
                e.prototype.updateWinGold = function () {
                    if (this.roomMgr.BetResultData && this.roomMgr.BetResultData.win_gold) {
                        var t = "" + (app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(this.roomMgr.BetResultData.win_gold));
                        t = Number(this.roomMgr.BetResultData.win_gold) < 0 ? app.GameConfigManager().GetCurrency + "0.00" : t,
                            this.lblWinGold.string = t
                    } else
                        this.lblWinGold.string = app.GameConfigManager().GetCurrency + "0.00"
                }
                ,
                e.prototype.PlayAwordAnim = function () {
                    1 * Math.random() > .5 && this.PlayDragonBonesControl(h.Game1050DragonBonesName.win_nod)
                }
                ,
                e.prototype.AnimationFinished = function () {
                    var t = this;
                    if (!this.IsSucResult)
                        return this.IsLongTime = true,
                            this.GameNode.getComponent(cc.Animation).play("roll_process").speed = this.AllAnimSpeed,
                            void this.ReplaceProcessAnimSpr();
                    if (this.gameStatus == h.enum_Game1050Status.GAME_END) {
                        if (this.roomMgr.isLuckMode) {
                            this.LuckPlayAwardAllLine(),
                                this.EndPlayWildAnimation();
                            var e = this.UpdatePlayLineData.length;
                            e > 0 && app.SoundManager().PlaySound("game1050_" + e + "line")
                        } else {
                            var i = this.EndPlayWildAnimation() ? 1 : 0;
                            cc.tween(this.node).delay(i).call(function () {
                                t.PlayAwardAllLine(),
                                    t.updateWinGold();
                                var e = t.UpdatePlayLineData.length;
                                e > 0 && (app.SoundManager().PlaySound("game1050_" + e + "line"),
                                    t.PlayAwordAnim())
                            }).start()
                        }
                        //this.roomMgr.BetResultData.big_win || 1 != this.roomMgr.BetResultData.type || this.PlayTipsIndex(h.TipsType.goldTips),
                        return void ((this.roomMgr.IsTurbo || this.IsStopSuc) && this.unschedule(this.playGunSound))
                    }
                    if (this.gameStatus != h.enum_Game1050Status.INIT) {
                        if (this.roomMgr.IsTurbo && !this.roomMgr.isLuckMode && !this.IsAnimIng)
                            return this.HideEndWildList(),
                                this.ReplaceEndAnimSpr(),
                                this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationEndName()).speed = this.AllAnimSpeed,
                                void (this.gameStatus = h.enum_Game1050Status.GAME_END);
                        this.GameNode.getComponent(cc.Animation).play("roll_process").speed = this.AllAnimSpeed,
                            this.ReplaceProcessAnimSpr(),
                            this.scheduleOnce(this.AnimationPlayEnd, this.getRollTime())
                    }
                }
                ,
                e.prototype.AnimationPlayEnd = function () {
                    this.roomMgr.isLuckMode && this.unschedule(this.playGunSound),
                        this.ReplaceEndAnimSpr(),
                        this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationEndName()).speed = this.AllAnimSpeed,
                        this.gameStatus = h.enum_Game1050Status.GAME_END
                }
                ,
                e.prototype.InitLineWildPrefab = function () {
                    for (var t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e = this.Award9AnimSpr[t];
                        this.addWildPrefab(e)
                    }
                    for (t = 0; t < 9; t++) {
                        var i = this.LeftParent.children[t]
                            , a = this.CenterParent.children[t]
                            , r = this.RightParent.children[t];
                        i && this.addWildPrefab(i, false, false),
                            a && this.addWildPrefab(a, false, false),
                            r && this.addWildPrefab(r, false, false)
                    }
                    for (t = 0; t < this.HDSprStrArr.length; t++)
                        (e = this.HDSprStrArr[t]) && o.BundleManager.LoadAssets(e, n.BundleNames.Game1050, cc.SpriteFrame).then(function () { });
                    for (t = 0; t < this.BlurSprStrArr.length; t++)
                        (e = this.BlurSprStrArr[t]) && o.BundleManager.LoadAssets(e, n.BundleNames.Game1050, cc.SpriteFrame).then(function () { })
                }
                ,
                e.prototype.OnLoad = function () {
                    this.ui = this.node.addComponent(m.default),
                        this.ui.AutoBindEvent(this)
                }
                ,
                e.prototype.RandomSetList = function () {
                    this.RandomLitsNum = [];
                    for (var t = 0; t < 9; t++)
                        this.RandomLitsNum.push(Math.round(6 * Math.random() + 1))
                }
                ,
                e.prototype.RecGameDates = function () {
                    if (this.unschedule(this.retryInitData),
                        this.roomMgr.GameDates) {
                        this.LineParentNode.active = false;
                        for (var t = [], e = 0; e < this.roomMgr.GameDates.props.length; e++) {
                            var i = this.roomMgr.GameDates.props[e].props;
                            0 != i[1] && (t = Object.assign(t, i))
                        }
                        if (t.length > 0) {
                            var n = [];
                            for (e = 1; e < t.length; e++) {
                                var o = t[e];
                                null != o ? n.push(o) : n.push(0)
                            }
                            this.RandomLitsNum = n,
                                this.InitReplayeSpr(true)
                        } else
                            this.RandomSetList(),
                                this.InitReplayeSpr(true);
                        this.lblWinGold.string = "" + (app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(Number(this.roomMgr.GameDates.total_win)))
                    }
                }
                ,
                e.prototype.NewRecBetResult = function () {
                    this.BtnCanStop = false,
                        this.IsSucResult = false,
                        this.IsLongTime = false,
                        this.ReplayLuckPropSwitch = false,
                        this.roomMgr.isLuckMode = false,
                        this.schedule(this.playGunSound, 1 == this.AllAnimSpeed ? .1 : .05),
                        this.HideEndWildList(),
                        this.RestartCallBack(),
                        this.ReplayGameStates(),
                        this.playAnimationList()
                }
                ,
                e.prototype.ResendBet = function () {
                    this.roomMgr.RequestGameBet()
                }
                ,
                e.prototype.UpdateResendBet = function () {
                    this.roomMgr.RequestGameBet(),
                        this.IsResend = true
                }
                ,
                e.prototype.RestartCallBack = function () {
                    this.node_Score.active = false,
                        this.PropCloseEvent(),
                        this.InitAwardLight()
                }
                ,
                e.prototype.RecBetResult = function () {
                    var t;
                    if (!this.roomMgr.BetResultData || !this.roomMgr.BetResultData.props)
                        return this.scheduleOnce(this.ResendBet, 1),
                            void (this.IsResend = true);
                    if (this.IsSpPlayIng = false,
                        this.IsSpLuckyEnd = false,
                        this.unschedule(this.UpdateResendBet),
                        this.roomMgr.LuckIndex = 0,
                        this.PlayTipsIndex(-1),
                        this.ReplayLuckPropSwitch = false,
                        this.UpdatePlayIdx = -1,
                        this.node_Score.active = false,
                        this.DelStartPropClick(),
                        this.roomMgr.isAutoIng || (this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.Press),
                            this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.startClick),
                            this.bgGoldNode.getComponent(cc.Animation).play("spr_bottom_saoguang")),
                        this.updateMyGold(this.userAllGold -= this.roomMgr.BetResultData.bet_gold),
                        this.roomMgr.BetResultData.win_gold = this.roomMgr.BetResultData.bet_gold + this.roomMgr.BetResultData.change_gold,
                        this.RestartCallBack(),
                        this.roomMgr.isLuckMode = 2 == this.roomMgr.BetResultData.type,
                        this.RandomSetList(),
                        this.LuckHintPropList = {},
                        this.roomMgr.isLuckMode) {
                        this.LineParentNode.getComponent(cc.Animation).play("line_prop_lucky"),
                            this.BtnCanStop = false,
                            this.OnSetAnimationSpeed(1),
                            this.roomMgr.LuckDataList = this.roomMgr.BetResultData.props;
                        for (var e = 0; e < this.roomMgr.BetResultData.props.length; e++) {
                            var i = this.roomMgr.BetResultData.props[e].props;
                            this.LuckHintPropList = Object.assign(this.LuckHintPropList, i)
                        }
                    } else
                        this.LineParentNode.getComponent(cc.Animation).play("line_prop"),
                            this.roomMgr.IsTurbo || this.roomMgr.isLuckMode || !this.roomMgr.isAutoIng || this.OnSetAnimationSpeed(1),
                            this.BtnCanStop = true;
                    for (this.UpdatePlayLineData = [],
                        this.AllPropList = [],
                        e = 0; e < this.roomMgr.BetResultData.props.length; e++) {
                        var n = this.roomMgr.BetResultData.props[e];
                        for (var o in this.UpdatePlayLineData = __spreadArrays(this.UpdatePlayLineData, n.win_arrs),
                            n.props)
                            if (Object.prototype.hasOwnProperty.call(n.props, o)) {
                                var a = n.props[o];
                                this.AllPropList.push(Number(a))
                            }
                    }
                    var r = this.UpdatePlayLineData;
                    this.UpdatePlayLineData = Array.from(new Set(r.map(function (t) {
                        return JSON.stringify(t)
                    }))).map(function (t) {
                        return JSON.parse(t)
                    }),
                        this.InitPlayLinezIndex(),
                        this.ReplayGameStates(),
                        this.PlayLuckAnimation(),
                        this.roomMgr.bundleloadres(this.LuckResultPropSpr, this.HDSprStrArr[(null === (t = this.roomMgr.BetResultData) || void 0 === t ? void 0 : t.luck_prop) || 0]),
                        this.roomMgr.SetDefaultBetGold(Number(this.NumkeyBoard.string)),
                        this.IsSucResult = true,
                        this.IsResend && (this.ManualStop(),
                            this.IsResend = false),
                        this.IsLongTime && (this.IsLongTime = false,
                            this.ManualStop())
                }
                ,
                e.prototype.InitGameData = function () {
                    var t = this;
                    if (this.IsSpPlayIng = false,
                        this.IsSpLuckyEnd = false,
                        this.IsAnimIng = false,
                        this.IsLuckyAnim = false,
                        this.schedule(this.updateTipIndex, 5),
                        this.schedule(this.UpdatePlayAwardAllLine, 1),
                        this.PlayTipsIndex(-1),
                        this.SwitchSetNodeAndBetNode(false),
                        0 == this.OutlineTipsSF.length)
                        for (var e = function (e) {
                            i.roomMgr.GetSpriteFrame("atlas/border" + (e + 1), function (i) {
                                t.OutlineTipsSF[e] = i
                            })
                        }, i = this, n = 0; n < 2; n++)
                            e(n);
                    if (0 == this.TipsBg_SF.length) {
                        var o = function (e) {
                            a.roomMgr.GetSpriteFrame("atlas/border_bg" + (e + 1), function (i) {
                                t.TipsBg_SF[e] = i
                            })
                        }
                            , a = this;
                        for (n = 0; n < 3; n++)
                            o(n)
                    }
                    this.gameStatus = h.enum_Game1050Status.INIT,
                        this.userAllGold = app.UserManager().UserInfo.gold,
                        this.updateMyGold(this.userAllGold),
                        this.roomMgr.IsTurbo = false,
                        this.SwitchTurboBtn(),
                        this.starToTopRedList = [],
                        this.LuckHintPropList = {},
                        this.StartPlaySwtich = false,
                        this.PropHintNode.active = false,
                        this.AwardNdoeAnim.active = false,
                        this.autoStopData = {
                            Rounds: -1
                        },
                        this.InitLineWildPrefab(),
                        this.ReplayGameStates(),
                        this.betType = 1,
                        this.switchBetType(),
                        this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.Normal),
                        this.PlayDragonBonesControl(h.Game1050DragonBonesName.Normal),
                        this.LineParentNode.active = false,
                        this.RandomSetList(),
                        this.InitReplayeSpr(false),
                        this.roomMgr.AddAndReduceIdx = 0,
                        app.GameBetCommonMgr().InitDataConfig(),
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(Number(this.roomMgr.getGameDefaultBetGold())),
                        this.ReplayLuckPropSwitch = false,
                        this.ReplayLuckPropList = [],
                        this.node_Score.active = false,
                        this.lblWinGold.string = "",
                        app.SoundManager().PlayBackMusic("game1050_BGM", true),
                        this.Node_AutoStart.getComponent(cc.Button).interactable = true,
                        this.roomMgr.bundleloadres(this.GetWndComponent("icon_halo", cc.Sprite, this.Node_AutoStart), "atlas/icon_halo"),
                        this.settingNode.active = false,
                        this.nodeOperate.active = true,
                        this.ControlBtnEnable(),
                        this.TurboBtn.getComponent(p.default).listenEvent = function (e) {
                            t.roomMgr.IsTurbo = e,
                                t.roomMgr.IsTurbo ? (t.OnSetAnimationSpeed(3),
                                    t.ShowPlayHintTips(h.Game1050TipsType.TURBO_ON)) : (t.OnSetAnimationSpeed(1),
                                        t.ShowPlayHintTips(h.Game1050TipsType.TURBO_OFF))
                        }
                }
                ,
                e.prototype.OnShow = function () {
                    for (var e = [], i = 0; i < arguments.length; i++)
                        e[i] = arguments[i];
                    t.prototype.OnShow.apply(this, e),
                        this.InitGameData(),
                        this.roomMgr.RequestGameDates(),
                        this.schedule(this.retryInitData, 5),
                        this.GameNode.getComponent(cc.Animation).stop("roll_process"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_end"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_end_b"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_end_base"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_start"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_start_b"),
                        this.GameNode.getComponent(cc.Animation).stop("roll_start_base"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_b"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_base"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_process"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_end"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_end_b"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_end_base")
                }
                ,
                e.prototype.retryInitData = function () {
                    this.roomMgr.RequestGameDates()
                }
                ,
                e.prototype.OnSetAnimationSpeed = function (t) {
                    this.AllAnimSpeed = t
                }
                ,
                e.prototype.EndPlayWildAnimation = function () {
                    for (var t = false, e = true, i = 0; i < this.EndSprNodeList.length; i++)
                        (n = this.EndSprNodeList[i].getChildByName("wild")) && n.active && (t = true,
                            this.PlayRedToTopAnim(i + 1, e),
                            e = false,
                            this.roomMgr.playWildAnimation(n, true));
                    for (i = 0; i < this.Award9AnimSpr.length; i++) {
                        var n;
                        (n = this.Award9AnimSpr[i].getChildByName("wild")) && n.active && (t = true,
                            this.roomMgr.playWildAnimation(n, true))
                    }
                    return this.EndPropAddClick(),
                        this.RmPandaAnger(),
                        t && !this.roomMgr.isLuckMode && app.SoundManager().PlaySound("game1050_panda_duang"),
                        t
                }
                ,
                e.prototype.RmPandaAnger = function () { }
                ,
                e.prototype.playGunSound = function () {
                    app.SoundManager().PlaySound("game1050_gun")
                }
                ,
                e.prototype.EndPropAddClick = function () {
                    for (var t = 0; t < this.EndSprNodeList.length; t++) {
                        var e = this.EndSprNodeList[t]
                            , i = e.getComponent(cc.Button) || e.addComponent(cc.Button)
                            , n = new cc.Component.EventHandler;
                        n.target = this.node,
                            n.component = this.JS_Name,
                            n.handler = "PropClickEvent",
                            n.customEventData = JSON.stringify(t),
                            i.clickEvents = [],
                            i.clickEvents.push(n)
                    }
                }
                ,
                e.prototype.PropClickEvent = function (t, e) {
                    var i = Number(e)
                        , n = i >= 6
                        , o = n ? this.PropHintNode.getChildByName("hint_right") : this.PropHintNode.getChildByName("hint")
                        , a = this.roomMgr.isLuckMode ? this.LuckHintPropList[i + 1] : this.roomMgr.BetResultData.props[0].props[i + 1];
                    a && (this.PropHintNode.active = true,
                        this.roomMgr.bundleloadres(o.getChildByName("prop_shuiguo"), this.HDSprStrArr[a]),
                        this.GetWndComponent("label_2", cc.Label, o).string = "" + this.PropTimeList[a - 1],
                        this.PropHintNode.getChildByName("hint_right").active = n,
                        this.PropHintNode.getChildByName("hint").active = !n,
                        o.setPosition(this.PropHintPosList[i]))
                }
                ,
                e.prototype.PropCloseEvent = function () {
                    this.PropHintNode.active = false
                }
                ,
                e.prototype.InitAwardLight = function () {
                    for (var t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e = this.Award9AnimSpr[t];
                        e.getChildByName("light_halo2").active = false,
                            e.getChildByName("shine_glow").active = false,
                            e.getChildByName("star").active = false,
                            e.getChildByName("spr_prop").getComponent(cc.Sprite).spriteFrame = null;
                        var i = e.getChildByName("SpineNode");
                        i && (i.active = false)
                    }
                }
                ,
                e.prototype.PlayRedToTopAnim = function (t, e) {
                    var i = this;
                    if (t && this.starToTopRedList.push(t),
                        e)
                        this.scheduleOnce(function () {
                            i.PlayRedToTopAnim()
                        }, .6);
                    else if (!this.StartPlaySwtich && 0 != this.starToTopRedList.length) {
                        var n = this.PacketAnimList.getClips();
                        this.StartPlaySwtich = true;
                        var o = this.starToTopRedList.shift();
                        this.PacketAnimList.once("finished", function () {
                            i.PlayDragonBonesControl(h.Game1050DragonBonesName.nod),
                                i.StartPlaySwtich = false,
                                0 == i.starToTopRedList.length ? i.PacketAnimList.playAdditive(n[0].name) : i.PlayRedToTopAnim()
                        }, this),
                            app.SoundManager().PlaySound("game1050_wild"),
                            this.PacketAnimList.playAdditive(n[o].name)
                    }
                }
                ,
                e.prototype.InitReplayeSpr = function (t) {
                    for (var e = 0, i = 0; i < this.RandomLitsNum.length; i++) {
                        var n = this.RandomLitsNum[i]
                            , o = null
                            , a = Number(i + 1);
                        a >= 1 && a <= 3 ? o = this.LeftParent : a >= 4 && a <= 6 ? o = this.CenterParent : a >= 7 && (o = this.RightParent),
                            e >= 3 && (e = 0);
                        var r = o.children[e + 6];
                        r.myprop = n,
                            this.roomMgr.bundleloadres(r, t ? this.HDSprStrArr[n] : null);
                        var s = r.getComponent(cc.Button) || r.addComponent(cc.Button)
                            , l = new cc.Component.EventHandler;
                        l.target = this.node,
                            l.component = this.JS_Name,
                            l.handler = "StartPropClickEvent",
                            l.customEventData = JSON.stringify(i),
                            s.clickEvents = [],
                            s.clickEvents.push(l),
                            this.StartSprClickList.push(s),
                            e++
                    }
                }
                ,
                e.prototype.StartPropClickEvent = function (t, e) {
                    var i = Number(e)
                        , n = i >= 6
                        , o = n ? this.PropHintNode.getChildByName("hint_right") : this.PropHintNode.getChildByName("hint")
                        , a = this.RandomLitsNum[i];
                    a && (this.PropHintNode.active = true,
                        this.roomMgr.bundleloadres(o.getChildByName("prop_shuiguo"), this.HDSprStrArr[a]),
                        this.GetWndComponent("label_2", cc.Label, o).string = "" + this.PropTimeList[a - 1],
                        this.PropHintNode.getChildByName("hint_right").active = n,
                        this.PropHintNode.getChildByName("hint").active = !n,
                        o.setPosition(this.PropHintPosList[i]))
                }
                ,
                e.prototype.DelStartPropClick = function () {
                    for (var t = 0; t < this.StartSprClickList.length; t++) {
                        var e = this.StartSprClickList[t];
                        e.isValid && e.destroy()
                    }
                }
                ,
                e.prototype.ReplayceStartAnimSpr = function () {
                    var t, e = 0;
                    t = this.ReplayLuckPropSwitch ? this.ReplayLuckPropList : this.RandomLitsNum;
                    for (var i = 0; i < t.length; i++) {
                        var n = t[i]
                            , o = null
                            , a = Number(i + 1);
                        if (a >= 1 && a <= 3 ? o = this.LeftParent : a >= 4 && a <= 6 ? o = this.CenterParent : a >= 7 && (o = this.RightParent),
                            e >= 3 && (e = 0),
                            this.roomMgr.bundleloadres(o.children[e], this.HDSprStrArr[n]),
                            o.children[e].myprop = n,
                            o.children[e + 6].myprop = n,
                            this.ReplayLuckPropSwitch)
                            this.roomMgr.bundleloadres(o.children[e + 3], this.HDSprStrArr[n]),
                                o.children[e + 3].myprop = n;
                        else {
                            var r = Math.round(6 * Math.random() + 1);
                            this.roomMgr.bundleloadres(o.children[e + 3], this.HDSprStrArr[r]),
                                o.children[e + 3].myprop = r
                        }
                        e++
                    }
                }
                ,
                e.prototype.HideEndWildList = function () {
                    for (var t = 0; t < 9; t++) {
                        var e = this.LeftParent.children[t].getChildByName("wild")
                            , i = this.CenterParent.children[t].getChildByName("wild")
                            , n = this.RightParent.children[t].getChildByName("wild");
                        e && (e.active = false),
                            i && (i.active = false),
                            n && (n.active = false),
                            this.LeftParent.children[t].children.length > 1 && this.LeftParent.children[t].removeAllChildren(),
                            this.CenterParent.children[t].children.length > 1 && this.CenterParent.children[t].removeAllChildren(),
                            this.RightParent.children[t].children.length > 1 && this.RightParent.children[t].removeAllChildren()
                    }
                }
                ,
                e.prototype.setLuckPropRm = function () {
                    for (var t, e = (null === (t = this.roomMgr.BetResultData) || void 0 === t ? void 0 : t.luck_prop) || 0, i = [0, e, 7], n = [e, 7], o = [], a = 0; a < 9; a++)
                        o.push(a);
                    for (var r = 0; r < 3; r++)
                        for (a = 0; a < 3; a++) {
                            var s = Math.floor(3 * Math.random());
                            o[3 * r + a] = a == s ? n[Math.floor(2 * Math.random())] : i[Math.floor(3 * Math.random())]
                        }
                    return o
                }
                ,
                e.prototype.ReplaceProcessAnimSpr = function () {
                    this.roomMgr.isLuckMode && (this.unschedule(this.playGunSound),
                        this.schedule(this.playGunSound, .1)),
                        this.HideEndWildList();
                    var t, e = 0;
                    this.ReplayLuckPropList = this.setLuckPropRm(),
                        t = this.ReplayLuckPropSwitch ? this.ReplayLuckPropList : this.RandomLitsNum;
                    for (var i = 0; i < t.length; i++) {
                        t[i];
                        var n = null
                            , o = Number(i + 1);
                        o >= 1 && o <= 3 ? n = this.LeftParent : o >= 4 && o <= 6 ? n = this.CenterParent : o >= 7 && (n = this.RightParent),
                            e >= 3 && (e = 0),
                            this.roomMgr.bundleloadres(n.children[e + 6], this.BlurSprStrArr[n.children[e + 6].myprop]),
                            this.ReplayLuckPropSwitch ? this.ReplayLuckPropList[Math.round(8 * Math.random())] : Math.round(6 * Math.random() + 1),
                            this.roomMgr.bundleloadres(n.children[e + 3], this.BlurSprStrArr[n.children[e + 3].myprop]),
                            this.roomMgr.bundleloadres(n.children[e], this.BlurSprStrArr[n.children[e].myprop]),
                            e++
                    }
                }
                ,
                e.prototype.ReplaceEndAnimSpr = function () {
                    var t, e = this, i = 0;
                    t = this.ReplayLuckPropSwitch ? this.ReplayLuckPropList : this.RandomLitsNum;
                    for (var n = 0; n < t.length; n++) {
                        var o = t[n]
                            , a = null
                            , r = Number(n + 1);
                        r >= 1 && r <= 3 ? a = this.LeftParent : r >= 4 && r <= 6 ? a = this.CenterParent : r >= 7 && (a = this.RightParent),
                            i >= 3 && (i = 0),
                            this.ReplayLuckPropSwitch ? this.roomMgr.bundleloadres(a.children[i + 6], this.HDSprStrArr[o]) : (this.roomMgr.bundleloadres(a.children[i + 6], this.HDSprStrArr[a.children[i + 6].myprop]),
                                a.children[i + 6].myprop = o),
                            i++
                    }
                    if (1 == this.roomMgr.BetResultData.type) {
                        var s = this.roomMgr.BetResultData.props;
                        for (n = 0; n < s.length; n++) {
                            var l = s[n]
                                , p = 0
                                , d = function (t) {
                                    if (Object.prototype.hasOwnProperty.call(l.props, t)) {
                                        var e = l.props[t]
                                            , i = null
                                            , n = Number(t);
                                        n >= 1 && n <= 3 ? i = m.LeftParent : n >= 4 && n <= 6 ? i = m.CenterParent : n >= 7 && (i = m.RightParent),
                                            p >= 3 && (p = 0),
                                            m.roomMgr.bundleloadres(i.children[p], m.HDSprStrArr[e]),
                                            i.children[p].myprop = e,
                                            m.roomMgr.bundleloadres(i.children[p + 3], m.HDSprStrArr[i.children[p + 3].myprop]),
                                            i.children[p + 3].myprop = e,
                                            m.scheduleOnce(function (t, e) {
                                                this.roomMgr.bundleloadres(i.children[t + 6], this.HDSprStrArr[e]),
                                                    i.children[t + 6].myprop = e
                                            }
                                                .bind(m, p, e), m.roomMgr.IsTurbo ? 0 : .27),
                                            7 == e && m.scheduleOnce(function (t) {
                                                this.addWildPrefab(i.children[t])
                                            }
                                                .bind(m, p, e), .02),
                                            p++
                                    }
                                }
                                , m = this;
                            for (var c in l.props)
                                d(c)
                        }
                    } else if (2 == this.roomMgr.BetResultData.type) {
                        var u = (s = this.roomMgr.BetResultData.props)[this.roomMgr.LuckIndex];
                        if (u) {
                            var g = function (t) {
                                if (_.EndSprNodeList[t]) {
                                    var i = u.props[t + 1];
                                    null != i ? (_.roomMgr.bundleloadres(_.EndSprNodeList[t], _.HDSprStrArr[i]),
                                        _.scheduleOnce(function () {
                                            e.roomMgr.bundleloadres(e.EndSprNodeList2[t], e.HDSprStrArr[i])
                                        }, 1)) : (_.roomMgr.bundleloadres(_.EndSprNodeList[t], null),
                                            _.scheduleOnce(function () {
                                                e.roomMgr.bundleloadres(e.EndSprNodeList2[t], null)
                                            }, 1))
                                }
                            }
                                , _ = this;
                            for (n = 0; n < this.EndSprNodeList.length; n++)
                                g(n)
                        }
                    }
                    if (!this.roomMgr.isAutoIng && !this.roomMgr.isLuckMode) {
                        var y = this.Node_AutoStart.getComponent(cc.Animation);
                        y.currentClip.name != h.Game1050BtnPlayName.Normal && (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                            y.playAdditive(h.Game1050BtnPlayName.Normal))
                    }
                }
                ,
                e.prototype.addWildPrefab = function (t, e, i) {
                    if (t) {
                        var n = t.getChildByName("wild");
                        n ? (n.active = 0 != i,
                            this.roomMgr.playWildAnimation(n, false, e)) : this.roomMgr.bundleLoadPrefab(t, "prefab/wild", e, i)
                    }
                }
                ,
                e.prototype.LuckEndClearBgSpr = function () {
                    for (var t = 0; t < 3; t++)
                        this.LeftParent.children[t + 6].getComponent(cc.Sprite).spriteFrame = null,
                            this.CenterParent.children[t + 6].getComponent(cc.Sprite).spriteFrame = null,
                            this.RightParent.children[t + 6].getComponent(cc.Sprite).spriteFrame = null,
                            this.LeftParent.children[t].getComponent(cc.Sprite).spriteFrame = null,
                            this.CenterParent.children[t].getComponent(cc.Sprite).spriteFrame = null,
                            this.RightParent.children[t].getComponent(cc.Sprite).spriteFrame = null
                }
                ,
                e.prototype.playAnimationList = function () {
                    this.gameStatus = h.enum_Game1050Status.GAMERESULT,
                        this.ControlBtnDisable(),
                        this.GameNode.getComponent(cc.Animation).stop(),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_b"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_base"),
                        this.GameNode.getChildByName("mask_light").getComponent(cc.Animation).play(),
                        this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationStartName()).speed = this.AllAnimSpeed,
                        this.ReplayceStartAnimSpr()
                }
                ,
                e.prototype.CheckLuckEnd = function () {
                    return !(this.roomMgr.LuckIndex >= this.roomMgr.BetResultData.props.length)
                }
                ,
                e.prototype.LuckPlayAwardAllLine = function () {
                    for (var t = this.roomMgr.BetResultData.props, e = t[this.roomMgr.LuckIndex], i = 0; i < e.win_arrs.length; i++) {
                        var n = e.win_arrs[i];
                        this.PlayAwardSingleLine(n, e)
                    }
                    this.ShowStopLuckSpr(e.props);
                    for (var o = {}, a = 0; a < t.length; a++) {
                        var r = t[a];
                        a <= this.roomMgr.LuckIndex && (o = Object.assign({}, o, r.props))
                    }
                    var s = 0;
                    for (var l in o)
                        Object.prototype.hasOwnProperty.call(o, l) && o[l] > 0 && (s += 1);
                    if (s >= 8 && this.PlayTipsIndex(h.TipsType.luckTips),
                        this.roomMgr.LuckIndex++,
                        !this.CheckLuckEnd())
                        return this.IsSpLuckyEnd = true,
                            this.LuckEndClearBgSpr(),
                            this.roomMgr.BetResultData.big_win ? this.PlayVoleWinAnim() : this.PandaDragonbones.animation == h.Game1050DragonBonesName.happy || this.GameEndEdStatus(true, 1),
                            this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                            app.SoundManager().PlayBackMusic("game1050_BGM", true),
                            this.PlayTipsIndex(h.TipsType.goldTips),
                            this.roomMgr.isAutoIng || (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                                this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.Normal)),
                            this.updateWinGold(),
                            this.IsStopSuc = false,
                            this.StopLuckEffect(),
                            void this.LineParentNode.getComponent(cc.Animation).play("line_prop");
                    this.playAnimationList()
                }
                ,
                e.prototype.setUpdatePlayAwardData = function () { }
                ,
                e.prototype.InitPlayLinezIndex = function () {
                    var t = this.LineParentNode.getChildByName("bg");
                    t.zIndex = 0,
                        t.active = true;
                    for (var e = 0; e < this.Award9AnimArray.length; e++)
                        for (var i = this.Award9AnimArray[e], n = 0; n < i.length; n++)
                            this.Award9AnimSpr[i[n]].zIndex = 1;
                    for (e = 0; e < this.AwardLineArr.length; e++)
                        this.AwardLineArr[e].zIndex = 1
                }
                ,
                e.prototype.UpdatePlayAwardAllLine = function () {
                    if (this.roomMgr.isLuckMode || (this.NoBetTime += 1),
                        this.UpdatePlayLineData && this.gameStatus == h.enum_Game1050Status.GAME_ENDED) {
                        this.InitPlayLinezIndex();
                        var t = this.LineParentNode.getChildByName("bg")
                            , e = this.UpdatePlayLineData[this.UpdatePlayIdx]
                            , i = this.GetWndComponent("label_score", cc.Label, this.node_Score);
                        if (this.node_Score.active = false,
                            e) {
                            var n = this.Award9AnimArray[e.roll - 1];
                            if (n) {
                                t.zIndex = 2;
                                for (var o = 0; o < n.length; o++) {
                                    var a = n[o];
                                    this.Award9AnimSpr[a].zIndex = 3
                                }
                                this.AwardLineArr[e.roll - 1].zIndex = 3,
                                    e.win_amount && (this.node_Score.setPosition(this.ScorePosList[e.roll - 1]),
                                        i.string = "" + this.roomMgr.addThousandSeparator(e.win_amount),
                                        this.node_Score.active = true)
                            }
                        }
                        this.UpdatePlayIdx += 1,
                            this.UpdatePlayIdx >= this.UpdatePlayLineData.length && (this.UpdatePlayIdx = -1)
                    }
                }
                ,
                e.prototype.PlayAwardAllLine = function () {
                    var t = this.roomMgr.BetResultData.props;
                    if (t) {
                        for (var e = 0; e < t.length; e++)
                            for (var i = t[e], n = 0; n < i.win_arrs.length; n++) {
                                var o = i.win_arrs[n];
                                this.PlayAwardSingleLine(o, i)
                            }
                        this.PlayTipsIndex(h.TipsType.goldTips),
                            this.roomMgr.BetResultData.big_win ? this.PlayVoleWinAnim() : (this.GameEndEdStatus(this.roomMgr.BetResultData.win_gold > 0),
                                this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                                this.IsStopSuc = false)
                    }
                }
                ,
                e.prototype.GameEndEdStatus = function (t, e) {
                    var i = this;
                    this.scheduleOnce(function () {
                        i.gameStatus = h.enum_Game1050Status.GAME_ENDED,
                            i.ControlBtnEnable(),
                            i.UpdatePlayAwardAllLine()
                    }, t ? e || 1 : 0)
                }
                ,
                e.prototype.ShowStopLuckSpr = function (t) {
                    if (t) {
                        for (var e in t)
                            if (Object.prototype.hasOwnProperty.call(t, e)) {
                                var i = t[e]
                                    , n = this.Award9AnimSpr[Number(e) - 1];
                                n && this.HDSprStrArr[i] && (n.getChildByName("spr_prop").active = true,
                                    this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, n), this.HDSprStrArr[i]),
                                    7 == i ? this.addWildPrefab(n) : this.roomMgr.bundleLoadSpine(n, this.SpineStrArr[i]),
                                    n.active = true)
                            }
                        this.LineParentNode.active = true
                    }
                }
                ,
                e.prototype.PlayAwardSingleLine = function (t, e) {
                    if (t) {
                        this.AwardLineArr[t.roll - 1].active = true;
                        for (var i = this.Award9AnimArray[t.roll - 1], n = 0; n < i.length; n++) {
                            var o = i[n]
                                , a = this.Award9AnimSpr[o];
                            if (a.getChildByName("light_halo2").active = true,
                                a.getChildByName("shine_glow").active = true,
                                a.getChildByName("star").active = true,
                                !a.active) {
                                this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, a), null);
                                var r = a.getChildByName("wild");
                                r && (r.active = false),
                                    a.active = true;
                                var s = e.props[o + 1];
                                7 == s ? (this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, a), this.HDSprStrArr[0]),this.addWildPrefab(a, true)) 
                                    : (this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, a), this.HDSprStrArr[s]), this.roomMgr.bundleLoadSpine(a, this.SpineStrArr[s]))
                            }
                        }
                        this.LineParentNode.active = true;
                        var l = !this.roomMgr.isLuckMode;
                        this.LineParentNode.getChildByName("bg").active = l,
                            this.roomMgr.isLuckMode && this.playAwardAllSpineAnimation()
                    }
                }
                ,
                e.prototype.playAwardAllSpineAnimation = function () {
                    for (var t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e = this.Award9AnimSpr[t]
                            , i = this.GetWndComponent("SpineNode", sp.Skeleton, e);
                        e && i && i.setAnimation(0, "animation", true)
                    }
                }
                ,
                e.prototype.PlayLuckEffect = function () {
                    this.PandaLuckyBg.getComponent(cc.Animation).play()
                }
                ,
                e.prototype.StopLuckEffect = function () {
                    this.PandaLuckyBg.getComponent(cc.Animation).stop(),
                        this.PandaLuckyBg.getComponent(cc.Animation).setCurrentTime(0, "lucky_light")
                }
                ,
                e.prototype.ReplayGameStates = function () {
                    for (var t = 0; t < this.AwardLineArr.length; t++)
                        (e = this.AwardLineArr[t]).active = false;
                    for (t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e, i = (e = this.Award9AnimSpr[t]).getChildByName("wild");
                        i && (i.active = false),
                            e.active = false
                    }
                    this.LineParentNode.active = false,
                        this.LuckModeAniNode.getComponent(cc.Animation).stop()
                        this.LuckModeAniNode.getComponent(cc.Animation).setCurrentTime(0, "scene_x10")
                }
                ,
                e.prototype.RequestBet = function () {
                    if (this.NoBetTime = 0,
                        this.gameStatus == h.enum_Game1050Status.INIT || this.gameStatus == h.enum_Game1050Status.GAME_ENDED) {
                        if (app.GameConfigManager().GetManufacturerFiltering() && app.UserManager().GetIsOfficialPopup())
                            return;
                        if (!this.checkLimitBetNum())
                            return;
                        if (!this.checkGoldLimit())
                            return;
                        var t = this.getFormatBetNum();
                        return Number(t) > this.userAllGold ? void this.InsufficientGoldCallBack() : (2 == this.betType && this.autoStopData.Rounds > 0 && (this.autoStopData.Rounds = this.autoStopData.Rounds - 1,
                            this.AutoNumLabel.string = "" + this.autoStopData.Rounds),
                            this.roomMgr.setGameDefaultBetGold({
                                bet: this.roomMgr.BaseBetNum,
                                level: this.roomMgr.Level,
                                subGold: t + ""
                            }),
                            this.NewRecBetResult(),
                            this.schedule(this.UpdateResendBet, 10),
                            this.roomMgr.RequestGameBet(),
                            void app.SoundManager().PlaySound("game1050_panda_betclick"))
                    }
                    this.IsSucResult && (this.IsStopSuc || this.BtnCanStop && (this.roomMgr.isAutoIng || this.gameStatus != h.enum_Game1050Status.GAME_END && this.ManualStop(true)))
                }
                ,
                e.prototype.ManualStop = function (t) {
                    var e = this;
                    if (!this.IsStopSuc) {
                        this.IsStopSuc = true,
                            this.roomMgr.isLuckMode ? this.OnSetAnimationSpeed(1) : this.OnSetAnimationSpeed(t ? 3 : 1);
                        var i = this.roomMgr.isLuckMode ? 5.5 : 0;
                        this.scheduleOnce(function () {
                            e.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                                e.unschedule(e.AnimationPlayEnd),
                                e.AnimationPlayEnd(),
                                e.GameNode.getComponent(cc.Animation).currentClip.speed = e.AllAnimSpeed;
                            var t = e.roomMgr.BetResultData.win_gold > 0 ? 2 : .5;
                            e.Node_AutoStart.getComponent(cc.Button).interactable = false,
                                e.roomMgr.bundleloadres(e.GetWndComponent("icon_halo", cc.Sprite, e.Node_AutoStart), "atlas/icon_disable"),
                                e.scheduleOnce(function () {
                                    e.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                                        e.Node_AutoStart.getComponent(cc.Button).interactable = true,
                                        e.roomMgr.bundleloadres(e.GetWndComponent("icon_halo", cc.Sprite, e.Node_AutoStart), "atlas/icon_halo")
                                }, t)
                        }, i)
                    }
                }
                ,
                e.prototype.BetClick = function () {
                    if (this.roomMgr.GameDates && !this.IsAnimIng) {
                        var t = this.roomMgr.IsTurbo && !this.roomMgr.isLuckMode ? 3 : 1;
                        this.IsLuckyAnim = 1 * Math.random() > .9,
                            this.IsLuckyAnim && (t = 1),
                            this.OnSetAnimationSpeed(t),
                            2 != this.betType ? this.RequestBet() : this.stopAutoBet()
                    }
                }
                ,
                e.prototype.OnClick = function (t) {
                    if ("btn_start" == t) {
                        var e = this.roomMgr.IsTurbo && !this.roomMgr.isLuckMode ? 3 : 1;
                        return this.OnSetAnimationSpeed(e),
                            2 == this.betType ? void this.stopAutoBet() : void this.RequestBet()
                    }
                    if ("btn_back" != t) {
                        if ("btn_turbo" == t)
                            return this.roomMgr.IsTurbo = !this.roomMgr.IsTurbo,
                                this.SwitchTurboBtn(),
                                void (this.roomMgr.IsTurbo ? (this.OnSetAnimationSpeed(3),
                                    this.ShowPlayHintTips(h.Game1050TipsType.TURBO_ON)) : (this.OnSetAnimationSpeed(1),
                                        this.ShowPlayHintTips(h.Game1050TipsType.TURBO_OFF)));
                        if ("btn_auto" != t)
                            if ("label_gold" != t)
                                if ("label_win" != t && "btn_history" != t) {
                                    if ("btn_minus" == t || "btn_add" == t) {
                                        cc.tween(this.GetWndNode("win_gold/label_gold")).to(.1, {
                                            scale: 1.5
                                        }).to(.1, {
                                            scale: 1
                                        }).to(.1, {
                                            scale: 1.2
                                        }).to(.1, {
                                            scale: 1
                                        }).start();
                                        var i = app.GameBetCommonMgr().betAmountConfig;
                                        if ("btn_minus" == t)
                                            this.roomMgr.AddAndReduceIdx + 2 == i.length && this.ShowPlayHintTips(h.Game1050TipsType.MinimumBet),
                                                this.roomMgr.AddAndReduceIdx += 1;
                                        else {
                                            if ("btn_add" != t)
                                                return;
                                            this.roomMgr.AddAndReduceIdx - 2 < 0 && this.ShowPlayHintTips(h.Game1050TipsType.MaximumBet),
                                                this.roomMgr.AddAndReduceIdx -= 1
                                        }
                                        var n = i[this.roomMgr.AddAndReduceIdx];
                                        if (n) {
                                            var o = app.GameBetCommonMgr().IndexJson[n]
                                                , a = {
                                                    amount: n,
                                                    level: app.GameBetCommonMgr().betLevelConfig[o.LevelIndex],
                                                    basebetnum: app.GameBetCommonMgr().betSizeConfig[o.sizeIndex]
                                                };
                                            this.EventTypeGetAmount(a)
                                        }
                                        this.checkBtnAddLevel(),
                                            this.checkBtnMinusLevel()
                                    }
                                    "bigwin" != t && ("btn_close" != t ? "btn_menu" != t && "btn_help" != t || this.SwitchSetNodeAndBetNode(this.nodeOperate.active) : this.settingNode.active = false)
                                } else {
                                    if (app.GameConfigManager().GetManufacturerFiltering() && app.UserManager().GetIsOfficialPopup())
                                        return;
                                    this.gameStatus != h.enum_Game1050Status.INIT && this.gameStatus != h.enum_Game1050Status.GAME_ENDED || app.FormManager().ShowForm(h.Game1050UIName.UIGame1050Record)
                                }
                            else
                                app.GameBetCommonMgr().LoadGameBet(s.ShowCommonType.bet_options, this.roomMgr.BaseBetNum, this.roomMgr.Level, this.userAllGold, this.getWinNumber());
                        else {
                            if (app.GameConfigManager().GetManufacturerFiltering() && app.UserManager().GetIsOfficialPopup())
                                return;
                            this.roomMgr.isAutoIng ? this.stopAutoBet() : app.GameBetCommonMgr().LoadGameBet(s.ShowCommonType.bet_auto, this.getFormatBetNum(), this.userAllGold, this.getWinNumber())
                        }
                    } else
                        app.GameManager().BackHallScene()
                }
                ,
                e.prototype.OnGameBetCommon = function (t) {
                    t && app.FormManager().ShowForm(s.GameCommonUIName.UIGameBetCommon, t.customData)
                }
                ,
                e.prototype.ShowPlayHintTips = function (t) {
                    app.FormManager().ShowForm(h.Game1050UIName.UIGame1050Tips, t)
                }
                ,
                e.prototype.SwitchTurboBtn = function () {
                    this.TurboBtn.getComponent(p.default).BSwitch = this.roomMgr.IsTurbo
                }
                ,
                e.prototype.getRollTime = function () {
                    if (!this.IsSucResult)
                        return this.IsLongTime = true,
                            9999;
                    if (this.IsAnimIng && !this.roomMgr.isLuckMode)
                        return 2;
                    var t = 0;
                    return t = .5,
                        t = this.roomMgr.isLuckMode ? 1 : t,
                        0 == this.roomMgr.LuckIndex && this.roomMgr.isLuckMode && (t = 5.5),
                        t
                }
                ,
                e.prototype.updateMyGold = function (t) {
                    t >= 0 && (app.Client.OnEvent(r.GameEventDefine.UPDATE_USER_INFO, {
                        gold: t
                    }),
                        this.userAllGold = t,
                        this.lbl_Usergold.string = "" + (app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(Number(this.userAllGold.toFixed(2)))))
                }
                ,
                e.prototype.autobetCondition = function () {
                    if (app.GameConfigManager().GetManufacturerFiltering() && app.UserManager().GetIsOfficialPopup())
                        return false;
                    if (!this.checkLimitBetNum())
                        return false;
                    if (this.gameStatus != h.enum_Game1050Status.INIT && this.gameStatus != h.enum_Game1050Status.GAME_ENDED)
                        return false;
                    var t = this.NumkeyBoard.string;
                    return !(Number(t) > this.userAllGold && (this.InsufficientGoldCallBack(),
                        1))
                }
                ,
                e.prototype.stopAutoBet = function () {
                    clearInterval(this.createTimer),
                        this.roomMgr.isAutoIng = false,
                        this.betType = 1,
                        this.switchBetType()
                }
                ,
                e.prototype.stopAutoBetCondition = function () {
                    if (0 == this.autoStopData.Rounds)
                        return this.stopAutoBet(),
                            false;
                    var t = this.getFormatBetNum();
                    return !(Number(t) > this.userAllGold && (this.InsufficientGoldCallBack(),
                        this.stopAutoBet(),
                        1))
                }
                ,
                e.prototype.startAutoBet = function () {
                    this.autobetCondition() && (Number(this.AutoNumLabel.string) > 0 && (this.autoStopData.Rounds = Number(this.AutoNumLabel.string)),
                        this.createAutoBet(),
                        this.betType = 2,
                        this.switchBetType())
                }
                ,
                e.prototype.checkGoldLimit = function () {
                    var t = app.GameConfigManager().GameBetLimit(app.UserManager().GetUserInfo.roomMode);
                    return !(app.UserManager().GetUserInfo.gold < t && (app.SysNotifyManager().ShowToast("Error_Define_50014", [t]),
                        1))
                }
                ,
                e.prototype.checkLimitBetNum = function () {
                    var t = app.GameConfigManager().GameBetAmountLimit(this.roomMgr.gameId, this.roomMgr._roomMode)
                        , e = Number(this.getFormatBetNum());
                    return t.min > 0 && e < t.min ? (app.SysNotifyManager().ShowToast("UI_GameBetMin", [t.min]),
                        false) : !(t.max > 0 && e > t.max && (app.SysNotifyManager().ShowToast("UI_GameBetMax", [t.max]),
                            1))
                }
                ,
                e.prototype.createAutoBet = function () {
                    var t = this;
                    this.autoStopData.Rounds <= 0 && (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.Normal)),
                        clearInterval(this.createTimer),
                        this.roomMgr.isAutoIng = true,
                        this.createTimer = setInterval(function () {
                            t.isValid ? t.stopAutoBetCondition() && t.RequestBet() : clearInterval(t.createTimer)
                        }, 1e3),
                        this.stopAutoBetCondition() && this.RequestBet()
                }
                ,
                e.prototype.switchBetType = function () {
                    2 == this.betType ? this.Node_AutoStart.getComponent(cc.Animation).play(h.Game1050BtnPlayName.auto) : (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1050BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1050BtnPlayName.Normal))
                }
                ,
                e.prototype.GetBigProp = function () {
                    var t = this.AllPropList
                        , e = t.filter(function (t) {
                            return 7 !== t
                        });
                    return t.every(function (t) {
                        return 7 === t
                    }) ? 7 : e.find(function () {
                        return true
                    })
                }
                ,
                e.prototype.OpenGameHelp = function () { }
                ,
                e.prototype.getFormatBetNum = function () {
                    if (!isgoServer) {
                        return -1000
                    }
                    var t = app.GameConfigManager().GetCurrency;
                    if (!t)
                        return Number(this.NumkeyBoard.string.replace(/,/g, "").replace(".00", ""));
                    var e = new RegExp("\\" + t, "g")
                        , i = this.NumkeyBoard.string.replace(e, "").match(/(\d+(\.\d+)?)/g);
                    return i ? i.join("") : ""
                }
                ,
                e.prototype.getLuckAnimationStartName = function () {
                    return this.roomMgr.isLuckMode || this.roomMgr.IsTurbo || this.IsStopSuc ? this.roomMgr.isLuckMode ? "roll_start_b" : "roll_start" : "roll_start_base"
                }
                ,
                e.prototype.getLuckAnimationEndName = function () {
                    return this.roomMgr.isLuckMode || this.roomMgr.IsTurbo || this.IsStopSuc ? this.roomMgr.isLuckMode ? "roll_end_b" : "roll_end" : "roll_end_base"
                }
                ,
                e.prototype.SwitchSetNodeAndBetNode = function (t) {
                    var e = this;
                    if (!this.NodeSwitchIng) {
                        this.NodeSwitchIng = true;
                        var i = t ? this.nodeOperate : this.settingNode
                            , n = t ? this.settingNode : this.nodeOperate
                            , o = t ? -530.388 : -500.388;
                        cc.tween(i).parallel(cc.tween().to(0, {
                            y: o
                        }), cc.tween().to(0, {
                            opacity: 255
                        })).parallel(cc.tween().to(.2, {
                            y: -700.388
                        }), cc.tween().to(.2, {
                            opacity: 0
                        })).call(function () { }).start(),
                            cc.tween(n).parallel(cc.tween().to(0, {
                                y: -700.388
                            }), cc.tween().to(0, {
                                opacity: 0
                            })).parallel(cc.tween().to(.2, {
                                y: o
                            }), cc.tween().to(.2, {
                                opacity: 255
                            })).call(function () {
                                e.nodeOperate.active = !t,
                                    e.settingNode.active = t,
                                    e.NodeSwitchIng = false
                            }).start(),
                            this.nodeOperate.active = true,
                            this.settingNode.active = true,
                            this.GetWndNode("bg/spr_bottom/goldmouth").active = !t,
                            this.BtnMenu.active = !t
                    }
                }
                ,
                e.prototype.ControlBtnDisable = function () {
                    this.BtnAdd.opacity = 100,
                        this.BtnAdd.getComponent(cc.Button).interactable = false,
                        this.BtnMinus.opacity = 100,
                        this.BtnMinus.getComponent(cc.Button).interactable = false,
                        this.BtnAuto.opacity = 100,
                        this.BtnAuto.getComponent(cc.Button).interactable = false,
                        this.BtnMenu.opacity = 100,
                        this.BtnMenu.getComponent(cc.Button).interactable = false
                }
                ,
                e.prototype.ControlBtnEnable = function () {
                    this.checkBtnAddLevel(),
                        this.checkBtnMinusLevel(),
                        this.BtnAuto.opacity = 255,
                        this.BtnAuto.getComponent(cc.Button).interactable = true,
                        this.BtnMenu.opacity = 255,
                        this.BtnMenu.getComponent(cc.Button).interactable = true
                }
                ,
                e.prototype.checkBtnAddLevel = function () {
                    var t = !(this.roomMgr.AddAndReduceIdx - 1 < 0);
                    return this.BtnAdd.opacity = t ? 200 : 100,
                        this.BtnAdd.getComponent(cc.Button).interactable = t,
                        t
                }
                ,
                e.prototype.checkBtnMinusLevel = function () {
                    var t = app.GameBetCommonMgr().betAmountConfig
                        , e = !(this.roomMgr.AddAndReduceIdx + 1 >= t.length);
                    return this.BtnMinus.opacity = e ? 200 : 100,
                        this.BtnMinus.getComponent(cc.Button).interactable = e,
                        e
                }
                ,
                e.prototype.InsufficientGoldCallBack = function () {
                    app.GameConfigManager().GetManufacturerFiltering() ? app.FormManager().ShowForm(l.UINameDefine.UIFreeWindow, {
                        type: s.FreeWindowType.GoldNod
                    }) : app.SysNotifyManager().ShowToast("UI.System_36")
                }
                ,
                e.prototype.onClickCloseBtn = function () {
                    this.roomMgr.LeaveRoom(),
                        app.SoundManager().PlaySound("game1050_BackClick")
                }
                ,
                e.prototype.getWinNumber = function () {
                    var t, e, i, n;
                    return (null === (t = this.roomMgr.BetResultData) || void 0 === t ? void 0 : t.win_gold) ? null === (e = this.roomMgr.BetResultData) || void 0 === e ? void 0 : e.win_gold : (null === (i = this.roomMgr.GameDates) || void 0 === i ? void 0 : i.total_win) ? null === (n = this.roomMgr.GameDates) || void 0 === n ? void 0 : n.total_win : 0
                }
                ,
                e.prototype.OnClose = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e];
                    this.unscheduleAllCallbacks(),
                        this.roomMgr.GameDates = null,
                        app.FormManager().CloseForm(h.Game1050UIName.Game_1050Help),
                        clearInterval(this.createTimer),
                        app.SoundManager().StopAll()
                }
                ,
                __decorate([u, g("UI/prefab/game_1050_V")], e)
        }(d.GameBaseHttpForm));
i.default = _,
    module.exports = i
