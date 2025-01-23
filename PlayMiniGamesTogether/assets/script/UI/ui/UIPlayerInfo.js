let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/UINameDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/TrackEventName")
    , c = cc._decorator
    , l = c.ccclass
    , p = c.property
    , d = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.head = null,
                t.labelNickName = null,
                t.labelID = null,
                t.lbl_Version = null,
                t.vipNormal = null,
                t.vipGray = null,
                t.toggleMusic = null,
                t.toggleSound = null,
                t.email = null,
                //  t.VibrationToggle = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIPlayerInfo",
                    this.RegEvent(i.GameEventDefine.UPDATE_USER_VIP, this.onUpdateUserVip),
                    this.toggleMusic = this.GetWndComponent("player/con/li_music/toggleMusic", cc.Toggle),
                    this.toggleSound = this.GetWndComponent("player/con/li_sound/toggleSound", cc.Toggle),
                    this.email = this.GetWndNode("player/con/email")
                // this.VibrationToggle = this.GetWndComponent("player/con/li_Vibration/toggleVibration", cc.Toggle)
            }
            ,
            t.prototype.OnShow = function () {
                if (app.ComTool().H5Platform()) {
                    if (app.Client.GetDownload().active == true) {
                        this.GetWndComponent("player", cc.Widget).top = 220
                    }
                    else {
                        this.GetWndComponent("player", cc.Widget).top = 140
                    }
                }
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                if (n = app.UserManager().GetUserInfo) {
                    this.email,
                        this.setHeadUrl(String(n.headimg));
                    var n, o = n.nickname.length > 10 ? n.nickname.substring(0, 10) + "..." : n.nickname;
                    if (this.setNickName(o),
                        this.setID(n.uid),
                        n = app.UserManager().GetUserInfo) {
                        var i = this.GetWndNode("player/face/vip/label");
                        i.getComponent(cc.Label).string = "V" + Number(n.vip_id - 1);
                        var a = 0 == n.is_keep_level ? "#7C7C7C" : "#AE392B"
                            , s = 0 == n.is_keep_level ? this.vipGray : this.vipNormal;
                        i.parent.getComponent(cc.Sprite).spriteFrame = s,
                            i.getComponent(cc.LabelOutline).color = cc.Color.BLUE.fromHEX(a)
                    }
                    this.toggleMusic.isChecked = app.SoundManager().GetBackMusicSetting,
                        this.toggleSound.isChecked = app.SoundManager().GetSoundSetting,
                        this.lbl_Version.string = app.ClientConfigManager().GetVersion;
                    var c = app.UserManager().GetUserInfoConfig.show_arr;
                    this.GetWndNode("player/con/RedeemCode").active = 1 == c[r.VisibleBtnTag.Btn_Openredpacket]
                    //  this.VibrationToggle && (this.VibrationToggle.getComponent(cc.Toggle).isChecked = app.VibrationMgr().GetOpenVibration)
                } else
                    this.ErrLog("OnShow")
            }
            ,
            t.prototype.onUpdateUserVip = function () {
                var e = app.UserManager().GetUserInfo.vip_id;
                this.GetWndNode("player/face/vip/label").getComponent(cc.Label).string = "V" + Number(e - 1)
            }
            ,
            t.prototype.OnClick = function (e, t) {
                if ("toggleMusic" == e)
                    return app.SoundManager().SetBackMusic(t.getComponent(cc.Toggle).isChecked),
                        void app.Client.OnEvent(i.GameEventDefine.UPDATE_SOUND);
                if ("toggleSound" == e)
                    return app.SoundManager().SetSounds(t.getComponent(cc.Toggle).isChecked),
                        void app.Client.OnEvent(i.GameEventDefine.UPDATE_SOUND);
                if ("btn_BalanceChangeRecords" == e)
                    app.HallManager().ShowHallForm(a.UINameDefine.UIAccountWithdrawal);
                else
                    if (app.FormManager().CloseForm(a.UINameDefine.UIPlayerInfo),
                        "btn_edit" != e)
                        if ("btn_Logout" != e)
                            if ("face" != e)
                                if ("email" != e) {
                                    if ("btn_account" == e)
                                        return app.Client.OnEvent(i.GameEventDefine.SELECT_TOPTOOGLE, r.Hall_SelectTopToggle.Mine),
                                            void app.HallManager().ShowHallForm(a.UINameDefine.UIAccount, {
                                                in_type: s.default.PAGETRACK_EVENT_USERCENTER_TOPENTER
                                            });
                                    if ("RedeemCode" != e)
                                        if ("btn_copy" != e)
                                            if ("btn_service" != e)
                                                ;
                                            else {
                                                var n = app.SupportManager().SelToServiceTypeName();
                                                app.FormManager().IsFormShow(n) || app.FormManager().ShowForm(n)
                                            }
                                        else
                                            app.NativeMgr().copyToClipBoard("" + app.UserManager().GetUserInfo.uid);
                                    else
                                        app.FormManager().IsFormShow(a.UINameDefine.UIRedeemCode) || app.FormManager().ShowForm(a.UINameDefine.UIRedeemCode)
                                } else {
                                    if (app.UserManager().GetIsOfficialPopup())
                                        return;
                                    app.HallManager().ShowHallForm(a.UINameDefine.UIChat)
                                }
                            else
                                app.FormManager().ShowForm(a.UINameDefine.UIVIP);
                        else
                            this.onClickLogout();
                    else
                        app.FormManager().ShowForm(a.UINameDefine.UIPlayerEditInfo);
            }
            ,
            t.prototype.setHeadUrl = function (e) {
                app.ImageUtil().LoadHead(this.head, e)
            }
            ,
            t.prototype.setNickName = function (e) {
                this.labelNickName.getComponent(cc.Label).string = e
            }
            ,
            t.prototype.setID = function (e) {
                this.labelID.getComponent(cc.Label).string = "ID:" + e
            }
            ,
            t.prototype.onClickLogout = function () {
                this.CloseForm(),
                    app.LoginManager().Logout(),
                    app.FacebookManager().WebFacebookLoginout()
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                app.Client.OnEvent(i.GameEventDefine.UPDATE_CURSOR)
            }
            ,
            __decorate([p(cc.Node)], t.prototype, "head", undefined),
            __decorate([p(cc.Node)], t.prototype, "labelNickName", undefined),
            __decorate([p(cc.Node)], t.prototype, "labelID", undefined),
            __decorate([p(cc.Label)], t.prototype, "lbl_Version", undefined),
            __decorate([p(cc.SpriteFrame)], t.prototype, "vipNormal", undefined),
            __decorate([p(cc.SpriteFrame)], t.prototype, "vipGray", undefined),
            __decorate([l], t)
    }(o.default);
n.default = d,
    module.exports = n
