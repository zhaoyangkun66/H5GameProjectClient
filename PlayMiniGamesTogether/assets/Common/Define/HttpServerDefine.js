let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.PayUIType = n.PayType = n.HttpAPI = undefined;
var o = function () {
    function e() { }
    return e.COMMON_CONFIG = "/config/commonConfig",
        e.GAME_CONFIG = "/config/game_config",
        e.GET_LANG_LIST = "/config/getLangList",
        e.GAME_LIST = "/config/gameList",
        e.GET_LOADTEXTLIST = "/config_lang/getLoadText",
        e.GET_FAQLIST = "/config_lang/getFaqList",
        e.GET_TEXTINFO = "/config_lang/getInfo",
        e.GET_TEXTINFOMORE = "/config_lang/getInfoMore",
        e.GET_NIGERIA = "/config/getNigeriaConfig",
        e.GET_GAMERATIO = "/config/gameRatios",
        e.VISITOR_LOGIN = "/login/visitor_login",
        e.GET_AREA_CODES = "/login/getAreaCodes",
        e.LOGIN_LOGIN = "/login/login",
        e.LOGIN_REGISTER = "/login/register",
        e.RESET_PASSWORD = "/login/resetPwd",
        e.THIRD_LOGIN = "/login/third_login",
        e.EXPERIENCE_LOGIN = "/login/experienceLogin",
        e.EXPERIENCE_GAME_LOGIN = "/login/experienceGameLogin",
        e.GET_STOPGS_NOTICE = "/Notice/getStopgsNotice",
        e.GET_DESK_NOTICE = "/notice/get_desk_notices",
        e.GET_NOTICE_LIST = "/notice/get_notice_list",
        e.GET_NOTICES = "/notice/get_notices",
        e.GET_NOTICE_READ = "/notice/notice_read",
        e.BROADCAST_LAST = "/notice/broadcastList",
        e.COUNTRY_GAME_LOGO = "/game/countryGameLogo",
        e.ROOM_CONFIG = "/game/roomConfig",
        e.GAME_CARD_CONFIG = "/game/gameCardConfig",
        e.GAME_LATEST_ROUNDS = "/game/getLatestRounds",
        e.GET_RECOMMENDED_GAMES = "/game/getRecommendedGames",
        e.GET_DOMAIN_ICON = "/game/getDomainIcon",
        e.ROOM_BET_GOLD_CONFIGS = "/game/roomBetGoldConfigs",
        e.VIP_LIST = "/vip/vipList",
        e.VIP_RECEIVE = "/vip/receiveReward",
        e.GET_KEFU_LISTBYTEXT = "/kefu/getKefuListByText",
        e.GET_KEFU_LIST = "/kefu/getKefuList",
        e.GET_ROBOTQUESTIONS = "/kefu/getRobotQuestions",
        e.GET_ROBOTQUESTIONSAL_LTYPE = "/kefu/getRobotQuestionsAllType",
        e.GET_QUESTIONS_TYPES = "/kefu/getQuestionsTypes",
        e.GET_QUESTIONS_DETAIL = "/kefu/questionDetail",
        e.UNABLE_BETLIST = "/clearn_bet/unableBetList",
        e.BETBONUSINFO = "/clearn_bet/info",
        e.CLEANBETV2 = "/clearn_bet/cleanBetV2",
        e.BET_PERCENTLIST = "/clearn_bet/percentList",
        e.New_CleanBetList = "/clearn_bet/newCleanBetList",
        e.NEW_PERCENTLIST = "/clearn_bet/newPercentList",
        e.SIGN_LIST = "/activitie/signList",
        e.RECEIVE_SIGN = "/activitie/sign",
        e.FREE_LOSE_GET = "/activitie/free_lose_get",
        e.LOSEWAIVER = "/activitie/loseWaiver",
        e.RECHARGE_BONUS_LIST = "/activitie/rechargeBonusList",
        e.RECHARGE_BONUS_BET = "/activitie/rechargeBonusGet",
        e.USER_CENTER_ACTIVITIES = "/activitie/userCenterActivitie",
        e.GET_WHEEL_CONF = "/activity.lucky_wheel/config",
        e.GET_WHEEL_RUN = "/activity.lucky_wheel/run",
        e.GET_WHEEL_HELPDESC = "/activity.lucky_wheel/helpDesc",
        e.GET_WHEEL_RECORD = "/activity.lucky_wheel/record",
        e.GET_OPEN_REDBAG = "/activity.red_bag/openRed",
        e.LIMIT_TIME_RECHARGE = "/Activitie/limitTimeRecharge",
        e.BIND_USER_WALLET = "/account/blindUserWallet",
        e.BIND_BANK_ACCOUNT = "/account/bind_bank_account",
        e.GET_USERINFO = "/account/getUserInfo",
        e.UPDATE_USER_INFO = "/account/update_user_info",
        e.GET_CODE = "/account/get_code",
        e.GET_EMAILCODE = "/account/getEmailCode",
        e.GET_CHANGE_PWD = "/account/changePwd",
        e.GET_USER_BING_ACCOUNT = "/account/userBingAccount",
        e.GET_USER_BING_TEL = "/account/userBingTel",
        e.PAGE_TRAC_RECORD = "/account/pageEventTracking",
        e.CHANGE_BIRTHDAY = "/account/changeBirthday",
        e.GET_USER_WALLET = "/user/getUserWallet",
        e.GET_USER_AndOrder = "/user/getUserInfoAndOrder",
        e.getGoldAndTonRecord = "/user/getGoldAndTonRecord",
        e.clickSPIN = "/user/clickSpin",
        e.BindWallet = "/user/bindWallet",
        e.UnbindWallet = "/user/UnbindWallet",
        e.getWithdrawal = "/user/getWithdrawal",
        e.TRACK_RECORD = "/user/userTrackRecord",
        e.GET_WITHDRAWGOLD = "/user/getWithdrawGold",
        e.GET_AJNOTICE = "/user/getAjNotice",
        e.GET_RECHARGEGOLD = "/user/getRechargeGold",
        e.GET_BIGGEST_TODAY = "/user/getBiggestToDay",
        e.CHECK_AGENT_GOLD_LIMIT = "/user/checkAgentGoldLimit",
        e.GET_USERGUIDE = "/user/userGuide",
        e.GOODS_LIST = "/pay/goodsList",
        e.PAY_CHANNEL_LISTS = "/pay/payTypeChannelLists",
        e.PAY_CHANNEL_TYPE_LIST = "/pay/payChannelTypeLists",
        e.PAY_GOOGLE_NOTIFY = "/pay/notify888/channel_id/17",
        e.GOLD_TXTIPS = "/gold/txTips",
        e.GOODS_PAY = "/gold/cz",
        e.GOLD_COLLECTION = "/gold/gold_collection",
        e.GET_RECHARGE_REWARD = "/gold/getRechargeReward",
        e.GET_LIMIT_RECHARGE = "/gold/getLimitRecharge",
        e.GET_TXRECORDDETAILS = "/gold/txRecordDetails",
        e.GET_TX = "/gold/tx",
        e.GET_GOLD_COLLECTION_TIPS = "/gold/gold_collection_tips",
        e.GET_AGENTTX = "/gold/agentTx",
        e.GET_TXRECORD = "/gold/txRecord",
        e.GET_AGENTCASHTRANSFER = "/gold/agentCashTransfer",
        e.GET_PAY_NOTIFYURL = "/pay/getPayNotifyUrl",
        e.GET_RECHARGE_INFO = "/user_recharge/getRechargeInfo",
        e.GET_RECHARGE_LIST = "/user_recharge/getRechargeList",
        e.RECEIVE_SEND_GOLD = "/user_recharge/receiveSendGold",
        e.RECHARGE_INFOV2 = "/user_recharge/getRechargeInfoV2",
        e.GET_ALLPROMOTIONS = "/user_recharge/getRechargeInfoV3",
        e.GET_CARD_LIST = "/user_week_month_card/getCardList",
        e.RECEIVE_CARD_DAILY_GOLD = "/user_week_month_card/receiveCardDailyGold",
        e.GET_TASK_LIST = "/task/getTaskList",
        e.TASK_RECEIVE = "/task/receiveReward",
        e.GET_USER_TASK_CONFIG = "/task.user_task_system/getUserTaskConfig",
        e.TASK_RECEIVE_AWARD = "/task.user_task_system/receiveAward",
        e.GET_SPREAD_WAY = "/agent/spread_way",
        e.GET_SPREAD_AWARD = "/agent/share",
        e.GET_AGENTBONUSRECORDS = "/agent/getAgentBonusRecords",
        e.GET_COMMISSIONDESCLIST = "/agent/getCommissionDescList",
        e.GET_AGENTREPORT = "/agent/agentReport",
        e.GET_AGENTDIRECTUSER = "/agent/agentDirectUser",
        e.GET_SPREADSTATISTICS = "/agent/spreadStatistics",
        e.GET_DAYSPREADSTATISTICS = "/agent/daySpreadStatistics",
        e.GET_COLLECTCASH = "/user_agent/collectCash",
        e.GET_SPREADWAYINFO = "/user_agent/spreadWay",
        e.GET_DIRECTDETAILLIST = "/user_agent/directDetailList",
        e.GET_TEAMTOTAL = "/user_agent/teamTotal",
        e.CHECK_GAME_STATUS = "/other_game/checkGameStatus",
        e.GAME_DOWN = "/other_game/gameDown",
        e.GAME_UP = "/other_game/gameUp",
        e.GET_EMAIL_LIST = "/message/index",
        e.ET_EMAIL_DETAIL = "/message/info",
        e.EMAIL_RECEIVE = "/message/receive",
        e.EMAIL_RECEIVEAll = "/message/oneClickReceive",
        e.EMAIL_DEl_ALL = "/message/oneClickDelete",
        e.SHOW_REDDOT_RECEIVE = "/home/showRedDotReceived",
        e.GET_OUT_LINKS = "/home/getOutLinks",
        e.DOWNLOAD_RECORD = "/home/downloadRecord",
        e.GET_ONLINE_NUM = "/home/online_num",
        e.GET_FOOTER_PICS = "/home/getFooterPics",
        e.GET_WordCup_Config = "/activity.world_cup/config",
        e.GET_WordCup_HisTory = "/activity.world_cup/getBetRecord",
        e.GET_WordCup_Tickets = "/activity.world_cup/getTicketAward",
        e.GET_WC_COUNTRYLIST = "/home/getCountryList",
        e.REQ_WC_COUNTRYRANKING = "/activity.world_cup/bet",
        e.GET_WordCup_AwardResult = "/activity.world_cup/getAwardResult",
        e
}();
if (isgoServer) {
    o.GAME_UP = "/other_game/gameup"
    o.GET_OPEN_REDBAG = "/activitie/openRed"
    o.GET_KEFU_LIST = "/kefu/getKefuUrl"
    o.CANGET_Redenvelope = "/Redenvelope/CanGetRedenvelope"//o.GET_NOTICE_LIST
    o.GET_Redenvelope = "/Redenvelope/GetRedenvelope"//o.GET_NOTICE_LIST
    // o.GET_DailyRegistrations = "/activitie/getDailyRegistrations"
    o.GET_cashWheel = "/activitie/cashWheel"
    o.open_cashWheel = "/activitie/opencashWheel"
    o.GET_cashWheelHistory = "/activitie/cashWheelHistory"
    o.GET_cashWheelwithdraw = "/activitie/cashWheelwithdraw"
    o.GET_cashWheelreset = "/activitie/cashWheelreset"

    o.GET_LossRebate = "/activitie/lossRebate"
    o.GET_LossRebateReceive = "/activitie/lossRebateReceive"
    o.GET_NewbieBonus = "/activitie/newbieBonus"
    o.GET_NewbieBonusReceive = "/activitie/newbieBonusReceive"

    o.GET_channelList = "/config/getchannelList"
    // e.GET_channelList = "GET_channelList",
    // o.CANGET_Redenvelope = o.GET_NOTICE_LIST
    // o.GET_Redenvelope = o.GET_NOTICE_LIST
    o.GET_TodayDepositHistory = "/activitie/todayDepositHistory"
    o.GET_YesterdayLotteryDraw = "/activitie/yesterdayLotteryDraw"
    o.GET_LuckyLottery = "/activitie/luckyLottery"
    o.GET_LuckyLotteryReceive = "/activitie/luckyLotteryReceive"
    o.GET_LuckyLotteryinfo = "/activitie/luckyLotteryinfo"

    o.HtmlGameProgress = "/HtmlView/HtmlGameProgressMission"

    o.BonusUnfrozen_getDetailList = "/activityBonusUnfrozen/getNotDefrostedList"
    o.BonusUnfrozen_receive = "/activityBonusUnfrozen/receive"
    o.BonusUnfrozen_bill = "/activityBonusUnfrozen/getThawedList"
    o.BonusUnfrozen_set = "/activityBonusUnfrozen/set"

    o.BonusUnfrozen_set = "/activityBonusUnfrozen/set"

    o.GET_DailyRegistrations = "/activity/getMission"
    o.WatchAdsInSubGames = "/HtmlView/WatchAdsInSubGames"
}
n.HttpAPI = o,
    function (e) {
        e[e.Pay_Type_USDT = 1] = "Pay_Type_USDT",
            e[e.Pay_Type_BANK = 2] = "Pay_Type_BANK",
            e[e.Pay_Type_COMMON = 3] = "Pay_Type_COMMON"
    }(n.PayType || (n.PayType = {})),
    function (e) {
        e[e.Pay_UI_Type_Brazil = 1] = "Pay_UI_Type_Brazil",
            e[e.Pay_UI_Type_Vietnam_Channel = 2] = "Pay_UI_Type_Vietnam_Channel",
            e[e.Pay_UI_Type_Vietnam_Type = 3] = "Pay_UI_Type_Vietnam_Type"
    }(n.PayUIType || (n.PayUIType = {}))

module.exports = n
