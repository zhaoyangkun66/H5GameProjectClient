let i={} 
Object.defineProperty(i, "__esModule", {
    value: true
}),
i.Game1050AddNum = i.Game1050UIName = i.Game1050TipsType = i.Game1050HistoryList = i.Game1050HistoryDataItem = i.enum_Game1050Status = i.Recv_1050BetItem = i.Recv_PropsList = i.Recv_PropsListWin_arrs = i.Req_1050BetItem = i.Game1050BetDefault = i.TipsType = i.Game1050BtnPlayName = i.Game1050BigWinName = i.Game1050DragonBonesName = i.GameProp = i.Game1050HttpAPI = void 0;
var n = function() {
    function t() {}
    return t.GameDates = "/single_game.Panada/initRoom",
    t.BetResult = "/single_game.Panada/gameResult",
   // t.BetHistory = "/goldgame/panada_user_gold_history",
    t.BetOneDayHistory = "/goldgame/panada_user_history",
    t
}();
i.Game1050HttpAPI = n,
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
    t.Normal = "normal",
    t.Normal2 = "normal2",
    t.Normal3 = "normal3",
    t.za = "za",
    t.nod = "nod",
    t.win_nod = "win_nod",
    t.anger = "anger",
    t.excited = "excited",
    t.stare = "stare",
    t.stare_loop = "stare_loop",
    t.stare_happy = "stare_happy",
    t.happy = "happy",
    t.happy_win_show = "happy_win_show",
    t.happy_win_loop = "happy_win_loop",
    t.happy_win_end = "happy_win_end",
    t.normal_show = "normal_show"
}(i.Game1050DragonBonesName || (i.Game1050DragonBonesName = {})),
function(t) {
    t.bigwin_act = "bigwin_act",
    t.bigwin_loop = "bigwin_loop",
    t.megawin_act = "megawin_act",
    t.megawin_loop = "megawin_loop",
    t.supermegawin_act = "supermegawin_act",
    t.supermegawin_loop = "supermegawin_loop"
}(i.Game1050BigWinName || (i.Game1050BigWinName = {})),
function(t) {
    t.Normal = "btn_start_normal",
    t.Press = "btn_start_Press",
    t.auto = "btn_start_auto",
    t.startClick = "btn_start_click"
}(i.Game1050BtnPlayName || (i.Game1050BtnPlayName = {})),
function(t) {
    t[t.randomTip1 = 0] = "randomTip1",
    t[t.randomTip2 = 1] = "randomTip2",
    t[t.randomTip3 = 2] = "randomTip3",
    t[t.randomTip4 = 3] = "randomTip4",
    t[t.luckTips = 4] = "luckTips",
    t[t.goldTips = 5] = "goldTips"
}(i.TipsType || (i.TipsType = {}));
i.Game1050BetDefault = function() {}
;
i.Req_1050BetItem = function() {}
;
i.Recv_PropsListWin_arrs = function() {}
;
i.Recv_PropsList = function() {}
;
i.Recv_1050BetItem = function() {}
,
function(t) {
    t[t.INIT = 0] = "INIT",
    t[t.GAMERESULT = 1] = "GAMERESULT",
    t[t.GAME_END = 2] = "GAME_END",
    t[t.GAME_ENDED = 3] = "GAME_ENDED"
}(i.enum_Game1050Status || (i.enum_Game1050Status = {}));
i.Game1050HistoryDataItem = function() {}
;
var o = function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e
}(Array);
i.Game1050HistoryList = o,
function(t) {
    t[t.MinimumBet = 0] = "MinimumBet",
    t[t.MaximumBet = 1] = "MaximumBet",
    t[t.TURBO_ON = 2] = "TURBO_ON",
    t[t.TURBO_OFF = 3] = "TURBO_OFF"
}(i.Game1050TipsType || (i.Game1050TipsType = {}));
var a = function() {
    function t() {}
    return t.UIGame1050Help = "Game1050Help",
    t.UIGame1050BetCommon = "UIGame1050BetCommon",
    t.UIGame1050SelectDateRange = "UIGame1050SelectDateRange",
    t.UIGame1050Daily = "UIGame1050Daily",
    t.UIGame1050BetDetails = "UIGame1050BetDetails",
    t.Game_1050Help = "Game_1050Help",
    t.UIGame1050BigWin = "UIGame1050BigWin",
    t.UIGame1050Tips = "UIGame1050Tips",
    t
}();
i.Game1050UIName = a,
i.Game1050AddNum = [1.11, 11.11, 111, 1111, 11111],
module.exports = i
