let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/TrackEventName")
    , i = require("../../common/GIDTool")
    , a = require("../../common/Orientation")
    , GameEventDefine = require("../Define/GameEventDefine")
    , r = function () {
        function e() {
            this.isInit = false,
                this.isInitUIGoldReward = false,
                this.isLoaded = false,
                this.scoreEnd = false,
                this.gameUpInfo = null,
                this.timer = 0,
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
                    this.initCashLabel(),
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
                            e.hideLoading(),
                            e.timer && clearTimeout(e.timer),
                            e.timer = window.setTimeout(function () {
                                e.renderCashLabel()
                            }, 100)
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
                this.isLoaded && this.renderCashLabel()
            }
            ,
            e.prototype.renderCashLabel = function () {
                this.gameUpInfo && this.gameUpInfo.gid == i.GIDTool.PINGBO ? (document.getElementById("id_label_cash").innerHTML = "R$&nbsp;&nbsp;" + app.ExternGameManager().UserCash,
                    this.SetCashLabelVisible(true)) : this.SetCashLabelVisible(false)
            }
            ,
            e.prototype.SetCashLabelVisible = function (e) {
                document.getElementById("id_cash_root").style.display = e ? "" : "none"
            }
            ,
            e.prototype.initCashLabel = function () {
                var e = document.createElement("div");
                e.id = "id_cash_root",
                    e.style.width = "100px",
                    e.style.height = "100px",
                    e.style.position = "absolute",
                    e.style.right = "60px",
                    e.style.top = "0px",
                    e.style.backgroundColor = "transparent",
                    document.body.appendChild(e);
                var t = document.createElement("div");
                t.id = "id_label_cash",
                    t.style.position = "absolute",
                    t.style.right = "20px",
                    t.style.top = "11px",
                    t.style.color = "white",
                    t.style.fontSize = "20px",
                    e.appendChild(t),
                    this.SetCashLabelVisible(false)
            }
            ,
            e.prototype.initBtn = function () {
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
            }
            ,
            e.prototype.touchmove = function (e) {
                var t = e.touches[0]
                    , n = t.clientX - this.disLeft
                    , o = t.clientY - this.disTop;
                this.onBtnEndFun(o, n)
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
                    o.style.color = "#FFE536",
                    o.style.fontSize = "20px",
                    t.appendChild(o);
                var i = document.createElement("div");
                i.id = "text_tips",
                    this.getInputTxt(i, "UI_ExternGame"),
                    i.style.position = "absolute",
                    i.style.top = "30%",
                    i.style.color = "#ffffff",
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
                    s.style.color = "#FFFB95",
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
                    p.style.color = "#FFDADA",
                    c.appendChild(p)
            },
            e.prototype.initGameProgressBtn = function () {
                {
                    var gameProgressNode = document.createElement("button");
                    gameProgressNode.id = "gameProgressNode"
                    gameProgressNode.style.position = "absolute"
                    gameProgressNode.style.width = "150px"
                    gameProgressNode.style.height = "150px"
                    gameProgressNode.style.transform = "translate(-50%,-50%)"
                    // gameProgressNode.style.right = "85px"
                    // gameProgressNode.style.top = "85px"
                    gameProgressNode.style.border = "none"
                    gameProgressNode.style.backgroundColor = "transparent"
                    document.body.appendChild(gameProgressNode);
                    var progressBar = document.createElement("div");
                    progressBar.style.position = "absolute"
                    progressBar.style.width = "150px"
                    progressBar.style.height = "150px"
                    progressBar.style.left = "50%"
                    progressBar.style.top = "50%"
                    progressBar.style.transform = "translate(-50%,-50%)"
                    progressBar.style.backgroundImage = "url(externGame/xfq01.png)";
                    gameProgressNode.appendChild(progressBar);
                    var bar = document.createElement("div");
                    bar.id = "progressBar"
                    bar.style.position = "absolute"
                    bar.style.width = "150px"
                    bar.style.height = "150px"
                    bar.style.left = "50%"
                    bar.style.top = "50%"
                    bar.style.transform = "translate(-50%,-50%)"
                    bar.style.backgroundImage = "url(externGame/xfq02.png)";
                    progressBar.appendChild(bar);
                    var progressBarLabel = document.createElement("div");
                    progressBarLabel.id = "progressBarLabel"
                    progressBarLabel.innerHTML = "0.1/20"
                    progressBarLabel.style.position = "absolute"
                    progressBarLabel.style.top = "50%"
                    progressBarLabel.style.left = "50%"
                    progressBarLabel.style.transform = "translate(-50%,-50%)"
                    progressBarLabel.style.fontSize = "20px"
                    progressBarLabel.style.lineHeight = "20px"
                    progressBarLabel.style.color = "#FFFFFF"
                    progressBarLabel.style.whiteSpace = "nowrap"
                    progressBar.appendChild(progressBarLabel);
                    var imgGet = document.createElement("img");
                    imgGet.id = "GTH"
                    imgGet.src = "externGame/GTH.png"
                    imgGet.style.position = "absolute"
                    imgGet.style.width = "51px"
                    imgGet.style.height = "52px"
                    imgGet.style.left = "-4.05px"
                    imgGet.style.top = "-10.63px"
                    progressBar.appendChild(imgGet);

                    var btnGet = document.createElement("button");
                    btnGet.style.position = "absolute"
                    btnGet.style.width = "150px"
                    btnGet.style.height = "56px"
                    btnGet.style.left = "-2.50px"
                    btnGet.style.top = "125.98px"
                    gameProgressNode.appendChild(btnGet);

                    var btnGetimg = document.createElement("img");
                    btnGetimg.id = "btnGetimg"
                    btnGetimg.src = "externGame/anniu-gl.png"
                    btnGetimg.style.position = "absolute"
                    btnGetimg.style.width = "100%"
                    btnGetimg.style.height = "100%"
                    btnGetimg.style.left = "0px"
                    btnGetimg.style.top = "0px"
                    btnGet.appendChild(btnGetimg);

                    var btnGetLabel = document.createElement("div");
                    btnGetLabel.id = "btnGetLabel"
                    btnGetLabel.innerHTML = "R$ 10"
                    btnGetLabel.style.position = "absolute"
                    btnGetLabel.style.top = "50%"
                    btnGetLabel.style.left = "50%"
                    btnGetLabel.style.transform = "translate(-50%,-50%)"
                    btnGetLabel.style.fontSize = "32px"
                    btnGetLabel.style.lineHeight = "32px"
                    btnGetLabel.style.color = "#FFFFFF"
                    btnGetLabel.style.whiteSpace = "nowrap"
                    // btnGetLabel.style.webkitTextStroke = "2px #c72f00"
                    // btnGetLabel.style.textStroke = "2px #c72f00"
                    btnGetLabel.style.fontWeight = "bold"
                    btnGet.appendChild(btnGetLabel);

                    gameProgressNode.draggable = true
                    progressBar.addEventListener("click", this.showProgressView.bind(this))
                    gameProgressNode.addEventListener("dragstart", this.dragstartProgressNode.bind(this))
                    gameProgressNode.addEventListener("dragend", this.dragendProgressNode.bind(this))
                    gameProgressNode.addEventListener("touchmove", this.touchmoveProgressNode.bind(this))
                    gameProgressNode.addEventListener("touchstart", this.touchstartProgressNode.bind(this))

                    btnGet.style.border = "none"
                    btnGet.style.backgroundColor = "transparent"
                    btnGet.addEventListener("click", this.getGameProgressReward.bind(this))
                    gameProgressNode.style.display = "none";
                }
                this.initGameProgressView()
            },
            e.prototype.showProgressView = function () {
                document.getElementById("gameProgressView").style.display = "block"
            },
            e.prototype.getGameProgressReward = function () {
                if (this.gameProgressdata && this.gameProgressdata.receiveGold > 0) {
                    app.ExternGameManager().RequestHtmlGameProgress(1);
                }
            },
            e.prototype.touchstartProgressNode = function (e) {
                var t = e.touches[0];
                this.setDisFunProgressNode(t.clientX, t.clientY)
            }
            ,
            e.prototype.touchmoveProgressNode = function (e) {
                var t = e.touches[0]
                    , n = t.clientX - this.disLeft
                    , o = t.clientY - this.disTop;
                this.onBtnEndFunProgressNode(o, n)
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
                var n = document.getElementById("gameProgressNode");
                this.disLeft = e - n.offsetLeft,
                    this.disTop = t - n.offsetTop
            }
            ,
            e.prototype.onBtnEndFunProgressNode = function (e, t) {
                var n = document.getElementById("gameProgressNode");
                e < this.gameProgressNodeHeight ? e = this.gameProgressNodeHeight : e > document.body.clientHeight - this.gameProgressNodeHeight && (e = document.body.clientHeight - this.gameProgressNodeHeight)
                t < this.gameProgressNodeWidth ? t = this.gameProgressNodeWidth : t > document.body.clientWidth - this.gameProgressNodeWidth && (t = document.body.clientWidth - this.gameProgressNodeWidth)
                n.style.left = t + "px"
                n.style.top = e + "px"
                app.ExternGameManager().setExternGameCacheLocalData2(e, t)
            },
            e.prototype.initGameProgressView = function () {
                var gameProgressView = document.createElement("div");
                gameProgressView.id = "gameProgressView"
                gameProgressView.style.position = "absolute"
                gameProgressView.style.width = "100%"
                gameProgressView.style.height = "100%"
                gameProgressView.style.display = "none"
                gameProgressView.style.backgroundColor = "rgba(0, 0, 0, 0.78)"
                document.body.appendChild(gameProgressView);
                var BG = document.createElement("div");
                BG.id = "BGView"
                BG.style.position = "absolute"
                BG.style.width = "630px"
                BG.style.height = "452px"
                BG.style.left = "50%"
                BG.style.top = "50%"
                BG.style.transform = "translate(-50%,-50%)"
                BG.style.backgroundImage = "url(externGame/tcBG.png)"
                BG.style.display = "flex"
                BG.style.flexDirection = "column"

                gameProgressView.appendChild(BG);
                {
                    var o = document.createElement("div");
                    o.innerHTML = "BÔNUS DE APOSTAS"
                    o.style.position = "absolute"
                    o.style.left = "50%"
                    o.style.top = "36.16px"
                    o.style.transform = "translate(-50%,-0%)"
                    o.style.color = "#FFFFFF"
                    o.style.fontSize = "43px"
                    o.style.whiteSpace = "nowrap"
                    o.style.fontWeight = "bold"
                    BG.appendChild(o);
                }
                {
                    var o = document.createElement("div");
                    o.innerHTML = "Ganhe <span style=\"color: #F5CC06;\">R$1</span> a cada <span style=\"color: #F5CC06;\">R$20</span> apostados e contine acumulando."
                    o.style.position = "absolute"
                    o.style.left = "36.42px"
                    o.style.top = "162.89px"
                    o.style.color = "#FFFFFF"
                    o.style.fontSize = "34px"
                    o.style.width = "386.16px"
                    o.style.lineHeight = "50px"
                    o.style.textAlign = "left"
                    o.style.fontWeight = "bold"
                    BG.appendChild(o);
                }
                {
                    var o = document.createElement("div");
                    o.innerHTML = "*"
                    o.style.position = "absolute"
                    o.style.left = "26.96px"
                    o.style.top = "328.45px"
                    o.style.color = "#F5CC06"
                    o.style.fontSize = "24px"
                    o.style.lineHeight = "24px"
                    BG.appendChild(o);
                }
                {
                    var o = document.createElement("div");
                    o.innerHTML = "Os bônus podem ser retirados diretamente sem restrições."
                    o.style.position = "absolute"
                    o.style.left = "43.93px"
                    o.style.top = "323.55px"
                    o.style.color = "#9D9BB6"
                    o.style.fontSize = "24px"
                    o.style.lineHeight = "34px"
                    o.style.width = "350px"
                    o.style.textAlign = "left"
                    BG.appendChild(o);
                }
                {
                    var gameProgressNode = document.createElement("button");
                    gameProgressNode.id = "gameProgressNode"
                    gameProgressNode.style.position = "absolute"
                    gameProgressNode.style.width = "150px"
                    gameProgressNode.style.height = "200px"
                    gameProgressNode.style.left = "440.35px"
                    gameProgressNode.style.top = "188.33px"
                    gameProgressNode.style.border = "none"
                    gameProgressNode.style.backgroundColor = "transparent"
                    BG.appendChild(gameProgressNode);
                    var progressBar = document.createElement("div");
                    progressBar.style.position = "absolute"
                    progressBar.style.width = "150px"
                    progressBar.style.height = "150px"
                    progressBar.style.left = "50%"
                    progressBar.style.top = "50%"
                    progressBar.style.transform = "translate(-50%,-50%)"
                    progressBar.style.backgroundImage = "url(externGame/xfq01.png)";
                    gameProgressNode.appendChild(progressBar);
                    var bar = document.createElement("div");
                    bar.id = "progressBarView"
                    bar.style.position = "absolute"
                    bar.style.width = "150px"
                    bar.style.height = "150px"
                    bar.style.left = "50%"
                    bar.style.top = "50%"
                    bar.style.transform = "translate(-50%,-50%)"
                    bar.style.backgroundImage = "url(externGame/xfq02.png)";
                    progressBar.appendChild(bar);
                    var progressBarLabel = document.createElement("div");
                    progressBarLabel.id = "progressBarLabelView"
                    progressBarLabel.innerHTML = "0.1/20"
                    progressBarLabel.style.position = "absolute"
                    progressBarLabel.style.top = "50%"
                    progressBarLabel.style.left = "50%"
                    progressBarLabel.style.transform = "translate(-50%,-50%)"
                    progressBarLabel.style.fontSize = "20px"
                    progressBarLabel.style.lineHeight = "20px"
                    progressBarLabel.style.color = "#FFFFFF"
                    progressBarLabel.style.whiteSpace = "nowrap"
                    progressBar.appendChild(progressBarLabel);
                    var imgGet = document.createElement("img");
                    imgGet.id = "GTHView"
                    imgGet.src = "externGame/GTH.png"
                    imgGet.style.position = "absolute"
                    imgGet.style.width = "51px"
                    imgGet.style.height = "52px"
                    imgGet.style.left = "-4.05px"
                    imgGet.style.top = "-10.63px"
                    progressBar.appendChild(imgGet);

                    var btnGet = document.createElement("button");
                    //     btnGet.id = "btnGet"
                    btnGet.style.position = "absolute"
                    btnGet.style.width = "150px"
                    btnGet.style.height = "56px"
                    btnGet.style.left = "-2.50px"
                    btnGet.style.top = "150.98px"
                    // btnGet.style.backgroundImage = "url(externGame/anniu-gl.png)";
                    gameProgressNode.appendChild(btnGet);
                    var btnGetimg = document.createElement("img");
                    btnGetimg.id = "btnGetimgView"
                    btnGetimg.src = "externGame/anniu-gl.png"
                    btnGetimg.style.position = "absolute"
                    btnGetimg.style.width = "100%"
                    btnGetimg.style.height = "100%"
                    btnGetimg.style.left = "0px"
                    btnGetimg.style.top = "0px"
                    btnGet.appendChild(btnGetimg);
                    var btnGetLabel = document.createElement("div");
                    btnGetLabel.id = "btnGetLabelView"
                    btnGetLabel.innerHTML = "R$ 10"
                    btnGetLabel.style.position = "absolute"
                    btnGetLabel.style.top = "50%"
                    btnGetLabel.style.left = "50%"
                    btnGetLabel.style.transform = "translate(-50%,-50%)"
                    btnGetLabel.style.fontSize = "32px"
                    btnGetLabel.style.lineHeight = "32px"
                    btnGetLabel.style.color = "#FFFFFF"
                    btnGetLabel.style.whiteSpace = "nowrap"
                    // btnGetLabel.style.webkitTextStroke = "2px #c72f00"
                    //  btnGetLabel.style.textStroke = "2px #c72f00"
                    btnGetLabel.style.fontWeight = "bold"
                    btnGet.appendChild(btnGetLabel);

                    btnGet.style.border = "none"
                    btnGet.style.backgroundColor = "transparent"
                    btnGet.addEventListener("click", this.getGameProgressReward.bind(this))
                }
                var btn_close = document.createElement("button");
                btn_close.id = "btn_close"
                btn_close.style.position = "absolute"
                btn_close.style.width = "80px"
                btn_close.style.height = "80px"
                btn_close.style.left = "551.93px"
                btn_close.style.top = "2.89px"
                btn_close.style.border = "none"
                btn_close.style.backgroundColor = "transparent"
                btn_close.addEventListener("click", this.hideGameProgressView.bind(this))
                BG.appendChild(btn_close);
                var btn_closeBg = document.createElement("img");
                //  btn_closeBg.id = "btn_closeBg"
                btn_closeBg.src = "externGame/X.png"
                btn_closeBg.style.position = "absolute"
                btn_closeBg.style.width = "100%"
                btn_closeBg.style.height = "100%"
                btn_closeBg.style.left = "0px"
                btn_closeBg.style.top = "0px"
                btn_close.appendChild(btn_closeBg);
                var dianji = document.createElement("img");
                dianji.src = "externGame/dianji.png"
                dianji.style.position = "absolute"
                dianji.style.width = "72px"
                dianji.style.height = "88px"
                dianji.style.left = "549.98px"
                dianji.style.top = "363.61px"
                BG.appendChild(dianji);
                this.gameProgressNodeWidth = 85
                this.gameProgressNodeHeight = 85
                if (cc.sys.platform != cc.sys.DESKTOP_BROWSER) {
                    let designWidth = 750;//设计稿的宽度，根据实际项目调整
                    let designHeight = 1334;//设计稿的高度，根据实际项目调整
                    let scale = document.documentElement.clientWidth / document.documentElement.clientHeight < designWidth / designHeight ?
                        (document.documentElement.clientWidth / designWidth) :
                        (document.documentElement.clientHeight / designHeight);
                    if (scale <= 1) {
                        document.getElementById("BGView").style.transform = `translate(-50%,-50%) scale(${scale})`
                        document.getElementById("gameProgressNode").style.transform = `translate(-50%,-50%) scale(${scale})`
                        this.gameProgressNodeWidth *= scale
                        this.gameProgressNodeHeight *= scale
                    }
                }
                document.getElementById("gameProgressNode").style.left = (document.body.clientWidth - this.gameProgressNodeWidth) + "px"
                document.getElementById("gameProgressNode").style.top = (this.gameProgressNodeHeight) + "px"
            },
            e.prototype.updataGameProgressView = function (data) {
                this.gameProgressdata = data
                data.betGold2 = data.betGold % data.needBetGold
                document.getElementById("progressBarLabel").innerHTML = data.betGold2.toFixed(2) + "/" + data.needBetGold
                document.getElementById("progressBarLabelView").innerHTML = data.betGold2.toFixed(2) + "/" + data.needBetGold
                if (data.betGold >= data.needBetGold) {//data.receiveGold > 0 暂时
                    document.getElementById("GTH").style.display = "block"
                    document.getElementById("btnGetimg").src = "externGame/anniu-gl.png"
                    document.getElementById("btnGetLabel").innerHTML = app.GameConfigManager().GetCurrency + " " + data.receiveGold
                    document.getElementById("btnGetLabel").style.textShadow = "-2px -2px 0 #c72f00,2px -2px 0 #c72f00,-2px 2px 0 #c72f00,2px 2px 0 #c72f00"
                    document.getElementById("btnGetLabel").style.fontSize = "32px"

                    document.getElementById("GTHView").style.display = "block"
                    document.getElementById("btnGetimgView").src = "externGame/anniu-gl.png"
                    document.getElementById("btnGetLabelView").innerHTML = app.GameConfigManager().GetCurrency + " " + data.receiveGold
                    document.getElementById("btnGetLabelView").style.textShadow = "-2px -2px 0 #c72f00,2px -2px 0 #c72f00,-2px 2px 0 #c72f00,2px 2px 0 #c72f00"
                    document.getElementById("btnGetLabelView").style.fontSize = "32px"
                }
                else {
                    document.getElementById("GTH").style.display = "none"
                    document.getElementById("btnGetimg").src = "externGame/anniu-zh.png"
                    document.getElementById("btnGetLabel").innerHTML = "Desfeito"
                    document.getElementById("btnGetLabel").style.textShadow = "-2px -2px 0 #535353,2px -2px 0 #535353,-2px 2px 0 #535353,2px 2px 0 #535353"
                    document.getElementById("btnGetLabel").style.fontSize = "28px"

                    document.getElementById("GTHView").style.display = "none"
                    document.getElementById("btnGetimgView").src = "externGame/anniu-zh.png"
                    document.getElementById("btnGetLabelView").innerHTML = "Desfeito"
                    document.getElementById("btnGetLabelView").style.textShadow = "-2px -2px 0 #535353,2px -2px 0 #535353,-2px 2px 0 #535353,2px 2px 0 #535353"
                    document.getElementById("btnGetLabelView").style.fontSize = "28px"
                }


                let progressValue = data.betGold2 / data.needBetGold
                if (progressValue > 1) {
                    progressValue = 1
                }
                else if (progressValue < 0) {
                    progressValue = 0
                }

                let xxx = Math.cos(2 * Math.PI * (0.25 - progressValue))
                let yyy = Math.sin(2 * Math.PI * (0.25 - progressValue))
                let xxxAbs = Math.abs(xxx)
                let yyyAbs = Math.abs(yyy)
                if (xxxAbs > yyyAbs) {
                    xxx = xxx / xxxAbs
                    yyy = yyy / xxxAbs
                }
                else {
                    xxx = xxx / yyyAbs
                    yyy = yyy / yyyAbs
                }

                let left = (50 + xxx * 50)
                let top = (50 - yyy * 50)
                if (progressValue <= 0.125) {
                    document.getElementById("progressBar").style.clipPath = "polygon(50% 50%,50% 0," + left + "% " + top + "%)"
                }
                else if (progressValue <= 0.125 + 0.25) {
                    document.getElementById("progressBar").style.clipPath = "polygon(50% 50%,50% 0,100% 0," + left + "% " + top + "%)"
                }
                else if (progressValue <= 0.125 + 0.5) {
                    document.getElementById("progressBar").style.clipPath = "polygon(50% 50%,50% 0,100% 0,100% 100%," + left + "% " + top + "%)"
                }
                else if (progressValue <= 0.125 + 0.75) {
                    document.getElementById("progressBar").style.clipPath = "polygon(50% 50%,50% 0,100% 0,100% 100%,0 100%," + left + "% " + top + "%)"
                }
                else {
                    document.getElementById("progressBar").style.clipPath = "polygon(50% 50%,50% 0,100% 0,100% 100%,0 100%,0 0," + left + "% " + top + "%)"
                }
                document.getElementById("progressBarView").style.clipPath = document.getElementById("progressBar").style.clipPath
            },
            e.prototype.initUIGoldReward = function () {
                // var e = document.createElement("div");
                // e.id = "UIGoldReward",
                //     e.style.position = "absolute",
                //     e.style.width = "100%",
                //     e.style.height = "100%",
                //     // e.style.display = "none",
                //     document.body.appendChild(e);
                // var t = document.createElement("div");
                // t.id = "BGGoldReward"
                // t.style.position = "absolute",
                //     t.style.width = "331.7px",
                //     t.style.height = "198.7px",
                //     t.style.left = "50%",
                //     t.style.top = "50%",
                //     t.style.transform = "translate(-50%,-50%)",
                //     t.style.display = "flex",
                //     t.style.flexDirection = "column",
                //     e.appendChild(t);
                // var n = document.createElement("img");
                // n.src = "externGame/bg_layer.png",
                //     n.style.position = "absolute",
                //     n.style.width = "100%",
                //     n.style.height = "100%",
                //     n.style.top = "0px",
                //     n.style.left = "0px",
                //     t.appendChild(n);
                // var o = document.createElement("div");
                // o.innerHTML = "Recompensas",
                //     o.style.position = "absolute",
                //     o.style.left = "50%",
                //     o.style.top = "10%",
                //     o.style.transform = "translate(-50%,-50%)",
                //     o.style.color = "#FFE536",
                //     o.style.fontSize = "20px",
                //     t.appendChild(o);
                // var i = document.createElement("div");
                // i.id = "UIGoldRewardtext_tips",
                //     i.innerHTML = "R$ 10"
                // i.style.position = "absolute",
                //     i.style.top = "35%",
                //     i.style.color = "#ffffff",
                //     i.style.fontSize = "28px",
                //     i.style.maxWidth = "300px",
                //     i.style.alignSelf = "center",
                //     i.style.wordBreak = "break-word",
                //     i.style.textAlign = "center",
                //     t.appendChild(i);
                // var a = document.createElement("button");
                // a.style.position = "absolute",
                //     a.style.width = "40%",
                //     a.style.height = "20%",
                //     a.style.left = "30%",
                //     a.style.top = "70%",
                //     a.style.border = "none",
                //     a.style.backgroundColor = "transparent",
                //     a.addEventListener("click", this.hideUIGoldReward.bind(this)),
                //     t.appendChild(a);
                // var r = document.createElement("img");
                // r.src = "externGame/btn_bg.png",
                //     r.style.position = "absolute",
                //     r.style.width = "100%",
                //     r.style.height = "100%",
                //     r.style.left = "0px",
                //     r.style.top = "0px",
                //     a.appendChild(r);
                // var s = document.createElement("div");
                // s.innerHTML = "Okay",
                //     s.style.position = "absolute",
                //     s.style.top = "50%",
                //     s.style.left = "50%",
                //     s.style.transform = "translate(-50%,-50%)",
                //     s.style.fontSize = "18px",
                //     s.style.color = "#FFFB95",
                //     a.appendChild(s);

                var e = document.createElement("div");
                e.id = "UIGoldReward",
                    e.style.position = "absolute",
                    e.style.width = "100%",
                    e.style.height = "100%",
                    e.style.backgroundColor = "rgba(0, 0, 0, 0.78)",
                    // e.style.display = "none",
                    document.body.appendChild(e);
                var t = document.createElement("div");
                t.id = "BGGoldReward"
                t.style.position = "absolute",
                    t.style.width = "660px",
                    t.style.height = "330px",
                    t.style.left = "50%",
                    t.style.top = "50%",
                    t.style.background = "#161f2c",
                    t.style.borderRadius = "10px",
                    t.style.transform = "translate(-50%,-50%)",
                    t.style.display = "flex",
                    t.style.flexDirection = "column",
                    e.appendChild(t);
                var o = document.createElement("div");
                o.innerHTML = "Bônus",
                    o.style.position = "absolute",
                    o.style.left = "50%",
                    o.style.top = "59.59px",
                    o.style.transform = "translate(-50%,0%)",
                    o.style.color = "#FFFFFF",
                    o.style.fontSize = "36px",
                    o.style.lineHeight = "36px",
                    t.appendChild(o);
                var i = document.createElement("div");
                i.id = "UIGoldRewardRewardBG",
                    i.style.position = "absolute",
                    i.style.top = "138.59px",
                    i.style.left = "50%",
                    i.style.transform = "translate(-50%,0%)",
                    i.style.width = "1px",
                    i.style.height = "48.2px",
                    i.style.background = "#1f2938",
                    i.style.borderRadius = "10px",
                    i.style.paddingTop = "1.4px",
                    //i.style.paddingRight = "8.1px",
                    i.style.paddingBottom = "10.40px",
                    //  i.style.paddingLeft = "10px",
                    i.style.whiteSpace = "nowrap"
                t.appendChild(i);
                var btnGetimg = document.createElement("img");
                btnGetimg.src = "externGame/UIGoldRewardIcon.png"
                btnGetimg.style.width = "37.1px"
                btnGetimg.style.height = "39.2px"
                btnGetimg.style.transform = "translate(0%,9px)"
                btnGetimg.style.marginLeft = "10px"
                btnGetimg.style.marginRight = "10px"
                i.appendChild(btnGetimg);
                var btnGetLabel = document.createElement("span");
                btnGetLabel.id = "UIGoldRewardReward"
                btnGetLabel.innerHTML = "323423423423"
                btnGetLabel.style.fontSize = "30px"
                btnGetLabel.style.lineHeight = "30px"
                btnGetLabel.style.color = "#FFFFFF"
                btnGetLabel.style.whiteSpace = "nowrap"
                btnGetLabel.style.marginLeft = "10px"
                btnGetLabel.style.marginRight = "10px"
                i.appendChild(btnGetLabel);
                var s = document.createElement("div");
                s.innerHTML = "Clique na tela para continuar",
                    s.style.position = "absolute",
                    s.style.top = "242.50px",
                    s.style.left = "50%",
                    s.style.transform = "translate(-50%,0%)",
                    s.style.fontSize = "24px",
                    s.style.lineHeight = "28px",
                    s.style.whiteSpace = "nowrap"
                s.style.color = "#BBBBBB",
                    t.appendChild(s);
                e.addEventListener("click", this.hideUIGoldReward.bind(this))
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
                const content = document.getElementById('UIGoldRewardRewardBG');
                content.style.width = "1px"
                document.getElementById("UIGoldReward").style.display = "block"
                document.getElementById("UIGoldRewardReward").innerHTML = data.receiveGold
                const scrollWidth = content.scrollWidth;
                content.style.width = `${scrollWidth}px`;
                app.UserManager().UserInfo.gold = data.balancegold
                app.Client.OnEvent(GameEventDefine.GameEventDefine.COMPANY_PAYMENT, { amount: 0, send_gold: data.receivedGold })
                app.Client.OnEvent(GameEventDefine.GameEventDefine.UPDATE_GAME_GOLD)
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
                if (gameupData.show_progress == 1) {
                    app.ExternGameManager().RequestHtmlGameProgress(0);
                }
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
                document.getElementById("gameProgressView").style.display = "none"
            }
            ,
            e.prototype.hideAll = function () {
                this.scoreEnd && (this.gameUpInfo.is_experience_server || app.ExternGameManager().RequestGameDown(true),
                    isgoServer && app.UserManager().RequstUserWallet(),
                    app.HallManager().GetFreeOutGameWindow()),
                    this.gameUpInfo = null,
                    this.isLoaded = false;
                var e = document.getElementById("Game");
                e.src = "about:blank",
                    e.style.display = "none",
                    document.getElementById("BtnBack").style.display = "none",
                    this.hideGameProgressNode(),
                    this.SetCashLabelVisible(false),
                    this.timer && clearTimeout(this.timer),
                    this.hideTips(),
                    this.hideLoading(),
                    app.ComTool().CheckPlatform() || a.default.setOrientation(cc.find("Canvas").getComponent(cc.Canvas), "V")
            }
            ,
            e.prototype.hideGameProgressNode = function () {
                document.getElementById("gameProgressNode").style.display = "none"
                app.ExternGameManager().inSubGame = false
            }
            ,
            e
    }();
n.default = r,
    module.exports = n
