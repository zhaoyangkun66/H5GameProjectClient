let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.SubClickType = n.PromoteMainSelTopTe = n.EnterType = n.GameBetDataConfig = n.GameCommonUIName = n.GameCommonEventType = n.ShowCommonType = n.ScrollEventType = n.SelTypeNode = n.HTTPERRORCODE = n.GameAtlasPath = n.FreeWindowType = n.VListPos = n.HListPos = n.NationPhoneNumberType = n.PayType = n.ActivityType = n.Hall_SelectTopToggle = n.WIN_TYPE = n.RedDotEnum = n.RedDotStr = n.HallPrefabType = n.SwitchBtnIndex = n.VisibleBtnTag = n.SupportListByText = n.OtherRedDotTxt = n.ReqFailCode = n.Development = n.SceneType = n.IntypeType = n.FormType = n.Version_Position = n.ConfirmType = undefined,
    function (e) {
        e.Confirm = "Confirm",
            e.ConfirmYN = "ConfirmYN",
            e.ConfirmOK = "ConfirmOK",
            e.ConfirmTips = "ConfirmTips",
            e.ConfirmFree = "ConfirmFree",
            e.ConfirmCustom = "ConfirmCustom",
            e.ConfirmModal = "ConfirmModal"
    }(n.ConfirmType || (n.ConfirmType = {})),
    function (e) {
        e.India = "1",
            e.Nigeria = "2",
            e.Vietnam = "3",
            e.Thai = "4",
            e.Brazil = "5",
            e.Mexico = "6",
            e.Philippines = "7"
    }(n.Version_Position || (n.Version_Position = {})),
    function (e) {
        e[e.Independent = 0] = "Independent",
            e[e.Hall = 1] = "Hall",
            e[e.Crossing = 2] = "Crossing",
            e[e.HallGame = 3] = "HallGame"
    }(n.FormType || (n.FormType = {})),
    function (e) {
        e[e.Account = 0] = "Account",
            e[e.Main = 1] = "Main"
    }(n.IntypeType || (n.IntypeType = {})),
    function (e) {
        e[e.None = 0] = "None",
            e[e.Login = 1] = "Login",
            e[e.Hall = 2] = "Hall"
    }(n.SceneType || (n.SceneType = {}));
var o = function () {
    function e() { }
    return e.IsDevelopment = function () {
        return this._IsDevelopment
    }
        ,
        e.SetDevelopment = function (e) {
            this._IsDevelopment = e
        }
        ,
        e._IsDevelopment = true,
        e
}();
n.Development = o,
    function (e) {
        e[e.IP_DEVICE_LIMIT = 1] = "IP_DEVICE_LIMIT",
            e[e.LOGIN_FAILED_VERIFICATION = 300] = "LOGIN_FAILED_VERIFICATION",
            e[e.IP_Limit = 403] = "IP_Limit",
            e[e.TokenInviable = 1001] = "TokenInviable"
    }(n.ReqFailCode || (n.ReqFailCode = {})),
    n.OtherRedDotTxt = {
        vip_cash_gift: "vip_cash_gift",
        sign_reward: "sign_reward",
        notice: "notice",
        unclaimed_task: "unclaimed_task",
        spread_way: "spread_way",
        clean_bet: "clean_bet",
        user_spread_way: "user_spread_way",
        loss_waiver_red: "free_lose",
        task_red: "task_red"
    },
    n.SupportListByText = {
        group_chat_tel: "group_chat_tel",
        group_chat_fb: "group_chat_fb",
        group_chat_tg: "group_chat_tg"
    },
    function (e) {
        e[e.Btn_Player = 0] = "Btn_Player",
            e[e.Btn_GoldBalance = 1] = "Btn_GoldBalance",
            e[e.Btn_Bank = 2] = "Btn_Bank",
            e[e.Btn_Service = 3] = "Btn_Service",
            e[e.Btn_Setting = 4] = "Btn_Setting",
            e[e.Btn_Barrage = 5] = "Btn_Barrage",
            e[e.Btn_Advertising = 6] = "Btn_Advertising",
            e[e.Btn_Notice = 7] = "Btn_Notice",
            e[e.Btn_Save = 8] = "Btn_Save",
            e[e.Btn_Withdraw = 9] = "Btn_Withdraw",
            e[e.Btn_Money = 10] = "Btn_Money",
            e[e.Btn_Pay = 11] = "Btn_Pay",
            e[e.Btn_New = 12] = "Btn_New",
            e[e.Btn_Diamond = 13] = "Btn_Diamond",
            e[e.Btn_Sign = 14] = "Btn_Sign",
            e[e.Btn_Activity = 15] = "Btn_Activity",
            e[e.Btn_Wheel = 16] = "Btn_Wheel",
            e[e.Btn_RedPacket = 17] = "Btn_RedPacket",
            e[e.Btn_SaveGame = 18] = "Btn_SaveGame",
            e[e.Btn_Classify = 19] = "Btn_Classify",
            e[e.Btn_HotGm = 20] = "Btn_HotGm",
            e[e.Btn_ChessGm = 21] = "Btn_ChessGm",
            e[e.Btn_ElectronGm = 22] = "Btn_ElectronGm",
            e[e.Btn_VideoGm = 23] = "Btn_VideoGm",
            e[e.Btn_LotteryGm = 24] = "Btn_LotteryGm",
            e[e.Btn_Chips = 25] = "Btn_Chips",
            e[e.Btn_NewRegist = 26] = "Btn_NewRegist",
            e[e.Btn_NoobGuide = 27] = "Btn_NoobGuide",
            e[e.Btn_VIP = 28] = "Btn_VIP",
            e[e.Withdrawal = 29] = "Withdrawal",
            e[e.Btn_TASK = 30] = "Btn_TASK",
            e[e.Btn_NewMoney = 31] = "Btn_NewMoney",
            e[e.horseRaceLamp = 32] = "horseRaceLamp",
            e[e.btn_facebookBtn = 33] = "btn_facebookBtn",
            e[e.Btn_playnow = 38] = "Btn_playnow",
            e[e.PageView = 39] = "PageView",
            e[e.Btn_bindPhoneBtn = 43] = "Btn_bindPhoneBtn",
            e[e.RoomCardBtn = 44] = "RoomCardBtn",
            e[e.DownloadBtn = 45] = "DownloadBtn",
            e[e.ShowType = 46] = "ShowType",
            e[e.btn_email = 47] = "btn_email",
            e[e.ranking_list = 48] = "ranking_list",
            e[e.btn_free = 49] = "btn_free",
            e[e.Btn_Openredpacket = 50] = "Btn_Openredpacket",
            e[e.shop_record = 51] = "shop_record",
            e[e.gameBackBtn = 52] = "gameBackBtn",
            e[e.GoogleLoginBtn = 53] = "GoogleLoginBtn",
            e[e.BottomGCItem = 54] = "BottomGCItem",
            e[e.LoginOnline = 55] = "LoginOnline",
            e[e.bottomGame = 56] = "bottomGame",
            e[e.TaskBtn = 57] = "TaskBtn"
    }(n.VisibleBtnTag || (n.VisibleBtnTag = {})),
    function (e) {
        e[e.BTN_PAY = 1] = "BTN_PAY",
            e[e.BTN_WITHDRAW = 2] = "BTN_WITHDRAW",
            e[e.BTN_HOME = 3] = "BTN_HOME",
            e[e.BTN_ACTIVITY = 4] = "BTN_ACTIVITY",
            e[e.BTN_MORE = 5] = "BTN_MORE"
    }(n.SwitchBtnIndex || (n.SwitchBtnIndex = {})),
    function (e) {
        e[e.Normal = 1] = "Normal",
            e[e.Recent = 2] = "Recent",
            e[e.Sport = 3] = "Sport"
    }(n.HallPrefabType || (n.HallPrefabType = {})),
    function (e) {
        e.clean_bet = "clean_bet",
            e.free_lose = "free_lose",
            e.mail = "mail",
            e.notice = "notice",
            e.recharge_send_activity = "recharge_send_activity",
            e.sign_reward = "sign_reward",
            e.spread_way = "spread_way",
            e.unclaimed_task = "unclaimed_task",
            e.user_spread_way = "user_spread_way",
            e.vip_cash_gift = "vip_cash_gift",
            e.week_month_card = "week_month_card",
            e.task_red = "task_red"
    }(n.RedDotStr || (n.RedDotStr = {})),
    function (e) {
        e[e.null = 0] = "null",
            e[e.sign_reward = 1] = "sign_reward",
            e[e.notice = 2] = "notice",
            e[e.unclaimed_task = 3] = "unclaimed_task",
            e[e.spread_way = 4] = "spread_way",
            e[e.clean_bet = 5] = "clean_bet",
            e[e.user_spread_way = 6] = "user_spread_way",
            e[e.loss_waiver_red = 7] = "loss_waiver_red",
            e[e.recharge_send_activity = 8] = "recharge_send_activity",
            e[e.vip_cash_gift = 9] = "vip_cash_gift",
            e[e.mail = 10] = "mail",
            e[e.week_month_card = 11] = "week_month_card",
            e[e.free_lose = 13] = "free_lose",
            e[e.task_red = 15] = "task_red"
    }(n.RedDotEnum || (n.RedDotEnum = {})),
    function (e) {
        e[e.STORE = 0] = "STORE",
            e[e.CASHOUT = 1] = "CASHOUT"
    }(n.WIN_TYPE || (n.WIN_TYPE = {})),
    function (e) {
        e[e.Home = 0] = "Home",
            e[e.Share = 1] = "Share",
            e[e.Coupon = 2] = "Coupon",
            e[e.Email = 3] = "Email",
            e[e.Free = 4] = "Free",
            e[e.Mine = 5] = "Mine"
    }(n.Hall_SelectTopToggle || (n.Hall_SelectTopToggle = {})),
    function (e) {
        e[e.vip_privileges = 1] = "vip_privileges",
            e[e.recharge_reward = 2] = "recharge_reward",
            e[e.daily_bonus = 3] = "daily_bonus",
            e[e.progressive_recharge_time = 4] = "progressive_recharge_time",
            e[e.betting_bonus = 5] = "betting_bonus",
            e[e.limit_recharge = 6] = "limit_recharge",
            e[e.single_recharge = 7] = "single_recharge",
            e[e.week_month_card = 8] = "week_month_card",
            e[e.vip_offer = 9] = "vip_offer",
            e[e.agent = 10] = "agent",
            e[e.welcome_bonus = 11] = "welcome_bonus",
            e[e.recharge_send_gold = 12] = "recharge_send_gold",
            e[e.facebook = 13] = "facebook",
            e[e.telegram = 14] = "telegram",
            e[e.first_recharge_gift = 15] = "first_recharge_gift",
            e[e.ordinary_recharge_gift = 16] = "ordinary_recharge_gift",
            e[e.subordinate_recharge_gift = 17] = "subordinate_recharge_gift",
            e[e.reserve_event_one = 18] = "reserve_event_one",
            e[e.reserve_event_two = 19] = "reserve_event_two",
            e[e.reserve_event_three = 20] = "reserve_event_three",
            e[e.email_register_gift = 21] = "email_register_gift",
            e[e.ip_white_gift = 22] = "ip_white_gift",
            e[e.agency_promotion = 23] = "agency_promotion",
            e[e.rain_of_red_envelopes = 24] = "rain_of_red_envelopes",
            e[e.Atividades_de_Natal = 25] = "Atividades_de_Natal",
            e[e.daily_Registrations = 26] = "daily_Registrations",
            e[e.recharge_bussiness_three_gift = 27] = "recharge_bussiness_three_gift",
            e[e.reserve_event_five = 28] = "reserve_event_five"
    }(n.ActivityType || (n.ActivityType = {})),
    function (e) {
        e[e.CASHFREE = 1] = "CASHFREE",
            e[e.MPURSE = 2] = "MPURSE",
            e[e.RAZOR = 3] = "RAZOR",
            e[e.PAYU = 4] = "PAYU",
            e[e.EPAY365 = 5] = "EPAY365",
            e[e.PAZORPAY = 6] = "PAZORPAY",
            e[e.PAYTM = 9] = "PAYTM"
    }(n.PayType || (n.PayType = {})),
    function (e) {
        e[e.Login = 0] = "Login",
            e[e.SignUp = 1] = "SignUp",
            e[e.ChangePwd = 2] = "ChangePwd",
            e[e.BindPhone = 3] = "BindPhone"
    }(n.NationPhoneNumberType || (n.NationPhoneNumberType = {})),
    n.HListPos = [cc.v2(220, 194), cc.v2(220, 194), cc.v2(0, 60), cc.v2(0, 20)],
    n.VListPos = [{
        top: 380,
        left: 0,
        right: 0,
        bottom: 0
    }, {
        top: 380,
        left: 0,
        right: 0,
        bottom: 0
    }, cc.v2(0, 80), cc.v2(0, 20)],
    function (e) {
        e[e.GoldNod = 1] = "GoldNod",
            e[e.FreeOutGame = 2] = "FreeOutGame",
            e[e.FreeNotice = 3] = "FreeNotice",
            e[e.FreeInFreeGameNotice = 4] = "FreeInFreeGameNotice"
    }(n.FreeWindowType || (n.FreeWindowType = {})),
    n.GameAtlasPath = "atlas/",
    function (e) {
        e[e.GOLD_NOT_ENOUGH = 2004] = "GOLD_NOT_ENOUGH",
            e[e.LEAST_GOLD_NOT_ENOUGH = 2005] = "LEAST_GOLD_NOT_ENOUGH",
            e[e.MIN_BET_LIMIT = 2007] = "MIN_BET_LIMIT",
            e[e.MAX_BET_LIMIT = 2008] = "MAX_BET_LIMIT"
    }(n.HTTPERRORCODE || (n.HTTPERRORCODE = {})),
    function (e) {
        e[e.BetBonus = 0] = "BetBonus",
            e[e.vip = 1] = "vip"
    }(n.SelTypeNode || (n.SelTypeNode = {})),
    function (e) {
        e[e.SCROLL_START = 0] = "SCROLL_START",
            e[e.SCROLL_ING = 1] = "SCROLL_ING",
            e[e.SCROLL_END = 2] = "SCROLL_END"
    }(n.ScrollEventType || (n.ScrollEventType = {})),
    function (e) {
        e[e.bet_options = 0] = "bet_options",
            e[e.bet_auto = 1] = "bet_auto"
    }(n.ShowCommonType || (n.ShowCommonType = {}));
var i = function () {
    function e() { }
    return e.GetRound = "GameCommonEventType_GetRound",
        e.GetAmount = "GameCommonEventType_GetBetAmountData",
        e.PlayBigWinEndEvent = "GameCommonEventType_PlayBigWinEndEvent",
        e.CloseBigWin = "GameCommonEventType_CloseBigWin",
        e
}();
n.GameCommonEventType = i;
var a = function () {
    function e() { }
    return e.UIGameBetCommon = "UIGameBetCommon",
        e
}();
n.GameCommonUIName = a;
n.GameBetDataConfig = function () { }
    ,
    function (e) {
        e[e.other = 0] = "other",
            e[e.betGold = 1] = "betGold",
            e[e.odds = 2] = "odds",
            e[e.round = 3] = "round",
            e[e.fourCode = 4] = "fourCode"
    }(n.EnterType || (n.EnterType = {})),
    function (e) {
        e[e.Invite = 0] = "Invite",
            e[e.Refer = 1] = "Refer",
            e[e.Member = 2] = "Member",
            e[e.Bonus = 3] = "Bonus"
    }(n.PromoteMainSelTopTe || (n.PromoteMainSelTopTe = {})),
    function (e) {
        e[e.DepositHistory = 0] = "DepositHistory",
            e[e.WithdrawalHistory = 1] = "WithdrawalHistory"
    }(n.SubClickType || (n.SubClickType = {}))
module.exports = n