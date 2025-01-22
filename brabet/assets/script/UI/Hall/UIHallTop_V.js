let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
    , i = require("../../../Common/Define/UINameDefine")
    , a = require("../../../Common/Net/MsgEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("./UIHallTop")
    , c = require("../../../Common/Define/TrackEventName")
    , l = cc._decorator
    , p = l.ccclass
    , d = (l.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.player_Node = null,
                    t.lbCash = null,
                    t.login_Node = null,
                    t.gold_icon = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    e.prototype.OnCreateInit.call(this),
                        this.RegEvent(o.GameEventDefine.UPDATE_USER_INFO, this.onUpdateUserInfo),
                        this.RegEvent(o.GameEventDefine.GET_USER_INFO, this.onUpdateUserInfo),
                        this.RegSystemEvent(a.default.EVENT_LOGIN_FINISH, this.onUpdateUserInfo),
                        this.RegEvent(o.GameEventDefine.UPDATE_CURSOR, this.OnUpdateCursor),
                        this.RegEvent(o.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess),
                        this.RegEvent(o.GameEventDefine.SELECT_TOPTOOGLE, this.onSelectToggleContainer),
                        this.RegEvent(o.GameEventDefine.GET_USER_WALLET, this.onUpdateUserInfo),
                        this.player_Node = cc.find("layout/information/btn_player", this.node),
                        this.login_Node = cc.find("layout/information/login", this.node),
                        this.lbGold = this.GetWndComponent("gold/label", cc.Label, this.player_Node),
                        this.lbCash = this.GetWndComponent("layout/information/btn_player/gold/chouma1", cc.Label),
                        this.nodeMarquee = this.GetWndNode("layout/information/btn_player/gold/btn_settlement"),
                        this.btnRefresh = this.GetWndNode("layout/information/btn_player/gold/btn_shuaxin"),
                        this.nodeVip = this.GetWndNode("layout/information/btn_player/btn_vip/vip"),
                        this.placeholder = this.GetWndNode("layout/information/placeholder"),
                        this.gold_icon = this.GetWndNode("layout/information/btn_player/gold/chouma1/spr_icon"),
                        app.PlaceholderManager().AddBeginShowIcon(this.placeholder)
                    this.btnMenu = this.GetWndNode("layout/information/btn_menu")
                    this.downloadbar = this.GetWndNode("layout/download")
                    this.downloadDes = this.GetWndComponent("layout/download/downloadDes", cc.Label)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.apply(this, t),
                        this.lbCash.string = app.GameConfigManager().GetCurrency,
                        this.RenderLoading(),
                        this.onUpdateUserInfo(),
                        this.GetWndNode("tab/toggleContainer/toggle_share").active = 1 == app.UserManager().GetUserInfoConfig.show_arr[r.VisibleBtnTag.Btn_NewMoney],
                        cc.sys.isBrowser && this.FullScreenColor(),
                        this.gold_icon.active = app.GameConfigManager().GetGoldIcomCondition

                    if (app.GameConfigManager().GetGameConfig().show_down_bar == 1) {
                        this.downloadbar.active = true
                        this.downloadDes.string = app.GameConfigManager().GetGameConfig().down_bar_desc
                        app.Client.DownloadbarActive(true)
                        this.onIsShowDownBtn()
                    }
                    else {
                        this.downloadbar.active = false
                        app.Client.DownloadbarActive(false)
                    }
                },
                t.prototype.onIsShowDownBtn = function () {
                    if (app.ComTool().H5Platform()) {
                        var e = app.UserManager().UserInfo.user_config.show_arr;
                        if (e && 0 == e[r.VisibleBtnTag.DownloadBtn])
                            return void (this.downloadbar.active = false);
                        if (cc.sys.os == cc.sys.OS_ANDROID) {
                            if (this.downloadbar.active) {
                                this.downloadbar.active = !app.ComTool().AndroidHybirdPlatform();
                            }

                            if (this.downloadbar.active) {
                                this.downloadbar.active = !(window.matchMedia('(display-mode: standalone)').matches);
                            }
                            if (this.downloadbar.active) {
                                this.downloadbar.active = ("undefined" == typeof androidOther);
                            }
                        }
                        else if (cc.sys.os == cc.sys.OS_IOS) {
                            var t = app.ClientConfigManager().getLocalUrlDataByName("ioswebclip");
                            this.downloadbar.active = !(1 == Number(t)),
                                app.ComTool().getIosBrowserType() && (this.downloadbar.active = false)
                        } else
                            this.downloadbar.active = true
                    } else
                        this.downloadbar.active = false
                },
                t.prototype.FullScreenColor = function () {
                    app.IndexManager().setTopColor()
                }
                ,
                t.prototype.OnClick = function (e, t) {
                    if ("btn_close" == e) {
                        this.downloadbar.active = false
                        app.Client.DownloadbarActive(false)
                    }
                    else if ("btn_BonusBalance_jiantou" == e) {
                        app.FormManager().ShowForm(i.UINameDefine.UIPlayerInfoBonusBalance);
                    }
                    else if ("btn_menu" != e)
                        if ("toggle_menu" != e)
                            if ("btnLogin" != e)
                                if ("btnSignUp" != e)
                                    if ("btn_Wallet" != e && "gold" != e)
                                        if ("btn_shuaxin" != e) {
                                            if ("logo" == e)
                                                return this.onSelectToggleContainer(r.Hall_SelectTopToggle.Home),
                                                    // app.HNoticeManager().RequestCanGetRedenvelope(),
                                                    void app.HallManager().ShowHallForm();
                                            if ("toggle_games" != e)
                                                if ("toggle_allactivity" != e)
                                                    if ("toggle_notice" != e)
                                                        if ("toggle_free" != e && "toggle_jogo" != e)
                                                            if ("toggle_service" != e)
                                                                if ("face_bg" != e)
                                                                    if ("toggle_share" != e)
                                                                        ;
                                                                    else {
                                                                        if (app.UserManager().GetIsOfficialPopup())
                                                                            return;
                                                                        app.HallManager().ShowHallForm(i.UINameDefine.UIPromoteMain)
                                                                    }
                                                                else
                                                                    app.FormManager().IsFormShow(i.UINameDefine.UIPlayerInfo) ? app.FormManager().CloseForm(i.UINameDefine.UIPlayerInfo) : (this.OnUpdateCursor(),
                                                                        app.FormManager().ShowForm(i.UINameDefine.UIPlayerInfo));
                                                            else {
                                                                var n = app.SupportManager().SelToServiceTypeName();
                                                                app.FormManager().ShowForm(n)
                                                            }
                                                        else
                                                            app.DemoServerManager().EnterGame();
                                                    else {
                                                        if (app.UserManager().GetIsOfficialPopup())
                                                            return;
                                                        app.HallManager().ShowHallForm(i.UINameDefine.UIChat)
                                                    }
                                                else
                                                    app.HallManager().ShowHallForm(i.UINameDefine.UIAllActivity);
                                            else {
                                                //    app.HNoticeManager().RequestCanGetRedenvelope()
                                                app.HallManager().ShowHallForm()
                                            }
                                        } else
                                            this.refreshGoldCoins(t);
                                    else {
                                        if (app.UserManager().GetIsOfficialPopup())
                                            return;
                                        app.StoreManager().ShowStoreUI({
                                            in_type: c.default.PAGETRACK_EVENT_RECHARGE_ENTER
                                        });
                                    }

                                else
                                    app.HallManager().ShowHallForm(i.UINameDefine.UILoginSign, 2);
                            else
                                app.HallManager().ShowHallForm(i.UINameDefine.UILoginSign, 1);
                        else {
                            if (app.UserManager().GetIsOfficialPopup())
                                return;
                            app.HallManager().ShowHallForm(i.UINameDefine.UIAccount, {
                                in_type: c.default.PAGETRACK_EVENT_USERCENTER_BOTTOM
                            })
                        }
                    else
                        app.FormManager().IsFormShow(i.UINameDefine.UIMenu) ? app.FormManager().CloseForm(i.UINameDefine.UIMenu) : app.HallManager().ShowHallForm(i.UINameDefine.UIMenu)
                }
                ,
                t.prototype.onSelectToggleContainer = function (e) {
                    // var t = cc.find("tab/toggleContainer", this.node);
                    // if (t) {
                    //     var n = t.children[e];
                    //     n && n.getComponent(cc.Toggle).check()
                    // }
                }
                ,
                t.prototype.OnUpdateCursor = function () {
                    var e = cc.find("layout/information/btn_player/face_bg/icon_jiantou", this.node);
                    e && (e.scaleY = -e.scaleY)
                }
                ,
                t.prototype.refreshGoldCoins = function (e) {
                    this.RenderLoading(),
                        e.getComponent(cc.Animation).play(),
                        app.UserManager().RequstUserWallet()
                }
                ,
                t.prototype.RenderLoading = function () {
                    this.lbGold.string = app.i18n.t("SC_goldRefreshLoading") + "..."
                }
                ,
                t.prototype.onUpdateUserInfo = function (e) {
                    this.onHideGameDown();
                    var t = app.UserManager().GetUserInfo;
                    if (t && this.player_Node) {
                        if (this.onShowNode(app.UserManager().getIsOfficialAccount()),
                            this.onUpdateUserVip(),
                            this.login_Node.active)
                            return;
                        var n = cc.find("face_bg/mask/tx", this.player_Node);
                        app.ImageUtil().LoadHead(n, t.headimg),
                            this.lbGold.string = app.ScoreUtil().toFixed(e ? e.gold : t.gold)
                    }
                }
                ,
                t.prototype.onShowNode = function (e) {
                    this.login_Node.active = !e,
                        this.player_Node.active = e,
                        app.GameConfigManager().IsExperienceServer && (this.login_Node.active = false,
                            this.player_Node.active = true,
                            this.GetPlayerValid())
                }
                ,
                t.prototype.GetPlayerValid = function () {
                    var e = !app.GameConfigManager().IsExperienceServer;
                    this.GetWndNode("face_bg", this.player_Node).active = e,
                        this.GetWndNode("btn_vip", this.player_Node).active = e,
                        this.GetWndComponent("gold", cc.Button, this.player_Node).interactable = e,
                        this.GetWndNode("gold/btn_Wallet", this.player_Node).active = e,
                        this.GetWndNode("tab").active = e,
                        this.GetWndComponent("layout/information/logo", cc.Button).interactable = e,
                        this.btnMenu.active = e
                }
                ,
                t.prototype.OnUpdateUI = function () {
                    e.prototype.OnUpdateUI.call(this)
                }
                ,
                t.prototype.LoadHallSuccess = function () {
                    this.login_Node.active && app.LoginManager().GetIsFormLogin && (app.FormManager().ShowForm(i.UINameDefine.UILoginSign, 1),
                        app.LoginManager().SetIsFormLogin(false)),
                        this.GetPlayerValid(),
                        this.onSelectToggleContainer(r.Hall_SelectTopToggle.Home)
                }
                ,
                __decorate([p], t)
        }(s.default));
n.default = d,
    module.exports = n
