let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameConfigManager = undefined;
var o = require("../Define/HttpServerDefine")
    , i = require("../Base/Singleton")
    , a = require("../Define/GameEventDefine")
    , r = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.GameConfig = null,
                t.AJEventConfig = {},
                t.FBEventConfig = {},
                t.DomainIconInfo = null,
                t.ws_time_diff = 0,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "GameConfigManager",
                    this.Log("Init"),
                    app.Client.RegEvent(a.GameEventDefine.GAME_MAINTAIN_NOTICE, this.OnGameMaintainNotice, this),
                    app.HttpServerManager().RegNetPack(o.HttpAPI.GAME_LIST, this.OnGameList, this),
                    app.HttpServerManager().RegNetPack(o.HttpAPI.GET_RECOMMENDED_GAMES, this.OnRecommendedGames, this),
                    app.HttpServerManager().RegNetPack(o.HttpAPI.GET_DOMAIN_ICON, this.OnDomainIcon, this)
            }
            ,
            t.prototype.OnRecommendedGames = function (e) {
                this.RecommendedGameList = e.hot_list,
                    app.Client.OnEvent(a.GameEventDefine.RecommendGameList)
            }
            ,
            t.prototype.OnDomainIcon = function (e) {
                this.DomainIconInfo = e,
                    app.Client.OnEvent(a.GameEventDefine.DomainIcon)
            }
            ,
            t.prototype.GetRecommendedGameList = function () {
                return this.RecommendedGameList
            }
            ,
            t.prototype.GetDomainIconInfo = function () {
                return this.DomainIconInfo
            }
            ,
            t.prototype.RequestRecommendedGames = function () {
                app.HttpServerManager().SendHttpPack(o.HttpAPI.GET_RECOMMENDED_GAMES)
            }
            ,
            t.prototype.RequestDomainIcon = function () {
                app.HttpServerManager().SendHttpPack(o.HttpAPI.GET_DOMAIN_ICON)
            }
            ,
            t.prototype.GetGameConfig = function () {
                return this.GameConfig
            }
            ,
            Object.defineProperty(t.prototype, "GetCurrency", {
                get: function () {
                    var e = ""
                        , t = this.GetGameConfig();
                    return 1 == Number(t.currency_show) ? (t.currency_symbol && "" != t.currency_symbol && (e = t.currency_symbol),
                        e) : e
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetGoldIcomCondition", {
                get: function () {
                    return "" == this.GetCurrency
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetNoticeTime", {
                get: function () {
                    return this.GameConfig.notice_countdown_time
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetNewUserPop", {
                get: function () {
                    return Number(this.GameConfig.new_user_pop_ups) > 0
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetGamePartners = function (e) {
                return this.GameConfig.game_partners ? this.GameConfig.game_partners[e] : null
            }
            ,
            t.prototype.GetGameOfficialUrl = function (e) {
                var t = this.GameConfig.ship_address_config;
                return t ? t[e] : ""
            }
            ,
            t.prototype.GetBottomFastGame = function () {
                var e = this
                    , t = []
                    , n = this.GameConfig.game_type;
                if (n)
                    for (var o = 0; o < n.length; o++)
                        n[o].game_list.forEach(function (n) {
                            var o = e.GetGameInfoByGid(n.gid);
                            if (o && 0 === o.game_type) {
                                for (var i = false, a = 0; a < t.length; a++)
                                    if (t[a].gid == n.gid) {
                                        i = true;
                                        break
                                    }
                                i || t.push(n)
                            }
                        });
                return t
            }
            ,
            t.prototype.GetBottomFastGameByGid = function (e) {
                var t = this.GetBottomFastGame();
                if (t)
                    for (var n = 0; n < t.length; n++) {
                        var o = t[n];
                        if (o.gid == e)
                            return o
                    }
                return null
            }
            ,
            t.prototype.GetGame2Row = function () {
                var e = this.GetGameConfig().game_rows;
                return !!(e && e > 1)
            }
            ,
            t.prototype.GetAJEventConfig = function () {
                return this.AJEventConfig
            }
            ,
            t.prototype.GetFBEventConfig = function () {
                return this.FBEventConfig
            }
            ,
            t.prototype.GetSubGameListItem = function (e, t) {
                for (var n = function (n) {
                    for (var o = n.length, i = 0; i < o; i++) {
                        var a = n[i];
                        if (a.gid == e && a.sub_game_list)
                            for (var r = a.sub_game_list.length, s = 0; s < r; s++) {
                                var c = a.sub_game_list[s];
                                if (c.gid == e && c.sub_gid == t)
                                    return c
                            }
                    }
                }, o = this.GameConfig.game_type.length, i = 0; i < o; i++) {
                    var a = this.GameConfig.game_type[i];
                    if (a.has_child)
                        for (var r = a.child_list.length, s = 0; s < r; s++) {
                            var c;
                            if (c = n(a.child_list[s].game_list))
                                return c
                        }
                    else if (c = n(a.game_list))
                        return c
                }
                return null
            }
            ,
            t.prototype.SetGameConfig = function (e) {
                var t = this;
                this.GameConfig = e,
                    this.GameConfig.aj_event_config && this.GameConfig.aj_event_config.forEach(function (e) {
                        t.AJEventConfig[e.type] = e
                    }),
                    this.GameConfig.fb_event_config && this.GameConfig.fb_event_config.forEach(function (e) {
                        t.FBEventConfig[e.type] = e
                    }),
                    this.ws_time_diff = this.GameConfig.current_sys_time ? Math.round(this.GameConfig.current_sys_time - Date.now() / 1e3) : 0
            }
            ,
            Object.defineProperty(t.prototype, "IsExperienceServer", {
                get: function () {
                    return 1 == this.GameConfig.experience_conf.is_experience_server
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "IsExperienceServerShow", {
                get: function () {
                    return 1 == this.GameConfig.experience_conf.experience_server_show
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "ExperienceServerText", {
                get: function () {
                    return this.GameConfig.experience_conf.experience_server_text
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "ExperienceServerUrl", {
                get: function () {
                    return this.GameConfig.experience_conf.experience_server_url
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "IsVIPKeepSwitch", {
                get: function () {
                    return 1 == this.GameConfig.user_vip_lv_keep_switch
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "IsGameBones", {
                get: function () {
                    return 1 == this.GameConfig.game_longgu_config
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "IsAgentShareReward", {
                get: function () {
                    var e = this.GameConfig.agent_share_reward_switch;
                    return null == e || 1 == e
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.RequestGameList = function () {
                var e = app.CompressStorageMgr().get("newGameList")
                    , t = {
                        language: app.LanguageManager().GetLocalLanguage(true),
                        dataVersion: e ? e.data_version : 0
                    };
                app.HttpServerManager().SendHttpPack(o.HttpAPI.GAME_LIST, t)
            }
            ,
            t.prototype.OnGameList = function (e, t) {
                if (e) {
                    if (isgoServer) {
                        let xxx = require("Http_gameList")
                        for (const key2 in e["game_type"]) {
                            if (!e["game_type"][key2].child_list) {
                                e["game_type"][key2].child_list = []
                            }
                            if (!e["game_type"][key2].game_list) {
                                e["game_type"][key2].game_list = []
                            }
                        }
                        if (!e["other_game"]) {
                            e["other_game"] = []
                        }
                        for (const key in xxx) {
                            if (e[key] == undefined || e[key] == null) {
                                e[key] = xxx[key]
                            }
                        }

                    }
                    if (t.dataVersion == e.data_version) {
                        var n = app.CompressStorageMgr().get("newGameList");
                        n && this.SetGameList(n)
                    } else
                        app.LocalDataManager().Remove("GameList"),
                            app.CompressStorageMgr().set("newGameList", e),
                            this.SetGameList(e);
                    app.PlaceholderManager().SetLoadMaxCount(),
                        app.PlaceholderManager().GameListEnd = true
                }
            }
            ,
            t.prototype.SetGameList = function (e) {
                this.GameConfig.game_type = e.game_type,
                    this.GameConfig.game_lobby_type = e.game_lobby_type,
                    this.GameConfig.game_info = e.game_info,
                    this.GameConfig.least_gold = e.least_gold,
                    this.GameConfig.other_game = e.other_game,
                    this.GameConfig.game_factory = e.game_factory,
                    this.GameConfig.other_game_factory = e.other_game_factory,
                    this.GameConfig.experience_list = e.experience_list,
                    this.FiltrateGameType()
            }
            ,
            t.prototype.GetGameType = function (e) {
                for (var t = 0; t < this.GameConfig.game_type.length; t++) {
                    var n = this.GameConfig.game_type[t];
                    if (e == n.type_id)
                        return n
                }
                return null
            }
            ,
            t.prototype.GetGameTypeIndex = function (e) {
                for (var t = 0; t < this.GameConfig.game_type.length; t++)
                    if (e == this.GameConfig.game_type[t].type_id)
                        return t;
                return this.ErrLog("GetGameTypeIndex fail=>>", e),
                    null
            }
            ,
            t.prototype.GetOtherGameFactory = function (e) {
                if (this.GameConfig.other_game_factory)
                    for (var t = 0; t < this.GameConfig.other_game_factory.length; t++) {
                        var n = this.GameConfig.other_game_factory[t];
                        if (n.id == e)
                            return n
                    }
                return null
            }
            ,
            t.prototype.GetGameFactory = function (e) {
                return this.GameConfig.game_factory ? this.GameConfig.game_factory[e] : null
            }
            ,
            t.prototype.GetFreeGameList = function (e, t) {
                if (this.GameConfig.experience_list)
                    for (var n in this.GameConfig.experience_list) {
                        var o = this.GameConfig.experience_list[n];
                        if (e == o.gid && (t && o.sub_gids.indexOf(t) > -1 || !t))
                            return true
                    }
                return false
            }
            ,
            t.prototype.GetOtherGameList = function (e, t) {
                var n = this.GameConfig.other_game;
                if (n)
                    for (var o = 0; o < n.length; o++) {
                        var i = n[o];
                        if (i.gid == e)
                            for (var a = 0; a < i.gameurl.length; a++) {
                                var r = i.gameurl[a];
                                if (t == r.gameid)
                                    return r
                            }
                    }
                return null
            }
            ,
            t.prototype.GetOtherGameItem = function (e) {
                var t = this.GameConfig.other_game;
                if (t)
                    for (var n = 0; n < t.length; n++) {
                        var o = t[n];
                        if (o.gid == e)
                            return o
                    }
                return null
            }
            ,
            t.prototype.GetShowJoinFree = function (e, t) {
                return !this.IsExperienceServer && app.ComTool().H5Platform() && this.GetFreeGameList(e, t)
            }
            ,
            t.prototype.GetGameListItem = function (e) {
                if (this.GameConfig.game_type)
                    for (var t = function (t) {
                        for (var n = 0; n < t.length; n++) {
                            var o = t[n];
                            if (o.gid == e)
                                return o
                        }
                        return null
                    }, n = this.GameConfig.game_type.length, o = 0; o < n; o++) {
                        var i = this.GameConfig.game_type[o];
                        if (i.has_child)
                            for (var a = 0; a < i.child_list.length; a++) {
                                var r;
                                if (r = t(i.child_list[a].game_list))
                                    return r
                            }
                        else if (r = t(i.game_list))
                            return r
                    }
                return null
            }
            ,
            t.prototype.GetGameChildLisItem = function (e) {
                var t = {
                    HGame: null,
                    name: null
                };
                if (this.GameConfig.game_type)
                    for (var n = function (t) {
                        for (var n = 0; n < t.length; n++) {
                            var o = t[n];
                            if (o.gid == e)
                                return o
                        }
                        return null
                    }, o = this.GameConfig.game_type.length, i = 0; i < o; i++) {
                        var a = this.GameConfig.game_type[i];
                        if (a.has_child)
                            for (var r = 0; r < a.child_list.length; r++) {
                                var s = a.child_list[r]
                                    , c = n(s.game_list);
                                if (c)
                                    return t.HGame = c,
                                        t.name = s.type_name,
                                        t
                            }
                    }
                return null
            }
            ,
            t.prototype.RequestGameConfig = function () {
                var e = app.LoginManager().GetDeviceID()
                    , t = app.LocalDataManager().GetConfigProperty("LocalInfo", "firstInstall")
                    , n = app.ClientConfigManager().GetClientConfig.agentID
                    , i = {
                        nativeVer: app.NativeMgr().getApkVersion(),
                        mainVer: app.ClientConfigManager().GetGlobalConfig.mainVer,
                        subVer: app.ClientConfigManager().GetGlobalConfig.subVer,
                        pkgName: app.ComTool().getPackageName(),
                        platform: cc.sys.os,
                        deviceid: e,
                        agentid: n,
                        firstInstall: t,
                        type: cc.sys.platform,
                        language: app.LanguageManager().GetLocalLanguage(true)
                    };
                app.HttpServerManager().SendHttpPack(o.HttpAPI.COMMON_CONFIG, i)
            }
            ,
            t.prototype.GetAsTime = function () {
                return Math.round(Date.now() / 1e3) + this.ws_time_diff
            }
            ,
            t.prototype.GetSupportUrl = function () {
                return this.GameConfig.kf_url ? this.GameConfig.kf_url : app.ClientConfigManager().GetGlobalConfig.KEFU_URL
            }
            ,
            t.prototype.GameBetLimit = function (e) {
                var t = app.RoomManager().GetRoomModeInfoByRoomMode(e);
                return this.GameConfig && this.GameConfig.least_gold && t && this.GameConfig.least_gold[t.GID] || 0
            }
            ,
            t.prototype.GameBetSizeLimit = function (e) {
                var t = {
                    min: 1,
                    max: 0
                }
                    , n = this.GetGameInfoByGid(e);
                if (n)
                    for (var o = 0; o < n.way_bet_gold.length; o++) {
                        var i = n.way_bet_gold[o];
                        i.way_id == app.UserManager().GetUserInfo.roomMode && (t = {
                            min: Number(i.min_bet_gold) > 1 ? Number(i.min_bet_gold) : 1,
                            max: Number(i.max_bet_gold)
                        })
                    }
                else
                    this.ErrLog("GameBetSizeLimit fail gid: ", e);
                return t
            }
            ,
            t.prototype.GetGameServerUrl = function () {
                var e, t;
                return cc.sys.isNative && cc.sys.os == cc.sys.OS_ANDROID ? (e = "ws",
                    t = this.GameConfig.gs_port) : this.GameConfig.gs_sport ? (e = "wss",
                        t = this.GameConfig.gs_sport) : cc.sys.isBrowser && "https:" == document.location.protocol ? (e = "wss",
                            t = this.GameConfig.gs_port) : (e = "ws",
                                t = this.GameConfig.gs_port),
                    e + "://" + this.GameConfig.gs_host + ":" + t
            }
            ,
            t.prototype.GetGoGameServerUrl = function () {
                var e, t;
                return cc.sys.isNative && cc.sys.os == cc.sys.OS_ANDROID ? (e = "ws",
                    t = this.GameConfig.gs_port1) : this.GameConfig.gs_sport1 ? (e = "wss",
                        t = this.GameConfig.gs_sport1) : cc.sys.isBrowser && "https:" == document.location.protocol ? (e = "wss",
                            t = this.GameConfig.gs_port1) : (e = "ws",
                                t = this.GameConfig.gs_port1),
                    e + "://" + this.GameConfig.gs_host1 + ":" + t
            }
            ,
            t.prototype.GetDownLoadUrl = function () {
                var e = "";
                return cc.sys.os == cc.sys.OS_ANDROID ? e = this.GameConfig.down_urls.android_download_url : cc.sys.os == cc.sys.OS_IOS && (e = this.GameConfig.down_urls.ios_download_url),
                    e
            }
            ,
            t.prototype.GetGameInfo = function () {
                return this.GameConfig.game_info
            }
            ,
            t.prototype.GetGameInfoByGid = function (e) {
                var t = this.GameConfig.game_info;
                if (t)
                    for (var n = 0; n < t.length; n++) {
                        var o = t[n];
                        if (o.gid == e)
                            return o
                    }
                return null
            }
            ,
            t.prototype.GetGameRoomModeInfo = function (e) {
                var t = this.GameConfig.game_info;
                if (t)
                    for (var n = function (n) {
                        var o = t[n];
                        if (o.gid == e) {
                            if (o.way_list) {
                                var i = [];
                                return o.way_list.forEach(function (e) {
                                    var t = app.RoomManager().GetRoomModeInfoByRoomMode(e.way_id);
                                    t && !t.Practice && i.push(e)
                                }),
                                {
                                    value: i
                                }
                            }
                            return {
                                value: null
                            }
                        }
                    }, o = 0; o < t.length; o++) {
                        var i = n(o);
                        if ("object" == typeof i)
                            return i.value
                    }
                return null
            }
            ,
            t.prototype.GameRechargeLimit = function (e) {
                return this.GameConfig && this.GameConfig.ext_game_recharge_limit && this.GameConfig.ext_game_recharge_limit[e] || 0
            }
            ,
            t.prototype.OnGameMaintainNotice = function (e) {
                for (var t = this, n = e, o = function (e, n, o) {
                    if (e) {
                        var i = t.GetMainTenanceLanguageText(n);
                        i && (e.mtc_msg = i),
                            e.mtc_status = Number(n.mtc_status),
                            e.mtc_st_date = n.mtc_st_date,
                            e.mtc_end_date = n.mtc_end_date,
                            app.Client.OnEvent(a.GameEventDefine.UPDATE_GAME_MAINTAIN, {
                                gid: n.gid,
                                sub_gid: o
                            })
                    }
                }, i = function (e) {
                    var i = n[e]
                        , a = r.GetGameListItem(i.gid);
                    if (!a)
                        return "continue";
                    i.sub_gids && i.sub_gids.length > 0 ? i.sub_gids.forEach(function (e) {
                        a = t.GetSubGameListItem(i.gid, e),
                            o(a, i, e)
                    }) : (o(a, i),
                        a.sub_game_list && a.sub_game_list.length > 0 && a.sub_game_list.forEach(function (e) {
                            o(e, i)
                        }))
                }, r = this, s = 0; s < n.length; s++)
                    i(s)
            }
            ,
            t.prototype.GetMainTenanceLanguageText = function (e) {
                var t = "";
                t = e.msg_en;
                var n = app.LanguageManager().GetLocalLanguage();
                return n && ("en" == n ? t = e.msg_en : "en_IN" == n ? t = e.msg_hind : "th_TH" == n ? t = e.msg_thai : e.other && (t = e.msg_other)),
                    t
            }
            ,
            t.prototype.FiltrateGameType = function () {
                for (var e = 0; e < this.GameConfig.game_type.length; e++)
                    for (var t = this.GameConfig.game_type[e], n = t.game_list.length - 1; n >= 0; n--) {
                        var o = t.game_list[n]
                            , i = app.RoomManager().GetRoomModeInfoByGid(o.gid);
                        i && (1 == i.Platform && app.ComTool().H5Platform() ? this.GameConfig.game_type[e].game_list.splice(n, 1) : 2 != i.Platform || app.ComTool().H5Platform() || this.GameConfig.game_type[e].game_list.splice(n, 1))
                    }
            }
            ,
            t
    }(i.Singleton);
n.GameConfigManager = r,
    module.exports = n
