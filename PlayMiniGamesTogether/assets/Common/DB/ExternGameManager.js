let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.ExternGameManager = undefined;
let EventWaitType = require("../Define/EventWaitType")
var o = require("../../script/common/room_mode_tool")
    , i = require("../Base/Singleton")
    , a = require("../Define/HttpServerDefine")
    , r = require("../Define/ShareDefine")
    , s = require("../Define/GameEventDefine")
    , c = require("../../script/HallScene/ExternGame/ExternGame")
    , l = require("../Define/UINameDefine")
    , p = require("../../script/common/Orientation")
    , d = require("../Define/TextDefine")
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.timer = 0,
                t.gid = 0,
                t.subGid = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "ExternGameManager",
                    this.Log("Init"),
                    this.WebExternGame = new c.default,
                    app.HttpServerManager().RegNetPack(a.HttpAPI.CHECK_GAME_STATUS, this.onCheckGameStatus, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GAME_DOWN, this.OnGameDown, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GAME_UP, this.OnGameUp, this),

                    app.HttpServerManager().RegNetPack(a.HttpAPI.HtmlGameProgress, this.OnHtmlGameProgress, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.WatchAdsInSubGames, this.OnWatchAdsInSubGames, this),

                    app.Client.RegEvent(s.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.OnUpdateTotalRecharge, this),
                    app.Client.RegEvent(s.GameEventDefine.UPDATE_USER_EXT_GOLD, this.OnUpdateUserInfo, this)
            }
            ,
            t.prototype.EnterGame = function (e, t) {
                var n = this
                    , o = this.GetExternGameInfo(e);
                if (o) {
                    var i = this.GetExternGameInfoOrSubGameInfo(e, t);
                    if (this.Track_gid = e,
                        this.subGid = t,
                        null != i && null != i.least_gold)
                        if ((app.UserManager().GetUserInfo.gold < Number(i.least_gold)) && (isgoServer == true))
                            this.OnConfirm("SC_LessThanChips", i.least_gold);
                        else if (this.IsMaintain(e, t))
                            app.SysNotifyManager().ShowToast(i.mtc_msg);
                        else if (1 != o.show_rate_tips)
                            this.RequestExGame(i, t);
                        else {
                            var a = app.TextManager().GetTextInfo(d.TextDefine.withdraw);
                            if (a) {
                                var s = app.GameConfigManager().GetOtherGameItem(this.Track_gid)
                                    , c = app.i18n.t(a).replace(/{game_name}/g, s.name).replace(/{bw_rate}/g, s.bw_rate.toString());
                                app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmYN, c, null, function () {
                                    n.RequestExGame(i, n.subGid)
                                })
                            }
                        }
                    else
                        app.SysNotifyManager().ShowToast("Load server config failed, please login again")
                } else
                    this.ErrLog("EnterGame failed: " + e)
            }
            ,
            t.prototype.RequestExGame = function (e, t) {
                if (this.tmpGameInfo = e,
                    t) {
                    var n = this.GetExternGameSubInfo(e.gid, t);
                    n ? this.RequestEnterExternGame(n) : this.ErrLog("RequestExGame gid: " + e.gid + ", subGid: " + t)
                } else
                    app.HttpServerManager().SendHttpPack(a.HttpAPI.CHECK_GAME_STATUS, {
                        token: app.UserManager().GetUserInfo.token,
                        gid: e.gid
                    })
            }
            ,
            t.prototype.onCheckGameStatus = function (e) {
                if (this.tmpGameInfo) {
                    var t = e.game_id;
                    t && this.tmpGameInfo.gid != t ? app.SysNotifyManager().ShowToast(e.msg) : this.RequestEnterExternGame()
                }
            }
            ,
            t.prototype.RequestEnterExternGame = function (e) {
                this.tmpSubInfo = e

                if (isgoServer) {
                    app.Client.OnEvent(s.GameEventDefine.UPDATE_TOTAL_RECHARGE)
                }
                else {
                    app.UserManager().RequestUserInfo({
                        token: app.UserManager().GetUserInfo.token
                    })
                }

            }
            ,
            t.prototype.OnUpdateTotalRecharge = function () {
                if (this.tmpGameInfo) {
                    var e = app.GameConfigManager().GameRechargeLimit(this.tmpGameInfo.gid);
                    if (Number(app.UserManager().GetUserInfo.total_recharge) < e)
                        this.OnConfirm("SC_LessRecChips", e + "");
                    else {
                        var t = this.tmpSubInfo ? this.tmpSubInfo.sub_gid : 0
                            , n = this.tmpSubInfo ? this.tmpSubInfo.game_show : this.tmpGameInfo.game_show;
                        this.RequestGameUp(this.tmpGameInfo.gid, t, n)
                    }
                } else
                    this.ErrLog("OnUpdateTotalRecharge failed")
            }
            ,
            t.prototype.EnterGameScene = function () {
                var e = {
                    token: app.UserManager().GetUserInfo.token
                }
                    , t = this.tmpSubInfo ? this.tmpSubInfo.url : this.tmpGameInfo.url
                    , n = app.ComTool().ParseParamsToUri(t, e);
                this.ExternGameUrl = n;
                var i = 1 == this.tmpGameInfo.game_show ? o.GameScene.PORTRAIT : o.GameScene.LANDSCAPE;
                this.Log("scene name: " + i),
                    this.tmpGameInfo = null,
                    this.tmpSubInfo = null,
                    app.GameManager().enterScene(i)
            }
            ,
            t.prototype.OnConfirm = function (e, t) {
                app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmYN, e, [String(t)], function () {
                    app.ActivityManager().selectShop()
                }, null, this)
            }
            ,
            Object.defineProperty(t.prototype, "GetExternGameUrl", {
                get: function () {
                    return this.ExternGameUrl
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.IsExternGame = function (e, subId) {
                if (subId && isgoServer) {
                    return this.IsExternGameSubId(subId)
                }
                else {
                    var t = this.GetExternGameInfo(e);
                    return !!t && t.is_external
                }
            },
            t.prototype.IsExternGameSubId = function (e) {
                var t = this.GetExternGameInfoSubId(e);
                return !!t && t.is_external
            },
            t.prototype.GetExternGameInfoSubId = function (e) {
                return app.GameConfigManager().GetGameListItemSubId(e)
            },
            t.prototype.GetExternGameInfo = function (e) {
                return app.GameConfigManager().GetGameListItem(e)
            }
            ,
            t.prototype.GetExternGameInfoOrSubGameInfo = function (e, t) {
                return t ? this.GetExternGameSubInfo(e, t) : this.GetExternGameInfo(e)
            }
            ,
            t.prototype.IsMaintain = function (e, t) {
                var n = this.GetExternGameInfoOrSubGameInfo(e, t)
                    , o = Date.now();
                return n && n.mtc_status && o >= n.mtc_st_date && o <= n.mtc_end_date
            }
            ,
            t.prototype.GetExternGameSubInfo = function (e, t) {
                return app.GameConfigManager().GetSubGameListItem(e, t)
            }
            ,
            t.prototype.RequestGameDown = function (e) {
                var t = this;
                if (undefined === e && (e = false),
                    app.UserManager().getIsOfficialAccount() && !this.timer) {
                    e && app.Client.OnEvent(s.GameEventDefine.SHOW_GAME_DOWN);
                    var n = function () {
                        // if (!isgoServer) {
                        // var e = app.UserManager().GetUserInfo.token;
                        // app.HttpServerManager().SendHttpPack(a.HttpAPI.GAME_DOWN, {
                        //     token: e
                        // }, false)
                        // }

                    };
                    n();
                    var o = 0;
                    // if (isgoServer) {
                    o = 3
                    // }
                    this.timer = window.setInterval(function () {
                        o++,
                            n(),
                            o >= 3 && (t.ClearTimer(),
                                app.Client.OnEvent(s.GameEventDefine.HIDE_GAME_DOWN))
                    }, 5e3)
                }
            }
            ,
            t.prototype.RequestGameDown2 = function (sub_gid) {
                var e = app.UserManager().GetUserInfo.token;
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GAME_DOWN, {
                    token: e,
                    Sub_Gid: sub_gid
                }, false)
            }
            ,
            t.prototype.ClearTimer = function () {
                this.timer && clearInterval(this.timer),
                    this.timer = 0,
                    app.FormManager().CloseForm(l.UINameDefine.UISettlement)
            }
            ,
            t.prototype.IsGameDown = function () {
                return this.timer
            }
            ,
            t.prototype.OnGameDown = function (e) {
                //  e.result && this.ClearTimer()
            }
            ,
            t.prototype.RequestGameUp = function (e, t, n) {

                var o = {
                    token: app.UserManager().GetUserInfo.token,
                    gid: e,
                    sub_gid: t,
                    direction: n,
                    type: cc.sys.platform
                };
                this.UserCash = app.UserManager().GetUserInfo.gold,
                    app.HttpServerManager().SendHttpPack(a.HttpAPI.GAME_UP, o)
            }
            ,
            t.prototype.OnUpdateUserInfo = function (e) {
                null != e ? (this.UserCash = e,
                    this.WebExternGame.UpdateUserInfo()) : this.ErrLog("OnUpdateUserInfo failed, cash is null")
            }
            ,
            t.prototype.OnGameUp = function (e, t) {
                e.sub_gid = t.sub_gid
                if (isgoServer == true && !e.base_url) {
                    let self = this
                    let xmlHttp = cc.loader.getXMLHttpRequest();
                    xmlHttp.open("GET", e.url, true);
                    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")

                    // let l = false
                    // let time1 = setTimeout(function () {
                    //     d()
                    // }, 8e3)
                    // let d = function () {
                    //     l || (l = true,
                    //         clearTimeout(time1),
                    //         xmlHttp.abort(),
                    //         app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.ReceiveNet))
                    // };
                    xmlHttp.onreadystatechange = function () {
                        if (this.readyState == 4) {
                            app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.ReceiveNet)
                            if (this.status == 200) {
                                // console.log("XXXXGETGETGET", xmlHttp.responseText);
                                //e.url = JSON.parse(xmlHttp.responseText).data
                                let responseData = JSON.parse(xmlHttp.responseText)
                                if (responseData.resultCode == 0) {
                                    e.base_url = responseData.data
                                    self.tmpGameInfo = null,
                                        e.base_url ? (self.gid = e.gid,
                                            self.ClearTimer(),
                                            app.ComTool().CheckPlatform() || 0 !== t.direction || p.default.setOrientation(cc.find("Canvas").getComponent(cc.Canvas), "H"),
                                            self.WebExternGame.init(e)) : self.ErrLog("Invalid base_url")
                                }
                                else {
                                    app.SysNotifyManager().ShowToast(responseData.data)
                                }
                            }
                        }
                    }
                    xmlHttp.timeout = 15000;// 5 seconds for timeout
                    xmlHttp.send();
                    app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.OpenNet)
                }
                else {
                    this.tmpGameInfo = null,
                        e.base_url ? (this.gid = e.gid,
                            this.ClearTimer(),
                            app.ComTool().CheckPlatform() || 0 !== t.direction || p.default.setOrientation(cc.find("Canvas").getComponent(cc.Canvas), "H"),
                            this.WebExternGame.init(e)) : this.ErrLog("Invalid base_url")
                }
            }
            ,
            t.prototype.OnExperienceGame = function (e) {
                this.WebExternGame.init(e)
            }
            ,
            Object.defineProperty(t.prototype, "GetGid", {
                get: function () {
                    return this.gid
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.ParentPostMessage = function (e) {
                var t = {
                    type: "globalGames",
                    data: e
                };
                window.parent && window.parent.postMessage(t, "*")
            }
            ,
            t.prototype.GetBackIconInfo = function (e) {
                var t = {
                    url: app.GameConfigManager().GetGameConfig().back_pic_icon,
                    position: {
                        top: -1,
                        left: -1
                    }
                }
                    , n = app.GameConfigManager().GetGameInfoByGid(e);
                n && n.position_set && n.back_pic && (t.url = n.back_pic,
                    t.position.top = Number(n.position_set.top),
                    t.position.left = Number(n.position_set.left));
                var o = app.LocalDataManager().GetConfigObject("ExternGameCache");
                return o && (t.position.top = Number(o.top),
                    t.position.left = Number(o.left)),
                    t
            }
            ,
            t.prototype.setExternGameCacheLocalData = function (e, t) {
                app.LocalDataManager().SetConfigObject("ExternGameCache", {
                    top: e,
                    left: t
                })
            },
            t.prototype.RequestHtmlGameProgressHall = function (type) {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.HtmlGameProgress, {
                    token: app.UserManager().GetUserInfo.token,
                    type: type,//0获取游戏进度1领取进度条奖励
                })
            },
            t.prototype.RequestWatchAdsInSubGames = function () {
                let key = "TgGamexxBpcyBhIGtleQ=="
                let path = "/HtmlView/WatchAdsInSubGames"
                let TimeStamp = app.GameConfigManager().GetAsTime()
                let UniqueID = app.GameConfigManager().GetAsTime()
                let data = path + TimeStamp + UniqueID + "--sjkfopwfpqopi"
                let SignKey = CryptoJS.HmacSHA256(data, key).toString(CryptoJS.enc.Base64)
                app.HttpServerManager().SendHttpPack(a.HttpAPI.WatchAdsInSubGames, {
                    token: app.UserManager().GetUserInfo.token,
                    TimeStamp:TimeStamp,
                    UniqueID:UniqueID,
                    SignKey:encodeURIComponent(SignKey)
                })
            },
            t.prototype.OnWatchAdsInSubGames = function (data) {

            },
            t.prototype.RequestHtmlGameProgress = function (type, missionType) {
                if (app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress == 0) {

                }
                else {
                    if (type == 0) {
                        this.WebExternGame.initHtmlView()
                        this.inSubGame = true
                    }
                    app.HttpServerManager().SendHttpPack(a.HttpAPI.HtmlGameProgress, {
                        token: app.UserManager().GetUserInfo.token,
                        type: type,//0获取任务进度1领取任务奖励2完成任务
                        missionType: missionType,//1完成看广告2完成玩游戏
                    })
                    // if (!CC_BUILD) {
                    //     if (type == 0) {
                    //         this.OnHtmlGameProgress({
                    //             title: "Watch a video ad",
                    //             completeNumber: 1,//完成数量
                    //             needNumber: 1,
                    //             missionType: 1,
                    //             receiveGold: 500,
                    //             receivedGold: 0
                    //         })
                    //     }
                    //     else {
                    //         this.OnHtmlGameProgress({
                    //             title: "Play for 60 seconds",
                    //             completeNumber: 0,//完成数量
                    //             needNumber: 60,//需要数量
                    //             missionType: 2,//1看广告2玩游戏
                    //             receiveGold: 100,//金币
                    //             receivedGold: 100//大于0弹出领取金币界面
                    //         })
                    //     }
                    // }
                }
            },
            t.prototype.OnHtmlGameProgress = function (data) {
                if (app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress == undefined) {
                    app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress = data.show_progress
                }
                if (app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress == 0) {

                }
                else {
                    // this.HtmlGameProgressData = data
                    if (data.receivedGold > 0) {
                        // if (this.inSubGame == true) {
                        //     this.WebExternGame.openUIGoldReward(data)
                        //     // alert('Recompensas ' + app.GameConfigManager().GetCurrency + " " + data.receivedGold);

                        // }
                        // else {
                        //     app.GoldRewardManager().FormGoldReward({
                        //         gold: data.receivedGold,
                        //         type: 0//0金币 1ton
                        //     })
                        // }

                    }
                    if (this.inSubGame == true) {
                        this.WebExternGame.updataGameProgressView(data)
                        var gameTaskNode = document.getElementById("gameTaskNode");
                        gameTaskNode.style.display = "block";
                    }
                    //  app.Client.OnEvent(s.GameEventDefine.HtmlGameProgress, data)
                }
            },
            t.prototype.hideGameProgressNode = function () {
                if (app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress == 0) {
                    return
                }
                this.WebExternGame.hideGameProgressNode()
                //  this.RequestHtmlGameProgressHall(0)
            },
            t.prototype.OnWebSocketGameProgress = function (data) {
                // if (app.GameConfigManager().GetGameConfig().show_progressHtmlGameProgress == 0) {
                //     return
                // }
                // if (this.inSubGame == true) {
                //     this.WebExternGame.updataGameProgressView(data)
                // }
            },
            t.prototype.setExternGameCacheLocalData2 = function (e, t) {
                // app.LocalDataManager().SetConfigObject("ExternGameCache2", {
                //     top: e,
                //     left: t
                // })
            }
            ,
            t
    }(i.Singleton);
n.ExternGameManager = h,
    module.exports = n
