let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = require("../../../Common/Define/TrackEventName")
    , s = require("./UIGameSelectAll")
    , c = require("./UIGameTypeItem")
    , l = cc._decorator
    , p = l.ccclass
    , d = l.property
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.prefabGameListItem = null,
                t.toggleGroup = null,
                t.gameTypeList = null,
                t.isRenderGameTypeList = false,
                t.gameAll = null,
                t.nodeSearch = null,
                t.initSuccess = false,
                t.nodeList = null,
                t.typeNode = null,
                t.typeIconArr = [],
                t.typeElementArr = [],
                t
        }
        var n;
        return __extends(t, e),
            n = t,
            t.prototype.Onload = function () {
                this.hideAllToggleGroup()
            }
            ,
            t.prototype.OnCreateInit = function () {
                this.gameTypeList = this.GetWndNode("node_home/game_type_list"),
                    this.gameAll = this.GetWndNode("node_home/games_all"),
                    this.RegEvent(i.GameEventDefine.SELECT_GAME_TYPE, this.OnSelectGameType),
                    this.RegEvent(i.GameEventDefine.RefreshGameSelectAll, this.OnRefreshGameSelectAll),
                    this.RegEvent(i.GameEventDefine.SEND_END, this.OnGameList),
                    this.RegEvent(i.GameEventDefine.GET_USER_INFO, this.OnGetUserInfo),
                    this.RegEvent(i.GameEventDefine.BETBONUS_RECEIVE, this.OnSelectPushPanel),
                    this.RegEvent(i.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess),
                    this.RegEvent(i.GameEventDefine.INTERACTION_JUMP, this.OnInteraction),
                    this.RegEvent(i.GameEventDefine.HALL_Language, this.OnSetLanguage),
                    this.nodeList = this.GetWndNode("node_home/list")
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.nodeList && (this.nodeList.active = app.GameConfigManager().GetGameConfig().ranking_show_status),
                    this.renderLobbyRootNode(),
                    // app.RedDotManager().updateSingleData({
                    //     type: a.RedDotStr.clean_bet
                    // }),
                    app.RedDotManager().OnLoadHallSuccess(),
                    this.pushModelPanel(),
                    this.isRenderGameTypeList ? this.refreshGameType() : (this.RenderAll(),
                        app.NativeMgr().InitHallEnd(),
                        app.EventTrackManager().LogEvent(r.default.ENTER_HALL_SCENE))
                app.HNoticeManager().RequestCanGetRedenvelope()
            }
            ,
            t.prototype.pushModelPanel = function () {
                app.VIPManager().CheckVipReduced(),
                    app.VIPManager().checkVipUpgrade(),
                    app.GuideManager().CheckGuideByWithDraw(),
                    this.OnSelectPushPanel()
            }
            ,
            t.prototype.OnSelectPushPanel = function () {
                app.BetBonusManager().GetBackHallBetBonus() || app.VIPManager().GetBackHallVip()
            }
            ,
            t.prototype.OnCountryGameLogo = function () {
                this.RenderAll()
            }
            ,
            t.prototype.OnGameList = function () {
                this.RenderAll()
            }
            ,
            t.prototype.RenderAll = function () {
                if (app.GameConfigManager().GetGameConfig().game_type && app.HGameManager().GetCountryGameLogoInfo) {
                    if (this.isRenderGameTypeList)
                        return this.refreshToggleGroup(),
                            void this.refreshGameType();
                    this.isRenderGameTypeList = true,
                        this.refreshToggleGroup(),
                        this.renderAllGameType()
                }
            }
            ,
            t.prototype.OnGetUserInfo = function () {
                this.renderLobby()
            }
            ,
            t.prototype.OnLoadHallSuccess = function () {
                app.VIPManager().CheckVipReduced()
            }
            ,
            t.prototype.OnClick = function (e, t) {
                if (this.Log("btnName: " + e),
                    e.startsWith("toggle")) {
                    var n = Number(e.substring(e.length - 1, e.length)) - 1;
                    return 0 == n ? (this.renderLobby(),
                        void this.RenderScorllViewValue(n)) : 1 == n ? (this.RenderGameList(n),
                            void this.RenderScorllViewValue(n)) : n - 2 >= app.GameConfigManager().GetGameConfig().game_type.length ? void this.ErrLog("OnClick Error, btnName: " + e) : void this.RenderSelectGameType(n, t.TypeIndex)
                }
            }
            ,
            t.prototype.RenderGameTypeTitle = function () {
                for (var e = this, t = this.toggleGroup.children, n = 0; n < 2; n++) {
                    var o = t[n];
                    o.active = true;
                    var i = o.children[2];
                    i && (i.active = false,
                        app.PlaceholderManager().FirstLogin && (i.active = true,
                            app.PlaceholderManager().AddBeginShowIcon(i)))
                }
                var a = []
                    , r = 2
                    , s = app.GameConfigManager().GetGameConfig().game_lobby_type;
                s && (a = this.AddGameType(s, a),
                    r = 0);
                var c = app.GameConfigManager().GetGameConfig().game_type;
                a = this.AddGameType(c, a);
                var l = 0
                    , p = 0
                    , d = [];
                this.typeIconArr = [],
                    this.typeElementArr = [],
                    a.forEach(function (n) {
                        l = p + r,
                            p++;
                        var o = t[l];
                        if (o) {
                            if (!s || l > 1) {
                                var i = app.LocalDataManager().GetConfigProperty("SysSetting", "Language")
                                    , a = n.type_name_arr.other;
                                n.type_name_arr[i] && (a = n.type_name_arr[i]),
                                    e.GetWndComponent("Background/label", cc.Label, o).string = a,
                                    e.GetWndComponent("checkmark/label", cc.Label, o).string = a,
                                    e.typeIconArr.push(o),
                                    e.typeElementArr.push(n)
                            }
                            var c = e.GetWndNode("Background/label", o)
                                , h = e.GetWndNode("checkmark/label", o);
                            if (app.PlaceholderManager().FirstLogin && (c.active = false,
                                h.active = false,
                                app.PlaceholderManager().AddBeginHideIcon(c),
                                app.PlaceholderManager().AddBeginHideIcon(h)),
                                n.icon_on) {
                                var u = e.GetWndNode("checkmark/icon", o)
                                    , _ = e.GetWndNode("Background/icon", o);
                                d.push({
                                    nodes: [u, _],
                                    url: n.icon_on
                                })
                            }
                            o.TypeIndex = null == n.type_id ? null : app.GameConfigManager().GetGameTypeIndex(n.type_id),
                                o.active = true
                        }
                    }),
                    app.PlaceholderManager().LoadMaxCount += d.length,
                    d.forEach(function (e) {
                        app.HallManager().LoadImageIncrease(e.nodes, e.url, true)
                    }),
                    this.RenderGameTypeTitleAuto()
            }
            ,
            t.prototype.AddGameType = function (e, t) {
                return e && e.forEach(function (e) {
                    2 != e.client_status && t.push(e)
                }),
                    t
            }
            ,
            t.prototype.RenderGameTypeTitleAuto = function () { }
            ,
            t.prototype.refreshToggleGroup = function () {
                this.hideAllToggleGroup(),
                    this.RenderGameTypeTitle()
            }
            ,
            t.prototype.hideAllToggleGroup = function () {
                for (var e = this.toggleGroup.children, t = 0; t < e.length; t++) {
                    var n = e[t];
                    t >= 2 && (this.GetWndComponent("Background/label", cc.Label, n).string = "",
                        this.GetWndComponent("checkmark/label", cc.Label, n).string = "",
                        this.GetWndComponent("checkmark/icon", cc.Sprite, n).spriteFrame = null,
                        this.GetWndComponent("Background/icon", cc.Sprite, n).spriteFrame = null),
                        n.active = false
                }
            }
            ,
            t.prototype.renderLobby = function () {
                this.renderLobbyRootNode(),
                    this.refreshGameType()
            }
            ,
            t.prototype.renderLobbyRootNode = function () {
                app.GameTypeManager().SetSelectToggleIdx(0),
                    this.RenderToggle(0),
                    this.gameTypeList.active = true,
                    this.ResetGameListNode(),
                    this.nodeSearch && (this.nodeSearch.active = false)
            }
            ,
            t.prototype.renderAllGameType = function () {
                var e = this
                    , t = app.GameConfigManager().GetGameConfig().game_type;
                this.CreateGameTypeList(0).active = false;
                for (var o = 1; o <= t.length; o++)
                    this.scheduleOnce(function () {
                        e.CreateGameTypeList(o)
                    }, o * n.RenderDelay);
                this.scheduleOnce(function () {
                    e.initSuccess = true,
                        e.refreshGameType()
                }, o * n.RenderDelay)
            }
            ,
            t.prototype.CreateGameTypeList = function (e) {
                var t = cc.instantiate(this.prefabGameListItem);
                return t.name = e.toString(),
                    this.gameTypeList.addChild(t),
                    t
            }
            ,
            t.prototype.refreshGameType = function () {
                if (this.initSuccess) {
                    var e = app.GameTypeManager().GetHistoryGame()
                        , t = this.gameTypeList.children[0];
                    0 == e.length ? t.active = false : (t.active = true,
                        t.getComponent(c.default).renderHistory());
                    var n = app.GameConfigManager().GetGameConfig().game_type;
                    if (n) {
                        for (var o = 0, i = this.gameTypeList.children; o < n.length; o++) {
                            var a = i[o + 1];
                            if (a) {
                                a.active = true;
                                var r = null != this.GetToggleByIndex(o);
                                a.getComponent(c.default).renderGameType(o, r)
                            } else
                                this.ErrLog("refreshGameType error: " + o)
                        }
                        for (; o < i.length; o++) {
                            var s = i[o + 1];
                            s && (s.active = false)
                        }
                    }
                }
            }
            ,
            t.prototype.OnSelectGameType = function (e) {
                this.Log("gameType: " + e);
                var t = app.GameConfigManager().GetGameConfig().game_type;
                if (t[e]) {
                    for (var n = 0, o = 0; o < t.length; o++) {
                        var a = t[o];
                        if (o == e)
                            break;
                        2 != a.client_status && n++
                    }
                    var r = n + 2;
                    this.GetToggleByIndex(r),
                        app.Client.OnEvent(i.GameEventDefine.TOP_MAINSCROLLVIEW),
                        this.RenderSelectGameType(r, e)
                } else
                    this.ErrLog("OnSelectGameType error: " + e)
            }
            ,
            t.prototype.RenderScorllViewValue = function (e) {
                for (var t = 0, n = 0; n < this.toggleGroup.children.length; n++)
                    this.toggleGroup.children[n].active && t++;
                t > 1 && t--,
                    e = e > t ? 0 : e;
                var o = this.toggleGroup.children[e]
                    , i = app.ComTool().NodeAConvertToNodeBSpaceAR(o, this.toggleGroup.parent.parent.parent)
                    , a = this.toggleGroup.parent.parent.width;
                (i.x < o.width / 2 || i.x > a - o.width / 2) && this.typeNode.getComponent(cc.ScrollView).scrollToPercentHorizontal(e / t)
            }
            ,
            t.prototype.RenderSelectGameType = function (e, t) {
                app.GameTypeManager().GetSelectToggleIdx != e && (2 != app.GameConfigManager().GetGameConfig().game_type[t].client_status ? (this.RenderToggle(e),
                    this.RenderScorllViewValue(e)) : this.RenderScorllViewValue(0),
                    this.RenderGameList(e, null, t))
            }
            ,
            t.prototype.RenderGameList = function (e, t, n) {
                if (app.GameTypeManager().SetSelectToggleIdx(e),
                    this.gameTypeList.active = false,
                    this.nodeSearch && (this.nodeSearch.active = true),
                    0 == e)
                    this.SetGameListNodeVisible(true),
                        this.gameAll.getComponent(s.default).renderGame(-1, t);
                else if (1 == e) {
                    this.SetGameListNodeVisible(true);
                    var o = app.GameTypeManager().GetFavoriteGameBuffer();
                    app.GameTypeManager().LoadTime = 0,
                        this.gameAll.getComponent(s.default).renderGame(o)
                } else {
                    if (null == n)
                        return void this.ErrLog("RenderGameList idx error: " + n);
                    if (!app.GameConfigManager().GetGameConfig().game_type[n])
                        return void this.ErrLog("RenderGameList error: " + n);
                    this.SetGameListNodeVisible(true),
                        app.GameTypeManager().LoadTime = 0,
                        this.gameAll.getComponent(s.default).renderGame(n, null, null, true)
                }
            }
            ,
            t.prototype.SetGameListNodeVisible = function (e) {
                this.gameAll.active = e
            }
            ,
            t.prototype.ResetGameListNode = function () {
                this.gameAll.active = false
            }
            ,
            t.prototype.GetToggleByIndex = function (e) {
                return this.toggleGroup.children[e]
            }
            ,
            t.prototype.RenderToggle = function (e) {
                var t = this.toggleGroup.children[e];
                t ? t.getComponent(cc.Toggle).isChecked = true : this.ErrLog("RenderToggle Error: " + e)
            }
            ,
            t.prototype.OnRefreshGameSelectAll = function () {
                if (1 == app.GameTypeManager().GetSelectToggleIdx) {
                    app.GameTypeManager().LoadTime = 0;
                    var e = app.GameTypeManager().GetFavoriteGameBuffer();
                    this.gameAll.getComponent(s.default).renderGame(e)
                }
            }
            ,
            t.prototype.onEditBoxText = function (e) {
                var t = e.string;
                0 == app.GameTypeManager().GetSelectToggleIdx ? 0 == t.length ? (this.gameTypeList.active = true,
                    this.ResetGameListNode(),
                    this.refreshGameType()) : this.RenderGameList(0, t) : app.Client.OnEvent(i.GameEventDefine.SearchGameList, t)
            }
            ,
            t.prototype.OnInteraction = function (e) {
                for (var t = this.gameTypeList.children, n = 0; n < t.length; n++) {
                    var o = t[n];
                    if (o.getComponent(c.default).GetTypeID == e) {
                        var a = this.gameTypeList.convertToWorldSpaceAR(o.getPosition());
                        app.Client.OnEvent(i.GameEventDefine.MAIN_JUMP_INTERACTION, a);
                        break
                    }
                }
            }
            ,
            t.prototype.OnSetLanguage = function () {
                for (var e = 0; e < this.typeIconArr.length; e++) {
                    var t = this.typeIconArr[e]
                        , n = this.typeElementArr[e]
                        , o = app.LocalDataManager().GetConfigProperty("SysSetting", "Language")
                        , i = n.type_name_arr.other;
                    n.type_name_arr[o] && (i = n.type_name_arr[o]),
                        this.GetWndComponent("Background/label", cc.Label, t).string = i,
                        this.GetWndComponent("checkmark/label", cc.Label, t).string = i
                }
            }
            ,
            t.Start_Index = 2,
            t.RenderDelay = .01,
            __decorate([d(cc.Prefab)], t.prototype, "prefabGameListItem", undefined),
            n = __decorate([p], t)
    }(o.default);
n.default = h,
    module.exports = n
