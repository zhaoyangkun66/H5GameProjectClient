let i={} 
Object.defineProperty(i, "__esModule", {
    value: true
}),
i.Game1053AddNum = i.Game1053UIName = i.Game1053TipsType = i.Game1053HistoryList = i.Game1053HistoryDataItem = i.enum_Game1053Status = i.Recv_1053BetItem = i.Recv_PropsList = i.Recv_PropsListWin_arrs = i.Req_1053BetItem = i.Game1053BetDefault = i.TipsType = i.Game1053BtnPlayName = i.Game1053BigWinName = i.Game1053DragonBonesName = i.GameProp = i.Game1053HttpAPI = void 0;
var n = function() {
    function t() {}
    return t.GameDates = "/single_game.Mouse/initRoom",//Mouse
    t.BetResult = "/single_game.Mouse/gameResult",
   // t.BetHistory = "/goldgame/Dragon_user_gold_history",
    t.BetOneDayHistory = "/goldgame/Mouse_user_history",
    t
}();
i.Game1053HttpAPI = n,
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
    t.nod = "wild",
    t.win_nod = "small_win",
    t.anger = "zoom_exit",
    //t.excited = "",
   // t.stare = "",
  //  t.stare_loop = "",
    t.stare_happy = "zoom_start",
   // t.happy = "tease_win_idle",
   // t.happy_win_show = "tease_win_idle",
    t.happy_win_loop = "zoom_idle",
    t.happy_win_end = "exit",
    t.normal_show = "medium_win",
    t.top_enter = "top_enter",
    t.top_idle = "top_idle",
    t.top_winoverlay = "top_winoverlay",
    t.top_exit = "top_exit",
    t.enter = "enter",
    t.top_excite_lookL = "top_excite_lookL",
    t.top_excite_lookR = "top_excite_lookR",
    t.top_excite_start = "top_excite_start",
    t.top_excite_turnL = "top_excite_turnL",
    t.top_excite_turnR = "top_excite_turnR"
}(i.Game1053DragonBonesName || (i.Game1053DragonBonesName = {})),
function(t) {
    t.bigwin_act = "tanbig",
    t.bigwin_loop = "xuanzhuanbig",
    t.megawin_act = "tanmaga",
    t.megawin_loop = "xuanzhuanmaga",
    t.supermegawin_act = "tansuper",
    t.supermegawin_loop = "xuanzhuansuper"
}(i.Game1053BigWinName || (i.Game1053BigWinName = {})),
function(t) {
    t.bigwin_act = "bw_spawn",
    t.bigwin_loop = "bw_idle",
    t.megawin_act = "mw_spawn",
    t.megawin_loop = "mw_idle",
    t.supermegawin_act = "smw_spawn",
    t.supermegawin_loop = "smw_idle"
}(i.Game1053BigWinName2 || (i.Game1053BigWinName2 = {})),
function(t) {
    t.Normal = "btn_start_normal",
    t.Press = "btn_start_Press",
    t.auto = "btn_start_auto",
    t.startClick = "btn_start_click"
}(i.Game1053BtnPlayName || (i.Game1053BtnPlayName = {})),
function(t) {
    t[t.randomTip1 = 0] = "randomTip1",
    t[t.randomTip2 = 1] = "randomTip2",
    t[t.randomTip3 = 2] = "randomTip3",
    t[t.randomTip4 = 3] = "randomTip4",
    t[t.randomTip5 = 4] = "randomTip5",
    t[t.goldTips = 5] = "goldTips"
}(i.TipsType || (i.TipsType = {}));
i.Game1053BetDefault = function() {}
;
i.Req_1053BetItem = function() {}
;
i.Recv_PropsListWin_arrs = function() {}
;
i.Recv_PropsList = function() {}
;
i.Recv_1053BetItem = function() {}
,
function(t) {
    t[t.INIT = 0] = "INIT",
    t[t.GAMERESULT = 1] = "GAMERESULT",
    t[t.GAME_END = 2] = "GAME_END",
    t[t.GAME_ENDED = 3] = "GAME_ENDED"
}(i.enum_Game1053Status || (i.enum_Game1053Status = {}));
i.Game1053HistoryDataItem = function() {}
;
var o = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e
}(Array);
i.Game1053HistoryList = o,
function(t) {
    t[t.MinimumBet = 0] = "MinimumBet",
    t[t.MaximumBet = 1] = "MaximumBet",
    t[t.TURBO_ON = 2] = "TURBO_ON",
    t[t.TURBO_OFF = 3] = "TURBO_OFF"
}(i.Game1053TipsType || (i.Game1053TipsType = {}));
var a = function() {
    function t() {}
    return t.UIGame1053Help = "Game1053Help",
    t.UIGame1053BetCommon = "UIGame1053BetCommon",
    t.UIGame1053SelectDateRange = "UIGame1053SelectDateRange",
    t.UIGame1053Daily = "UIGame1053Daily",
    t.UIGame1053BetDetails = "UIGame1053BetDetails",
    t.Game_1053Help = "Game_1053Help",
    t.Game_1053Rules = "Game_1053Rules",
    t.UIGame1053BigWin = "UIGame1053BigWin",
    t.UIGame1053BigWinLuck = "UIGame1053BigWinLuck",
    t.UIGame1053Tips = "UIGame1053Tips",
    t
}();
i.Game1053UIName = a,
i.Game1053AddNum = [1.11, 11.11, 111, 1111, 11111],
module.exports = i
