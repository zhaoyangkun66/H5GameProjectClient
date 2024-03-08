/**
 * 在Cocos Creator设置为插件，这样就可以全局直接通过constVal.CONST_NAME来获取全局常量。省去require的麻烦。
 */
(function (scope) {
	scope.FishConstants = cc.Enum({
		LOGIN_LOBBY: -1,
		LOGIN_LOBBY_FINISH: -1,
		LOGIN_GAME_FINISH: -1,
		QUICK_START: -1,
		ENTER_SCENE: -1,
		SHOW_UI: -1,
		START_UP: -1,

		LOGIN_BY_ACCOUNT: -1,
		LOGON_SUB_GAME: -1,

		LOGON_BY_ID: -1,
		SUB_GR_LOGON_FINISH: -1,
		USER_SIT_FAIL: -1,

		ON_GameLobbyLoginUI_Nativelogin: -1,
		ON_UserInfoLayer_addItem: -1,
		ON_UserInfoLayer_UseItem: -1,
		ON_RankLayer_updateRank: -1,
		ON_GameLobbyScene_updateInfo: -1,
		ON_RefrushInfo: -1,
		ON_GuiZuPowerLayer_updateGuiZu: -1,
		ON_TurnTableLayer_update: -1,
		ON_EmailSystemLayer_updateEmail: -1,
		ON_FreeGoldLayer_update: -1,
		ON_GuiZuGetRewardLayer_update: -1,
		ON_NewUserWelfareLayer_update: -1,
		ON_PiggyBankLayer_update: -1,
		ON_FriendInvitationLayer_update: -1,
		on_RedPacketOpenView_update: -1,
		ON_NewUserMissionLayer_update: -1,
		ON_CarveUpBonusPoolLayer_update: -1,
		ON_CarveUpBonusPoolSelfLayer_update: -1,
		ON_CarveUpBonusPoolRewardListLayer_update: -1,
		ON_CompetitionRoomRinkView_updateRankList: -1,

		ON_SetGuideStepIDResult_updateStepID0: -1,

		ON_Add_Bullet: -1,
		PLAYER_FIRE_BIT: -1,
		USE_SKILL: -1,
		ONPLAYER: -1,
		KILL_FISH_GOLD: -1,
		KILL_FISH_GOLD_other: -1,
		update_fishPlayer: -1,
		USER_WARHEAD: -1,
		SKILL_Count: -1,
		TurnTableReward: -1,
		on_BulletRedpacket: -1,
		on_LotteryTicket: -1,
		on_LotteryTicketEffect: -1,
		on_GetRedPacket: -1,
		on_lightLine: -1,
	});

	scope.constVal = {};

	//用户状态定义
	scope.constVal.US_NULL = 0x00; //没有状态
	scope.constVal.US_FREE = 0x01; //站立状态
	scope.constVal.US_SIT = 0x02; //坐下状态
	scope.constVal.US_READY = 0x03; //同意状态
	scope.constVal.US_LOOKON = 0x04; //旁观状态
	scope.constVal.US_PLAY = 0x05; //游戏状态
	scope.constVal.US_OFFLINE = 0x06; //断线状态

	scope.constVal.INVALID_TABLE = 65535; //无效桌子号
	scope.constVal.INVALID_CHAIR = 65535; //无效椅子号

})(window);

