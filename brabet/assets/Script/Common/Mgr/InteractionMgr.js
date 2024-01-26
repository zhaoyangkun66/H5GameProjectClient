let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.InteractionMgr = undefined;
var o = require("../../script/common/GIDTool")
    , i = require("../../script/common/room_mode_tool")
    , a = require("../Base/Singleton")
    , r = require("../Define/GameEventDefine")
    , s = require("../Define/ShareDefine")
    , c = require("../Define/TrackEventName")
    , l = require("../Define/UINameDefine")
    , p = {};
p[13001] = {
    Name: l.UINameDefine.UIAccount,
    Vertical: .4,
    subClick: s.SubClickType.DepositHistory
},
    p[13002] = {
        Name: l.UINameDefine.UIAccount,
        Vertical: .4,
        subClick: s.SubClickType.WithdrawalHistory
    },
    p[13003] = {
        Name: l.UINameDefine.UIAccountSetting,
        Vertical: 0
    },
    p[13004] = {
        Name: l.UINameDefine.UIAccount,
        Vertical: 0
    },
    p[13005] = {
        Name: l.UINameDefine.UIHall,
        Vertical: 0
    },
    p[13006] = {
        Name: l.UINameDefine.UIHall,
        Vertical: 0
    },
    p["13006H"] = {
        Name: l.UINameDefine.UIMenu,
        Vertical: .01
    },
    p[13007] = {
        Name: l.UINameDefine.UIMenu,
        Vertical: .01
    },
    p[13008] = {
        Name: l.UINameDefine.UIAllActivity,
        Vertical: 0
    },
    p[13009] = {
        Name: l.UINameDefine.UIPromoteMain,
        Vertical: 0,
        subName: s.PromoteMainSelTopTe.Bonus
    },
    p[13010] = {
        Name: l.UINameDefine.UIPromoteMain,
        Vertical: .4
    },
    p[13011] = {
        Name: l.UINameDefine.UIActivity,
        Vertical: 0,
        subName: s.ActivityType.agency_promotion
    },
    p[13012] = {
        Name: l.UINameDefine.UIActivity,
        Vertical: 0,
        subName: s.ActivityType.subordinate_recharge_gift
    };
var d = function (e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "InteractionMgr",
                this.Log("Init")
        }
        ,
        t.prototype.SendWndEvent = function (e) {
            if (e) {
                var t = 0
                    , n = 0
                    , a = 0
                    , d = 0;
                if (e >= 10101 && e < 10108) {
                    if (app.UserManager().GetIsOfficialPopup())
                        return;
                    app.Client.OnEvent(r.GameEventDefine.OPEN_STORE)
                } else if (11100 == e) {
                    if (app.UserManager().GetIsOfficialPopup())
                        return;
                    app.StoreManager().ShowStoreUI({
                        ShowType: s.WIN_TYPE.CASHOUT,
                        in_type: c.default.PAGETRACK_EVENT_WITHDRAW_ACTIVITY
                    })
                } else if (11602 == e)
                    ;
                else if (11603 == e)
                    ;
                else if (11604 == e)
                    ;
                else if (11605 == e)
                    app.SysNotifyManager().ShowToast("UI.System_25");
                else if (11606 == e)
                    app.Client.OnEvent(r.GameEventDefine.OPEN_SPECIAL_OFFER);
                else if (11607 == e)
                    app.SysNotifyManager().ShowToast("UI.System_25");
                else if (11609 == e) {
                    if (app.UserManager().GetIsOfficialPopup())
                        return;
                    app.FormManager().ShowForm(l.UINameDefine.UIPromoteMain)
                } else if (12101 == e)
                    app.HallManager().EnterRoomGame(i.RoomMode.ROOM_MODE_TP_MATCH_5P_BAISC);
                else if (12102 == e)
                    app.HallManager().EnterRoomGame(i.RoomMode.ROOM_MODE_ROYAL_TP_MATCH_5P_BAISC);
                else if (12103 == e)
                    app.HallManager().EnterRoomGame(i.RoomMode.ROOM_MODE_RM_MATCH_5P_BAISC);
                else if (12104 == e)
                    app.HallManager().EnterRoomGame(i.RoomMode.ROOM_MODE_RM_MATCH_2P_BAISC);
                else if (e >= 20101 && e <= 20104)
                    t = i.RoomMode.ROOM_MODE_DDZ_MATCH_5P_BAISC + e - 20101;
                else if (e >= 20201 && e <= 20204)
                    t = i.RoomMode.ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_BAISC + e - 20201;
                else if (e >= 20301 && e <= 20304)
                    t = i.RoomMode.ROOM_MODE_PSZ_MATCH_5P_BAISC + e - 20301;
                else if (20401 == e)
                    t = i.RoomMode.ROOM_MODE_DRAGON_TIGER_HALL;
                else if (20501 == e)
                    t = i.RoomMode.ROOM_MODE_RED_BLACK_HALL;
                else if (20601 == e)
                    t = i.RoomMode.ROOM_MODE_SHZ;
                else if (e >= 20701 && e <= 20704)
                    t = i.RoomMode.ROOM_MODE_13WATER_MATCH_4P_BASIC + e - 20701;
                else if (e >= 20801 && e <= 20805)
                    t = i.RoomMode.ROOM_MODE_PDK_MATCH_5P_BAISC + e - 20801;
                else if (e >= 20901 && e <= 20905)
                    t = 20901 == e ? i.RoomMode.ROOM_MODE_ERMJ_MATCH_5P_MIN : i.RoomMode.ROOM_MODE_ERMJ_MATCH_5P_BAISC + e - 20902;
                else if (e >= 21001 && e <= 21002)
                    t = 21001 == e ? i.RoomMode.ROOM_MODE_HUNDRED_COW_10X : i.RoomMode.ROOM_MODE_HUNDRED_COW_4X;
                else if (e >= 21101 && e <= 21105)
                    t = 21105 == e ? i.RoomMode.ROOM_MODE_BULL_HOLDEM_MATCH_5P_MAX : i.RoomMode.ROOM_MODE_BULL_HOLDEM_MATCH_5P_BAISC + e - 21101;
                else if (e >= 21201 && e <= 21205)
                    t = i.RoomMode.ROOM_MODE_BULL1_HOLDEM_MATCH_5P_BAISC + e - 21201;
                else if (21301 == e)
                    t = i.RoomMode.ROOM_MODE_CAR_HALL;
                else if (21401 == e)
                    n = o.GIDTool.PG;
                else if (21501 == e)
                    n = o.GIDTool.DG;
                else if (21601 == e)
                    n = o.GIDTool.TFGAMING;
                else if (21701 == e)
                    n = o.GIDTool.BTI;
                else if (21801 == e)
                    n = o.GIDTool.EVO,
                        a = 9e3;
                else if (21901 == e)
                    n = o.GIDTool.SBO;
                else if (22101 == e)
                    n = o.GIDTool.NYDJ;
                else if (22201 == e)
                    n = o.GIDTool.CQ9;
                else if (22401 == e || 22103 == e)
                    n = o.GIDTool.WINGO;
                else if (22102 == e)
                    t = i.RoomMode.ROOM_MODE_BAO_DIAN;
                else if (22104 == e)
                    n = o.GIDTool.SHIJIEBEI;
                else if (22105 == e)
                    t = i.RoomMode.ROOM_MODE_777_SLOT_0;
                else if (22106 == e)
                    t = i.RoomMode.ROOM_MODE_BAI_BACCARAT;
                else if (22107 == e)
                    t = i.RoomMode.ROOM_MODE_LUN_PAN;
                else if (22108 == e)
                    t = i.RoomMode.ROOM_MODE_ABgame;
                else if (22109 == e)
                    t = i.RoomMode.ROOM_MODE_Roulette;
                else if (22110 == e)
                    t = i.RoomMode.ROOM_MODE_LROLLER;
                else if (22111 == e)
                    t = i.RoomMode.ROOM_MODE_TOU_BAO;
                else if (22112 == e)
                    t = i.RoomMode.ROOM_MODE_MINES;
                else if (22113 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.first_recharge_gift);
                else if (22114 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.ordinary_recharge_gift);
                else if (22115 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.subordinate_recharge_gift);
                else if (22116 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.reserve_event_one);
                else if (22117 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.reserve_event_two);
                else if (22118 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.reserve_event_three);
                else if (22119 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.rain_of_red_envelopes);
                else if (22136 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.reserve_event_five);
                else if (22120 == e)
                    app.DemoServerManager().EnterGame();
                else if (22121 == e)
                    app.DemoServerManager().EnterGame();
                else if (22122 == e)
                    n = o.GIDTool.DICE;
                else if (22123 == e)
                    n = o.GIDTool.PINGBO;
                else if (22124 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UILoseWaiver);
                else if (22125 == e)
                    d = 6;
                else if (22126 == e)
                    d = 8;
                else if (22127 == e)
                    d = 5;
                else if (22128 == e)
                    d = 3;
                else if (22129 == e)
                    d = 7;
                else if (22130 == e)
                    d = 9;
                else if (22131 == e)
                    d = 1;
                else if (22132 == e)
                    d = 4;
                else if (22133 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIActivity, s.ActivityType.Atividades_de_Natal);
                else if (22134 == e) {
                    if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().ShowForm(l.UINameDefine.UIActivityDailyRegistrations);
                }
                else if (22135 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UICashWheel);
                else if (122136 == e) {
                    if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().ShowForm(l.UINameDefine.UIActivityDailyRegistrations);
                }
                else if (122137 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UICashWheel);
                else if (22137 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIWheel);
                else if (22139 == e)
                    n = o.GIDTool.BLINDBOX;
                else if (22140 == e)
                    n = o.GIDTool.K3;
                else if (22141 == e)
                    n = o.GIDTool.TRUCOONE;
                else if (22142 == e)
                    n = o.GIDTool.crazyMines;
                else if (22144 == e)
                    n = o.GIDTool.Bonanza;
                else if (22146 == e)
                    n = o.GIDTool.YesBingo;
                else if (22147 == e)
                    n = o.GIDTool.CpSoft;
                else if (22148 == e)
                    n = o.GIDTool.TaDa;
                else if (22149 == e)
                    n = o.GIDTool.JiLiTable;
                else if (22150 == e)
                    n = o.GIDTool.KingMaker;
                else if (22151 == e)
                    n = o.GIDTool.PGEUR;
                else if (22152 == e)
                    n = o.GIDTool.Tone;
                else if (22153 == e)
                    n = o.GIDTool.PGSingleGame;
                else if (22154 == e)
                    n = o.GIDTool.PGEURSingleGame;
                else if (22155 == e)
                    n = o.GIDTool.PPSingleGame;
                else if (22156 == e)
                    n = o.GIDTool.DS88;
                else if (22157 == e)
                    n = o.GIDTool.CQ9_FISH;
                else if (22158 == e)
                    n = o.GIDTool.CMD;
                else if (22159 == e)
                    n = o.GIDTool.BGS;
                else if (22160 == e)
                    n = o.GIDTool.JJ_FISH;
                else if (22161 == e)
                    n = o.GIDTool.EVoPlaySingle;
                else if (22162 == e)
                    n = o.GIDTool.SWAGGER;
                else if (22163 == e)
                    n = o.GIDTool.IMGame;
                else if (22164 == e)
                    n = o.GIDTool.AWC;
                else if (22165 == e)
                    n = o.GIDTool.AWC2;
                else if (22166 == e)
                    n = o.GIDTool.HaHanero;
                else if (22167 == e)
                    n = o.GIDTool.Ebet;
                else if (22168 == e)
                    n = o.GIDTool.EVO3;
                else if (22170 == e)
                    n = o.GIDTool.CRASH2;
                else if (22171 == e)
                    n = o.GIDTool.Panda;
                else if (23101 == e) {
                    var h = app.SupportManager().SelToServiceTypeName();
                    app.FormManager().ShowForm(h)
                } else if (24101 == e)
                    app.FormManager().ShowForm(l.UINameDefine.UIMonthCard);
                else if (25101 == e) {
                    var u = app.RedDotManager().RechargeInfoDataResult.recharge_send_gold;
                    u && u.show ? app.FormManager().ShowForm(l.UINameDefine.UIBonuses) : app.SysNotifyManager().ShowToast("UI.System_25")
                } else if (e >= 13001 && e <= 13012) {
                    var _ = !app.ComTool().H5Platform() && p[e + "H"] ? p[e + "H"] : p[e];
                    if (13009 === e || 13010 === e) {
                        if (app.UserManager().GetIsOfficialPopup())
                            return;
                        return void app.FormManager().ShowForm(_.Name, _)
                    }
                    if (null == _ ? undefined : _.Name) {
                        if (_.subName)
                            return void app.FormManager().ShowForm(_.Name, _.subName);
                        if (_.Vertical)
                            return void app.FormManager().ShowForm(_.Name, _);
                        app.FormManager().ShowForm(_.Name)
                    }
                } else
                    25102 == e ? app.FormManager().ShowForm(l.UINameDefine.UIBetBonus) : 25103 == e ? app.FormManager().ShowForm(l.UINameDefine.UIVIP) : 22169 == e ? n = o.GIDTool.Keno : 22175 == e ? n = o.GIDTool.JDB : 22176 == e ? n = o.GIDTool.V8 : 22177 == e ? n = o.GIDTool.BNG : 22178 == e ? n = o.GIDTool.PP2 : 22179 == e ? n = o.GIDTool.DIGITAIN_SPORT : 22180 == e ? n = o.GIDTool.FPC : 3e4 == e ? app.ComTool().H5Platform() ? app.FormManager().ShowForm(l.UINameDefine.UIFIFAWorldCup) : app.SysNotifyManager().ShowToast("UI_WorldCup_ActiveTip") : 30001 == e ? app.ComTool().H5Platform() ? app.FormManager().ShowForm(l.UINameDefine.UIWorldCupAward) : app.SysNotifyManager().ShowToast("UI_WorldCup_ActiveTip") : 30002 == e ? app.ComTool().H5Platform() ? n = o.GIDTool.WCS : app.SysNotifyManager().ShowToast("UI_WorldCup_ActiveTip") : 30003 == e ? n = o.GIDTool.LuckyAirShip : 30004 == e ? n = o.GIDTool.RacingCard : 30005 == e ? n = o.GIDTool.Plinko : 22138 == e && app.FormManager().ShowForm(l.UINameDefine.UITaskBonus);
                if (d > 0)
                    app.Client.OnEvent(r.GameEventDefine.INTERACTION_JUMP, d);
                else if (t > 0)
                    app.HallManager().EnterRoomGame(t);
                else if (n > 0) {
                    var m = app.GameTypeManager().GetExternGameChildList(n);
                    return !a && m ? void app.FormManager().ShowForm(l.UINameDefine.UIGameHierarchy, {
                        subInfo: m.list,
                        topName: m.name
                    }) : void app.HallManager().OnEnterGame(n, a)
                }
            }
        }
        ,
        t
}(a.Singleton);
n.InteractionMgr = d,
    module.exports = n
