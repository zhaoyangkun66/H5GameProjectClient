let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.RoomModeTool = n.GameSceneTool = n.GameScene = n.RoomType = n.RoomMode = undefined,
n.RoomMode = cc.Enum({
    LOGIN: 255,
    HALL: 0,
    SSS: 1,
    ROOM_MODE_SIXFLOWER: 2,
    ROOM_MODE_BULL: 3,
    ROOM_MODE_GOLDEN_FLOWER: 4,
    MJ: 5,
    ROOM_MODE_TEXAS_POKER: 6,
    ROOM_MODE_RUN_FAST: 7,
    ROOM_MODE_FIGHT_LANDLORD: 8,
    ROOM_MODE_PISCATION: 9,
    ROOM_MODE_BACCARAT: 10,
    ROOM_MODE_SLOT: 11,
    ROOM_MODE_SLOT_HALL: 12,
    ROOM_MODE_RM: 25,
    ROOM_MODE_HUNDRED_COW_10X: 3e4,
    ROOM_MODE_HUNDRED_COW_4X: 35e3,
    ROOM_MODE_LUDO: 27,
    ROOM_MODE_13WATER_MATCH_4P_BASIC: 141,
    ROOM_MODE_13WATER_MATCH_4P_NORMAL: 142,
    ROOM_MODE_13WATER_MATCH_4P_ADVANCE: 143,
    ROOM_MODE_13WATER_MATCH_4P_MASTER: 144,
    ROOM_MODE_13WATER_MATCH_5P_BASIC: 151,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_BAISC: 661,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_NORMAL: 662,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_ADVANCE: 663,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MASTER: 664,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MAX: 665,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MAX_2: 666,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MAX_3: 667,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MAX_4: 668,
    ROOM_MODE_TEXAS_HOLDEM_MATCH_6P_MAX_5: 669,
    ROOM_MODE_TEXAS_Omaha_BAISC: 671,
    ROOM_MODE_TEXAS_Omaha_NORMAL: 672,
    ROOM_MODE_TEXAS_Omaha_ADVANCE: 673,
    ROOM_MODE_TEXAS_Omaha_MASTER: 674,
    ROOM_MODE_TEXAS_ShortCard_BAISC: 681,
    ROOM_MODE_TEXAS_ShortCard_NORMAL: 682,
    ROOM_MODE_TEXAS_ShortCard_ADVANCE: 683,
    ROOM_MODE_TEXAS_ShortCard_MASTER: 684,
    ROOM_MODE_BULL_HOLDEM_MATCH_5P_BAISC: 351,
    ROOM_MODE_BULL_HOLDEM_MATCH_5P_NORMAL: 352,
    ROOM_MODE_BULL_HOLDEM_MATCH_5P_ADVANCE: 353,
    ROOM_MODE_BULL_HOLDEM_MATCH_5P_MASTER: 354,
    ROOM_MODE_BULL_HOLDEM_MATCH_5P_MAX: 350,
    ROOM_MODE_BULL1_HOLDEM_MATCH_5P_BAISC: 355,
    ROOM_MODE_BULL1_HOLDEM_MATCH_5P_NORMAL: 356,
    ROOM_MODE_BULL1_HOLDEM_MATCH_5P_ADVANCE: 357,
    ROOM_MODE_BULL1_HOLDEM_MATCH_5P_MASTER: 358,
    ROOM_MODE_BULL1_HOLDEM_MATCH_5P_MAX: 359,
    ROOM_MODE_PSZ_MATCH_5P_BAISC: 451,
    ROOM_MODE_PSZ_MATCH_5P_NORMAL: 452,
    ROOM_MODE_PSZ_MATCH_5P_ADVANCE: 453,
    ROOM_MODE_PSZ_MATCH_5P_MASTER: 454,
    ROOM_MODE_ROYAL_TP_MATCH_5P_ZERO: 2400,
    ROOM_MODE_ROYAL_TP_MATCH_5P_BAISC: 2401,
    ROOM_MODE_ROYAL_TP_MATCH_5P_NORMAL: 2402,
    ROOM_MODE_ROYAL_TP_MATCH_5P_ADVANCE: 2403,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MASTER: 2404,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MAX: 2405,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MAX_2: 2406,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MAX_3: 2407,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MAX_4: 2408,
    ROOM_MODE_ROYAL_TP_MATCH_5P_MAX_5: 2409,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_BAISC: 2410,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_NORMAL: 2411,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_ADVANCE: 2412,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MASTER: 2413,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX: 2414,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX_2: 2415,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX_3: 2416,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX_4: 2417,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX_5: 2418,
    ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_MAX_6: 2419,
    ROOM_MODE_TP_MATCH_5P_ZERO: 2450,
    ROOM_MODE_TP_MATCH_5P_BAISC: 2451,
    ROOM_MODE_TP_MATCH_5P_NORMAL: 2452,
    ROOM_MODE_TP_MATCH_5P_ADVANCE: 2453,
    ROOM_MODE_TP_MATCH_5P_MASTER: 2454,
    ROOM_MODE_TP_MATCH_5P_MAX: 2455,
    ROOM_MODE_TP_MATCH_5P_MAX_2: 2456,
    ROOM_MODE_TP_MATCH_5P_MAX_3: 2457,
    ROOM_MODE_TP_MATCH_5P_MAX_4: 2458,
    ROOM_MODE_TP_MATCH_5P_MAX_5: 2459,
    ROOM_MODE_TP_MATCH_5P_SINGLE_ZERO: 2460,
    ROOM_MODE_TP_MATCH_5P_SINGLE_BAISC: 2461,
    ROOM_MODE_TP_MATCH_5P_SINGLE_NORMAL: 2462,
    ROOM_MODE_TP_MATCH_5P_SINGLE_ADVANCE: 2463,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MASTER: 2464,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MAX: 2465,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MAX_2: 2466,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MAX_3: 2467,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MAX_4: 2468,
    ROOM_MODE_TP_MATCH_5P_SINGLE_MAX_5: 2469,
    ROOM_MODE_RM_MATCH_2P_ZERO: 2520,
    ROOM_MODE_RM_MATCH_2P_BAISC: 2521,
    ROOM_MODE_RM_MATCH_2P_NORMAL: 2522,
    ROOM_MODE_RM_MATCH_2P_ADVANCE: 2523,
    ROOM_MODE_RM_MATCH_2P_MASTER: 2524,
    ROOM_MODE_RM_MATCH_2P_MAX: 2525,
    ROOM_MODE_RM_MATCH_2P_MAX_2: 2526,
    ROOM_MODE_RM_MATCH_2P_MAX_3: 2527,
    ROOM_MODE_RM_MATCH_2P_MAX_4: 2528,
    ROOM_MODE_RM_MATCH_2P_MAX_5: 2529,
    ROOM_MODE_RM_MATCH_2P_SINGLE_ZERO: 2530,
    ROOM_MODE_RM_MATCH_2P_SINGLE_BAISC: 2531,
    ROOM_MODE_RM_MATCH_2P_SINGLE_NORMAL: 2532,
    ROOM_MODE_RM_MATCH_2P_SINGLE_ADVANCE: 2533,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MASTER: 2534,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MAX: 2535,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MAX_2: 2536,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MAX_3: 2537,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MAX_4: 2538,
    ROOM_MODE_RM_MATCH_2P_SINGLE_MAX_5: 2539,
    ROOM_MODE_RM_MATCH_5P_ZERO: 2550,
    ROOM_MODE_RM_MATCH_5P_BAISC: 2551,
    ROOM_MODE_RM_MATCH_5P_NORMAL: 2552,
    ROOM_MODE_RM_MATCH_5P_ADVANCE: 2553,
    ROOM_MODE_RM_MATCH_5P_MASTER: 2554,
    ROOM_MODE_RM_MATCH_5P_MAX: 2555,
    ROOM_MODE_RM_MATCH_5P_MAX_2: 2556,
    ROOM_MODE_RM_MATCH_5P_MAX_3: 2557,
    ROOM_MODE_RM_MATCH_5P_MAX_4: 2558,
    ROOM_MODE_RM_MATCH_5P_MAX_5: 2559,
    ROOM_MODE_RM_MATCH_5P_SINGLE_ZERO: 2560,
    ROOM_MODE_RM_MATCH_5P_SINGLE_BAISC: 2561,
    ROOM_MODE_RM_MATCH_5P_SINGLE_NORMAL: 2562,
    ROOM_MODE_RM_MATCH_5P_SINGLE_ADVANCE: 2563,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MASTER: 2564,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MAX: 2565,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MAX_2: 2566,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MAX_3: 2567,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MAX_4: 2568,
    ROOM_MODE_RM_MATCH_5P_SINGLE_MAX_5: 2569,
    ROOM_MODE_RM_POOL_101_1: 2571,
    ROOM_MODE_RM_POOL_101_2: 2572,
    ROOM_MODE_RM_POOL_101_3: 2573,
    ROOM_MODE_RM_POOL_101_4: 2574,
    ROOM_MODE_RM_POOL_101_5: 2575,
    ROOM_MODE_RM_POOL_101_6: 2576,
    ROOM_MODE_RM_POOL_101_7: 2577,
    ROOM_MODE_RM_POOL_101_8: 2578,
    ROOM_MODE_RM_POOL_101_9: 2579,
    ROOM_MODE_RM_POOL_201_1: 2581,
    ROOM_MODE_RM_POOL_201_2: 2582,
    ROOM_MODE_RM_POOL_201_3: 2583,
    ROOM_MODE_RM_POOL_201_4: 2584,
    ROOM_MODE_RM_POOL_201_5: 2585,
    ROOM_MODE_RM_POOL_201_6: 2586,
    ROOM_MODE_RM_POOL_201_7: 2587,
    ROOM_MODE_RM_POOL_201_8: 2588,
    ROOM_MODE_RM_POOL_201_9: 2589,
    ROOM_MODE_RM_DEAL_2_1: 2501,
    ROOM_MODE_RM_DEAL_2_2: 2502,
    ROOM_MODE_RM_DEAL_2_3: 2503,
    ROOM_MODE_RM_DEAL_2_4: 2504,
    ROOM_MODE_RM_DEAL_2_5: 2505,
    ROOM_MODE_RM_DEAL_2_6: 2506,
    ROOM_MODE_RM_DEAL_2_7: 2507,
    ROOM_MODE_RM_DEAL_2_8: 2508,
    ROOM_MODE_RM_DEAL_2_9: 2509,
    ROOM_MODE_RM_DEAL_3_1: 2511,
    ROOM_MODE_RM_DEAL_3_2: 2512,
    ROOM_MODE_RM_DEAL_3_3: 2513,
    ROOM_MODE_RM_DEAL_3_4: 2514,
    ROOM_MODE_RM_DEAL_3_5: 2515,
    ROOM_MODE_RM_DEAL_3_6: 2516,
    ROOM_MODE_RM_DEAL_3_7: 2517,
    ROOM_MODE_RM_DEAL_3_8: 2518,
    ROOM_MODE_RM_DEAL_3_9: 2519,
    ROOM_MODE_TL_MATCH_5P_BAISC: 2641,
    ROOM_MODE_TL_MATCH_5P_NORMAL: 2642,
    ROOM_MODE_TL_MATCH_5P_ADVANCE: 2643,
    ROOM_MODE_TL_MATCH_5P_MASTER: 2644,
    ROOM_MODE_TL_MATCH_5P_MAX: 2645,
    ROOM_MODE_TL_MATCH_5P_MAX_2: 2646,
    ROOM_MODE_TL_MATCH_5P_MAX_3: 2647,
    ROOM_MODE_TL_MATCH_5P_MAX_4: 2648,
    ROOM_MODE_TL_MATCH_5P_MAX_5: 2649,
    ROOM_MODE_LUDO_MATCH_2P_BAISC: 2721,
    ROOM_MODE_LUDO_MATCH_2P_max_1: 2722,
    ROOM_MODE_LUDO_MATCH_2P_max_2: 2723,
    ROOM_MODE_LUDO_MATCH_2P_max_3: 2724,
    ROOM_MODE_LUDO_MATCH_2P_max_4: 2725,
    ROOM_MODE_LUDO_MATCH_2P_max_5: 2726,
    ROOM_MODE_LUDO_MATCH_2P_max_6: 2727,
    ROOM_MODE_LUDO_MATCH_2P_max_7: 2728,
    ROOM_MODE_LUDO_MATCH_2P_max_8: 2729,
    ROOM_MODE_LUDO_MATCH_4P_BAISC: 2741,
    ROOM_MODE_LUDO_MATCH_4P_max_1: 2742,
    ROOM_MODE_LUDO_MATCH_4P_max_2: 2743,
    ROOM_MODE_LUDO_MATCH_4P_max_3: 2744,
    ROOM_MODE_LUDO_MATCH_4P_max_4: 2745,
    ROOM_MODE_LUDO_MATCH_4P_max_5: 2746,
    ROOM_MODE_LUDO_MATCH_4P_max_6: 2747,
    ROOM_MODE_LUDO_MATCH_4P_max_7: 2748,
    ROOM_MODE_LUDO_MATCH_4P_max_8: 2749,
    ROOM_MODE_LUDO_MATCH_6P_BAISC: 2761,
    ROOM_MODE_LUDO_MATCH_6P_max_1: 2762,
    ROOM_MODE_LUDO_MATCH_6P_max_2: 2763,
    ROOM_MODE_LUDO_MATCH_6P_max_3: 2764,
    ROOM_MODE_LUDO_MATCH_6P_max_4: 2765,
    ROOM_MODE_LUDO_MATCH_6P_max_5: 2766,
    ROOM_MODE_LUDO_MATCH_6P_max_6: 2767,
    ROOM_MODE_LUDO_MATCH_6P_max_7: 2768,
    ROOM_MODE_LUDO_MATCH_6P_max_8: 2769,
    ROOM_MODE_PDK_MATCH_5P_BAISC: 731,
    ROOM_MODE_PDK_MATCH_5P_NORMAL: 732,
    ROOM_MODE_PDK_MATCH_5P_ADVANCE: 733,
    ROOM_MODE_PDK_MATCH_5P_MASTER: 734,
    ROOM_MODE_PDK_MATCH_5P_MIN: 735,
    ROOM_MODE_DDZ_MATCH_5P_BAISC: 831,
    ROOM_MODE_DDZ_MATCH_5P_NORMAL: 832,
    ROOM_MODE_DDZ_MATCH_5P_ADVANCE: 833,
    ROOM_MODE_DDZ_MATCH_5P_MASTER: 834,
    ROOM_MODE_ERMJ_MATCH_5P_BAISC: 1621,
    ROOM_MODE_ERMJ_MATCH_5P_NORMAL: 1622,
    ROOM_MODE_ERMJ_MATCH_5P_ADVANCE: 1623,
    ROOM_MODE_ERMJ_MATCH_5P_MASTER: 1624,
    ROOM_MODE_ERMJ_MATCH_5P_MIN: 1625,
    ROOM_MODE_777_SLOT_0: 1300,
    ROOM_MODE_777_SLOT_1: 1301,
    ROOM_MODE_777_SLOT_2: 1302,
    ROOM_MODE_777_SLOT_3: 1303,
    ROOM_MODE_777_SLOT_4: 1304,
    ROOM_MODE_777_SLOT_5: 1305,
    ROOM_MODE_777_SLOT_6: 1306,
    ROOM_MODE_777_SLOT_7: 1307,
    ROOM_MODE_777_SLOT2_1: 11401001,
    ROOM_MODE_777_SLOT2_2: 11401002,
    ROOM_MODE_777_SLOT2_3: 11401003,
    ROOM_MODE_777_SLOT2_4: 11401004,
    ROOM_MODE_777_SLOT2_5: 11401005,
    ROOM_MODE_777_SLOT2_6: 11401006,
    ROOM_MODE_777_SLOT2_7: 11401007,
    ROOM_MODE_777_SLOT2_8: 11401008,
    ROOM_MODE_WOELD_CUP_SLOT_0: 1310,
    ROOM_MODE_WOELD_CUP_SLOT_1: 1311,
    ROOM_MODE_WOELD_CUP_SLOT_2: 1312,
    ROOM_MODE_WOELD_CUP_SLOT_3: 1313,
    ROOM_MODE_WOELD_CUP_SLOT_4: 1314,
    ROOM_MODE_WOELD_CUP_SLOT_5: 1315,
    ROOM_MODE_WOELD_CUP_SLOT_6: 1316,
    ROOM_MODE_WOELD_CUP_SLOT_7: 1317,
    ROOM_MODE_FOOTBALL_SLOT_0: 1320,
    ROOM_MODE_FOOTBALL_SLOT_1: 1321,
    ROOM_MODE_FOOTBALL_SLOT_2: 1322,
    ROOM_MODE_FOOTBALL_SLOT_3: 1323,
    ROOM_MODE_FOOTBALL_SLOT_4: 1324,
    ROOM_MODE_FOOTBALL_SLOT_5: 1325,
    ROOM_MODE_FOOTBALL_SLOT_6: 1326,
    ROOM_MODE_FOOTBALL_SLOT_7: 1327,
    ROOM_MODE_SG_MATCH_5P_BASIC: 1951,
    ROOM_MODE_SG_MATCH_5P_NORMA: 1952,
    ROOM_MODE_SG_MATCH_5P_ADVANCE: 1953,
    ROOM_MODE_SG_MATCH_5P_MASTER: 1954,
    ROOM_MODE_SG_MATCH_5P_MIN: 1955,
    ROOM_MODE_TOU_BAO: 11e4,
    ROOM_MODE_CAR_HALL: 12e4,
    ROOM_MODE_DRAGON_TIGER_HALL: 13e4,
    ROOM_MODE_RED_BLACK_HALL: 14e4,
    ROOM_MODE_LUN_PAN: 15e4,
    ROOM_MODE_BAO_DIAN: 28e4,
    ROOM_MODE_EXP_BAO_DIAN: 281e3,
    ROOM_MODE_CRASH2: 282e3,
    ROOM_MODE_SHZ: 999999,
    ROOM_MODE_LROLLER: 1400,
    ROOM_MODE_Roulette: 3e5,
    ROOM_MODE_OtherRoulette: 300004,
    ROOM_MODE_ABgame: 29e4,
    ROOM_MODE_BAI_BACCARAT: 1e5,
    ROOM_MODE_MINES: 15e3,
    ROOM_MODE_RacingCar: 21e3,
    ROOM_MODE_FISH_4P_BASIC: 941,
    ROOM_MODE_FISH_4P_NORMAL: 942,
    ROOM_MODE_FISH_4P_ADVANCE: 943,
    ROOM_MODE_FISH_4P_MASTER: 944,
    ROOM_MODE_TRUCO_2P_1: 3121,
    ROOM_MODE_TRUCO_2P_2: 3122,
    ROOM_MODE_TRUCO_2P_3: 3123,
    ROOM_MODE_TRUCO_2P_4: 3124,
    ROOM_MODE_TRUCO_2P_5: 3125,
    ROOM_MODE_TRUCO_2P_6: 3126,
    ROOM_MODE_TRUCO_2P_7: 3127,
    ROOM_MODE_TRUCO_4P_1: 3141,
    ROOM_MODE_TRUCO_4P_2: 3142,
    ROOM_MODE_TRUCO_4P_3: 3143,
    ROOM_MODE_TRUCO_4P_4: 3144,
    ROOM_MODE_TRUCO_4P_5: 3145,
    ROOM_MODE_TRUCO_4P_6: 3146,
    ROOM_MODE_TRUCO_4P_7: 3147
}),
n.RoomType = {
    ROOM_NONE: -1,
    ROOM_CARD: 0,
    ROOM_GOLD: 1,
    ROOM_HUNDRED: 2,
    ROOM_SINGLE: 100,
    GO_ROOM_HUNDRED: 1002
},
n.GameScene = {
    LAUNCH: "launch",
    LOGIN: "Login",
    HALL: "Hall",
    SSS: "game_sss",
    LZH: "game_lzh",
    MJ: "game_mj",
    GOLD_HALL: "gold_hall",
    BRNN: "game_brnn",
    Game30: "game_30",
    TBNN: "game_jdnn",
    QZNN: "game_qznn",
    LHDZ: "game_lhdz",
    HHDZ: "game50Form",
    BCBM: "game_car",
    SHZ: "game_shz",
    DDZ: "game_ddz",
    PDK: "game_pdk",
    PSZ: "game_TP",
    ERMJ: "game_mj",
    BYDR: "game_buyu",
    VIDEO: "game_video",
    PORTRAIT: "game_portrait",
    LANDSCAPE: "game_landscape",
    SG: "game_sg",
    ESPORTSHALL: "game_e-sports",
    RUMMY: "game_210",
    TIEN_LEN: "game_tienlen",
    LUDO: "ludoGame",
    TOUBAO: "game_SicBo",
    LUNPAN: "game_LunPan",
    SLOT777: "game_777slot",
    SLOT2_777: "game_FruitSlots2",
    BAODIAN: "game_Crash",
    CRASH2: "game_Crash2",
    SHIJIEBEI: "game_shijiebei",
    LROLLER: "game_LuckyRoller",
    Roulette: "game_Roulette",
    ABgame: "game_AB",
    Baccarat: "game_Baccarat",
    MINES: "game_MINES",
    AB_Classis: "game_ABjingdian",
    Game730: "game_730",
    Game620: "game_620",
    Game900: "game_900",
    Game910: "game_910",
    Game970: "game_970"
};
var o = function() {
    function e() {}
    return e.isDzpkScene = function(e) {
        return e == n.GameScene.Game30 || e == n.GameScene.Game900 || e == n.GameScene.Game910
    }
    ,
    e
}();
n.GameSceneTool = o;
var i = function() {
    function e() {}
    return e.isSingleRummy = function(e) {
        var t = Math.floor(e / 10)
          , o = false;
        return t == Math.floor(n.RoomMode.ROOM_MODE_RM_MATCH_5P_SINGLE_BAISC / 10) && (o = true),
        t == Math.floor(n.RoomMode.ROOM_MODE_RM_MATCH_2P_SINGLE_ZERO / 10) && (o = true),
        o
    }
    ,
    e.isPoolRummy_101 = function(e) {
        return Math.floor(e / 10) == Math.floor(n.RoomMode.ROOM_MODE_RM_POOL_101_1 / 10)
    }
    ,
    e.isPoolRummy_201 = function(e) {
        return Math.floor(e / 10) == Math.floor(n.RoomMode.ROOM_MODE_RM_POOL_201_1 / 10)
    }
    ,
    e.isDealRummy2p = function(e) {
        return Math.floor(e / 10) == Math.floor(n.RoomMode.ROOM_MODE_RM_DEAL_2_1 / 10)
    }
    ,
    e.isDealRummy3p = function(e) {
        return Math.floor(e / 10) == Math.floor(n.RoomMode.ROOM_MODE_RM_DEAL_3_1 / 10)
    }
    ,
    e.isSingleTP = function(e) {
        var t = Math.floor(e / 10)
          , o = false;
        return t == Math.floor(n.RoomMode.ROOM_MODE_TP_MATCH_5P_SINGLE_BAISC / 10) && (o = true),
        t == Math.floor(n.RoomMode.ROOM_MODE_ROYAL_TP_MATCH_5P_SINGLE_BAISC / 10) && (o = true),
        o
    }
    ,
    e.isFootball = function(e) {
        return e >= n.RoomMode.ROOM_MODE_FOOTBALL_SLOT_0 && e <= n.RoomMode.ROOM_MODE_FOOTBALL_SLOT_7
    }
    ,
    e.isCrash = function(e) {
        return e == n.RoomMode.ROOM_MODE_BAO_DIAN || e == n.RoomMode.ROOM_MODE_CRASH2
    }
    ,
    e
}();
n.RoomModeTool = i,
module.exports = n