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
    , c = (r.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.UIDownApp_IOS = null,
                    t.UIDownApp_Android = null,
                    t.UISevice = null,
                    t.DownApp = null,
                    t.UIRecharge = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.DownApp = cc.find("DownApp", this.node),
                        //  this.UISevice = cc.find("UISevice", this.node),
                        this.UIDownApp_IOS = cc.find("DownApp/UIDownApp_IOS", this.node),
                        this.UIDownApp_Android = cc.find("DownApp/UIDownApp_Android", this.node),
                        //   this.UIRecharge = cc.find("UIRecharge", this.node),
                        this.RegEvent(i.GameEventDefine.RECHARGE_ACTIVITY, this.initRechargeView)
                    this.FirstChargeUpgrade = cc.find("NewNode/FirstChargeUpgrade", this.node)
                    this.lasttime = cc.find("NewNode/FirstChargeUpgrade/lasttime", this.node).getComponent(cc.Label)
                    this.RegEvent(i.GameEventDefine.GET_USER_WALLET, this.onFirstChargeUpgrade)

                    this.gameProgressNode = cc.find("NewNode/gameProgressNode", this.node)
                    if (this.gameProgressNode) {
                        this.gameProgressNode.active = false
                        this.gameProgressNode_progressBar = cc.find("progressBar", this.gameProgressNode).getComponent(cc.ProgressBar)
                        this.gameProgressNode_progressBarLabel = cc.find("progressBar/Label", this.gameProgressNode).getComponent(cc.Label)
                        this.gameProgressNode_progressBarGTH = cc.find("progressBar/GTH", this.gameProgressNode)
                        this.gameProgressNode_gameProgressGet = cc.find("gameProgressGet", this.gameProgressNode).getComponent(cc.Button)
                        this.gameProgressNode_gameProgressGetLabel = cc.find("gameProgressGet/Label", this.gameProgressNode).getComponent(cc.Label)
                        this.gameProgressNode_gameProgressGetDesfeito = cc.find("gameProgressGet/Desfeito", this.gameProgressNode)
                    }
                    this.RegEvent(i.GameEventDefine.HtmlGameProgress, this.OnHtmlGameProgress)
                },
                t.prototype.OnHtmlGameProgress = function (data) {
                    if (this.gameProgressNode) {
                        this.gameProgressNode.active = true
                        this.HtmlGameProgressData = data
                        data.betGold2 = data.betGold % data.needBetGold
                        this.gameProgressNode_progressBarLabel.string = data.betGold2.toFixed(2) + "/" + data.needBetGold
                        this.gameProgressNode_progressBar.progress = data.betGold2 / data.needBetGold
                        if (data.betGold >= data.needBetGold) {//data.receiveGold > 0 暂时
                            this.gameProgressNode_progressBarGTH.active = true
                            this.gameProgressNode_gameProgressGet.interactable = true
                            this.gameProgressNode_gameProgressGetLabel.string = app.GameConfigManager().GetCurrency + " " + data.receiveGold
                            this.gameProgressNode_gameProgressGetLabel.node.active = true
                            this.gameProgressNode_gameProgressGetDesfeito.active = false
                        }
                        else {
                            this.gameProgressNode_progressBarGTH.active = false
                            this.gameProgressNode_gameProgressGet.interactable = false
                            this.gameProgressNode_gameProgressGetLabel.node.active = false
                            this.gameProgressNode_gameProgressGetDesfeito.active = true
                        }

                    }
                },
                t.prototype.onFirstChargeUpgrade = function () {
                    if (this.FirstChargeUpgrade) {
                        if ((app.GameConfigManager().GetGameConfig().FirstChargeUpgradeTimeAs > app.GameConfigManager().GetAsTime()) && (Number(app.UserManager().GetUserInfo.total_recharge) == 0)) {
                            this.FirstChargeUpgrade.active = true
                            this.lasttime.string = ""
                            var e = this;
                            this.EndTime = app.GameConfigManager().GetGameConfig().FirstChargeUpgradeTimeAs //app.GameConfigManager().GetAsTime() + app.GameConfigManager().
                            this.UpdateSeconds()
                            this.unscheduleAllCallbacks()
                            this.schedule(function () {
                                e.UpdateSeconds()
                            }, 1)
                        }
                        else {
                            this.FirstChargeUpgrade.active = false
                        }
                    }
                },
                t.prototype.UpdateSeconds = function () {
                    if (this.EndTime > 0) {
                        var e = app.GameConfigManager().GetAsTime()
                            , t = Number(this.EndTime) - e;
                        if (t < 1) {
                            this.FirstChargeUpgrade.active = false
                            return void this.unscheduleAllCallbacks();
                        }
                        this.lasttime.string = app.TimeUtil().FormatTimeWithNum(t)
                    }
                },
                t.prototype.OnShow = function () {
                    for (var e = [], t = 0; t < arguments.length; t++)
                        e[t] = arguments[t];
                    // this.UISevice.active = true
                    if (true === app.ClientConfigManager().GetGlobalConfig.HideBtnDownLoad || app.GameConfigManager().GetGameConfig().show_down_bar == 1) {
                        this.DownApp.active = false
                    }
                    else {
                        this.UIDownApp_IOS.active = cc.sys.os == cc.sys.OS_IOS
                        this.UIDownApp_Android.active = cc.sys.os == cc.sys.OS_ANDROID
                        // app.GameConfigManager().GetGameConfig().down_urls.android_download_url = ""
                        if (app.GameConfigManager().GetGameConfig().down_urls && app.GameConfigManager().GetGameConfig().down_urls.android_download_url) {

                        }
                        else {
                            this.UIDownApp_Android.active = false;
                            this.UIDownApp_IOS.active = true
                        }
                        this.onIsShowDownBtn()
                    }
                    this.initRechargeView()
                    this.onFirstChargeUpgrade()
                    app.ExternGameManager().RequestHtmlGameProgressHall(0);
                },
                t.prototype.OnClick = function (e) {
                    if ("UIJoinTelegram" == e) {
                        var tgchannel = app.RedDotManager().GetActiveInfo("tgchannel");
                        if (tgchannel) {
                            cc.sys.openURL(tgchannel)
                        }
                        else {
                            cc.sys.openURL("https://t.me/Yotubet01")
                        }
                    }
                    else if ("FirstChargeUpgrade" == e) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIActivityFirstChargeUpgrade);
                    }
                    else if ("UIBonus" == e) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIAllActivityBonus);
                    }
                    else if ("gameProgressNode" == e) {
                        app.FormManager().ShowForm(UINameDefine.UINameDefine.UIGameProgressView, this.HtmlGameProgressData);
                    }
                    else if ("gameProgressGet" == e) {
                        app.ExternGameManager().RequestHtmlGameProgressHall(1);
                    }
                }
                ,
                t.prototype.initRechargeView = function () {
                    //  var e = app.UserManager().GetUserRechargeActivity;
                    // e && 1 == e.status && (this.UIRecharge.active = e && 1 == e.status)
                }
                ,
                t.prototype.onIsShowDownBtn = function () {
                    if (app.ComTool().H5Platform()) {
                        cc.find("icon", this.UIDownApp_IOS).getComponent(cc.Label).string = app.i18n.t("UI_Dice_Add_to_Home_Screen");
                        var e = app.UserManager().UserInfo.user_config.show_arr;
                        if (e && 0 == e[a.VisibleBtnTag.DownloadBtn])
                            return void (this.DownApp.active = false);
                        if (cc.sys.os == cc.sys.OS_ANDROID) {
                            if (this.DownApp.active) {
                                this.DownApp.active = !app.ComTool().AndroidHybirdPlatform();
                            }

                            if (this.DownApp.active) {
                                this.DownApp.active = !(window.matchMedia('(display-mode: standalone)').matches);
                            }
                            if (this.DownApp.active) {
                                this.DownApp.active = ("undefined" == typeof androidOther);
                            }
                        }
                        else if (cc.sys.os == cc.sys.OS_IOS) {
                            var t = app.ClientConfigManager().getLocalUrlDataByName("ioswebclip");
                            this.DownApp.active = !(1 == Number(t)),
                                app.ComTool().getIosBrowserType() && (this.DownApp.active = false)
                        } else
                            this.DownApp.active = true
                    } else
                        this.DownApp.active = false
                }
                ,
                __decorate([s], t)
        }(o.default));
n.default = c,
    module.exports = n
