let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
    , i = require("../../../Common/Define/TrackEventName")
    , a = require("../../../Common/Define/UINameDefine")
    , r = require("../../../Common/Net/MsgEventDefine")
    , s = require("../../common/room_mode_tool")
    , c = require("./UIHallTop")
    , l = cc._decorator
    , p = l.ccclass
    , d = (l.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.player_Node = null,
                    t.lbGold = null,
                    t.lbCash = null,
                    t.login_Node = null,
                    t.right_Node = null,
                    t.face_bg = null,
                    t.mouseAreaNode = null,
                    t.gold_icon = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    e.prototype.OnCreateInit.call(this),
                        this.RegEvent(o.GameEventDefine.UPDATE_USER_INFO, this.onUpdateUserInfo),
                        this.RegEvent(o.GameEventDefine.GET_USER_INFO, this.onUpdateUserInfo),
                        this.RegSystemEvent(r.default.EVENT_LOGIN_FINISH, this.onUpdateUserInfo),
                        this.RegEvent(o.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess),
                        this.RegEvent(o.GameEventDefine.GET_USER_WALLET, this.onUpdateUserInfo),
                        this.RegEvent(o.GameEventDefine.UPDATE_CURSOR, this.OnUpdateCursor),
                        this.right_Node = cc.find("information/layout_right", this.node),
                        this.player_Node = cc.find("information/layout_right/btn_player", this.node),
                        this.face_bg = cc.find("face_bg", this.player_Node),
                        this.login_Node = cc.find("information/login", this.node),
                        this.mouseAreaNode = cc.find("mouseAreaNode", this.node),
                        this.lbGold = this.GetWndComponent("gold/label", cc.Label, this.player_Node),
                        this.lbCash = this.GetWndComponent("information/layout_right/btn_player/gold/chouma1", cc.Label),
                        this.nodeMarquee = this.GetWndNode("information/layout_right/btn_player/gold/btn_settlement"),
                        this.btnRefresh = this.GetWndNode("information/layout_right/btn_player/gold/btn_shuaxin"),
                        this.nodeVip = this.GetWndNode("information/layout_right/btn_player/vip/vip"),
                        this.placeholder = this.GetWndNode("information/placeholder"),
                        this.gold_icon = this.GetWndNode("information/layout_right/btn_player/gold/chouma1/spr_icon"),
                        app.PlaceholderManager().AddBeginShowIcon(this.placeholder),
                       // this.RegEvent(o.GameEventDefine.OnMouseMove, this.OnMouseMove)
                    this.btnMenu = this.GetWndNode("information/btn_menu")
                }
                ,
                t.prototype.OnMouseMove = function (e) {
                    var t = this.face_bg.getChildByName("icon_jiantou");
                    if (!this.login_Node.active && this.face_bg.active) {
                        var n = cc.find("mouse", this.mouseAreaNode);
                        n.getBoundingBoxToWorld().contains(e.getLocation()) && !app.FormManager().IsFormShow(a.UINameDefine.UIPlayerInfo) && (t.scaleY = .7,
                            app.FormManager().ShowForm(a.UINameDefine.UIPlayerInfo));
                        var o = cc.find("playerInfoNode", this.mouseAreaNode);
                        n.getBoundingBoxToWorld().contains(e.getLocation()) || !app.FormManager().IsFormShow(a.UINameDefine.UIPlayerInfo) || o.getBoundingBoxToWorld().contains(e.getLocation()) || (t.scaleY = -.7,
                            app.FormManager().CloseForm(a.UINameDefine.UIPlayerInfo))
                    }
                }
                ,
                t.prototype.OnUpdateCursor = function () {
                    var e = this.face_bg.getChildByName("icon_jiantou");
                    e && (e.scaleY = -e.scaleY)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.apply(this, t),
                        this.lbCash.string = app.GameConfigManager().GetCurrency,
                        this.RenderLoading(),
                        this.onUpdateUserInfo(),
                        this.gold_icon.active = app.GameConfigManager().GetGoldIcomCondition
                }
                ,
                t.prototype.OnClose = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t]
                }
                ,
                t.prototype.OnClick = function (e, t) {
                    if ("face_bg" == e) {
                        var icon_jiantou = this.face_bg.getChildByName("icon_jiantou");
                        app.FormManager().IsFormShow(a.UINameDefine.UIPlayerInfo) ? (app.FormManager().CloseForm(a.UINameDefine.UIPlayerInfo)) : (this.OnUpdateCursor(),
                            app.FormManager().ShowForm(a.UINameDefine.UIPlayerInfo));
                    }
                    else if ("btn_BonusBalance_jiantou" == e) {
                        app.FormManager().ShowForm(a.UINameDefine.UIPlayerInfoBonusBalance);
                    }
                    else if ("btnLogin" != e)
                        if ("btnSignUp" != e)
                            if ("logo" != e)
                                if ("btn_menu" != e)
                                    if ("btn_service" != e)
                                        if ("btn_Wallet" != e && "gold" != e)
                                            if ("btn_shuaxin" != e)
                                                if ("btn_notice" != e)
                                                    ;
                                                else {
                                                    if (app.UserManager().GetIsOfficialPopup())
                                                        return;
                                                    app.FormManager().IsFormShow(a.UINameDefine.UIChat) ? (app.FormManager().CloseForm(a.UINameDefine.UIChat),
                                                        app.Client.OnEvent(o.GameEventDefine.HallWidgetVariety)) : (app.FormManager().ShowForm(a.UINameDefine.UIChat),
                                                            n = app.SupportManager().SelToServiceTypeName(),
                                                            app.FormManager().CloseForm(n))
                                                }
                                            else
                                                this.refreshGoldCoins(t);
                                        else
                                            app.StoreManager().ShowStoreUI({
                                                in_type: i.default.PAGETRACK_EVENT_RECHARGE_ENTER
                                            });
                                    else {
                                        var n = app.SupportManager().SelToServiceTypeName();
                                        app.FormManager().IsFormShow(n) ? app.FormManager().CloseForm(n) : (app.FormManager().ShowForm(n),
                                            app.FormManager().CloseForm(a.UINameDefine.UIChat))
                                    }
                                else
                                    app.FormManager().IsFormShow(a.UINameDefine.UIMenu) ? (app.FormManager().CloseForm(a.UINameDefine.UIMenu),
                                        app.Client.OnEvent(o.GameEventDefine.HallWidgetVariety)) : app.FormManager().ShowForm(a.UINameDefine.UIMenu);
                            else {
                                // app.HNoticeManager().RequestCanGetRedenvelope()
                                app.FormManager().IsFormShow(a.UINameDefine.UIHall) || app.GameManager().enterSceneByRoomMode(s.RoomMode.HALL);
                            }
                        else
                            app.FormManager().ShowForm(a.UINameDefine.UILoginSign, 2);
                    else
                        app.FormManager().ShowForm(a.UINameDefine.UILoginSign, 1)
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
                        app.ImageUtil().LoadHead(n, t.headimg.toString()),
                            this.lbGold.string = app.ScoreUtil().toFixed(e ? e.gold : t.gold),
                            cc.find("face_bg/name", this.player_Node).getComponent(cc.Label).string = t.nickname.length > 10 ? t.nickname.substring(0, 10) + "..." : t.nickname,
                            cc.find("face_bg/id", this.player_Node).getComponent(cc.Label).string = String(t.uid)
                    }
                }
                ,
                t.prototype.onShowNode = function (e) {
                    this.login_Node.active = !e,
                        this.right_Node.active = e,
                        app.GameConfigManager().IsExperienceServer && (this.login_Node.active = false,
                            this.right_Node.active = true,
                            this.GetPlayerValid())
                }
                ,
                t.prototype.GetPlayerValid = function () {
                    this.face_bg.active = !app.GameConfigManager().IsExperienceServer,
                        this.GetWndNode("vip", this.player_Node).active = !app.GameConfigManager().IsExperienceServer;
                    var e = cc.find("gold", this.player_Node);
                    // e.getComponent(cc.Button).interactable = !app.GameConfigManager().IsExperienceServer,
                    // e.x = app.GameConfigManager().IsExperienceServer ? -e.width / 2 : -605,
                    // this.GetWndNode("btn_Wallet", e).active = !app.GameConfigManager().IsExperienceServer
                    //this.GetWndNode("information/layout_right/btn_service", this.node).active = !app.GameConfigManager().IsExperienceServer
                }
                ,
                t.prototype.LoadHallSuccess = function () {
                    this.login_Node.active && app.LoginManager().GetIsFormLogin && (app.FormManager().ShowForm(a.UINameDefine.UILoginSign, 1),
                        app.LoginManager().SetIsFormLogin(false)),
                        this.GetPlayerValid()
                }
                ,
                __decorate([p], t)
        }(c.default));
n.default = d,
    module.exports = n
