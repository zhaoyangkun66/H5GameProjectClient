let i={} 
Object.defineProperty(i, "__esModule", {
    value: true
}),
i.Game1052AddNum = i.Game1052UIName = i.Game1052TipsType = i.Game1052HistoryList = i.Game1052HistoryDataItem = i.enum_Game1052Status = i.Recv_1052BetItem = i.Recv_PropsList = i.Recv_PropsListWin_arrs = i.Req_1052BetItem = i.Game1052BetDefault = i.TipsType = i.Game1052BtnPlayName = i.Game1052BigWinName = i.Game1052DragonBonesName = i.GameProp = i.Game1052HttpAPI = void 0;
var n = function() {
    function t() {}
    return t.GameDates = "/single_game.Dragon/initRoom",//Dragon
    t.BetResult = "/single_game.Dragon/gameResult",
   // t.BetHistory = "/goldgame/Dragon_user_gold_history",
    t.BetOneDayHistory = "/goldgame/Dragon_user_history",
    t
}();
i.Game1052HttpAPI = n,
function(t) {
    t[t.NullBox = 0] = "NullBox",
    t[t.Bamboo = 1] = "Bamboo",
    t[t.Peach = 2] = "Peach",
    t[t.PurpleDiamonds = 3] = "PurpleDiamonds",
    t[t.Weapon = 4] = "Weapon",
    t[t.LuckyBag = 5] = "LuckyBag",
    t[t.Yupei = 6] = "Yupei",
    t[t.Omnipotence = 7] = "Omnipotence"
}(i.GameProp || (i.GameProp = {})),
function(t) {
    t.Normal = "idle",
    t.Normal2 = "idle2",
    t.Normal3 = "idle3",
    t.za = "idle4",
    t.nod = "win3",
    t.win_nod = "win2",
    t.anger = "tease_exit",
    //t.excited = "",
   // t.stare = "",
  //  t.stare_loop = "",
    t.stare_happy = "tease_start",
   // t.happy = "tease_win_idle",
   // t.happy_win_show = "tease_win_idle",
    t.happy_win_loop = "tease_win_idle",
    t.happy_win_end = "tease_win_idle",
    t.normal_show = "wild_collect",
    t.gold_seq = "_seq"
}(i.Game1052DragonBonesName || (i.Game1052DragonBonesName = {})),
function(t) {
    t.bigwin_act = "bigwin_act",
    t.bigwin_loop = "bigwin_loop",
    t.megawin_act = "megawin_act",
    t.megawin_loop = "megawin_loop",
    t.supermegawin_act = "supermegawin_act",
    t.supermegawin_loop = "supermegawin_loop"
}(i.Game1052BigWinName || (i.Game1052BigWinName = {})),
function(t) {
    t.bigwin_act = "bw_spawn",
    t.bigwin_loop = "bw_idle",
    t.megawin_act = "mw_spawn",
    t.megawin_loop = "mw_idle",
    t.supermegawin_act = "smw_spawn",
    t.supermegawin_loop = "smw_idle"
}(i.Game1052BigWinName2 || (i.Game1052BigWinName2 = {})),
function(t) {
    t.Normal = "btn_start_normal",
    t.Press = "btn_start_Press",
    t.auto = "btn_start_auto",
    t.startClick = "btn_start_click"
}(i.Game1052BtnPlayName || (i.Game1052BtnPlayName = {})),
function(t) {
    t[t.randomTip1 = 0] = "randomTip1",
    t[t.randomTip2 = 1] = "randomTip2",
    t[t.randomTip3 = 2] = "randomTip3",
    t[t.randomTip4 = 3] = "randomTip4",
    t[t.randomTip5 = 4] = "randomTip5",
    t[t.goldTips = 5] = "goldTips"
}(i.TipsType || (i.TipsType = {}));
i.Game1052BetDefault = function() {}
;
i.Req_1052BetItem = function() {}
;
i.Recv_PropsListWin_arrs = function() {}
;
i.Recv_PropsList = function() {}
;
i.Recv_1052BetItem = function() {}
,
function(t) {
    t[t.INIT = 0] = "INIT",
    t[t.GAMERESULT = 1] = "GAMERESULT",
    t[t.GAME_END = 2] = "GAME_END",
    t[t.GAME_ENDED = 3] = "GAME_ENDED"
}(i.enum_Game1052Status || (i.enum_Game1052Status = {}));
i.Game1052HistoryDataItem = function() {}
;
var o = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e
}(Array);
i.Game1052HistoryList = o,
function(t) {
    t[t.MinimumBet = 0] = "MinimumBet",
    t[t.MaximumBet = 1] = "MaximumBet",
    t[t.TURBO_ON = 2] = "TURBO_ON",
    t[t.TURBO_OFF = 3] = "TURBO_OFF"
}(i.Game1052TipsType || (i.Game1052TipsType = {}));
var a = function() {
    function t() {}
    return t.UIGame1052Help = "Game1052Help",
    t.UIGame1052BetCommon = "UIGame1052BetCommon",
    t.UIGame1052SelectDateRange = "UIGame1052SelectDateRange",
    t.UIGame1052Daily = "UIGame1052Daily",
    t.UIGame1052BetDetails = "UIGame1052BetDetails",
    t.Game_1052Help = "Game_1052Help",
    t.Game_1052Rules = "Game_1052Rules",
    t.UIGame1052BigWin = "UIGame1052BigWin",
    t.UIGame1052BigWinLuck = "UIGame1052BigWinLuck",
    t.UIGame1052Tips = "UIGame1052Tips",
    t
}();
i.Game1052UIName = a,
i.Game1052AddNum = [1.11, 11.11, 111, 1111, 11111],
module.exports = i
