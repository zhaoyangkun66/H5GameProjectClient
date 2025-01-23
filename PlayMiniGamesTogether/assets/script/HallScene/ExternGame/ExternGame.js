let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/TrackEventName")
    , i = require("../../common/GIDTool")
    , a = require("../../common/Orientation")
    , r = function () {
        function e() {
            this.isInit = false,
                this.isInitUIGoldReward = false,
                this.isLoaded = false,
                this.scoreEnd = false,
                this.gameUpInfo = null,
                this.disLeft = 0,
                this.disTop = 0
        }
        return e.prototype.init = function (e, t) {
            undefined === t && (t = true),
                this.gameUpInfo = e;
            var n = e.base_url ? e.base_url : e.url;
            cc.log("init " + n),
                cc.sys.isBrowser ? (this.scoreEnd = t,
                    this.initHtmlView(),
                    app.EventTrackManager().LogEvent(o.default.ENTER_GAME, {
                        gid: app.ExternGameManager().Track_gid
                    }),
                    this.showLoading(e),
                    this.show(n)) : cc.error("ExternGame init failed: " + n)
        },
            e.prototype.initHtmlView = function () {
                this.isInit || (this.isInit = true,
                    this.initWebIframe(),
                    this.initLoadingIframe(),
                    this.initBtn(),
                    this.initTips(),
                    window.addEventListener("message", this.OnMessage.bind(this), false))
            },
            e.prototype.OnMessage = function (e) {
                cc.log("ExternGame::OnMessage");
                try {
                    var t = e.data;
                    if (t && "globalGames" == t.type)
                        this.hideAll();
                    else if (this.gameUpInfo && this.gameUpInfo.gid == i.GIDTool.PINGBO) {
                        var n = this.gameUpInfo.cross_domain_url;
                        if (!n)
                            return void cc.error("Invalid gameUpInfo cross_domain_url");
                        if (e.origin && e.origin.toLowerCase().endsWith(n))
                            switch (t.action) {
                                case "OPEN_WINDOW":
                                    window.open(t.url)
                            }
                    }
                } catch (o) {
                    cc.log(o.message)
                }
            },
            e.prototype.initWebIframe = function () {
                var e = this
                    , t = document.createElement("iframe");
                t.id = "Game",
                    t.draggable = false,
                    document.body.appendChild(t),
                    t.style.position = "absolute",
                    t.style.width = "100%",
                    t.style.height = "100%",
                    t.style.display = "none",
                    t.style.border = "none",
                    t.style.backgroundColor = "#FFFFFF",
                    t.onload = function () {
                        cc.log("ExternGame url loaded"),
                            e.isLoaded = true,
                            e.hideLoading()
                    }
                    ,
                    t.onerror = function () {
                        cc.error("ExternGame iframe show error.")
                    }
            }
            ,
            e.prototype.initLoadingIframe = function () {
                var e = document.createElement("iframe");
                e.id = "extern_loading",
                    document.body.appendChild(e),
                    e.draggable = false,
                    e.style.position = "absolute",
                    e.style.width = "100%",
                    e.style.height = "100%",
                    e.style.display = "none",
                    e.style.border = "none",
                    e.style.backgroundColor = "transparent"
            }
            ,
            e.prototype.UpdateUserInfo = function () {
            }
            ,
            e.prototype.initBtn = function () {
                //document.body.style.transform = "rotate(-90deg)"
                var e = document.createElement("button");
                e.id = "BtnBack",
                    e.draggable = true,
                    e.style.display = "none",
                    e.style.position = "absolute";
                var t = cc.sys.platform == cc.sys.DESKTOP_BROWSER ? "90px" : "40px";
                e.style.width = t,
                    e.style.height = t,
                    e.style.left = "60px",
                    e.style.top = "30px",
                    e.style.border = "none",
                    e.style.backgroundColor = "transparent",
                    e.addEventListener("click", this.showTips.bind(this)),
                    e.addEventListener("dragstart", this.dragstart.bind(this)),
                    e.addEventListener("dragend", this.dragend.bind(this)),
                    e.addEventListener("touchmove", this.touchmove.bind(this)),
                    e.addEventListener("touchstart", this.touchstart.bind(this)),
                    document.body.appendChild(e);
                var n = document.createElement("img");
                n.id = "return_btn2",
                    n.style.position = "absolute",
                    n.style.width = "100%",
                    n.style.height = "100%",
                    n.style.left = "0px",
                    n.style.top = "0px",
                    e.appendChild(n)
                this.initGameProgressBtn()
            },
            e.prototype.touchstart = function (e) {
                var t = e.touches[0];
                this.setDisFun(t.clientX, t.clientY)
                //e.preventDefault();
            }
            ,
            e.prototype.touchmove = function (e) {
                var t = e.touches[0]
                    , n = t.clientX - this.disLeft
                    , o = t.clientY - this.disTop;
                this.onBtnEndFun(o, n)
                e.preventDefault();
            }
            ,
            e.prototype.dragstart = function (e) {
                this.setDisFun(e.clientX, e.clientY)
            }
            ,
            e.prototype.dragend = function (e) {
                var t = e.clientX - this.disLeft
                    , n = e.clientY - this.disTop;
                this.onBtnEndFun(n, t)
            }
            ,
            e.prototype.setDisFun = function (e, t) {
                var n = document.getElementById("BtnBack");
                this.disLeft = e - n.offsetLeft,
                    this.disTop = t - n.offsetTop
            }
            ,
            e.prototype.onBtnEndFun = function (e, t) {
                var n = document.getElementById("BtnBack");
                e < 0 ? e = 0 : e > document.body.clientHeight - n.offsetHeight && (e = document.body.clientHeight - n.offsetHeight),
                    t < 0 ? t = 0 : t > document.body.clientWidth - n.offsetWidth && (t = document.body.clientWidth - n.offsetWidth),
                    n.style.left = t + "px",
                    n.style.top = e + "px",
                    app.ExternGameManager().setExternGameCacheLocalData(e, t)
            }
            ,
            e.prototype.initTips = function () {

                var e = document.createElement("div");
                e.id = "TIP",
                    e.style.position = "absolute",
                    e.style.width = "100%",
                    e.style.height = "100%",
                    e.style.display = "none",
                    document.body.appendChild(e);
                var t = document.createElement("div");
                t.id = "layer",
                    t.style.position = "absolute",
                    t.style.width = "331.7px",
                    t.style.height = "198.7px",
                    t.style.left = "50%",
                    t.style.top = "50%",
                    t.style.transform = "translate(-50%,-50%)",
                    t.style.display = "flex",
                    t.style.flexDirection = "column",
                    e.appendChild(t);
                var n = document.createElement("img");
                n.id = "bg",
                    n.src = "externGame/bg_layer.png",
                    n.style.position = "absolute",
                    n.style.width = "100%",
                    n.style.height = "100%",
                    n.style.top = "0px",
                    n.style.left = "0px",
                    t.appendChild(n);
                var o = document.createElement("div");
                o.id = "tit",
                    this.getInputTxt(o, "UI.Tips"),
                    o.style.position = "absolute",
                    o.style.left = "50%",
                    o.style.top = "10%",
                    o.style.transform = "translate(-50%,-50%)",
                    o.style.color = "#E1E1E1",
                    o.style.fontSize = "20px",
                    o.style.fontWeight = "bold"
                t.appendChild(o);
                var i = document.createElement("div");
                i.id = "text_tips",
                    this.getInputTxt(i, "UI_ExternGame"),
                    i.style.position = "absolute",
                    i.style.top = "35%",
                    i.style.color = "#2B2B2B",
                    i.style.fontSize = "18px",
                    i.style.maxWidth = "300px",
                    i.style.alignSelf = "center",
                    i.style.wordBreak = "break-word",
                    i.style.textAlign = "center",
                    t.appendChild(i);
                var a = document.createElement("button");
                a.id = "btn_enter",
                    a.style.position = "absolute",
                    a.style.width = "40%",
                    a.style.height = "20%",
                    a.style.left = "5%",
                    a.style.top = "70%",
                    a.style.border = "none",
                    a.style.backgroundColor = "transparent",
                    a.addEventListener("click", this.hideAll.bind(this)),
                    t.appendChild(a);
                var r = document.createElement("img");
                r.id = "btnOkBg",
                    r.src = "externGame/btn_bg.png",
                    r.style.position = "absolute",
                    r.style.width = "100%",
                    r.style.height = "100%",
                    r.style.left = "0px",
                    r.style.top = "0px",
                    a.appendChild(r);
                var s = document.createElement("div");
                s.id = "btnOk_txt",
                    this.getInputTxt(s, "General.General_1"),
                    s.style.position = "absolute",
                    s.style.top = "50%",
                    s.style.left = "50%",
                    s.style.transform = "translate(-50%,-50%)",
                    s.style.fontSize = "18px",
                    s.style.color = "#2B2B2B",
                    a.appendChild(s);
                var c = document.createElement("button");
                c.id = "btn_enter Cancel",
                    c.style.position = "absolute",
                    c.style.width = "40%",
                    c.style.height = "20%",
                    c.style.left = "55%",
                    c.style.top = "70%",
                    c.style.border = "none",
                    c.style.backgroundColor = "transparent",
                    c.addEventListener("click", this.hideTips.bind(this)),
                    t.appendChild(c);
                var l = document.createElement("img");
                l.id = "btnCancelBg",
                    l.src = "externGame/btn_bg2.png",
                    l.style.position = "absolute",
                    l.style.width = "100%",
                    l.style.height = "100%",
                    l.style.left = "0px",
                    l.style.top = "0px",
                    c.appendChild(l);
                var p = document.createElement("div");
                p.id = "btnCancel_txt",
                    this.getInputTxt(p, "General.General_2"),
                    p.style.position = "absolute",
                    p.style.left = "50%",
                    p.style.top = "50%",
                    p.style.transform = "translate(-50%,-50%)",
                    p.style.fontSize = "18px",
                    p.style.color = "#FFFFFF",
                    c.appendChild(p)
            },
            e.prototype.initGameProgressBtn = function () {
                //document.body.style.transform = "rotate(-90deg)"
                var gameTaskNode = document.createElement("button");
                gameTaskNode.id = "gameTaskNode"
                gameTaskNode.style.position = "absolute"
                gameTaskNode.style.width = "301px"
                gameTaskNode.style.height = "127px"
                gameTaskNode.style.transform = "translate(-50%,-50%)"
                //  gameTaskNode.style.right = "150px"
                //   gameTaskNode.style.top = "150px"
                gameTaskNode.style.border = "none"
                gameTaskNode.style.backgroundColor = "transparent"
                // gameTaskNode.style.overflow= "hidden"
                document.body.appendChild(gameTaskNode);

                var fc01 = document.createElement("div");
                fc01.id = "fc01"
                fc01.style.position = "absolute"
                fc01.style.width = "301px"
                fc01.style.height = "127px"
                fc01.style.left = "50%"
                fc01.style.top = "50%"
                fc01.style.transform = "translate(-50%,-50%)"
                fc01.style.backgroundImage = "url(externGame/fc01.png)";
                gameTaskNode.appendChild(fc01);

                var desLabel = document.createElement("div");
                desLabel.id = "desLabel"
                desLabel.innerHTML = "Play for 60 seconds"
                desLabel.style.position = "absolute"
                desLabel.style.width = "130px"
                desLabel.style.height = "45.2px"
                desLabel.style.top = "33.75px"
                desLabel.style.left = "47.31px"
                desLabel.style.fontSize = "20px"
                desLabel.style.color = "#993200"
                desLabel.style.fontWeight = "bold"
                desLabel.style.wordWrap = "break-word"
                fc01.appendChild(desLabel);
                fc01.style.display = "none"

                var fc02 = document.createElement("div");
                fc02.id = "fc02"
                fc02.style.position = "absolute"
                fc02.style.width = "301px"
                fc02.style.height = "127px"
                fc02.style.left = "50%"
                fc02.style.top = "50%"
                fc02.style.transform = "translate(-50%,-50%)"
                fc02.style.backgroundImage = "url(externGame/fc02.png)";
                gameTaskNode.appendChild(fc02);

                var goldLabel = document.createElement("div");
                goldLabel.id = "goldLabel"
                goldLabel.innerHTML = "+100"
                goldLabel.style.position = "absolute"
                goldLabel.style.width = "130px"
                goldLabel.style.height = "50.4px"
                goldLabel.style.top = "27.41px"
                goldLabel.style.left = "51.79px"
                goldLabel.style.fontSize = "40px"
                goldLabel.style.lineHeight = "50.4px"
                goldLabel.style.color = "#993200"
                goldLabel.style.fontWeight = "bold"
                fc02.appendChild(goldLabel);
                //  fc02.style.display = "none"

                var fcjt = document.createElement("img");
                fcjt.src = "externGame/fcjt.png"
                fcjt.style.position = "absolute"
                fcjt.style.width = "76px"
                fcjt.style.height = "84px"
                fcjt.style.left = "115.00px"
                fcjt.style.top = "-68.66px"
                fc02.appendChild(fcjt);

                var progressBarBG = document.createElement("div");
                progressBarBG.style.position = "absolute"
                progressBarBG.style.width = "193px"
                progressBarBG.style.height = "11px"
                progressBarBG.style.left = "52.52px"
                progressBarBG.style.top = "85.09px"
                progressBarBG.style.backgroundImage = "url(externGame/progressBarBG.png)";
                gameTaskNode.appendChild(progressBarBG);
                var progressBar = document.createElement("div");
                progressBar.id = "progressBar"
                progressBar.style.position = "absolute"
                progressBar.style.width = "213px"
                progressBar.style.height = "31px"
                progressBar.style.left = "42.52px"
                progressBar.style.top = "75.09px"
                // bar.style.transform = "translate(-50%,-50%)"
                progressBar.style.backgroundImage = "url(externGame/progressBar.png)";
                gameTaskNode.appendChild(progressBar);
                var imgjb = document.createElement("img");
                imgjb.src = "externGame/jb.png"
                imgjb.style.position = "absolute"
                imgjb.style.width = "88px"
                imgjb.style.height = "89px"
                imgjb.style.left = "177.11px"
                imgjb.style.top = "-8.03px"
                gameTaskNode.appendChild(imgjb);
                gameTaskNode.draggable = true
                gameTaskNode.addEventListener("click", this.showProgressView.bind(this))
                gameTaskNode.addEventListener("dragstart", this.dragstartProgressNode.bind(this))
                gameTaskNode.addEventListener("dragend", this.dragendProgressNode.bind(this))
                gameTaskNode.addEventListener("touchmove", this.touchmoveProgressNode.bind(this))
                gameTaskNode.addEventListener("touchstart", this.touchstartProgressNode.bind(this))
                gameTaskNode.style.display = "none";
                this.initGameProgressView()
                if (CC_BUILD) {
                    window.AdControllerAdsgram = window.Adsgram.init({ blockId: "4254" })
                    window.addEventListener("message", function (e) {
                        var ADType = e.data.ADType;
                        if (ADType == 1) {
                            AdControllerAdsgram.show().then((result) => {
                                if (result.done == true) {
                                    app.ExternGameManager().RequestWatchAdsInSubGames();
                                }
                                var iframecont = document.getElementById("Game").contentWindow;
                                iframecont.postMessage({ ADType: ADType, resultDone: result.done }, '*');
                            }).catch((result) => {

                            })
                        }
                    });
                }
            },
            e.prototype.showProgressView = function () {
                if (this.gameProgressdata.progress >= 1) {
                    app.ExternGameManager().RequestHtmlGameProgress(1, this.gameProgressdata.missionType);
                }
                else if (this.gameProgressdata.missionType == 1) {
                    if (CC_BUILD) {
                        AdControllerAdsgram.show().then((result) => {
                            let result2 = result
                            if (result.done == true) {
                                app.ExternGameManager().RequestHtmlGameProgress(2, 1);
                            }
                        }).catch((result) => {

                            // user get error during playing ad or skip ad
                            // do nothing or whatever you want
                        })
                        // adBreak({
                        //     type: 'reward',
                        //     name: 'one_more_chance',
                        //     beforeAd: () => {

                        //     },
                        //     afterAd: () => {

                        //     },
                        //     beforeReward: (showAdFn) => {
                        //         // const r = confirm('Watch this video to get one more chance?');
                        //         //if (r) {
                        //         showAdFn();
                        //         //} else {
                        //         // alert('You need to restart the game');
                        //         // this.shouldRestart = true;
                        //         //}
                        //     },
                        //     adDismissed: () => {
                        //         //this.shouldRestart = true;
                        //     },
                        //     adViewed: () => {
                        //         app.ExternGameManager().RequestHtmlGameProgress(2, 1);
                        //         /*
                        //          * This is normally the place where a reward is given, but
                        //          * in this specific instance, action is done in "adDismissed".
                        //          */
                        //     }
                        // });
                    }
                    else {
                        app.ExternGameManager().RequestHtmlGameProgress(2, 1);
                    }

                }
            },
            e.prototype.getGameProgressReward = function () {
                if (this.gameProgressdata && this.gameProgressdata.receiveGold > 0) {
                    app.ExternGameManager().RequestHtmlGameProgress(1, this.gameProgressdata.missionType);
                }
            },
            e.prototype.touchstartProgressNode = function (e) {
                var t = e.touches[0];
                this.setDisFunProgressNode(t.clientX, t.clientY)
                //e.preventDefault();
            }
            ,
            e.prototype.touchmoveProgressNode = function (e) {
                var t = e.touches[0]
                    , n = t.clientX - this.disLeft
                    , o = t.clientY - this.disTop;
                this.onBtnEndFunProgressNode(o, n)
                e.preventDefault();
            }
            ,
            e.prototype.dragstartProgressNode = function (e) {
                this.setDisFunProgressNode(e.clientX, e.clientY)
            }
            ,
            e.prototype.dragendProgressNode = function (e) {
                var t = e.clientX - this.disLeft
                    , n = e.clientY - this.disTop;
                this.onBtnEndFunProgressNode(n, t)
            }
            ,
            e.prototype.setDisFunProgressNode = function (e, t) {
                var n = document.getElementById("gameTaskNode");
                this.disLeft = e - n.offsetLeft,
                    this.disTop = t - n.offsetTop
            }
            ,
            e.prototype.onBtnEndFunProgressNode = function (e, t) {
                var n = document.getElementById("gameTaskNode");
                e < this.gameProgressNodeHeight ? e = this.gameProgressNodeHeight : e > document.body.clientHeight - this.gameProgressNodeHeight && (e = document.body.clientHeight - this.gameProgressNodeHeight)
                t < this.gameProgressNodeWidth ? t = this.gameProgressNodeWidth : t > document.body.clientWidth - this.gameProgressNodeWidth && (t = document.body.clientWidth - this.gameProgressNodeWidth)
                n.style.left = t + "px"
                n.style.top = e + "px"
                app.ExternGameManager().setExternGameCacheLocalData2(e, t)
            },
            e.prototype.initGameProgressView = function () {
                this.gameProgressNodeWidth = 150.5
                this.gameProgressNodeHeight = 63.5
                if (cc.sys.platform != cc.sys.DESKTOP_BROWSER) {
                    let designWidth = 750;//设计稿的宽度，根据实际项目调整
                    let designHeight = 1334;//设计稿的高度，根据实际项目调整
                    let scale = document.documentElement.clientWidth / document.documentElement.clientHeight < designWidth / designHeight ?
                        (document.documentElement.clientWidth / designWidth) :
                        (document.documentElement.clientHeight / designHeight);
                    if (scale <= 1) {
                        document.getElementById("gameTaskNode").style.transform = `translate(-50%,-50%) scale(${scale})`
                        this.gameProgressNodeWidth *= scale
                        this.gameProgressNodeHeight *= scale
                    }
                }
                document.getElementById("gameTaskNode").style.left = (document.body.clientWidth - this.gameProgressNodeWidth) + "px"
                document.getElementById("gameTaskNode").style.top = (document.body.clientHeight - this.gameProgressNodeHeight) + "px"
            },
            e.prototype.updataGameProgressView = function (data) {
                this.gameProgressdata = data
                //  data.betGold2 = data.betGold % data.needBetGold

                let progressValue = data.completeNumber / data.needNumber
                this.gameProgressdata.progress = progressValue
                if (progressValue >= 1) {
                    document.getElementById("fc01").style.display = "none"
                    document.getElementById("fc02").style.display = "block"
                    document.getElementById("goldLabel").innerHTML = "+" + data.receiveGold
                }
                else {
                    document.getElementById("fc01").style.display = "block"
                    document.getElementById("fc02").style.display = "none"
                    document.getElementById("desLabel").innerHTML = data.title//"Play for 60 seconds"
                }

                if (progressValue > 1) {
                    progressValue = 1
                }
                else if (progressValue < 0) {
                    progressValue = 0
                }
                progressValue = progressValue * 100
                document.getElementById("progressBar").style.clipPath = "polygon(0 0,0 100%," + progressValue + "% 100%," + progressValue + "% 0)"
                if (data.completeNumber / data.needNumber >= 1) {

                }
                else {
                    if (data.missionType == 2) {
                        let self = this
                        clearInterval(self.createTimerPlayGame)
                        self.gameProgressdata.completeNumberEnd = self.gameProgressdata.completeNumber + 60
                        self.createTimerPlayGame = setInterval(function () {
                            self.gameProgressdata.completeNumber += 1
                            let progressValue = self.gameProgressdata.completeNumber / self.gameProgressdata.needNumber
                            if (progressValue > 1) {
                                progressValue = 1
                            }
                            else if (progressValue < 0) {
                                progressValue = 0
                            }
                            progressValue = progressValue * 100
                            document.getElementById("progressBar").style.clipPath = "polygon(0 0,0 100%," + progressValue + "% 100%," + progressValue + "% 0)"
                            if (self.gameProgressdata.completeNumber >= self.gameProgressdata.needNumber || self.gameProgressdata.completeNumber >= self.gameProgressdata.completeNumberEnd) {
                                clearInterval(self.createTimerPlayGame)
                                app.ExternGameManager().RequestHtmlGameProgress(2, 2);
                            }
                        }, 1000)
                    }
                }
            },
            e.prototype.initUIGoldReward = function () {
                var UIGoldReward = document.createElement("div");
                UIGoldReward.id = "UIGoldReward"
                UIGoldReward.style.position = "absolute"
                UIGoldReward.style.width = "100%"
                UIGoldReward.style.height = "100%"
                UIGoldReward.style.backgroundColor = "rgba(0, 0, 0, 0.78)"
                // e.style.display = "none",
                document.body.appendChild(UIGoldReward);
                var BGGoldReward = document.createElement("div");
                BGGoldReward.id = "BGGoldReward"
                BGGoldReward.style.position = "absolute"
                BGGoldReward.style.width = "662px"
                BGGoldReward.style.height = "533px"
                BGGoldReward.style.left = "50%"
                BGGoldReward.style.top = "50%"
                BGGoldReward.style.transform = "translate(-50%,-50%)"
                BGGoldReward.style.display = "flex"
                BGGoldReward.style.flexDirection = "column"
                BGGoldReward.style.backgroundImage = "url(externGame/RewardsBG.png)"

                UIGoldReward.appendChild(BGGoldReward)
                var Rewardtext = document.createElement("div");
                Rewardtext.id = "Rewardtext"
                Rewardtext.innerHTML = "Congratulations on receiving a reward of <span style=\"color: #FF4D00;\">500 coin.</span>"
                Rewardtext.style.position = "absolute"
                Rewardtext.style.left = "50%"
                Rewardtext.style.top = "247.81px"
                Rewardtext.style.transform = "translate(-50%,0%)"
                Rewardtext.style.color = "#7C7C7C"
                Rewardtext.style.fontSize = "28px"
                Rewardtext.style.lineHeight = "52px"
                Rewardtext.style.width = "430px"
                Rewardtext.style.textAlign = "center"
                Rewardtext.style.height = "117.52px"
                BGGoldReward.appendChild(Rewardtext)

                UIGoldReward.addEventListener("click", this.hideUIGoldReward.bind(this))
                if (cc.sys.platform != cc.sys.DESKTOP_BROWSER) {
                    let designWidth = 750;//设计稿的宽度，根据实际项目调整
                    let designHeight = 1334;//设计稿的高度，根据实际项目调整
                    let scale = document.documentElement.clientWidth / document.documentElement.clientHeight < designWidth / designHeight ?
                        (document.documentElement.clientWidth / designWidth) :
                        (document.documentElement.clientHeight / designHeight);
                    // scale *= 1.5
                    if (scale <= 1) {
                        document.getElementById("BGGoldReward").style.transform = `translate(-50%,-50%) scale(${scale})`
                    }
                }
            },
            e.prototype.openUIGoldReward = function (data) {
                if (!this.isInitUIGoldReward) {
                    this.isInitUIGoldReward = true
                    this.initUIGoldReward()
                }
                document.getElementById("UIGoldReward").style.display = "block"
                document.getElementById("Rewardtext").innerHTML = app.i18n.t("UI_PlayMiniGamesTogether_UIGoldRewardHtml1").replace("{st_gold}", "<span style=\"color: #FF4D00;\">" + data.receivedGold)
                //  app.UserManager().UserInfo.gold = data.balancegold
                // app.Client.OnEvent(GameEventDefine.GameEventDefine.COMPANY_PAYMENT, { amount: 0, send_gold: data.receivedGold })
                // app.Client.OnEvent(GameEventDefine.GameEventDefine.UPDATE_GAME_GOLD)
            },
            e.prototype.hideUIGoldReward = function () {
                document.getElementById("UIGoldReward").style.display = "none"
            },
            e.prototype.onRefreshLabel = function () {
                var e = document.getElementById("tit");
                this.getInputTxt(e, "UI.Tips");
                var t = document.getElementById("text_tips");
                this.getInputTxt(t, "UI_ExternGame");
                var n = document.getElementById("btnOk_txt");
                this.getInputTxt(n, "General.General_1");
                var o = document.getElementById("btnCancel_txt");
                this.getInputTxt(o, "General.General_2")
            }
            ,
            e.prototype.getInputTxt = function (e, t) {
                e.innerHTML = app.i18n.t(t)
            }
            ,
            e.prototype.show = function (e) {
                try {
                    var t = document.getElementById("Game");
                    t.style.display = "block",
                        t.src = e
                } catch (n) {
                    cc.error("show url", n.message)
                }
            }
            ,
            e.prototype.showLoading = function (gameupData) {
                var e = document.getElementById("extern_loading");
                e.style.display = "block",
                    e.src = "externGame/index.html",
                    this.setBackBtnInfo(gameupData)
            }
            ,
            e.prototype.setBackBtnInfo = function (gameupData) {
                try {
                    var e = app.ExternGameManager().GetBackIconInfo(this.gameUpInfo.gid);
                    document.getElementById("return_btn2").src = e.url ? e.url : "externGame/return_btn.png";
                    var t = document.getElementById("BtnBack");
                    t.style.display = "block";
                    var n = e.position;
                    t.style.left = n.left >= 0 ? n.left + "px" : "60px",
                        t.style.top = n.top >= 0 ? n.top + "px" : "30px"
                } catch (o) {
                    cc.error("show url", o.message)
                }
                //if (gameupData.show_progress == 1) {
                app.ExternGameManager().RequestHtmlGameProgress(0, 0);
                // }
            }
            ,
            e.prototype.showTips = function () {
                this.onRefreshLabel(),
                    document.getElementById("TIP").style.display = "block"
            }
            ,
            e.prototype.hideLoading = function () {
                document.getElementById("extern_loading").style.display = "none"
            }
            ,
            e.prototype.hideTips = function () {
                document.getElementById("TIP").style.display = "none"
            }
            ,
            e.prototype.hideGameProgressView = function () {

            }
            ,
            e.prototype.hideAll = function () {
                this.scoreEnd && (this.gameUpInfo.is_experience_server || app.ExternGameManager().RequestGameDown(true),
                    app.ExternGameManager().RequestGameDown2(this.gameUpInfo.sub_gid),
                    isgoServer && app.UserManager().RequstUserWallet(),
                    app.HallManager().GetFreeOutGameWindow()),
                    this.gameUpInfo = null,
                    this.isLoaded = false;
                var e = document.getElementById("Game");
                e.src = "about:blank",
                    e.style.display = "none",
                    document.getElementById("BtnBack").style.display = "none",
                    this.hideGameProgressNode(),
                    this.hideTips(),
                    this.hideLoading(),
                    app.ComTool().CheckPlatform() || a.default.setOrientation(cc.find("Canvas").getComponent(cc.Canvas), "V")
            }
            ,
            e.prototype.hideGameProgressNode = function () {
                document.getElementById("gameTaskNode").style.display = "none"
                app.ExternGameManager().inSubGame = false
                clearInterval(this.createTimerPlayGame)
            }
            ,
            e
    }();
n.default = r,
    module.exports = n