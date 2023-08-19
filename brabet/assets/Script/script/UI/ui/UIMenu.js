let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"), a = require("../../../Common/Define/GameEventDefine"), r = require("../../../Common/Define/ShareDefine"), s = require("../../../Common/Define/UINameDefine"), c = require("../../common/room_mode_tool"), l = cc._decorator, p = l.ccclass, d = (l.property,
o = cc.Node,
__extends(function() {
    return null !== o && o.apply(this, arguments) || this
}, o),
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GameToggleContainer = null,
        t.languageList = null,
        t.lblVip = null,
        t.data = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIMenu",
        this.GameToggleContainer = this.GetWndNode("left/bg/view/content/toggleContainer"),
        this.languageList = this.GetWndNode("left/bg/view/content/language/language_choose"),
        this.lblVip = this.GetWndNode("left/bg/view/content/top_activity/btn_vip/vip/label"),
        this.RegEvent(a.GameEventDefine.HALL_Language, this.OnSetLanguage),
        this.RegEvent(a.GameEventDefine.HIDE_LANGUAGE, this.OnGetLanguageHide),
        this.RegEvent(a.GameEventDefine.UPDATE_USER_VIP, this.OnSetVipView),
        this.RegEvent(a.GameEventDefine.GET_USER_INFO, this.OnSetVipView),
        this.RegEvent(a.GameEventDefine.RECHARGE_INFOV2, this.onRechargeInfo),
        this.RegEvent(a.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess),
        app.Client.RegEvent(a.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.GetBtnServerDisable, this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e, t = this, n = [], o = 0; o < arguments.length; o++)
            n[o] = arguments[o];
        app.Client.OnEvent(a.GameEventDefine.HallWidgetVariety),
        app.Client.OnEvent(a.GameEventDefine.HALLTOP_V_MENU, -1),
        this.OnTopAcNodeDisable(),
        this.GetBtnServerDisable(),
        this.OnSetLanguage(),
        app.RedDotManager().onUpdateRedDot(),
        this.OnSetVipView(),
        app.ComTool().H5Platform() || (this.node_downApp = this.GetWndNode("left/bg/view/content/download/QRCode"),
        cc.find("left/bg/view/content/download", this.node).active = !app.GameConfigManager().IsExperienceServer,
        this.OnDownLoadApp()),
        this.onRechargeInfo(),
        this.VisibleNode(),
        this.data = n[0],
        (null === (e = this.data) || undefined === e ? undefined : e.Vertical) && this.scheduleOnce(function() {
            t.GetWndComponent("left/bg", cc.ScrollView).scrollToPercentVertical(t.data.Vertical)
        }, .5)
    }
    ,
    t.prototype.OnLoadHallSuccess = function() {
        this.OnShow()
    }
    ,
    t.prototype.OnTopAcNodeDisable = function() {
        this.GetWndNode("left/bg/view/content/top_activity", this.node).active = !app.GameConfigManager().IsExperienceServer
    }
    ,
    t.prototype.GetBtnServerDisable = function() {
        var e = this.GetWndNode("left/bg/view/content/toggleContainer/btn_normalServer", this.node);
        e.active = false;
        var t = this.GetWndNode("left/bg/view/content/toggleContainer/btn_ExpServer", this.node);
        t.active = false;
        var n = app.GameConfigManager().IsExperienceServer ? e : t;
        n.active = !!app.UserManager().GetRefreshFreeShow && app.GameConfigManager().IsExperienceServerShow,
        this.GetWndComponent("Background/label", cc.Label, n).string = app.GameConfigManager().ExperienceServerText,
        this.GetWndComponent("checkmark/label", cc.Label, n).string = app.GameConfigManager().ExperienceServerText
    }
    ,
    t.prototype.OnSetVipView = function() {
        var e = app.UserManager().GetUserInfo;
        if (e) {
            var t = e.vip_id - 1;
            this.lblVip.getComponent(cc.Label).string = "" + t
        }
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if ("language" == e) {
            var n = cc.find("title/icon_jt", t);
            return n && (n.scaleY = -n.scaleY),
            void (this.languageList.active = !this.languageList.active)
        }
        if ("language" != e && app.ComTool().H5Platform() && this.CloseForm(),
        this.OnFastGameHiedBg(),
        this.OnGetLanguageHide(),
        "btn_vip" != e)
            if ("btn_ExpServer" != e && "btn_normalServer" != e)
                if ("btn_wheel" != e) {
                    if ("btn_AllGames" == e)
                        return t.getChildByName("checkmark").active = true,
                        void (app.FormManager().IsFormShow(s.UINameDefine.UIHall) || app.GameManager().enterSceneByRoomMode(c.RoomMode.HALL));
                    if ("btn_game" != e)
                        if ("withdraw" != e && "quanmindai" != e)
                            "BettingBonus" != e ? "btn_RechargeTime" != e ? "btn_Discount" != e ? "btn_support" != e ? "btn_download" != e ? "btn_all" != e ? "btn_task" != e || app.FormManager().ShowForm(s.UINameDefine.UITaskBonus) : app.FormManager().ShowForm(s.UINameDefine.UIAllActivity) : this.node_downApp.active = !this.node_downApp.active : app.FormManager().ShowForm(s.UINameDefine.UIActivity, r.ActivityType.agency_promotion) : app.FormManager().ShowForm(s.UINameDefine.UIDiscount) : app.FormManager().ShowForm(s.UINameDefine.UIRechargeTime) : app.FormManager().IsFormShow(s.UINameDefine.UIBetBonus) || app.FormManager().ShowForm(s.UINameDefine.UIBetBonus, {
                                InType: r.IntypeType.Main
                            });
                        else {
                            if (app.UserManager().GetIsOfficialPopup())
                                return;
                            app.FormManager().ShowForm(s.UINameDefine.UIPromoteMain)
                        }
                    else {
                        t.getChildByName("checkmark").active = true;
                        var o = t;
                        app.HallManager().RequestHundredLeaveEnterRoom(o.Gid)
                    }
                } else
                    app.SysNotifyManager().ShowToast("UI_Hall_FeatureDevelopment");
            else
                app.DemoServerManager().EnterGame();
        else
            app.FormManager().IsFormShow(s.UINameDefine.UIVIP) || app.FormManager().ShowForm(s.UINameDefine.UIVIP)
    }
    ,
    t.prototype.OnSetLanguage = function() {
        var e = app.LanguageManager().GetLanguageItem()
          , t = this.GetWndNode("left/bg/view/content/language");
        if (t && e) {
            var n = this.GetWndNode("title/icon", t);
            n && app.ImageUtil().LoadImage(n, e.icon),
            this.GetWndNode("title/label", t).getComponent(cc.Label).string = e.name
        }
        this.OnGetLanguageHide()
    }
    ,
    t.prototype.OnGetLanguageHide = function() {
        if (this.languageList.active) {
            var e = cc.find("title/icon_jt", this.languageList.parent);
            e && (e.scaleY = -e.scaleY),
            this.languageList.active = false
        }
    }
    ,
    t.prototype.OnFastGameJoinList = function() {
        var e = this
          , t = app.GameConfigManager().GetBottomFastGame()
          , n = this.GameToggleContainer.children[1]
          , o = 1;
        t && (t.forEach(function(t, i) {
            o++;
            var a = e.GameToggleContainer.children[i + 1];
            a || (a = cc.instantiate(n),
            e.GameToggleContainer.addChild(a)),
            cc.find("Background/label", a).getComponent(cc.Label).string = t.game_name,
            cc.find("checkmark/label", a).getComponent(cc.Label).string = t.game_name,
            a.Gid = t.gid,
            a.active = true
        }),
        this.OnHideChildNode(o, this.GameToggleContainer))
    }
    ,
    t.prototype.OnHideChildNode = function(e, t) {
        for (var n = t.children.length, o = e + 1; o < n; o++) {
            var i = t.children[o];
            i && (i.active = false)
        }
    }
    ,
    t.prototype.OnFastGameHiedBg = function() {
        this.GameToggleContainer.children.forEach(function(e) {
            var t = cc.find("checkmark", e);
            t && (t.active = false)
        })
    }
    ,
    t.prototype.onRechargeInfo = function() {
        var e = this.GetWndNode("left/bg/view/content/btn_support");
        e.active = false;
        var t = app.RedDotManager().GetActiveInfo(r.ActivityType[r.ActivityType.agency_promotion]);
        t && t.switch && (this.GetWndNode("Background/Label", e).getComponent(cc.Label).string = t.title,
        e.active = true)
    }
    ,
    t.prototype.OnDownLoadApp = function() {
        app.ComTool().GenQRCode(window.location.href, cc.find("left/bg/view/content/download/QRCode/Apple/code", this.node).getComponent(cc.Graphics))
    }
    ,
    t.prototype.VisibleNode = function() {
        var e = app.UserManager().GetUserInfoConfig.show_arr;
        this.GetWndNode("left/bg/view/content/top_activity/btn_task").active = 1 == e[r.VisibleBtnTag.TaskBtn],
        this.GetWndNode("left/bg/view/content/top_activity/quanmindai").active = 1 == e[r.VisibleBtnTag.Btn_NewMoney],
        this.GetWndNode("left/bg/view/content/top_activity/btn_vip").active = 1 == e[r.VisibleBtnTag.Btn_VIP]
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.Client.OnEvent(a.GameEventDefine.HALLTOP_V_MENU, 1)
    }
    ,
    __decorate([p], t)
}(i.default));
n.default = d,
module.exports = n
