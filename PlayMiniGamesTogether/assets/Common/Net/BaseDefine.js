let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.COMMONGAME_MSG = n.COMMONGAME_ROOM_STATE = n.COMMONGAME_BANKER_TYPE = n.GameStatus = n.ROOM_TYPE = n.ROOM_CARD_TYPE = n.BASE_COMMONGAME_HORSE_TYPE = n.ROOM_START_MODE = n.ROOM_STATE = n.ROOM_OPERATION = n.ROOM_MODE = n.MAX_CARD = undefined,
n.MAX_CARD = 13,
function(e) {
    e[e.ROOM_MODE_NONE = 0] = "ROOM_MODE_NONE",
    e[e.ROOM_MODE_13WATER = 1] = "ROOM_MODE_13WATER",
    e[e.ROOM_MODE_6FLOWER = 2] = "ROOM_MODE_6FLOWER",
    e[e.ROOM_MODE_BULL = 3] = "ROOM_MODE_BULL",
    e[e.ROOM_MODE_GOLDEN_FLOWER = 4] = "ROOM_MODE_GOLDEN_FLOWER",
    e[e.ROOM_MODE_MAHJONG = 5] = "ROOM_MODE_MAHJONG",
    e[e.ROOM_MODE_TEXAS_POKER = 6] = "ROOM_MODE_TEXAS_POKER",
    e[e.ROOM_MODE_RUN_FAST = 7] = "ROOM_MODE_RUN_FAST",
    e[e.ROOM_MODE_FIGHT_LANDLORD = 8] = "ROOM_MODE_FIGHT_LANDLORD",
    e[e.ROOM_MODE_PISCATION = 9] = "ROOM_MODE_PISCATION",
    e[e.ROOM_MODE_BACCARAT = 10] = "ROOM_MODE_BACCARAT",
    e[e.ROOM_MODE_SLOT = 11] = "ROOM_MODE_SLOT",
    e[e.ROOM_MODE_SLOT_HALL = 12] = "ROOM_MODE_SLOT_HALL",
    e[e.ROOM_MODE_LUDO = 27] = "ROOM_MODE_LUDO"
}(n.ROOM_MODE || (n.ROOM_MODE = {})),
function(e) {
    e[e.ROOM_OPERATION_KICK = 1] = "ROOM_OPERATION_KICK",
    e[e.ROOM_OPERATION_READY = 2] = "ROOM_OPERATION_READY",
    e[e.ROOM_OPERATION_CHATFACE = 3] = "ROOM_OPERATION_CHATFACE",
    e[e.ROOM_OPERATION_CHOOSE_SEAT = 4] = "ROOM_OPERATION_CHOOSE_SEAT",
    e[e.ROOM_OPERATION_REQ_DESTROY = 5] = "ROOM_OPERATION_REQ_DESTROY",
    e[e.ROOM_OPERATION_READY_ROUND = 6] = "ROOM_OPERATION_READY_ROUND",
    e[e.ROOM_OPERATION_MAHJONG_SETTINGS_ROUND_COUNT = 51] = "ROOM_OPERATION_MAHJONG_SETTINGS_ROUND_COUNT",
    e[e.ROOM_OPERATION_MAHJONG_SETTINGS_ADD_BAN_PATTERN = 52] = "ROOM_OPERATION_MAHJONG_SETTINGS_ADD_BAN_PATTERN",
    e[e.ROOM_OPERATION_MAHJONG_SETTINGS_REMOVE_BAN_PATTERN = 53] = "ROOM_OPERATION_MAHJONG_SETTINGS_REMOVE_BAN_PATTERN",
    e[e.ROOM_OPERATION_MAHJONG_SETTINGS_PAYTYPE = 54] = "ROOM_OPERATION_MAHJONG_SETTINGS_PAYTYPE"
}(n.ROOM_OPERATION || (n.ROOM_OPERATION = {})),
function(e) {
    e[e.ROOM_STATE_INIT = 1] = "ROOM_STATE_INIT",
    e[e.ROOM_STATE_PREPARE = 3] = "ROOM_STATE_PREPARE",
    e[e.ROOM_STATE_GAME = 4] = "ROOM_STATE_GAME",
    e[e.ROOM_STATE_ZOMBIE = 5] = "ROOM_STATE_ZOMBIE",
    e[e.ROOM_STATE_END = 10] = "ROOM_STATE_END"
}(n.ROOM_STATE || (n.ROOM_STATE = {})),
function(e) {
    e[e.ROOM_START_MODE_ALL_PREPARE = 0] = "ROOM_START_MODE_ALL_PREPARE",
    e[e.ROOM_START_MODE_OWNER_START = 1] = "ROOM_START_MODE_OWNER_START",
    e[e.ROOM_START_MODE_PREPARE_OWNER_START = 2] = "ROOM_START_MODE_PREPARE_OWNER_START"
}(n.ROOM_START_MODE || (n.ROOM_START_MODE = {})),
function(e) {
    e[e.BASE_COMMONGAME_HORSE_TYPE_NONE = 0] = "BASE_COMMONGAME_HORSE_TYPE_NONE",
    e[e.BASE_COMMONGAME_HORSE_TYPE_GAME = 1] = "BASE_COMMONGAME_HORSE_TYPE_GAME",
    e[e.BASE_COMMONGAME_HORSE_TYPE_ROUND = 2] = "BASE_COMMONGAME_HORSE_TYPE_ROUND",
    e[e.BASE_COMMONGAME_HORSE_TYPE_ASSIGEN = 3] = "BASE_COMMONGAME_HORSE_TYPE_ASSIGEN"
}(n.BASE_COMMONGAME_HORSE_TYPE || (n.BASE_COMMONGAME_HORSE_TYPE = {})),
function(e) {
    e[e.ROOM_CARD_TYPE_NONE = 0] = "ROOM_CARD_TYPE_NONE",
    e[e.ROOM_CARD_TYPE_CREATOR = 1] = "ROOM_CARD_TYPE_CREATOR",
    e[e.ROOM_CARD_TYPE_OWNER_NO_PLAY = 2] = "ROOM_CARD_TYPE_OWNER_NO_PLAY",
    e[e.ROOM_CARD_TYPE_AA = 3] = "ROOM_CARD_TYPE_AA",
    e[e.ROOM_CARD_TYPE_BIGWEINNER = 4] = "ROOM_CARD_TYPE_BIGWEINNER"
}(n.ROOM_CARD_TYPE || (n.ROOM_CARD_TYPE = {})),
function(e) {
    e[e.ROOM_TYPE_NONE = 0] = "ROOM_TYPE_NONE",
    e[e.ROOM_TYPE_CARD = 1] = "ROOM_TYPE_CARD",
    e[e.ROOM_TYPE_MATCH = 2] = "ROOM_TYPE_MATCH",
    e[e.ROOM_TYPE_PUBLIC = 3] = "ROOM_TYPE_PUBLIC",
    e[e.ROOM_TYPE_PRIVATE = 4] = "ROOM_TYPE_PRIVATE",
    e[e.ROOM_TYPE_CLUB = 5] = "ROOM_TYPE_CLUB"
}(n.ROOM_TYPE || (n.ROOM_TYPE = {})),
function(e) {
    e[e.DEFAULT = 0] = "DEFAULT",
    e[e.GAME_START = 1] = "GAME_START",
    e[e.GAME_END = 2] = "GAME_END"
}(n.GameStatus || (n.GameStatus = {})),
function(e) {
    e[e.COMMONGAME_BANKER_TYPE_NONE = 0] = "COMMONGAME_BANKER_TYPE_NONE",
    e[e.COMMONGAME_BANKER_TYPE_OWNER = 1] = "COMMONGAME_BANKER_TYPE_OWNER",
    e[e.COMMONGAME_BANKER_TYPE_COMPETE = 2] = "COMMONGAME_BANKER_TYPE_COMPETE",
    e[e.COMMONGAME_BANKER_TYPE_WINNER = 3] = "COMMONGAME_BANKER_TYPE_WINNER",
    e[e.COMMONGAME_BANKER_TYPE_TURN = 4] = "COMMONGAME_BANKER_TYPE_TURN",
    e[e.COMMONGAME_BANKER_TYPE_RANDOM = 5] = "COMMONGAME_BANKER_TYPE_RANDOM"
}(n.COMMONGAME_BANKER_TYPE || (n.COMMONGAME_BANKER_TYPE = {})),
function(e) {
    e[e.COMMONGAME_ROOM_STATE_NONE = 0] = "COMMONGAME_ROOM_STATE_NONE",
    e[e.COMMONGAME_ROOM_STATE_COMPETE_BANKER = 1] = "COMMONGAME_ROOM_STATE_COMPETE_BANKER",
    e[e.COMMONGAME_ROOM_STATE_BET = 2] = "COMMONGAME_ROOM_STATE_BET",
    e[e.COMMONGAME_ROOM_STATE_NORMAL = 3] = "COMMONGAME_ROOM_STATE_NORMAL",
    e[e.COMMONGAME_ROOM_STATE_SETTLEMENT = 4] = "COMMONGAME_ROOM_STATE_SETTLEMENT",
    e[e.COMMONGAME_ROOM_STATE_PREDEAL = 6] = "COMMONGAME_ROOM_STATE_PREDEAL",
    e[e.COMMONGAME_ROOM_STATE_END = 10] = "COMMONGAME_ROOM_STATE_END",
    e[e.COMMONGAME_ROOM_STATE_FINISH = 11] = "COMMONGAME_ROOM_STATE_FINISH"
}(n.COMMONGAME_ROOM_STATE || (n.COMMONGAME_ROOM_STATE = {})),
function(e) {
    e[e.COMMONGAME_ACTION_NONE = 0] = "COMMONGAME_ACTION_NONE",
    e[e.COMMONGAME_START_GAME = 1] = "COMMONGAME_START_GAME",
    e[e.COMMONGAME_RECONN_GAME = 2] = "COMMONGAME_RECONN_GAME",
    e[e.COMMONGAME_GAME_INFO = 3] = "COMMONGAME_GAME_INFO",
    e[e.COMMONGAME_SECOND_BET = 4] = "COMMONGAME_SECOND_BET",
    e[e.COMMONGAME_ACTION_DEAL = 5] = "COMMONGAME_ACTION_DEAL",
    e[e.COMMONGAME_ACTION_PRE_DEAL = 7] = "COMMONGAME_ACTION_PRE_DEAL",
    e[e.COMMONGAME_ACTION_OPEN_JOKER = 8] = "COMMONGAME_ACTION_OPEN_JOKER",
    e[e.COMMONGAME_ACTION_RECOMMEND_MATCH = 11] = "COMMONGAME_ACTION_RECOMMEND_MATCH",
    e[e.COMMONGAME_ACTION_PLAY_MATCH = 12] = "COMMONGAME_ACTION_PLAY_MATCH",
    e[e.COMMONGAME_ACTION_MATCH_RESULT = 13] = "COMMONGAME_ACTION_MATCH_RESULT",
    e[e.COMMONGAME_ACTION_PLAY_CARD = 14] = "COMMONGAME_ACTION_PLAY_CARD",
    e[e.COMMONGAME_ROUND_RESULT = 15] = "COMMONGAME_ROUND_RESULT",
    e[e.COMMONGAME_ACTION_TAKE_CARD = 17] = "COMMONGAME_ACTION_TAKE_CARD",
    e[e.COMMONGAME_ACTION_UPDATE_CARD = 18] = "COMMONGAME_ACTION_UPDATE_CARD",
    e[e.COMMONGAME_ACTION_SHOW_CARD = 19] = "COMMONGAME_ACTION_SHOW_CARD",
    e[e.COMMONGAME_ACTION_PASS = 20] = "COMMONGAME_ACTION_PASS",
    e[e.COMMONGAME_ACTION_COMPETE_BANKER = 21] = "COMMONGAME_ACTION_COMPETE_BANKER",
    e[e.COMMONGAME_ACTION_BET = 22] = "COMMONGAME_ACTION_BET",
    e[e.COMMONGAME_ACTION_CHANGE_BANKER = 23] = "COMMONGAME_ACTION_CHANGE_BANKER",
    e[e.COMMONGAME_START_COMPETE = 24] = "COMMONGAME_START_COMPETE",
    e[e.COMMONGAME_ACTION_DISCARD = 25] = "COMMONGAME_ACTION_DISCARD",
    e[e.COMMONGAME_ACTION_FOLLOW = 26] = "COMMONGAME_ACTION_FOLLOW",
    e[e.COMMONGAME_ACTION_TRUSTEE = 27] = "COMMONGAME_ACTION_TRUSTEE",
    e[e.COMMONGAME_ACTION_COMPARE = 28] = "COMMONGAME_ACTION_COMPARE",
    e[e.COMMONGAME_ACTION_REQ_COMPARE = 29] = "COMMONGAME_ACTION_REQ_COMPARE",
    e[e.COMMONGAME_ACTION_RSP_COMPARE = 30] = "COMMONGAME_ACTION_RSP_COMPARE",
    e[e.COMMONGAME_SUSPEND_COUNTDOWN = 31] = "COMMONGAME_SUSPEND_COUNTDOWN",
    e[e.COMMONGAME_RESUME_COUNTDOWN = 32] = "COMMONGAME_RESUME_COUNTDOWN",
    e[e.COMMONGAME_ACTION_SHUFFLE = 33] = "COMMONGAME_ACTION_SHUFFLE",
    e[e.COMMONGAME_ACTION_DUMMY_PLAY = 36] = "COMMONGAME_ACTION_DUMMY_PLAY",
    e[e.COMMONGAME_AVALIABLEACTION = 51] = "COMMONGAME_AVALIABLEACTION",
    e[e.COMMONGAME_ACTION_FAIL = 50] = "COMMONGAME_ACTION_FAIL",
    e[e.COMMONGAME_END_GAME = 60] = "COMMONGAME_END_GAME",
    e[e.COMMONGAME_REPLAY = 70] = "COMMONGAME_REPLAY",
    e[e.PISCATION_LOCK = 40] = "PISCATION_LOCK",
    e[e.PISCATION_FIRE = 41] = "PISCATION_FIRE",
    e[e.PISCATION_SWITCH_FIRE = 42] = "PISCATION_SWITCH_FIRE",
    e[e.PISCATION_HITFISH = 43] = "PISCATION_HITFISH",
    e[e.PISCATION_KILLFISH = 44] = "PISCATION_KILLFISH",
    e[e.PISCATION_GENERATE_FISH = 47] = "PISCATION_GENERATE_FISH",
    e[e.PISCATION_SPECIAL_EVENT_TIME = 48] = "PISCATION_SPECIAL_EVENT_TIME",
    e[e.RUMMY_APPEND_INFO = 2503] = "RUMMY_APPEND_INFO",
    e[e.COMMONGAME_ADJUST_PAY_RATE = 81] = "COMMONGAME_ADJUST_PAY_RATE"
}(n.COMMONGAME_MSG || (n.COMMONGAME_MSG = {})),
module.exports = n
