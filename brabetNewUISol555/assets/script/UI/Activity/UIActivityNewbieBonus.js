let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UINameDefine = require("../../../Common/Define/UINameDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.btn_Receive3 = null,
                t.btn_Receive10 = null,
                t.lbl_Receive3 = null,
                t.lbl_Receive10 = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_NewbieBonus, this.onGetNewbieBonus)
                this.RegEvent(i.GameEventDefine.GET_NewbieBonusReceive, this.onGetNewbieBonusReceive)
            }
            ,
            t.prototype.OnShow = function (e) {
                this.node.active = false
                app.ActivityManager().RequestNewbieBonus()
                // let data = {
                //     receiveState3: 0,
                //     receiveState10: 0,
                // }
                // this.onGetNewbieBonus(data)
            }
            ,
            t.prototype.onGetNewbieBonus = function (data) {
                this.node.active = true
                if (data.receiveState3 == 0) {
                    this.btn_Receive3.interactable = false
                    this.lbl_Receive3.string = app.i18n.t("UI.MakeMoney_0_main_17")
                }
                else if (data.receiveState3 == 1) {
                    this.btn_Receive3.interactable = true
                    this.lbl_Receive3.string = app.i18n.t("UI.MakeMoney_0_main_17")
                }
                else if (data.receiveState3 == 2) {
                    this.btn_Receive3.interactable = false
                    this.lbl_Receive3.string = app.i18n.t("UI_Player_Vip_Received")
                }
                if (data.receiveState10 == 0) {
                    this.btn_Receive10.interactable = false
                    this.lbl_Receive10.string = app.i18n.t("UI.MakeMoney_0_main_17")
                }
                else if (data.receiveState10 == 1) {
                    this.btn_Receive10.interactable = true
                    this.lbl_Receive10.string = app.i18n.t("UI.MakeMoney_0_main_17")
                }
                else if (data.receiveState10 == 2) {
                    this.btn_Receive10.interactable = false
                    this.lbl_Receive10.string = app.i18n.t("UI_Player_Vip_Received")
                }
            }
            ,
            t.prototype.onGetNewbieBonusReceive = function (data) {
                if (data.code == 1) {

                }
                else if (data.code == 1002) {
                    if (GameTypeGlobal == 3) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityNewbieBonusGetChile);
                    }
                    else {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityNewbieBonusGet);
                    }
                }
                else if (data.code == 1003) {
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityNewbieBonusDeposit, data.data.amount);
                }
                else {
                    if (data.username && data.cpf.length > 5) {
                        if (app.UserManager().GetUserInfo.taxid.length < 5) {
                            app.UserManager().GetUserInfo.taxid = data.cpf //app.ActivityManager().sendDataNewbieBonusReceive.cpf
                        }
                    }
                    if (data.username && data.username.length > 0) {
                        if (app.UserManager().GetUserInfo.pix_key.length < 5) {
                            app.UserManager().GetUserInfo.pix_key = data.username //app.ActivityManager().sendDataNewbieBonusReceive.cpf
                        }
                    }
                    if (data.denetype && data.denetype.length > 0) {
                        if (app.UserManager().GetUserInfo.colombia_idType.length < 2) {
                            app.UserManager().GetUserInfo.colombia_idType = data.denetype
                        }
                    }
                    if (data.denid && data.denid.length > 0) {
                        if (app.UserManager().GetUserInfo.colombia_idNumber.length < 2) {
                            app.UserManager().GetUserInfo.colombia_idNumber = data.denid
                        }
                    }
                    if (data.email && data.email.length > 0) {
                        if (app.UserManager().GetUserInfo.email.length < 2) {
                            app.UserManager().GetUserInfo.email = data.email
                        }
                    }

                    if (GameTypeGlobal == 3) {
                        app.FormManager().CloseForm(UINameDefine.UINameDefine.UIActivityNewbieBonusGetChile);
                    }
                    else {
                        app.FormManager().CloseForm(UINameDefine.UINameDefine.UIActivityNewbieBonusGet);
                    }
                    if (data.type == 1) {
                        this.btn_Receive3.interactable = false
                        this.lbl_Receive3.string = app.i18n.t("UI_Player_Vip_Received")
                    }
                    else if (data.type == 2) {
                        this.btn_Receive10.interactable = false
                        this.lbl_Receive10.string = app.i18n.t("UI_Player_Vip_Received")
                    }
                    if (GameTypeGlobal == 3) {
                        app.GoldRewardManager().FormGoldReward({
                            gold: data.gold,
                            source: app.i18n.t("UI_Balance")
                        })
                    } else {
                        app.GoldRewardManager().FormGoldReward({
                            gold: data.gold,
                            source: app.i18n.t("UI_Reward")
                        })
                    }
                    app.RedDotManager().OnLoadHallSuccess()
                }
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                if (e == "btn_Receive3") {
                    app.ActivityManager().RequestNewbieBonusReceive(1, "", "", "", "", "")
                }
                else if (e == "btn_Receive10") {
                    app.ActivityManager().RequestNewbieBonusReceive(2, "", "", "", "", "")
                }
                else if ("UIJoinTelegram" == e) {
                    var tgchannel = app.RedDotManager().GetActiveInfo("tgchannel");
                    if (tgchannel) {
                        cc.sys.openURL(tgchannel)
                    }
                    else {
                        cc.sys.openURL("https://t.me/Yotubet01")
                    }
                }
                else if (e == "lbl_shouji") {
                    app.FormManager().ShowForm(UINameDefine.UINameDefine.UIAccountSetting)
                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Button)], t.prototype, "btn_Receive3", undefined),
            __decorate([c(cc.Button)], t.prototype, "btn_Receive10", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_Receive3", undefined),
            __decorate([c(cc.Label)], t.prototype, "lbl_Receive10", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
