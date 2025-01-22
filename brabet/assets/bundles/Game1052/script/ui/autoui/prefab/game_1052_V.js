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
    , h = require("../../../Game1052Define")
    , m = require("../../autoui/prefab/auto_Game_1052_V")
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
                    e.RandomLitsNumMultiple = [],
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
                    e.UpdatePlayIdx = -1,
                    e.node_Score = null,
                    e.ScorePosList = null,
                    e.AllPropList = [],
                    e.OutlineTipsSF = [],
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
                    e.multipleSprStrArrSpriteFrame = [],
                    e
            }
            return __extends(e, t),
                e.prototype.OnCreateInit = function () {
                    //  cc.director.getScheduler().setTimeScale(0.2);
                    var t = this;
                    this.JS_Name = "game_1052_V",
                        this.GameNode = this.GetWndNode("game"),
                        this.RegEvent(h.Game1052HttpAPI.BetResult, this.RecBetResult),
                        this.RegEvent(s.GameCommonEventType.GetRound, this.EventTypeGetRound),
                        this.RegEvent(s.GameCommonEventType.GetAmount, this.EventTypeGetAmount),
                        this.RegEvent(s.GameCommonEventType.PlayBigWinEndEvent, this.OnPlayBigWinEndEvent),
                        this.RegEvent(h.Game1052HttpAPI.GameDates, this.RecGameDates),
                        this.RegSystemEvent(a.default.ENTER_GAME_COMMON, this.OnGameBetCommon),
                        this.lblWinGold = this.GetWndComponent("win_gold/label_win", cc.Label),
                        this.LeftParent = this.GetWndNode("game/prop_left/roll_l"),
                        this.CenterParent = this.GetWndNode("game/prop_center/roll_c"),
                        this.RightParent = this.GetWndNode("game/prop_right/roll_r"),
                        this.multipleBigParent = this.GetWndNode("game/prop_multipleBig/roll_m"),
                        this.multipleParent = this.GetWndNode("game/prop_multiple/roll_m"),
                        this.PacketAnimList = this.GetWndComponent("effect/packet", cc.Animation),
                        this.LuckModeAniNode = this.node.getComponent(cc.Animation),
                        // this.LuckResultPropSpr = this.GetWndComponent("effect/x10/packet/prop", cc.Sprite),
                        this.TurboBtn = this.GetWndNode("operate/btn_turbo"),
                        // this.AwardNdoeAnim = this.GetWndNode("effect/award"),
                        this.lbl_Usergold = this.GetWndComponent("head/gold/label_gold", cc.Label),
                        this.Node_Tips = this.GetWndNode("state"),
                        this.PropHintNode = this.GetWndNode("game/hint_prop"),
                        this.AutoNumLabel = this.GetWndComponent("operate/btn_start/label_auto", cc.Label),
                        this.Node_AutoStart = this.GetWndNode("operate/btn_start"),
                        this.NumkeyBoard = this.GetWndComponent("win_gold/label_gold", cc.Label),
                        // this.node_10XScore = this.GetWndNode("effect/x10/packet/label_10x"),
                        this.BtnMinus = this.GetWndNode("operate/btn_minus"),
                        this.BtnAdd = this.GetWndNode("operate/btn_add"),
                        this.BtnAuto = this.GetWndNode("operate/btn_auto"),
                        this.BtnMenu = this.GetWndNode("btn_menu"),
                        this.lfslabel = this.GetWndComponent("lfs/label", cc.Label)
                    this.lfsnode = this.GetWndNode("lfs/lfs")
                    this.btn_sureWin = this.GetWndNode("effect/btn_sureWin")
                    this.sw_window = this.GetWndNode("effect/sw_window")
                    this.sw_wallet_prize = this.GetWndNode("win_gold/sw_wallet_prize")
                    this.multipleBig_node1_prop = []
                    this.multipleBig_node2_prop = []
                    this.multipleBig_node3_prop = []
                    this.multipleBig_node1_prop[0] = this.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop1")
                    this.multipleBig_node1_prop[1] = this.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop2")
                    this.multipleBig_node1_prop[2] = this.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop3")
                    this.multipleBig_node1_prop[3] = this.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop4")
                    this.multipleBig_node2_prop[0] = this.multipleBigParent.getChildByName("spr_node2").getChildByName("spr_prop1")
                    this.multipleBig_node2_prop[1] = this.multipleBigParent.getChildByName("spr_node2").getChildByName("spr_prop2")
                    this.multipleBig_node2_prop[2] = this.multipleBigParent.getChildByName("spr_node2").getChildByName("spr_prop3")
                    this.multipleBig_node2_prop[3] = this.multipleBigParent.getChildByName("spr_node2").getChildByName("spr_prop4")
                    this.multipleBig_node3_prop[0] = this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop1")
                    this.multipleBig_node3_prop[1] = this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop2")
                    this.multipleBig_node3_prop[2] = this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop3")
                    this.multipleBig_node3_prop[3] = this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop4")

                    this.multiple_node1_prop = []
                    this.multiple_node2_prop = []
                    this.multiple_node3_prop = []
                    this.multiple_node1_prop[0] = this.multipleParent.getChildByName("spr_node1").getChildByName("spr_prop1")
                    this.multiple_node1_prop[1] = this.multipleParent.getChildByName("spr_node1").getChildByName("spr_prop2")
                    this.multiple_node2_prop[0] = this.multipleParent.getChildByName("spr_node2").getChildByName("spr_prop1")
                    this.multiple_node2_prop[1] = this.multipleParent.getChildByName("spr_node2").getChildByName("spr_prop2")
                    this.multiple_node3_prop[0] = this.multipleParent.getChildByName("spr_node3").getChildByName("spr_prop1")
                    this.multiple_node3_prop[1] = this.multipleParent.getChildByName("spr_node3").getChildByName("spr_prop2")


                    this.PandaLuckyBg = this.GetWndNode("panda"),
                        this.GameNode.getComponent(cc.Animation).on("finished", function (e, i) {
                            "normal3_pai" != i.name && "za_ani_bg" != i.name && t.AnimationFinished(i.name)
                        }, this),
                        this.spConfig = {},
                        this.spConfig[h.Game1052DragonBonesName.Normal] = {
                            loop: true,
                            mark: false
                        },
                        this.spConfig[h.Game1052DragonBonesName.Normal2] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.Normal3] = {
                            loop: false,
                            mark: false
                        },
                        this.spConfig[h.Game1052DragonBonesName.za] = {
                            loop: false,
                            mark: false
                        },
                        this.spConfig[h.Game1052DragonBonesName.nod] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.win_nod] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.stare_happy] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.anger] = {
                            loop: false,
                            mark: true
                        },
                        // this.spConfig[h.Game1052DragonBonesName.happy] = {
                        //     loop: true,
                        //     mark: true
                        // },
                        // this.spConfig[h.Game1052DragonBonesName.happy_win_show] = {
                        //     loop: false,
                        //     mark: true
                        // },
                        this.spConfig[h.Game1052DragonBonesName.happy_win_loop] = {
                            loop: true,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.happy_win_end] = {
                            loop: false,
                            mark: true
                        },
                        this.spConfig[h.Game1052DragonBonesName.normal_show] = {
                            loop: false,
                            mark: false
                        },
                        // this.spConfig[h.Game1052DragonBonesName.stare] = {
                        //     loop: false,
                        //     mark: true
                        // },
                        // this.spConfig[h.Game1052DragonBonesName.stare_loop] = {
                        //     loop: true,
                        //     mark: true
                        // },

                        this.spConfig[h.Game1052DragonBonesName.gold_seq] = {
                            loop: false,
                            mark: true
                        },
                        this.PandaDragonbones = this.GetWndComponent("panda/panda", sp.Skeleton),
                        this.DragonbonesGold = this.GetWndComponent("panda/GoldDragon", sp.Skeleton),
                        this.DragonbonesGold2 = this.GetWndComponent("GoldDragon/GoldDragon", sp.Skeleton),
                        this.GameNode.getComponent(cc.Animation).EndStop = function () {
                            app.SoundManager().PlaySound("game1052_gun_stop"),
                                t.unschedule(t.playGunSound)
                        }
                        ,
                        this.PacketAnimList.getComponent(cc.Animation).ToRed = function () {
                            app.SoundManager().PlaySound("game1052_panda_redbag")
                        }
                        ,
                        this.LuckModeAniNode.getComponent(cc.Animation).showred = function (t) {
                            // "1" == t ? app.SoundManager().PlaySound("game1052_showred") : "2" == t ? app.SoundManager().PlaySound("game1052_showred2") : "3" == t && app.SoundManager().PlaySound("game1052_maybe2")
                        }
                        ,
                        this.scheduleOnce(function () {
                            t.PandaDragonbones.setMix(h.Game1052DragonBonesName.Normal2, h.Game1052DragonBonesName.nod, .2)
                            // t.PandaDragonbones.setMix(h.Game1052DragonBonesName.Normal, h.Game1052DragonBonesName.stare, 1)
                        }, 1),
                        this.PandaDragonbones.setEventListener(function (e, i) {
                            var n = i.data.name;
                            "win_nod_ani" == n && app.SoundManager().PlaySound("game1052_panda_nice_" + Math.round(2 * Math.random() + 1))
                            //"normal3_ani" == n && t.GameNode.getComponent(cc.Animation).playAdditive("normal3_pai"),
                            // "za_ani" == n && t.GameNode.getComponent(cc.Animation).playAdditive("za_ani_bg")
                        }),

                        this.PandaDragonbones.setCompleteListener(function (e) {
                            switch (e.animation.name) {
                                case h.Game1052DragonBonesName.Normal:
                                    t.setRandomIdleAnimation();
                                    break;
                                case h.Game1052DragonBonesName.stare:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1052DragonBonesName.stare_loop),
                                        t.IsSpPlayIng = false;
                                    break;
                                // case h.Game1052DragonBonesName.stare_loop:
                                //     t.IsSpPlayIng = false;
                                //     break;
                                case h.Game1052DragonBonesName.stare_happy:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1052DragonBonesName.happy_win_loop);
                                    break;
                                // case h.Game1052DragonBonesName.happy:
                                //     t.IsSpPlayIng = false,
                                //         t.IsSpLuckyEnd && (t.PlayDragonBonesControl(h.Game1052DragonBonesName.happy_win_show),
                                //             t.IsSpLuckyEnd = false);
                                //     break;
                                // case h.Game1052DragonBonesName.happy_win_show:
                                //     t.IsSpPlayIng = false,
                                //         t.PlayDragonBonesControl(h.Game1052DragonBonesName.happy_win_loop);
                                //     break;
                                case h.Game1052DragonBonesName.happy_win_loop:
                                    t.PandaDragonbones.node.active = false
                                    t.DragonbonesGold.node.active = true
                                    t.DragonbonesGold2.node.active = true
                                    t.IsSpPlayIng = false
                                    t.PlayDragonBonesControlGold(h.Game1052DragonBonesName.gold_seq);

                                    //  t.PandaDragonbones.setAnimation(1, "fx_idle3", true)
                                    break;
                                case h.Game1052DragonBonesName.happy_win_end:
                                    t.IsSpPlayIng = false,
                                        t.roomMgr.BetResultData.big_win || t.GameEndEdStatus(true, 1),
                                        t.PlayDragonBonesControl(h.Game1052DragonBonesName.normal_show),
                                        t.LuckModeAniNode.getComponent(cc.Animation).stop(),
                                        t.LuckModeAniNode.getComponent(cc.Animation).play("scene_LuckEnd");
                                    break;
                                case h.Game1052DragonBonesName.nod:
                                case h.Game1052DragonBonesName.Normal2:
                                case h.Game1052DragonBonesName.Normal3:
                                case h.Game1052DragonBonesName.za:
                                case h.Game1052DragonBonesName.win_nod:
                                case h.Game1052DragonBonesName.normal_show:
                                case h.Game1052DragonBonesName.anger:
                                    t.IsSpPlayIng = false,
                                        t.PlayDragonBonesControl(h.Game1052DragonBonesName.Normal)
                            }
                        });
                    this.DragonbonesGold.setCompleteListener(function (e) {
                        switch (e.animation.name) {
                            case h.Game1052DragonBonesName.gold_seq:
                                t.IsSpPlayIng = false,
                                    t.PlayDragonBonesControlGold(h.Game1052DragonBonesName.Normal);
                                break;
                            case h.Game1052DragonBonesName.Normal:
                                t.IsSpPlayIng = false
                                // t.IsSpLuckyEnd && (t.PlayDragonBonesControlGold(h.Game1052DragonBonesName.win_nod),
                                // t.IsSpLuckyEnd = false);
                                if (t.IsSpLuckyEnd) {
                                    t.IsSpLuckyEnd = false
                                    t.PandaDragonbones.node.active = true
                                    t.DragonbonesGold.node.active = false
                                    t.DragonbonesGold2.node.active = false
                                    t.IsSpPlayIng = false,
                                        t.roomMgr.BetResultData.big_win || t.GameEndEdStatus(true, 1),
                                        t.PlayDragonBonesControl(h.Game1052DragonBonesName.normal_show),
                                        t.LuckModeAniNode.getComponent(cc.Animation).stop(),
                                        t.LuckModeAniNode.getComponent(cc.Animation).play("scene_LuckEnd");
                                }
                                break;
                            case h.Game1052DragonBonesName.win_nod:
                                t.IsSpPlayIng = false
                                t.PlayDragonBonesControlGold(h.Game1052DragonBonesName.Normal)
                                break;
                        }
                    });
                    var e = "atlas/prop/";
                    this.HDSprStrArr = [],
                        this.HDSprStrArr[h.GameProp.NullBox] = null,
                        this.HDSprStrArr[h.GameProp.Bamboo] = e + "h1_coins",
                        this.HDSprStrArr[h.GameProp.Peach] = e + "h2_ribbon",
                        this.HDSprStrArr[h.GameProp.PurpleDiamonds] = e + "h3_firecracker",
                        this.HDSprStrArr[h.GameProp.Weapon] = e + "h4_lantern",
                        this.HDSprStrArr[h.GameProp.LuckyBag] = e + "h5_angbao",
                        this.HDSprStrArr[h.GameProp.Yupei] = e + "h6_ingot",
                        this.HDSprStrArr[h.GameProp.Omnipotence] = e + "prop_wild",
                        this.SpineStrArr[h.GameProp.NullBox] = null,
                        this.SpineStrArr[h.GameProp.Bamboo] = "9Grid/h1_coins_atlas_symbols",
                        this.SpineStrArr[h.GameProp.Peach] = "9Grid/h2_ribbon_atlas_symbols",
                        this.SpineStrArr[h.GameProp.PurpleDiamonds] = "9Grid/h3_firecracker_shadow_atlas_symbols",
                        this.SpineStrArr[h.GameProp.Weapon] = "9Grid/h4_lantern_atlas_symbols",
                        this.SpineStrArr[h.GameProp.LuckyBag] = "9Grid/h5_angbao_atlas_symbols",
                        this.SpineStrArr[h.GameProp.Yupei] = "9Grid/h6_ingot_atlas_symbols",
                        this.BlurSprStrArr = [],
                        this.BlurSprStrArr[h.GameProp.NullBox] = null,
                        this.BlurSprStrArr[h.GameProp.Bamboo] = e + "h1_coins_blur",
                        this.BlurSprStrArr[h.GameProp.Peach] = e + "h2_ribbon_blur",
                        this.BlurSprStrArr[h.GameProp.PurpleDiamonds] = e + "h3_firecracker_blur",
                        this.BlurSprStrArr[h.GameProp.Weapon] = e + "h4_lantern_blur",
                        this.BlurSprStrArr[h.GameProp.LuckyBag] = e + "h5_angbao_blur",
                        this.BlurSprStrArr[h.GameProp.Yupei] = e + "h6_ingot_blur",
                        this.BlurSprStrArr[h.GameProp.Omnipotence] = e + "prop_wild_roll",

                        // this.multipleSprStrArr = [],
                        // this.multipleSprStrArr[2] = e + "mul_x2",
                        // this.multipleSprStrArr[5] = e + "mul_x5",
                        // this.multipleSprStrArr[10] = e + "mul_x10",
                        this.multipleSprStrArr = [],
                        this.multipleSprStrArr[2] = this.multipleSprStrArrSpriteFrame[0],
                        this.multipleSprStrArr[5] = this.multipleSprStrArrSpriteFrame[1],
                        this.multipleSprStrArr[10] = this.multipleSprStrArrSpriteFrame[2],

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
                        this.EndSprNodeList567 = [],
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_left/roll_l/spr_prop5")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_left/roll_l/spr_prop6")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_left/roll_l/spr_prop7")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_center/roll_c/spr_prop5")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_center/roll_c/spr_prop6")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_center/roll_c/spr_prop7")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_right/roll_r/spr_prop5")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_right/roll_r/spr_prop6")),
                        this.EndSprNodeList567.push(this.GetWndNode("game/prop_right/roll_r/spr_prop7")),
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

                        this.PropHintPosList = [],
                        this.PropHintPosList[0] = cc.v2(-125.843, 0 + 200),
                        this.PropHintPosList[1] = cc.v2(-125.843, 0),
                        this.PropHintPosList[2] = cc.v2(-125.843, 0 - 200),
                        this.PropHintPosList[3] = cc.v2(94.157, 0 + 200),
                        this.PropHintPosList[4] = cc.v2(94.157, 0),
                        this.PropHintPosList[5] = cc.v2(94.157, 0 - 200),
                        this.PropHintPosList[6] = cc.v2(125.843, 0 + 200),
                        this.PropHintPosList[7] = cc.v2(125.843, 0),
                        this.PropHintPosList[8] = cc.v2(125.843, 0 - 200),
                        this.PropTimeList = [],
                        this.PropTimeList[0] = 2,
                        this.PropTimeList[1] = 3,
                        this.PropTimeList[2] = 5,
                        this.PropTimeList[3] = 10,
                        this.PropTimeList[4] = 25,
                        this.PropTimeList[5] = 50,
                        this.PropTimeList[6] = 100,
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
                        if (t.roomMgr.BetResultData) {
                            t.roomMgr.BetResultData.end_gold += e.amount + Number(e.send_gold)
                        }
                        t.updateMyGold(t.userAllGold += e.amount + Number(e.send_gold))
                    })
                }
                ,
                e.prototype.setRandomIdleAnimation = function () {
                    var t = this
                        , e = Math.random;
                    if (this.NoBetTime > 15)
                        return this.NoBetTime = 0,
                            void (e() < .7 && this.PlayDragonBonesControl(e() <= .5 ? h.Game1052DragonBonesName.Normal3 : h.Game1052DragonBonesName.za));
                    e() < .2 && (this.PlayDragonBonesControl(h.Game1052DragonBonesName.Normal2),
                        //  this.PacketAnimList.playAdditive("packet2"),
                        this.scheduleOnce(function () {
                            //  t.PacketAnimList.playAdditive("packet")
                        }, 2))
                }
                ,
                e.prototype.EventTypeGetAmount = function (t) {
                    this.roomMgr.Level = t.level
                    app.GameBetCommonMgr().Level = t.level
                    if (this.roomMgr.sureWin == 1) {
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(t.amount * 5)
                    }
                    else {
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(t.amount)
                    }
                    this.roomMgr.AddAndReduceIdx = app.GameBetCommonMgr().betAmountConfig.indexOf(Number(t.amount))
                    this.roomMgr.BaseBetNum = t.basebetnum
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
                    this.IsSpPlayIng && this.PandaDragonbones.animation != h.Game1052DragonBonesName.nod || this.PandaDragonbones.animation == t && this.PandaDragonbones.animation != h.Game1052DragonBonesName.nod || this.playDragonName(t)
                },
                e.prototype.PlayDragonBonesControlGold = function (t) {
                    this.IsSpPlayIng && this.DragonbonesGold.animation != h.Game1052DragonBonesName.nod || this.DragonbonesGold.animation == t && this.DragonbonesGold.animation != h.Game1052DragonBonesName.nod || this.playDragonNameGold(t)
                }
                ,
                e.prototype.playDragonName = function (t) {
                    var e = this.spConfig[t];
                    e && (this.PandaDragonbones.setAnimation(0, t, e.loop),
                        e.mark && (this.IsSpPlayIng = true))
                },
                e.prototype.playDragonNameGold = function (t) {
                    var e = this.spConfig[t];
                    e && (this.DragonbonesGold.setAnimation(0, t, e.loop),
                        this.DragonbonesGold2.setAnimation(0, t, e.loop),
                        e.mark && (this.IsSpPlayIng = true))
                }
                ,
                e.prototype.updateTipIndex = function () {
                    if (this.GetWndNode("nodeLabel/label", this.Node_Tips).active) {
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
                            t.schedule(t.updateTipIndex, 1)
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
                e.prototype.PlayTipsIndex = function (t, win_amount, animationName) {
                    var i = this;
                    if (t <= h.TipsType.randomTip4) {
                        var n = this.TipsList[t];
                        n && (this.GetWndComponent("nodeLabel/label", cc.Sprite, this.Node_Tips).spriteFrame = n
                            //this.GetWndComponent("nodeLabel/label", cc.Label, this.Node_Tips)._forceUpdateRenderData()
                        )
                    }
                    else if (t == h.TipsType.goldTips) {
                        if (!win_amount) {
                            if (this.roomMgr.BetResultData.win_gold <= 0) {
                                return;
                            }
                        }

                        if (!animationName) {
                            animationName = "state_gold_new"
                            this.Node_Tips.getComponent(cc.Animation).play(animationName),
                                this.Node_Tips.getComponent(cc.Animation).once("finished", function () {
                                    i.Node_Tips.getComponent(cc.Animation).play("state_gold_normal")
                                }, this)
                            if (win_amount) {
                                this.GetWndComponent("gold/layout_num/label", cc.Label, this.Node_Tips).string = "" + this.roomMgr.addThousandSeparator(win_amount)
                            }
                            else {
                                this.GetWndComponent("gold/layout_num/label", cc.Label, this.Node_Tips).string = "" + this.roomMgr.addThousandSeparator(this.roomMgr.BetResultData.win_gold)
                            }
                            let tipsOddsKey = this.getTipsOddsKey(win_amount)
                            this.GetWndNode("gold/spr_bg1", this.Node_Tips).active = tipsOddsKey == 0
                            this.GetWndNode("gold/spr_bg2", this.Node_Tips).active = tipsOddsKey == 1
                            this.GetWndNode("gold/spr_bg3", this.Node_Tips).active = tipsOddsKey == 2
                        }
                        else {
                            this.Node_Tips.getComponent(cc.Animation).play(animationName),
                                this.Node_Tips.getComponent(cc.Animation).once("finished", function () {
                                    i.Node_Tips.getComponent(cc.Animation).play("state_gold_normal")
                                }, this)
                            let self = this
                            this.Node_Tips.getComponent(cc.Animation).state_goldFunc = function () {
                                if (win_amount) {
                                    self.GetWndComponent("gold/layout_num/label", cc.Label, self.Node_Tips).string = "" + self.roomMgr.addThousandSeparator(win_amount)
                                }
                                else {
                                    self.GetWndComponent("gold/layout_num/label", cc.Label, self.Node_Tips).string = "" + self.roomMgr.addThousandSeparator(self.roomMgr.BetResultData.win_gold)
                                }
                                let tipsOddsKey = self.getTipsOddsKey(win_amount)
                                self.GetWndNode("gold/spr_bg1", self.Node_Tips).active = tipsOddsKey == 0
                                self.GetWndNode("gold/spr_bg2", self.Node_Tips).active = tipsOddsKey == 1
                                self.GetWndNode("gold/spr_bg3", self.Node_Tips).active = tipsOddsKey == 2
                            }
                        }

                    }
                    this.GetWndNode("nodeLabel/label", this.Node_Tips).active = t <= h.TipsType.randomTip5
                    this.GetWndNode("gold", this.Node_Tips).active = h.TipsType.goldTips == t
                }
                ,
                e.prototype.getTipsOddsKey = function (win_amount) {
                    var t = this.roomMgr.BetResultData.win_gold / this.roomMgr.BetResultData.bet_gold;
                    if (win_amount) {
                        t = win_amount / this.roomMgr.BetResultData.bet_gold;
                    }
                    return t < 5 ? 0 : t < 20 && t >= 5 ? 1 : t >= 20 ? 2 : 0
                }
                ,
                e.prototype.PlayVoleWinAnim = function () {
                    var t = this;
                    if (this.roomMgr.BetResultData.type == 2) {
                        this.PlayBigWinAnim2()
                    } else
                        this.PlayBigWinAnim()
                }
                ,
                e.prototype.PlayBigWinAnim = function () {
                    var t = "" + this.roomMgr.BetResultData.win_gold;
                    app.FormManager().ShowForm(h.Game1052UIName.UIGame1052BigWin, 0, t, this.roomMgr.isAutoIng)
                }
                ,
                e.prototype.PlayBigWinAnim3 = function (t) {
                    app.FormManager().ShowForm(h.Game1052UIName.UIGame1052BigWin, 0, t, true, 2)
                }
                ,
                e.prototype.PlayBigWinAnim2 = function () {
                    var t = "" + this.roomMgr.BetResultData.win_gold;
                    app.FormManager().ShowForm(h.Game1052UIName.UIGame1052BigWinLuck, 0, t, this.roomMgr.isAutoIng)
                }
                ,
                e.prototype.OnPlayBigWinEndEvent = function (data) {
                    if (data == 2) {
                        this.LuckPlayAwardAllLine2(true)
                        //  this.playAnimationList()
                    }
                    else {
                        this.roomMgr.BetResultData && (this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                            this.GameEndEdStatus(),
                            this.PlayTipsIndex(h.TipsType.goldTips),
                            this.PlayDragonBonesControl(h.Game1052DragonBonesName.Normal),
                            this.IsStopSuc = false)
                    }
                }
                ,
                e.prototype.PlayLuckAnimation = function () {
                    var t = this;
                    this.LuckModeAniNode.off("finished", null, true)
                    if (this.roomMgr.isLuckMode || this.IsLuckyAnim) {
                        this.LuckModeAniNode.play(),
                            //  app.SoundManager().PlaySound("game1052_maybe"),
                            t.roomMgr.isLuckMode ? (this.PlayDragonBonesControl(h.Game1052DragonBonesName.stare_happy)) : (this.PlayDragonBonesControl(h.Game1052DragonBonesName.anger)),
                            this.IsAnimIng = true,
                            this.IsLuckyAnim = false,
                            this.LuckModeAniNode.once("finished", function () {
                                t.roomMgr.isLuckMode ? (//t.PlayDragonBonesControl(h.Game1052DragonBonesName.stare_happy),
                                    //   t.PandaDragonbones.setAnimation(1, h.Game1052DragonBonesName.stare_happy, false),
                                    //  t.PandaDragonbones.clearTrack(1),
                                    app.SoundManager().PlayBackMusic("game1052_RespinBGM", true),
                                    t.LuckModeAniNode.play("scene_LuckIdle"),
                                    t.PlayLuckEffect(),
                                    t.ReplayLuckPropSwitch = true,
                                    t.LuckModeAniNode.once("finished", function () {
                                        t.ReplayLuckPropSwitch = true
                                        t.PlayTipsIndex(h.TipsType.randomTip4)
                                    }, t)) : (t.LuckModeAniNode.play("scene_LuckCanel"),//t.PlayDragonBonesControl(h.Game1052DragonBonesName.anger),
                                        app.SoundManager().PlaySound("game1052_en_")),
                                    t.IsAnimIng = false
                            }, this)
                    }
                    else if (this.IsAnimIng == true) {
                        this.IsAnimIng = false
                        this.PlayDragonBonesControl(h.Game1052DragonBonesName.Normal)
                    }
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
                    1 * Math.random() > .5 && this.PlayDragonBonesControl(h.Game1052DragonBonesName.win_nod)
                }
                ,
                e.prototype.AnimationFinished = function (name) {
                    var t = this;
                    if (!this.IsSucResult)
                        return this.IsLongTime = true,
                            this.GameNode.getComponent(cc.Animation).play("roll_process").speed = this.AllAnimSpeed,
                            void this.ReplaceProcessAnimSpr();
                    if (this.gameStatus == h.enum_Game1052Status.GAME_END) {
                        if (this.roomMgr.isLuckMode) {
                            this.LuckPlayAwardAllLine(),
                                this.EndPlayWildAnimationLuck();
                            var e = this.UpdatePlayLineData.length;
                            e > 0 && app.SoundManager().PlaySound("game1052_" + e + "line")
                        } else {
                            var i = this.EndPlayWildAnimation() ? 1 : 0;
                            cc.tween(this.node).delay(i).call(function () {
                                t.PlayAwardAllLine(),
                                    t.updateWinGold();
                                var e = t.UpdatePlayLineData.length;
                                e > 0 && (app.SoundManager().PlaySound("game1052_" + e + "line"),
                                    t.PlayAwordAnim())
                            }).start()
                        }
                        //this.roomMgr.BetResultData.big_win || 1 != this.roomMgr.BetResultData.type || this.PlayTipsIndex(h.TipsType.goldTips),
                        return void ((this.roomMgr.IsTurbo || this.IsStopSuc) && this.unschedule(this.playGunSound))
                    }
                    if (this.gameStatus != h.enum_Game1052Status.INIT) {
                        if (this.roomMgr.IsTurbo && !this.roomMgr.isLuckMode && !this.IsAnimIng)
                            return this.HideEndWildList(),
                                this.ReplaceEndAnimSpr(),
                                this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationEndName()).speed = this.AllAnimSpeed,
                                void (this.gameStatus = h.enum_Game1052Status.GAME_END);
                        this.GameNode.getComponent(cc.Animation).play("roll_process").speed = this.AllAnimSpeed
                        this.ReplaceProcessAnimSpr()
                        if (name != "roll_process") {
                            this.scheduleOnce(this.AnimationPlayEnd, this.getRollTime())
                        }
                    }
                }
                ,
                e.prototype.AnimationPlayEnd = function () {
                    this.roomMgr.isLuckMode && this.unschedule(this.playGunSound),
                        this.ReplaceEndAnimSpr(),
                        this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationEndName()).speed = this.AllAnimSpeed,
                        this.gameStatus = h.enum_Game1052Status.GAME_END
                }
                ,
                e.prototype.InitLineWildPrefab = function () {
                    for (var t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e = this.Award9AnimSpr[t];
                        this.addWildPrefab(e)
                    }
                    // for (t = 0; t < 9; t++) {
                    //     var i = this.LeftParent.children[t]
                    //         , a = this.CenterParent.children[t]
                    //         , r = this.RightParent.children[t];
                    //     i && this.addWildPrefab(i, false, false),
                    //         a && this.addWildPrefab(a, false, false),
                    //         r && this.addWildPrefab(r, false, false)
                    // }
                    for (let index = 0; index < this.EndSprNodeList.length; index++) {
                        const EndSprNode = this.EndSprNodeList[index]
                        EndSprNode && this.addWildPrefab(EndSprNode, false, false)
                    }
                    for (t = 0; t < this.HDSprStrArr.length; t++)
                        (e = this.HDSprStrArr[t]) && o.BundleManager.LoadAssets(e, n.BundleNames.Game1052, cc.SpriteFrame).then(function () { });
                    for (t = 0; t < this.BlurSprStrArr.length; t++)
                        (e = this.BlurSprStrArr[t]) && o.BundleManager.LoadAssets(e, n.BundleNames.Game1052, cc.SpriteFrame).then(function () { })
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

                    let multipleRandom = [2, 5, 10]
                    if (Math.random() > 0.5) {
                        this.RandomLitsNumMultiple = [multipleRandom[Math.round(2 * Math.random())]]
                    }
                    else {
                        this.RandomLitsNumMultiple = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                    }

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
                            this.RandomLitsNum = n
                            if (this.roomMgr.GameDates.type != 1) {
                                this.RandomLitsNumMultiple = []
                            }
                            else {
                                this.RandomLitsNumMultiple = this.roomMgr.GameDates.props[0].multiple
                            }

                            this.InitReplayeSpr(true)
                            this.PlayAwardAllLine2()
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
                    //this.roomMgr.RequestGameBet()
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
                        this.roomMgr.isAutoIng || (this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.Press),
                            this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.startClick)),
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

                            for (const key in this.roomMgr.BetResultData.props[e].props) {
                                if (this.roomMgr.BetResultData.props[e].props[key] == 0) {
                                    delete this.roomMgr.BetResultData.props[e].props[key]
                                }
                            }

                            this.LuckHintPropList = i
                        }
                    } else
                        this.LineParentNode.getComponent(cc.Animation).play("line_prop"),
                            this.roomMgr.IsTurbo || this.roomMgr.isLuckMode || !this.roomMgr.isAutoIng || this.OnSetAnimationSpeed(1),
                            this.BtnCanStop = true;
                    for (this.UpdatePlayLineData = [],
                        this.AllPropList = [],
                        e = 0; e < this.roomMgr.BetResultData.props.length; e++) {
                        var n = this.roomMgr.BetResultData.props[e];
                        for (var o in this.UpdatePlayLineData = n.win_arrs,
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
                        // this.roomMgr.bundleloadres(this.LuckResultPropSpr, this.HDSprStrArr[(null === (t = this.roomMgr.BetResultData) || void 0 === t ? void 0 : t.luck_prop) || 0]),
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
                    this.IsSpPlayIng = false,
                        this.IsSpLuckyEnd = false,
                        this.IsAnimIng = false,
                        this.IsLuckyAnim = false,
                        this.schedule(this.updateTipIndex, 1),
                        this.schedule(this.UpdatePlayAwardAllLine, 1),
                        this.PlayTipsIndex(-1),
                        this.SwitchSetNodeAndBetNode(false)
                    if (0 == this.TipsList.length) {
                        var o = function (e) {
                            a.roomMgr.GetSpriteFrame("atlas/Dragon3/Tips" + (e + 1), function (i) {
                                t.TipsList[e] = i
                            })
                        }
                            , a = this;
                        for (var n = 0; n < 4; n++)
                            o(n)
                    }
                    this.gameStatus = h.enum_Game1052Status.INIT,
                        this.userAllGold = app.UserManager().UserInfo.gold,
                        this.updateMyGold(this.userAllGold),
                        this.roomMgr.IsTurbo = false,
                        this.SwitchTurboBtn(),
                        this.starToTopRedList = [],
                        this.LuckHintPropList = {},
                        this.StartPlaySwtich = false,
                        this.PropHintNode.active = false,
                        //  this.AwardNdoeAnim.active = false,
                        this.autoStopData = {
                            Rounds: -1
                        },
                        this.InitLineWildPrefab(),
                        this.ReplayGameStates(),
                        this.betType = 1,
                        this.switchBetType(),
                        this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.Normal),
                        this.PlayDragonBonesControl(h.Game1052DragonBonesName.Normal),
                        // this.PandaDragonbones.setAnimation(1, "fx_idle3", true)
                        this.LineParentNode.active = false,
                        this.RandomSetList(),
                        this.InitReplayeSpr(false),
                        this.roomMgr.AddAndReduceIdx = 0,
                        app.GameBetCommonMgr().InitDataConfig(),
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(Number(this.roomMgr.getGameDefaultBetGold())),
                        this.updatebtn_sureWin()
                    this.ReplayLuckPropSwitch = false,
                        this.node_Score.active = false,
                        this.lblWinGold.string = "",
                        app.SoundManager().PlayBackMusic("game1052_BGM", true),
                        this.Node_AutoStart.getComponent(cc.Button).interactable = true,
                        this.roomMgr.bundleloadres(this.GetWndComponent("icon_halo", cc.Sprite, this.Node_AutoStart), "atlas/icon_halo"),
                        this.settingNode.active = false,
                        this.nodeOperate.active = true,
                        this.ControlBtnEnable(),
                        this.TurboBtn.getComponent(p.default).listenEvent = function (e) {
                            t.roomMgr.IsTurbo = e,
                                t.roomMgr.IsTurbo ? (t.OnSetAnimationSpeed(3),
                                    t.ShowPlayHintTips(h.Game1052TipsType.TURBO_ON)) : (t.OnSetAnimationSpeed(1),
                                        t.ShowPlayHintTips(h.Game1052TipsType.TURBO_OFF))
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
                        //  this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start"),
                        //  this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_b"),
                        //   this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_base"),
                        //   this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_process"),
                        //   this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_end"),
                        //   this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_end_b"),
                        this.GameNode.getComponent(cc.Animation).setCurrentTime(1, "roll_end_base")
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
                e.prototype.EndPlayWildAnimation = function (isPlayRedToTopAnim) {
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
                        t && !this.roomMgr.isLuckMode && app.SoundManager().PlaySound("game1052_panda_duang"),
                        t
                },
                e.prototype.EndPlayWildAnimationLuck = function () {
                    for (var t = false, e = true, i = 0; i < this.EndSprNodeList.length; i++)
                        (n = this.EndSprNodeList[i].getChildByName("wild")) && n.active && (t = true,
                            e = false,
                            this.roomMgr.playWildAnimation(n, true));
                    for (i = 0; i < this.Award9AnimSpr.length; i++) {
                        var n;
                        (n = this.Award9AnimSpr[i].getChildByName("wild")) && n.active && (t = true,
                            this.roomMgr.playWildAnimation(n, true))
                    }
                    return this.EndPropAddClick(),
                        this.RmPandaAnger(),
                        t && !this.roomMgr.isLuckMode && app.SoundManager().PlaySound("game1052_panda_duang"),
                        t
                }
                ,
                e.prototype.RmPandaAnger = function () { }
                ,
                e.prototype.playGunSound = function () {
                    app.SoundManager().PlaySound("game1052_gun")
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
                    if (this.roomMgr.isLuckMode && (!this.CheckLuckEnd())) {
                        return
                    }
                    var i = Number(e)
                        , n = i >= 6
                        , o = n ? this.PropHintNode.getChildByName("hint_right") : this.PropHintNode.getChildByName("hint")
                        , a = this.roomMgr.isLuckMode ? this.LuckHintPropList[i + 1] : this.roomMgr.BetResultData.props[0].props[i + 1];
                    a && (this.PropHintNode.active = true,
                        // this.roomMgr.bundleloadres(o.getChildByName("prop_shuiguo"), this.HDSprStrArr[a]),
                        this.bundleLoadSpineT(o.getChildByName("prop_shuiguo"), a),

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
                },
                e.prototype.InitAwardLight2 = function () {
                    for (var t = 0; t < this.AwardLineArr.length; t++)
                        (e = this.AwardLineArr[t]).active = false;
                    for (t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e, i = (e = this.Award9AnimSpr[t]).getChildByName("wild");
                        i && (i.active = false),
                            e.active = false
                    }

                    this.LineParentNode.active = false
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
                            i.PlayDragonBonesControl(h.Game1052DragonBonesName.nod),
                                i.StartPlaySwtich = false,
                                0 == i.starToTopRedList.length ? i.PacketAnimList.playAdditive(n[0].name) : i.PlayRedToTopAnim()
                        }, this),
                            //   app.SoundManager().PlaySound("game1052_wild"),
                            this.PacketAnimList.playAdditive(n[o].name)
                    }
                }
                ,
                e.prototype.InitReplayeSpr = function (t) {
                    for (let index = 0; index < this.EndSprNodeList.length; index++) {
                        var n = this.RandomLitsNum[index]
                        const r = this.EndSprNodeList[index];
                        if (this.roomMgr.GameDates && this.IsInAward9AnimArray(this.roomMgr.GameDates.props[this.roomMgr.GameDates.props.length - 1], i)) {
                            this.addWildPrefab(r, false, false)
                            this.roomMgr.bundleloadres(r, null);
                        }
                        else {
                            if (7 === n && t) {
                                this.addWildPrefab(r)
                                this.roomMgr.bundleloadres(r, null);
                            }
                            else {
                                this.addWildPrefab(r, false, false)
                                this.roomMgr.bundleloadres(r, t ? this.HDSprStrArr[n] : null);
                            }
                        }
                        var s = r.getComponent(cc.Button) || r.addComponent(cc.Button)
                            , l = new cc.Component.EventHandler;
                        l.target = this.node
                        l.component = this.JS_Name
                        l.handler = "StartPropClickEvent"
                        l.customEventData = JSON.stringify(index)
                        s.clickEvents = []
                        s.clickEvents.push(l)
                        this.StartSprClickList.push(s)
                        this.roomMgr.bundleloadres(this.EndSprNodeList2[index], t ? this.HDSprStrArr[n] : null);
                    }

                    if (t) {
                        let multiple = this.RandomLitsNumMultiple
                        {
                            for (let index = 0; index < multiple.length; index++) {
                                let spr_prop = this.multiple_node1_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                            }
                            for (let index = multiple.length; index < 2; index++) {
                                let spr_prop = this.multiple_node1_prop[index]
                                spr_prop.active = false
                            }
                        }
                    }
                }
                ,
                e.prototype.StartPropClickEvent = function (t, e) {
                    var i = Number(e)
                        , n = i >= 6
                        , o = n ? this.PropHintNode.getChildByName("hint_right") : this.PropHintNode.getChildByName("hint")
                        , a = this.RandomLitsNum[i];
                    a && (this.PropHintNode.active = true,
                        // this.roomMgr.bundleloadres(o.getChildByName("prop_shuiguo"), this.HDSprStrArr[a]),
                        this.bundleLoadSpineT(o.getChildByName("prop_shuiguo"), a),
                        this.GetWndComponent("label_2", cc.Label, o).string = "" + this.PropTimeList[a - 1],
                        this.PropHintNode.getChildByName("hint_right").active = n,
                        this.PropHintNode.getChildByName("hint").active = !n,
                        o.setPosition(this.PropHintPosList[i]))
                }
                ,
                e.prototype.bundleLoadSpineT = function (node, a) {
                    node.getChildByName("spr_prop").active = true
                    node.getChildByName("wild") && (node.getChildByName("wild").active = false)
                    node.getChildByName("SpineNode") && (node.getChildByName("SpineNode").active = false)
                    //  this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, node), this.HDSprStrArr[a])
                    7 == a ? this.addWildPrefab(node, true) : this.roomMgr.bundleLoadSpine(node, this.SpineStrArr[a])
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
                    this.HideEndWildList()
                    this.RandomSetList()
                    var t, e = 0;
                    t = this.RandomLitsNum;
                    for (var i = 0; i < t.length; i++) {
                        var n = t[i]
                            , o = null
                            , a = Number(i + 1);
                        a >= 1 && a <= 3 ? o = this.LeftParent : a >= 4 && a <= 6 ? o = this.CenterParent : a >= 7 && (o = this.RightParent),
                            e >= 3 && (e = 0),
                            this.roomMgr.bundleloadres(o.children[e], this.BlurSprStrArr[n])
                        //  this.roomMgr.bundleloadres(o.children[e + 6], this.BlurSprStrArr[n])
                        //  o.children[e].myprop = n,
                        o.children[e + 6].myprop = n

                        var r = Math.round(6 * Math.random() + 1);
                        this.roomMgr.bundleloadres(o.children[e + 3], this.HDSprStrArr[r])
                        // o.children[e + 3].myprop = r
                        e++
                    }

                    {
                        let multiple = this.RandomLitsNumMultiple
                        {
                            for (let index = 0; index < multiple.length; index++) {
                                let spr_prop = this.multiple_node3_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                            }
                            for (let index = multiple.length; index < 2; index++) {
                                let spr_prop = this.multiple_node3_prop[index]
                                spr_prop.active = false
                            }
                        }
                        this.multipleParent.getChildByName("spr_node1").mypropMultiple = multiple
                        //  this.multipleParent.getChildByName("spr_node3").mypropMultiple = multiple
                        {

                            let multipleRandom = [2, 5, 10]
                            let multipleRandom2
                            if (Math.random() > 0.5) {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                            }
                            else {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())]]
                            }
                            for (let index = 0; index < multipleRandom2.length; index++) {
                                let spr_prop = this.multiple_node2_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multipleRandom2[index]])
                            }
                            for (let index = multipleRandom2.length; index < 2; index++) {
                                let spr_prop = this.multiple_node2_prop[index]
                                spr_prop.active = false
                            }
                            //  this.multipleParent.getChildByName("spr_node2").mypropMultiple = multipleRandom2
                        }

                    }
                }
                ,
                e.prototype.HideEndWildList = function () {
                    for (let index = 0; index < this.EndSprNodeList.length; index++) {
                        const wild = this.EndSprNodeList[index].getChildByName("wild")
                        wild && (wild.active = false)
                        this.EndSprNodeList[index].children.length > 1 && this.EndSprNodeList[index].removeAllChildren()
                    }
                }
                ,
                e.prototype.ReplaceProcessAnimSpr = function () {
                    //  return
                    this.roomMgr.isLuckMode && (this.unschedule(this.playGunSound),
                        this.schedule(this.playGunSound, .1)),
                        this.HideEndWildList();
                    this.RandomSetList()
                    var t, e = 0;
                    t = this.RandomLitsNum;
                    for (var i = 0; i < t.length; i++) {
                        var n = t[i]
                            , o = null
                            , a = Number(i + 1);
                        a >= 1 && a <= 3 ? o = this.LeftParent : a >= 4 && a <= 6 ? o = this.CenterParent : a >= 7 && (o = this.RightParent),
                            e >= 3 && (e = 0)
                        this.roomMgr.bundleloadres(o.children[e], this.BlurSprStrArr[n])
                        this.roomMgr.bundleloadres(o.children[e + 6], this.BlurSprStrArr[o.children[e + 6].myprop])
                        o.children[e + 6].myprop = n

                        var r = Math.round(6 * Math.random() + 1);
                        this.roomMgr.bundleloadres(o.children[e + 3], this.BlurSprStrArr[r])

                        e++
                    }
                    if (this.ReplayLuckPropSwitch) {
                        let multiple
                        let multipleRandom = [2, 5, 10]
                        if (Math.random() > 0.5) {
                            multiple = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                        }
                        else {
                            multiple = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                        }
                        {
                            let mypropMultiple = this.multipleBigParent.getChildByName("spr_node1").mypropMultiple
                            if (mypropMultiple) {
                                for (let index = 0; index < mypropMultiple.length; index++) {
                                    let spr_prop = this.multipleBig_node1_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[mypropMultiple[index]])
                                }
                                for (let index = mypropMultiple.length; index < 4; index++) {
                                    let spr_prop = this.multipleBig_node1_prop[index]
                                    spr_prop.active = false
                                }
                            }
                            this.multipleBigParent.getChildByName("spr_node1").mypropMultiple = multiple
                        }
                        {
                            for (let index = 0; index < multiple.length; index++) {
                                let spr_prop = this.multipleBig_node3_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                            }
                            for (let index = multiple.length; index < 4; index++) {
                                let spr_prop = this.multipleBig_node3_prop[index]
                                spr_prop.active = false
                            }
                        }
                        {
                            //  let multipleRandom = [2, 5, 10]
                            let multipleRandom2
                            if (Math.random() > 0.5) {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                            }
                            else {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                            }
                            for (let index = 0; index < multipleRandom2.length; index++) {
                                let spr_prop = this.multipleBig_node2_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multipleRandom2[index]])
                            }
                            for (let index = multipleRandom2.length; index < 4; index++) {
                                let spr_prop = this.multipleBig_node2_prop[index]
                                spr_prop.active = false
                            }
                        }
                    }
                    else {
                        let multiple = this.RandomLitsNumMultiple
                        {
                            let mypropMultiple = this.multipleParent.getChildByName("spr_node1").mypropMultiple
                            for (let index = 0; index < mypropMultiple.length; index++) {
                                let spr_prop = this.multiple_node1_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[mypropMultiple[index]])
                            }
                            for (let index = mypropMultiple.length; index < 2; index++) {
                                let spr_prop = this.multiple_node1_prop[index]
                                spr_prop.active = false
                            }
                            this.multipleParent.getChildByName("spr_node1").mypropMultiple = multiple
                        }
                        {
                            for (let index = 0; index < multiple.length; index++) {
                                let spr_prop = this.multiple_node3_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                            }
                            for (let index = multiple.length; index < 2; index++) {
                                let spr_prop = this.multiple_node3_prop[index]
                                spr_prop.active = false
                            }
                            //  this.multipleParent.getChildByName("spr_node3").mypropMultiple = multiple
                        }
                        {

                            let multipleRandom = [2, 5, 10]
                            let multipleRandom2
                            if (Math.random() > 0.5) {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                            }
                            else {
                                multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())]]
                            }
                            for (let index = 0; index < multipleRandom2.length; index++) {
                                let spr_prop = this.multiple_node2_prop[index]
                                spr_prop.active = true
                                this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multipleRandom2[index]])
                            }
                            for (let index = multipleRandom2.length; index < 2; index++) {
                                let spr_prop = this.multiple_node2_prop[index]
                                spr_prop.active = false
                            }
                            // this.multipleParent.getChildByName("spr_node2").mypropMultiple = multipleRandom2
                        }

                    }
                }
                ,
                e.prototype.ReplaceEndAnimSpr = function () {
                    this.RandomSetList()
                    var t, e = this, i = 0;

                    if (1 == this.roomMgr.BetResultData.type) {
                        {
                            var l = this.roomMgr.BetResultData.props[0]
                                , p = 0
                                , d = function (t) {
                                    if (Object.prototype.hasOwnProperty.call(l.props, t)) {
                                        var e = l.props[t]
                                            , i = null
                                            , n = Number(t);
                                        n >= 1 && n <= 3 ? i = m.LeftParent : n >= 4 && n <= 6 ? i = m.CenterParent : n >= 7 && (i = m.RightParent),
                                            p >= 3 && (p = 0)

                                        // i.children[p].myprop = e,
                                        m.roomMgr.bundleloadres(i.children[p + 3], m.HDSprStrArr[Math.round(6 * Math.random() + 1)])
                                        // i.children[p + 3].myprop = e,
                                        m.roomMgr.bundleloadres(i.children[p + 6], m.BlurSprStrArr[i.children[p + 6].myprop])
                                        m.scheduleOnce(function (t, e) {
                                            this.roomMgr.bundleloadres(i.children[t + 6], this.HDSprStrArr[e])
                                            // i.children[t + 6].myprop = e
                                        }
                                            .bind(m, p, e), m.roomMgr.IsTurbo ? 0 : 0.4)
                                        if (7 == e) {
                                            m.scheduleOnce(function (t) {
                                                this.addWildPrefab(i.children[t])
                                            }
                                                .bind(m, p, e), .02)
                                        }
                                        else {
                                            m.roomMgr.bundleloadres(i.children[p], m.HDSprStrArr[e])
                                        }

                                        p++
                                    }
                                }
                                , m = this;
                            for (var c in l.props)
                                d(c)
                        }
                        {
                            let multiple = this.roomMgr.BetResultData.props[0].multiple
                            {
                                let mypropMultiple = this.multipleParent.getChildByName("spr_node1").mypropMultiple
                                for (let index = 0; index < mypropMultiple.length; index++) {
                                    let spr_prop = this.multiple_node1_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[mypropMultiple[index]])
                                }
                                for (let index = mypropMultiple.length; index < 2; index++) {
                                    let spr_prop = this.multiple_node1_prop[index]
                                    spr_prop.active = false
                                }
                                this.multipleParent.getChildByName("spr_node1").mypropMultiple = multiple
                            }
                            {
                                for (let index = 0; index < multiple.length; index++) {
                                    let spr_prop = this.multiple_node3_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                                }
                                for (let index = multiple.length; index < 2; index++) {
                                    let spr_prop = this.multiple_node3_prop[index]
                                    spr_prop.active = false
                                }
                                //  this.multipleParent.getChildByName("spr_node3").mypropMultiple = multiple
                            }
                            {

                                let multipleRandom = [2, 5, 10]
                                let multipleRandom2
                                if (Math.random() > 0.5) {
                                    multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                                }
                                else {
                                    multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())]]
                                }
                                for (let index = 0; index < multipleRandom2.length; index++) {
                                    let spr_prop = this.multiple_node2_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multipleRandom2[index]])
                                }
                                for (let index = multipleRandom2.length; index < 2; index++) {
                                    let spr_prop = this.multiple_node2_prop[index]
                                    spr_prop.active = false
                                }
                                // this.multipleParent.getChildByName("spr_node2").mypropMultiple = multipleRandom2
                            }
                            let self = this
                            this.scheduleOnce(function () {
                                for (let index = 0; index < multiple.length; index++) {
                                    let spr_prop = self.multiple_node1_prop[index]
                                    spr_prop.active = true
                                    self.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), self.multipleSprStrArr[multiple[index]])
                                }
                                for (let index = multiple.length; index < 2; index++) {
                                    let spr_prop = self.multiple_node1_prop[index]
                                    spr_prop.active = false
                                }
                                // self.multipleParent.getChildByName("spr_node1").mypropMultiple = multiple
                            }, 0.5)
                        }


                    } else if (2 == this.roomMgr.BetResultData.type) {
                        var s
                        var u = (s = this.roomMgr.BetResultData.props)[this.roomMgr.LuckIndex];
                        if (u) {
                            let self = this
                            var g = function (t) {
                                if (self.EndSprNodeList[t]) {
                                    var i = u.props[t + 1];
                                    if (null != i) {
                                        self.roomMgr.bundleloadres(self.EndSprNodeList2[t], self.BlurSprStrArr[self.EndSprNodeList2[t].myprop])
                                        self.roomMgr.bundleloadres(self.EndSprNodeList567[t], self.HDSprStrArr[Math.round(6 * Math.random() + 1)])

                                        if (7 == i) {
                                            self.roomMgr.bundleloadres(self.EndSprNodeList[t], null)
                                            self.scheduleOnce(function () {
                                                self.addWildPrefab(self.EndSprNodeList[t])
                                            }, 0.02)
                                        }
                                        else {
                                            self.roomMgr.bundleloadres(self.EndSprNodeList[t], self.HDSprStrArr[i])
                                        }
                                        self.scheduleOnce(function () {
                                            self.roomMgr.bundleloadres(self.EndSprNodeList2[t], self.HDSprStrArr[i])
                                        }, 0.5)
                                    }
                                    else {
                                        self.roomMgr.bundleloadres(self.EndSprNodeList[t], null),
                                            self.scheduleOnce(function () {
                                                e.roomMgr.bundleloadres(e.EndSprNodeList2[t], null)
                                            }, 0.5)
                                    }
                                }
                            };
                            for (let n = 0; n < this.EndSprNodeList.length; n++)
                                g(n)
                        }
                        {
                            let multiple = this.roomMgr.BetResultData.props[this.roomMgr.LuckIndex].multiple
                            {
                                let mypropMultiple = this.multipleBigParent.getChildByName("spr_node1").mypropMultiple
                                if (mypropMultiple) {
                                    for (let index = 0; index < mypropMultiple.length; index++) {
                                        let spr_prop = this.multipleBig_node1_prop[index]
                                        spr_prop.active = true
                                        this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[mypropMultiple[index]])
                                    }
                                    for (let index = mypropMultiple.length; index < 4; index++) {
                                        let spr_prop = this.multipleBig_node1_prop[index]
                                        spr_prop.active = false
                                    }
                                }
                                this.multipleBigParent.getChildByName("spr_node1").mypropMultiple = multiple
                            }
                            {
                                for (let index = 0; index < multiple.length; index++) {
                                    let spr_prop = this.multipleBig_node3_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multiple[index]])
                                }
                                for (let index = multiple.length; index < 4; index++) {
                                    let spr_prop = this.multipleBig_node3_prop[index]
                                    spr_prop.active = false
                                }
                                // this.multipleBigParent.getChildByName("spr_node3").mypropMultiple = multiple
                            }
                            {

                                let multipleRandom = [2, 5, 10]
                                let multipleRandom2
                                if (Math.random() > 0.5) {
                                    multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                                }
                                else {
                                    multipleRandom2 = [multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())], multipleRandom[Math.round(2 * Math.random())]]
                                }
                                for (let index = 0; index < multipleRandom2.length; index++) {
                                    let spr_prop = this.multipleBig_node2_prop[index]
                                    spr_prop.active = true
                                    this.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), this.multipleSprStrArr[multipleRandom2[index]])
                                }
                                for (let index = multipleRandom2.length; index < 4; index++) {
                                    let spr_prop = this.multipleBig_node2_prop[index]
                                    spr_prop.active = false
                                }
                                //  this.multipleBigParent.getChildByName("spr_node2").mypropMultiple = multipleRandom2
                            }
                            let self = this
                            this.scheduleOnce(function () {
                                for (let index = 0; index < multiple.length; index++) {
                                    let spr_prop = self.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop" + (index + 1))
                                    spr_prop.active = true
                                    self.roomMgr.bundleloadresmultiple(spr_prop.getChildByName("spr_prop"), self.multipleSprStrArr[multiple[index]])
                                }
                                for (let index = multiple.length; index < 4; index++) {
                                    let spr_prop = self.multipleBigParent.getChildByName("spr_node1").getChildByName("spr_prop" + (index + 1))
                                    spr_prop.active = false
                                }
                                //  self.multipleBigParent.getChildByName("spr_node1").mypropMultiple = multiple
                            }, 0.5)
                        }

                    }
                    if (!this.roomMgr.isAutoIng && !this.roomMgr.isLuckMode) {
                        var y = this.Node_AutoStart.getComponent(cc.Animation);
                        y.currentClip.name != h.Game1052BtnPlayName.Normal && (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                            y.playAdditive(h.Game1052BtnPlayName.Normal))
                    }
                }
                ,
                e.prototype.addWildPrefab = function (t, e, i) {
                    if (t) {
                        var n = t.getChildByName("wild");
                        n ? (n.active = 0 != i, this.roomMgr.playWildAnimation(n, false, e))
                            : this.roomMgr.bundleLoadPrefab(t, "prefab/wild", e, i)
                    }
                }
                ,
                e.prototype.playAnimationList = function () {
                    this.gameStatus = h.enum_Game1052Status.GAMERESULT
                    this.ControlBtnDisable()
                    this.GameNode.getComponent(cc.Animation).stop()
                    this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start")
                    this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_b")
                    this.GameNode.getComponent(cc.Animation).setCurrentTime(0, "roll_start_base")
                    this.GameNode.getChildByName("mask_light").getComponent(cc.Animation).play()
                    this.GameNode.getComponent(cc.Animation).play(this.getLuckAnimationStartName()).speed = this.AllAnimSpeed
                    this.ReplayceStartAnimSpr()
                }
                ,
                e.prototype.CheckLuckEnd = function () {
                    return (this.roomMgr.LuckIndex >= this.roomMgr.BetResultData.props.length)
                }
                ,
                e.prototype.LuckPlayAwardAllLine = function () {
                    let win_amount = 0
                    for (var t = this.roomMgr.BetResultData.props, e = t[this.roomMgr.LuckIndex], i = 0; i < e.win_arrs.length; i++) {
                        var n = e.win_arrs[i];
                        this.PlayAwardSingleLine(n, e)
                        win_amount += n.win_amount
                    }
                    let timePlayBigWinAnim3 = 1.5
                    if (win_amount > 0) {
                        if (this.roomMgr.BetResultData.props[this.roomMgr.LuckIndex].multiple.length == 3) {
                            let multiple = this.roomMgr.BetResultData.props[this.roomMgr.LuckIndex].multiple
                            this.PlayTipsIndex(h.TipsType.goldTips, win_amount / (multiple[0] + multiple[1] + multiple[2]))
                            this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop1").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1), cc.callFunc(function () {
                                this.PlayTipsIndex(h.TipsType.goldTips, win_amount, "state_gold_newLuck2")
                            }, this), cc.moveTo(.2, cc.v2(0, 0))))
                            this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop2").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1 + 0.2 / 0.6), cc.moveTo(.2, cc.v2(0, 0))))
                            this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop3").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1 + 0.4 / 0.6), cc.moveTo(.2, cc.v2(0, 0))))
                            timePlayBigWinAnim3 = 1.5 + 1.2 + 1.5

                            this.GetWndComponent("gold/label1", cc.Label, this.Node_Tips).string = multiple[0]
                            this.GetWndComponent("gold/label2", cc.Label, this.Node_Tips).string = multiple[1] + multiple[0]
                            this.GetWndComponent("gold/label", cc.Label, this.Node_Tips).string = multiple[2] + multiple[1] + multiple[0]
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop"), this.multipleSprStrArr[multiple[0]])
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop2"), this.multipleSprStrArr[multiple[1]])
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop3"), this.multipleSprStrArr[multiple[2]])
                        }
                        else if (this.roomMgr.BetResultData.props[this.roomMgr.LuckIndex].multiple.length == 4) {
                            let multiple = this.roomMgr.BetResultData.props[this.roomMgr.LuckIndex].multiple
                            this.PlayTipsIndex(h.TipsType.goldTips, win_amount / (multiple[1] + multiple[2]))
                            this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop2").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1), cc.callFunc(function () {
                                this.PlayTipsIndex(h.TipsType.goldTips, win_amount, "state_gold_newLuck")
                            }, this), cc.moveTo(.2, cc.v2(0, 0))))
                            this.multipleBigParent.getChildByName("spr_node3").getChildByName("spr_prop3").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1 + 0.2 / 0.6), cc.moveTo(.2, cc.v2(0, 0))))
                            timePlayBigWinAnim3 = 1.83 + 1.2 + 1.5
                            this.GetWndComponent("gold/label1", cc.Label, this.Node_Tips).string = multiple[1]
                            this.GetWndComponent("gold/label", cc.Label, this.Node_Tips).string = multiple[2] + multiple[1]
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop"), this.multipleSprStrArr[multiple[1]])
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop2"), this.multipleSprStrArr[multiple[2]])
                        }
                        else {
                            this.PlayTipsIndex(h.TipsType.goldTips, win_amount)
                        }

                        if (win_amount >= 10 * this.roomMgr.BetResultData.bet_gold) {
                            this.scheduleOnce(function () {
                                this.PlayBigWinAnim3(win_amount)
                            }, timePlayBigWinAnim3)
                        }
                    }
                    this.roomMgr.LuckIndex++
                    if (win_amount < 10 * this.roomMgr.BetResultData.bet_gold) {
                        this.scheduleOnce(function () {
                            this.LuckPlayAwardAllLine2(win_amount)
                        }, timePlayBigWinAnim3)
                    }
                    else {
                        // this.LuckPlayAwardAllLine2()
                    }
                }
                ,
                e.prototype.LuckPlayAwardAllLine2 = function (win) {
                    if (win) {
                        this.PlayDragonBonesControlGold(h.Game1052DragonBonesName.win_nod)
                    }
                    if (this.CheckLuckEnd())
                        return this.IsSpLuckyEnd = true,
                            this.roomMgr.BetResultData.big_win ? this.PlayVoleWinAnim() : this.PandaDragonbones.animation == h.Game1052DragonBonesName.happy || this.GameEndEdStatus(true, 1),
                            this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                            app.SoundManager().PlayBackMusic("game1052_BGM", true),
                            this.roomMgr.isAutoIng || (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                                this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.Normal)),
                            this.updateWinGold(),
                            this.IsStopSuc = false,
                            this.StopLuckEffect(),
                            void this.LineParentNode.getComponent(cc.Animation).play("line_prop");
                    if (this.roomMgr.LuckIndex == 7) {
                        this.lfsnode.active = true
                        this.lfslabel.node.active = false
                    }
                    else {
                        this.lfslabel.string = 7 - this.roomMgr.LuckIndex
                    }

                    this.InitAwardLight2()
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
                        this.UpdatePlayLineData && this.gameStatus == h.enum_Game1052Status.GAME_ENDED) {
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
                        let win_amount = 0
                        let propsindex = this.roomMgr.BetResultData.props.length - 1
                        for (var i = t[propsindex], n = 0; n < i.win_arrs.length; n++) {
                            var o = i.win_arrs[n];
                            this.PlayAwardSingleLine(o, i)
                            win_amount += o.win_amount
                        }
                        if (this.roomMgr.BetResultData.props[propsindex].win_arrs.length > 0 && this.roomMgr.BetResultData.props[propsindex].multiple.length == 1) {
                            let multiple = this.roomMgr.BetResultData.props[propsindex].multiple
                            this.PlayTipsIndex(h.TipsType.goldTips, win_amount / multiple[0])
                            this.multipleParent.getChildByName("spr_node3").getChildByName("spr_prop1").runAction(cc.sequence(cc.moveTo(.2, cc.v2(0, 30)), cc.delayTime(1), cc.callFunc(function () {
                                this.PlayTipsIndex(h.TipsType.goldTips, win_amount, "state_gold_newnormal")
                            }, this), cc.moveTo(.2, cc.v2(0, 0))))
                            this.GetWndComponent("gold/label", cc.Label, this.Node_Tips).string = multiple[0]
                            this.roomMgr.bundleloadresmultiple(this.Node_Tips.getChildByName("gold").getChildByName("spr_prop"), this.multipleSprStrArr[multiple[0]])
                            this.scheduleOnce(function () {
                                this.roomMgr.BetResultData.big_win ? this.PlayVoleWinAnim() : (this.GameEndEdStatus(this.roomMgr.BetResultData.win_gold > 0),
                                    this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                                    this.IsStopSuc = false)
                            }, 2)
                        }
                        else {
                            this.PlayTipsIndex(h.TipsType.goldTips)
                            this.roomMgr.BetResultData.big_win ? this.PlayVoleWinAnim() : (this.GameEndEdStatus(this.roomMgr.BetResultData.win_gold > 0),
                                this.updateMyGold(this.roomMgr.BetResultData.end_gold),
                                this.IsStopSuc = false)
                        }

                    }
                }
                ,
                e.prototype.PlayAwardAllLine2 = function () {
                    var t = this.roomMgr.GameDates.props;
                    if (t) {
                        let win_amount = 0
                        let propsindex = this.roomMgr.GameDates.props.length - 1
                        for (var i = t[propsindex], n = 0; n < i.win_arrs.length; n++) {
                            var o = i.win_arrs[n];

                            this.PlayAwardSingleLine(o, i)
                            win_amount += o.win_amount
                        }
                        if (win_amount > 0) {
                            this.roomMgr.BetResultData = this.roomMgr.GameDates
                            this.UpdatePlayLineData = t[propsindex].win_arrs
                            this.gameStatus = h.enum_Game1052Status.GAME_ENDED
                            this.PlayTipsIndex(h.TipsType.goldTips, win_amount)
                        }
                    }
                }
                ,
                e.prototype.IsInAward9AnimArray = function (props, indexprops) {
                    // let props = this.roomMgr.GameDates.props[this.roomMgr.GameDates.props.length - 1]
                    for (var n = 0; n < props.win_arrs.length; n++) {
                        var win_arr = props.win_arrs[n];
                        let Award9AnimArrayTemp = this.Award9AnimArray[win_arr.roll - 1]
                        for (var indexAward9AnimArray = 0; indexAward9AnimArray < Award9AnimArrayTemp.length; indexAward9AnimArray++) {
                            if (Award9AnimArrayTemp[indexAward9AnimArray] == indexprops) {
                                return true
                            }
                        }
                    }
                    return false
                }
                ,
                e.prototype.GameEndEdStatus = function (t, e) {
                    var i = this;
                    this.scheduleOnce(function () {
                        i.gameStatus = h.enum_Game1052Status.GAME_ENDED,
                            i.ControlBtnEnable(),
                            i.UpdatePlayAwardAllLine()
                    }, t ? e || 1 : 0)
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
                                7 == s ? (this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, a), this.HDSprStrArr[0]), this.addWildPrefab(a, true))
                                    : (this.roomMgr.bundleloadres(this.GetWndComponent("spr_prop", cc.Sprite, a), this.HDSprStrArr[s]), this.roomMgr.bundleLoadSpine(a, this.SpineStrArr[s]))
                            }
                            this.roomMgr.bundleloadres(this.EndSprNodeList[o], null)
                            this.EndSprNodeList[o].getChildByName("wild").active = false
                        }
                        this.LineParentNode.active = true;
                        // var l = !this.roomMgr.isLuckMode;
                        this.LineParentNode.getChildByName("bg").active = true,
                            this.roomMgr.isLuckMode && this.playAwardAllSpineAnimation()
                    }
                }
                ,
                e.prototype.playAwardAllSpineAnimation = function () {
                    for (var t = 0; t < this.Award9AnimSpr.length; t++) {
                        var e = this.Award9AnimSpr[t]
                            , i = this.GetWndComponent("SpineNode", sp.Skeleton, e);
                        e && i && i.setAnimation(0, "win_idle", true)
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
                    this.LuckModeAniNode.getComponent(cc.Animation).setCurrentTime(0, "scene_LuckEnd")
                }
                ,
                e.prototype.RequestBet = function () {
                    if (this.NoBetTime = 0,
                        this.gameStatus == h.enum_Game1052Status.INIT || this.gameStatus == h.enum_Game1052Status.GAME_ENDED) {
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
                                subGold: t + "",
                                sureWin: this.roomMgr.sureWin,
                            }),
                            this.NewRecBetResult(),
                            this.schedule(this.UpdateResendBet, 10),
                            this.roomMgr.RequestGameBet(),
                            void app.SoundManager().PlaySound("game1052_panda_betclick"))
                    }
                    this.IsSucResult && (this.IsStopSuc || this.BtnCanStop && (this.roomMgr.isAutoIng || this.gameStatus != h.enum_Game1052Status.GAME_END && this.ManualStop(true)))
                }
                ,
                e.prototype.ManualStop = function (t) {
                    var e = this;
                    if (!this.IsStopSuc) {
                        this.IsStopSuc = true,
                            this.roomMgr.isLuckMode ? this.OnSetAnimationSpeed(1) : this.OnSetAnimationSpeed(t ? 3 : 1);
                        var i = this.roomMgr.isLuckMode ? 5.5 : 0;
                        this.scheduleOnce(function () {
                            e.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                                e.unschedule(e.AnimationPlayEnd),
                                e.AnimationPlayEnd(),
                                e.GameNode.getComponent(cc.Animation).currentClip.speed = e.AllAnimSpeed;
                            var t = e.roomMgr.BetResultData.win_gold > 0 ? 2 : .5;
                            e.Node_AutoStart.getComponent(cc.Button).interactable = false,
                                e.roomMgr.bundleloadres(e.GetWndComponent("icon_halo", cc.Sprite, e.Node_AutoStart), "atlas/icon_disable"),
                                e.scheduleOnce(function () {
                                    e.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
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
                        this.IsLuckyAnim = 1 * Math.random() > .95,
                            this.IsLuckyAnim && (t = 1),
                            this.OnSetAnimationSpeed(t),
                            2 != this.betType ? this.RequestBet() : this.stopAutoBet()
                    }
                },
                e.prototype.updatebtn_sureWin = function () {
                    if (this.roomMgr.sureWin == 1) {
                        this.btn_sureWin.getChildByName("btn_sureWinNode").getChildByName("icon_On").active = true
                        this.btn_sureWin.getChildByName("btn_sureWinNode").getChildByName("icon_Off").active = false
                        // this.sw_wallet_prize.active = true
                        this.sw_wallet_prize.stopAllActions()
                        this.sw_wallet_prize.runAction(cc.fadeIn(0.2))
                        this.sw_window.active = true
                        this.sw_window.stopAllActions()
                        this.sw_window.runAction(cc.sequence(cc.delayTime(2), cc.callFunc(function () {
                            this.active = false
                        }, this.sw_window)))
                        this.btn_sureWin.getChildByName("btn_sureWinNode").runAction(cc.sequence(cc.moveTo(.1, cc.v2(0, -10)), cc.moveTo(.1, cc.v2(0, 0)), cc.callFunc(function () {
                            //this.active = false
                        }, this.btn_sureWin.getChildByName("btn_sureWinNode"))))
                        var amount = app.GameBetCommonMgr().betAmountConfig[this.roomMgr.AddAndReduceIdx]
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(amount * 5)
                        this.sw_window.getChildByName("label").getComponent(cc.Label).string = this.roomMgr.addThousandSeparator(amount * 5)
                    }
                    else {
                        this.btn_sureWin.getChildByName("btn_sureWinNode").getChildByName("icon_On").active = false
                        this.btn_sureWin.getChildByName("btn_sureWinNode").getChildByName("icon_Off").active = true
                        // this.sw_wallet_prize.active = false
                        this.sw_wallet_prize.stopAllActions()
                        this.sw_wallet_prize.runAction(cc.fadeOut(0.2))
                        this.sw_window.active = false
                        this.sw_window.stopAllActions()
                        this.btn_sureWin.getChildByName("btn_sureWinNode").runAction(cc.sequence(cc.moveTo(.1, cc.v2(0, -10)), cc.moveTo(.1, cc.v2(0, 0)), cc.callFunc(function () {
                            //this.active = false
                        }, this.btn_sureWin.getChildByName("btn_sureWinNode"))))
                        var amount = app.GameBetCommonMgr().betAmountConfig[this.roomMgr.AddAndReduceIdx]
                        this.NumkeyBoard.string = app.GameConfigManager().GetCurrency + this.roomMgr.addThousandSeparator(amount)
                    }
                    this.btn_sureWin.getChildByName("btn_sureWinNode").getChildByName("sw_bgL").runAction(cc.sequence(cc.fadeIn(.1), cc.fadeOut(.1)))
                }
                ,
                e.prototype.OnClick = function (t) {
                    if ("btn_start" == t) {
                        var e = this.roomMgr.IsTurbo && !this.roomMgr.isLuckMode ? 3 : 1;
                        return this.OnSetAnimationSpeed(e),
                            2 == this.betType ? void this.stopAutoBet() : void this.RequestBet()
                    }
                    if ("btn_sureWin" == t) {
                        if (this.roomMgr.sureWin == 1) {
                            this.roomMgr.sureWin = 0
                        }
                        else {
                            this.roomMgr.sureWin = 1
                        }
                        this.updatebtn_sureWin()
                    }
                    if ("btn_back" != t) {
                        if ("btn_turbo" == t)
                            return this.roomMgr.IsTurbo = !this.roomMgr.IsTurbo,
                                this.SwitchTurboBtn(),
                                void (this.roomMgr.IsTurbo ? (this.OnSetAnimationSpeed(3),
                                    this.ShowPlayHintTips(h.Game1052TipsType.TURBO_ON)) : (this.OnSetAnimationSpeed(1),
                                        this.ShowPlayHintTips(h.Game1052TipsType.TURBO_OFF)));
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
                                            this.roomMgr.AddAndReduceIdx + 2 == i.length && this.ShowPlayHintTips(h.Game1052TipsType.MinimumBet),
                                                this.roomMgr.AddAndReduceIdx += 1;
                                        else {
                                            if ("btn_add" != t)
                                                return;
                                            this.roomMgr.AddAndReduceIdx - 2 < 0 && this.ShowPlayHintTips(h.Game1052TipsType.MaximumBet),
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
                                   // if (!CC_BUILD) {
                                        this.gameStatus != h.enum_Game1052Status.INIT && this.gameStatus != h.enum_Game1052Status.GAME_ENDED || app.FormManager().ShowForm(h.Game1052UIName.UIGame1052Daily)
                                   // }
                                }
                            else
                                app.GameBetCommonMgr().LoadGameBet(s.ShowCommonType.bet_options, this.roomMgr.BaseBetNum, this.roomMgr.Level, this.userAllGold, this.getWinNumber(), this.roomMgr.sureWin);
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
                    app.FormManager().ShowForm(h.Game1052UIName.UIGame1052Tips, t)
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
                        return 1;
                    var t = 0;
                    return t = 0.5,
                        t = this.roomMgr.isLuckMode ? 1 : t,
                        0 == this.roomMgr.LuckIndex && this.roomMgr.isLuckMode && (t = 7.5),
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
                    if (this.gameStatus != h.enum_Game1052Status.INIT && this.gameStatus != h.enum_Game1052Status.GAME_ENDED)
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
                    this.autoStopData.Rounds <= 0 && (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.Normal)),
                        clearInterval(this.createTimer),
                        this.roomMgr.isAutoIng = true,
                        this.createTimer = setInterval(function () {
                            t.isValid ? t.stopAutoBetCondition() && t.RequestBet() : clearInterval(t.createTimer)
                        }, 1e3),
                        this.stopAutoBetCondition() && this.RequestBet()
                }
                ,
                e.prototype.switchBetType = function () {
                    2 == this.betType ? this.Node_AutoStart.getComponent(cc.Animation).play(h.Game1052BtnPlayName.auto) : (this.Node_AutoStart.getComponent(cc.Animation).stop(h.Game1052BtnPlayName.Press),
                        this.Node_AutoStart.getComponent(cc.Animation).playAdditive(h.Game1052BtnPlayName.Normal))
                }
                ,
                e.prototype.OpenGameHelp = function () { }
                ,
                e.prototype.getFormatBetNum = function () {
                    if (!isgoServer) {
                        return -1001
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
                    return this.roomMgr.isLuckMode || this.roomMgr.IsTurbo || this.IsStopSuc
                        ? this.roomMgr.isLuckMode ? "roll_start_base"
                            : "roll_start"
                        : "roll_start_base"
                }
                ,
                e.prototype.getLuckAnimationEndName = function () {
                    return this.roomMgr.isLuckMode || this.roomMgr.IsTurbo || this.IsStopSuc ?
                        this.roomMgr.isLuckMode
                            ? "roll_end_base"
                            : "roll_end"
                        : "roll_end_base"
                }
                ,
                e.prototype.SwitchSetNodeAndBetNode = function (t) {
                    var e = this;
                    if (!this.NodeSwitchIng) {
                        this.NodeSwitchIng = true;
                        var i = t ? this.nodeOperate : this.settingNode
                            , n = t ? this.settingNode : this.nodeOperate
                            , o = t ? -500.204 : -500.388;
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
                                    e.btn_sureWin.active = !t,
                                    e.settingNode.active = t,
                                    e.NodeSwitchIng = false
                            }).start(),
                            this.nodeOperate.active = true,
                            this.btn_sureWin.active = true,
                            this.settingNode.active = true,
                            // this.GetWndNode("bg/spr_bottom/goldmouth").active = !t,
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
                    this.btn_sureWin.opacity = 100
                    this.btn_sureWin.getComponent(cc.Button).interactable = false
                }
                ,
                e.prototype.ControlBtnEnable = function () {
                    this.checkBtnAddLevel(),
                        this.checkBtnMinusLevel(),
                        this.BtnAuto.opacity = 255,
                        this.BtnAuto.getComponent(cc.Button).interactable = true,
                        this.BtnMenu.opacity = 255,
                        this.BtnMenu.getComponent(cc.Button).interactable = true
                    this.btn_sureWin.opacity = 255
                    this.btn_sureWin.getComponent(cc.Button).interactable = true
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
                    this.roomMgr.LeaveRoom()//,
                    //    app.SoundManager().PlaySound("game1052_BackClick")
                }
                ,
                e.prototype.getWinNumber = function () {
                    var t, e, i, n;
                    return (null === (t = this.roomMgr.BetResultData) || void 0 === t ? void 0 : t.win_gold) ? null === (e = this.roomMgr.BetResultData) || void 0 === e ? void 0 : e.win_gold : (null === (i = this.roomMgr.GameDates) || void 0 === i ? void 0 : i.total_win) ? null === (n = this.roomMgr.GameDates) || void 0 === n ? void 0 : n.total_win : 0
                }
                ,
                e.prototype.OnClose = function () {
                    app.ExternGameManager().hideGameProgressNode(); 
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e];
                    this.unscheduleAllCallbacks(),
                        this.roomMgr.GameDates = null,
                        app.FormManager().CloseForm(h.Game1052UIName.Game_1052Help),
                        clearInterval(this.createTimer),
                        app.SoundManager().StopAll()
                    app.UserManager().RequstUserWallet()
                    this.GetWndNode("nodeLabel/label", this.Node_Tips).stopAllActions();
                    this.GetWndComponent("nodeLabel/label", cc.Sprite, this.Node_Tips).spriteFrame =null
                }
                ,
                __decorate([c.property(cc.SpriteFrame)], e.prototype, "multipleSprStrArrSpriteFrame", undefined),
                __decorate([u, g("UI/prefab/game_1052_V")], e)
        }(d.GameBaseHttpForm));
i.default = _,
    module.exports = i
