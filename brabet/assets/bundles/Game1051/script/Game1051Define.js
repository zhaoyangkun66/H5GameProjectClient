let i={} 
Object.defineProperty(i, "__esModule", {
    value: true
}),
i.Game1051AddNum = i.Game1051UIName = i.Game1051TipsType = i.Game1051HistoryList = i.Game1051HistoryDataItem = i.enum_Game1051Status = i.Recv_1051BetItem = i.Recv_PropsList = i.Recv_PropsListWin_arrs = i.Req_1051BetItem = i.Game1051BetDefault = i.TipsType = i.Game1051BtnPlayName = i.Game1051BigWinName = i.Game1051DragonBonesName = i.GameProp = i.Game1051HttpAPI = void 0;
var n = function() {
    function t() {}
    return t.GameDates = "/single_game.Panada/initRoom",
    t.BetResult = "/single_game.Panada/gameResult",
    t.BetHistory = "/goldgame/panada_user_gold_history",
    t.BetOneDayHistory = "/goldgame/panada_user_history",
    t
}();
i.Game1051HttpAPI = n,
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
    t.nod = "win",
    t.win_nod = "win2",
    t.anger = "zo_exit",
    t.excited = "",
    t.stare = "zo_start",
    t.stare_loop = "zo_idle",
    t.stare_happy = "rs_start",
    t.happy = "rs_idle",
    t.happy_win_show = "rs_win",
    t.happy_win_loop = "rs_win_idle",
    t.happy_win_end = "rs_win_exit",
    t.normal_show = "wild_collect"
}(i.Game1051DragonBonesName || (i.Game1051DragonBonesName = {})),
function(t) {
    t.bigwin_act = "bw_spawn",
    t.bigwin_loop = "bw_idle",
    t.megawin_act = "mw_spawn",
    t.megawin_loop = "mw_idle",
    t.supermegawin_act = "smw_spawn",
    t.supermegawin_loop = "smw_idle"
}(i.Game1051BigWinName || (i.Game1051BigWinName = {})),
function(t) {
    t.Normal = "btn_start_normal",
    t.Press = "btn_start_Press",
    t.auto = "btn_start_auto",
    t.startClick = "btn_start_click"
}(i.Game1051BtnPlayName || (i.Game1051BtnPlayName = {})),
function(t) {
    t[t.randomTip1 = 0] = "randomTip1",
    t[t.randomTip2 = 1] = "randomTip2",
    t[t.randomTip3 = 2] = "randomTip3",
    t[t.randomTip4 = 3] = "randomTip4",
    t[t.luckTips = 4] = "luckTips",
    t[t.goldTips = 5] = "goldTips"
}(i.TipsType || (i.TipsType = {}));
i.Game1051BetDefault = function() {}
;
i.Req_1051BetItem = function() {}
;
i.Recv_PropsListWin_arrs = function() {}
;
i.Recv_PropsList = function() {}
;
i.Recv_1051BetItem = function() {}
,
function(t) {
    t[t.INIT = 0] = "INIT",
    t[t.GAMERESULT = 1] = "GAMERESULT",
    t[t.GAME_END = 2] = "GAME_END",
    t[t.GAME_ENDED = 3] = "GAME_ENDED"
}(i.enum_Game1051Status || (i.enum_Game1051Status = {}));
i.Game1051HistoryDataItem = function() {}
;
var o = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e
}(Array);
i.Game1051HistoryList = o,
function(t) {
    t[t.MinimumBet = 0] = "MinimumBet",
    t[t.MaximumBet = 1] = "MaximumBet",
    t[t.TURBO_ON = 2] = "TURBO_ON",
    t[t.TURBO_OFF = 3] = "TURBO_OFF"
}(i.Game1051TipsType || (i.Game1051TipsType = {}));
var a = function() {
    function t() {}
    return t.UIGame1051Help = "Game1051Help",
    t.UIGame1051BetCommon = "UIGame1051BetCommon",
    t.UIGame1051Record = "UIGame1051Record",
    t.UIGame1051Daily = "UIGame1051Daily",
    t.UIGame1051BetDetails = "UIGame1051BetDetails",
    t.Game_1051Help = "Game_1051Help",
    t.UIGame1051BigWin = "UIGame1051BigWin",
    t.UIGame1051Tips = "UIGame1051Tips",
    t
}();
i.Game1051UIName = a,
i.Game1051AddNum = [1.11, 11.11, 111, 1111, 11111],
module.exports = i
