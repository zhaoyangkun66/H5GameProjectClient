let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/HttpServerDefine")
    , r = require("../../i18n_script/LocalizedLabel")
    , s = require("../../../Common/Define/ShareDefine")
    , c = require("../../../Common/Define/UINameDefine")
    , l = require("../Account/UIUniversalList")
    , p = require("../../../Common/Define/TrackEventName")
    , d = require("../../../Common/Base/imageToBase64")
    , h = require("../../../Common/Define/TextDefine")
    , u = cc.Enum({
        NORAML: 0,
        REACH: 1,
        GOT: 2
    })
    , _ = cc._decorator
    , m = _.ccclass
    , f = (_.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.ShareUrl = "",
                    t.QRcodeUrl = "",
                    t.boxInfoArray = null,
                    t.boxInfoIdx = 0,
                    t.invCount = 0,
                    t.showBoxCount = 0,
                    t.boxNodes = [],
                    t.nodeProgress = null,
                    t.labelGo = null,
                    t.ShareContent = "",
                    t.defualtCopyNode = null,
                    t.SelAwardNode = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnLoadInit = function () {
                    this.RegEvent(i.GameEventDefine.GET_SPREAD_WAY, this.onShareData),
                        this.RegEvent(i.GameEventDefine.GET_SHAREAWARD, this.onShareAward),
                        this.RegEvent(i.GameEventDefine.GET_COMMISSIONDESCLIST, this.onCommissionDesList),
                        this.RegEvent(i.GameEventDefine.UPDATE_COMMISSIONDESC, this.updateAgent_commission2),
                        this.RegHttpEvent(a.HttpAPI.CHECK_AGENT_GOLD_LIMIT, this.OnCheckAgentGoldLimit),
                        this.nodeCode = this.GetWndNode("node_Progress/node_code/code", this.node),
                        this.QRcode = this.GetWndNode("QRcode", this.nodeCode),
                        this.nodeProgress = cc.find("box/con/progressBar", this.node),
                        this.defualtCopyNode = cc.find("/node_Progress/node_copy/lbl_link", this.node),
                        cc.systemEvent.off("btnCloseEvent", this.onCloseEvent, this);
                    var e = this.nodeProgress.getChildByName("boxes");
                    this.boxNodes = [];
                    for (var t = 0; t < e.children.length; t++) {
                        var n = e.children[t]
                        // var n = e.getChildByName("box" + t);
                        n ? (n.active = false,
                            this.boxNodes.push(n)) : cc.error("index of box node error.")
                    }
                }
                ,
                t.prototype.OnEnable = function () {
                    this.GetWndNode("box", this.node).active = app.GameConfigManager().IsAgentShareReward,
                        this.GetWndNode("node_Explain", this.node).active = app.GameConfigManager().IsAgentShareReward,
                        this.reset(),
                        app.PromoteMainManager().ReqShareData(),
                        app.PromoteMainManager().ReqAgentCommissionDesList(),
                        this.initShareBtnList(),
                        this.nodeCode.active = true,
                        this.nodeCode.parent.children[0].children[1].rotation = 270
                }
                ,
                t.prototype.onShareData = function () {
                    var e = app.PromoteMainManager().GetShareData;
                    // e = {
                    //     "uid": 10332443,
                    //     "team_num": 0,
                    //     "new_num": 0,
                    //     "direct_num": 0,
                    //     "parent_uid": 0,
                    //     "qr_code": "",
                    //     "link": "http://47.99.125.110:8088/client/web-mobile/?agentid=10332443",
                    //     "ad": "",
                    //     "active": 0,
                    //     "share_reward": 0,
                    //     "share_count": 100,
                    //     "share_valid_count": 100,
                    //     "share_list": [
                    //         {
                    //             "id": 1,
                    //             "count": 3,
                    //             "gold": 3,
                    //             "state": 1
                    //         },
                    //         {
                    //             "id": 2,
                    //             "count": 10,
                    //             "gold": 10,
                    //             "state": 2
                    //         },
                    //         {
                    //             "id": 3,
                    //             "count": 20,
                    //             "gold": 15,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 4,
                    //             "count": 40,
                    //             "gold": 30,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 5,
                    //             "count": 60,
                    //             "gold": 50,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 6,
                    //             "count": 100,
                    //             "gold": 100,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 7,
                    //             "count": 500,
                    //             "gold": 750,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 8,
                    //             "count": 1000,
                    //             "gold": 1200,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 9,
                    //             "count": 2000,
                    //             "gold": 2000,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 10,
                    //             "count": 5000,
                    //             "gold": 5000,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 11,
                    //             "count": 10000,
                    //             "gold": 10000,
                    //             "state": 0
                    //         },
                    //         {
                    //             "id": 12,
                    //             "count": 50000,
                    //             "gold": 100000,
                    //             "state": 0
                    //         }
                    //     ],
                    //     "game_count": 0,
                    //     "partner_agent": 0,
                    //     "agent_cash_desc": "1. Where is my invitation link?<br/>In the main interface of the share, copy your referral link and share, the members registered in this way will become your direct agents, and the lower level members they invite will be regarded as your team members, and so on, they can develop infinitely.<br/><br/><br/>2. Where can I check my commission?<br/>In the main interface of the share, click “<span color: inherit;>Refer” to view the details of commission and receive commission.</span><br/><br/><br/>",
                    //     "agent_text_amount": 0,
                    //     "agent_commission": 0,
                    //     "share_content": "",
                    //     "agent_withdraw_need_tel": 1
                    // }
                    if (e) {
                        var t = e;
                        this.setLabelID(t.uid),
                            // this.ShareUrl = t.link + 
                            this.ShareUrl = location.origin + location.pathname + "?agentid=" + app.UserManager().UserInfo.uid,
                            this.QRcodeUrl = t.qr_code,
                            this.ShareContent = t.share_content,
                            this.invCount = t.share_valid_count,
                            // this.invCount = t.share_count,
                            this.updateAgent_commission();
                        var n = t.game_count.toString()
                            , o = "";
                        null != n && "" != n && (o = app.i18n.t("UI.INVITE_0_main_5").replace("{count}", n),
                            cc.find("/box/lbl", this.node).getComponent(cc.Label).string = is2048Game ? "Usuários válidos: registre uma conta e deposite uma vez" : "Usuários válidos: registre sucesso e receba bônus de novato de R$ 13"),
                            t.agent_cash_desc && (cc.find("/node/richtext", this.node).getComponent(cc.RichText).string = t.agent_cash_desc),
                            this.boxInfoArray = t.share_list,
                            this.renderBoxes(),
                            this.ShowShareUrl(),
                            this.SetQRcode();
                        var i = app.GameConfigManager().GetCurrency + e.agent_text_amount;
                        cc.find("node_Explain/label", this.node).getComponent(r.default).setT("UI_Promote_expanin", {
                            number: i
                        });
                        var a = 1 == e.partner_agent ? h.TextDefine.agent_welcome : h.TextDefine.player_welcome
                            , s = app.TextManager().GetTextInfo(a);
                        s && this.setHintLbl(s)
                    }
                }
                ,
                t.prototype.setHintLbl = function (e) {
                    this.GetWndComponent("bonus/lbl_hint", cc.RichText).string = app.ComTool().htmlRestore(e) || ""
                }
                ,
                t.prototype.updateAgent_commission2 = function () {
                    app.RedDotManager().updateSingleData({
                        type: s.RedDotStr.spread_way
                    })
                    this.updateAgent_commission()
                }
                ,
                t.prototype.updateAgent_commission = function () {
                    var e = app.PromoteMainManager().GetShareData;
                    e && (cc.find("bonus/num", this.node).getComponent(cc.Label).string = "" + app.ScoreUtil().fix_float_number(e.agent_commission))
                }
                ,
                t.prototype.OnClick = function (e) {
                    if ("btn" != e)
                        if ("btn_deposit" != e)
                            if ("btn_receive" != e)
                                if ("btn_help" != e) {
                                    if ("top" != e)
                                        return "btn_save" == e ? (d.getBase64(this.QRcodeUrl).then(function (e) {
                                            app.NativeMgr().SaveQR(e)
                                        }),
                                            void app.SysNotifyManager().ShowToast("QR_Succeed")) : undefined;
                                    this.nodeCode.active = !this.nodeCode.active
                                } else
                                    app.FormManager().ShowForm(c.UINameDefine.UIUniversalList, {
                                        type: l.UniversalType.InvitationBonus,
                                        list: this.boxInfoArray
                                    });
                            else {
                                if (app.UserManager().GetIsOfficialPopup())
                                    return;
                                app.HttpServerManager().SendHttpPack(a.HttpAPI.CHECK_AGENT_GOLD_LIMIT, {
                                    token: app.UserManager().GetUserInfo.token,
                                    btnName: 2
                                })
                            }
                        else {
                            if (app.UserManager().GetIsOfficialPopup())
                                return;
                            app.HttpServerManager().SendHttpPack(a.HttpAPI.CHECK_AGENT_GOLD_LIMIT, {
                                token: app.UserManager().GetUserInfo.token,
                                btnName: 1
                            })
                        }
                    else
                        app.Client.OnEvent(i.GameEventDefine.SHOW_PROMOTELAYERINDEX, 3)
                }
                ,
                t.prototype.OnCheckAgentGoldLimit = function (e, t) {
                    1 != t.btnName ? 2 != t.btnName || this.ShowConfirmReceiveGold() : app.StoreManager().ShowStoreUI({
                        ShowType: s.WIN_TYPE.CASHOUT,
                        AgentTx: true,
                        in_type: p.default.PAGETRACK_EVENT_WITHDRAW_SHARE
                    })
                }
                ,
                t.prototype.ShowConfirmReceiveGold = function () {
                    if (is2048Game) {
                        app.PromoteMainManager().ReqAgentCashTransfer()
                    }
                    else {
                        app.ConfirmManager().ShowConfirm(s.ConfirmType.ConfirmYN, "UI_ShareReceiveAgentGold", null, function () {
                            app.PromoteMainManager().ReqAgentCashTransfer()
                        }, null, this)
                    }
                }
                ,
                t.prototype.ShowShareUrl = function () {
                    this.defualtCopyNode && this.ShareUrl && (this.defualtCopyNode.getComponent(cc.Label).string = app.ComUtil().cutStr(this.ShareUrl + "", app.ComTool().H5Platform() ? 37 : 63));
                    var e = cc.find("/node_Progress/node_copy/img_btnBg/button", this.node);
                    e && e.on("click", this.onCopyLinkClick, this)
                }
                ,
                t.prototype.SetQRcode = function () {
                    this.nodeCode.parent.active = app.GameConfigManager().GetGameConfig().qrcode_open,
                        this.QRcodeUrl && app.ImageUtil().LoadImage(this.QRcode, this.QRcodeUrl)
                }
                ,
                t.prototype.onCopyLinkClick = function () {
                    this.ShareUrl && app.NativeMgr().copyToClipBoard(this.ShareContent + "    " + this.ShareUrl)
                }
                ,
                t.prototype.onCloseEvent = function (e) {
                    var t = this;
                    if ("layer_task_complet" === e.name) {
                        if (0 == this.showBoxCount)
                            return;
                        var n = this.findRenderIndex() - this.boxInfoIdx;
                        if (0 == n)
                            return void this.renderBoxes();
                        var o = this.nodeProgress.width / this.showBoxCount
                            , i = n * o;
                        this.boxNodes.forEach(function (e, t) {
                            if (e.active) {
                                var o = cc.moveBy(.5, cc.v2(-i, 0));
                                if (t < n) {
                                    var a = cc.sequence(o, cc.callFunc(function (e) {
                                        e.active = false
                                    }));
                                    e.runAction(a)
                                } else
                                    e.runAction(o)
                            }
                        });
                        var a = cc.sequence(cc.delayTime(.5), cc.callFunc(function () {
                            t.renderBoxes()
                        }));
                        this.node.runAction(a)
                    }
                }
                ,
                t.prototype.reset = function () {
                    this.setLabelID(""),
                        this.boxNodes.forEach(function (e) {
                            e.active = false
                        }),
                        this.nodeProgress.active = false
                }
                ,
                t.prototype.renderBoxes = function () {
                    this.boxInfoArray ? (this.renderLeftCount(),
                        this.renderBoxesInfo(),
                        this.renderPercent()) : cc.error("get box info error")
                }
                ,
                t.prototype.renderLeftCount = function () {
                    for (var e = this.boxInfoArray.length, t = 0; t < e - 1; t++) {
                        var n = this.boxInfoArray[t]
                            , o = this.boxInfoArray[t + 1]
                            , i = n.count
                            , a = o.count;
                        if (this.invCount < i) {
                            this.invCount,
                                n.gold;
                            break
                        }
                        if (this.invCount >= i && this.invCount < a) {
                            this.invCount,
                                o.gold;
                            break
                        }
                    }
                }
                ,
                t.prototype.renderPercent = function () {
                    var e = this.showBoxCount;
                    if (0 != e) {
                        for (var t = -1, n = 0, o = 0, i = 0; i < e; ++i) {
                            var a = this.boxNodes[i].boxInfo;
                            if (this.invCount < a.count) {
                                t = i,
                                    o = a.count;
                                break
                            }
                        }
                        var r = 0;
                        if (-1 == t)
                            r = 1;
                        else {
                            0 != t && (n = (a = this.boxNodes[t - 1].boxInfo).count);
                            var s = 1 / e
                                , c = o - n;
                            c < 0 && (cc.error("renderPercent"),
                                c = 1),
                                r = t * s + (this.invCount - n) / c * s
                        }
                        this.nodeProgress.getComponent(cc.ProgressBar).progress = r,
                            this.nodeProgress.active = true
                    } else
                        this.nodeProgress.active = false
                }
                ,
                t.prototype.renderBoxesInfo = function () {
                    for (var e = this.boxInfoArray.length, t = Math.min(e, 4), n = this.boxNodes.length, o = t; o < n; o++)
                        (s = this.boxNodes[o]).active = false;
                    for (var i = Math.min(e, n), a = this.findRenderIndex(), r = 0; r < i; ++r) {
                        var s = this.boxNodes[r]
                            , c = this.boxInfoArray[a + r];
                        r < t && c && (s.active = true),
                            c && this.renderBox(s, c)
                    }
                    this.showBoxCount = t,
                        this.boxInfoIdx = a;
                    var l = this.nodeProgress.width / t;
                    for (o = 0; o < n; o++)
                        (s = this.boxNodes[o]).x = (o + 1) * l
                }
                ,
                t.prototype.renderBox = function (e, t) {
                    var n = t.state;
                    e.boxInfo = t,
                        e.children[1].active = n != u.GOT,
                        e.children[2].active = n == u.REACH,
                        e.children[0].active = n == u.GOT
                    // n == u.REACH && (e.children[0].active = true);
                    // var o = app.GameConfigManager().GetCurrency;
                    e.children[3].getComponent(cc.Label).string = t.showtx
                    e.children[4].children[1].getComponent(cc.Label).string = this.invCount + "/" + t.count
                }
                ,
                t.prototype.initShareBtnList = function () {
                    try {
                        // var e = app.GameConfigManager().GetGameConfig().share_app;
                        // if (e) {
                        this.ShareBtnList = [],
                            this.ShareBtnList[1] = cc.find("/node_Progress/node_group/layout/img_btnWsApp", this.node),
                            this.ShareBtnList[2] = cc.find("/node_Progress/node_group/layout/img_btnFb", this.node),
                            this.ShareBtnList[3] = cc.find("/node_Progress/node_group/layout/img_btnLine", this.node),
                            this.ShareBtnList[4] = cc.find("/node_Progress/node_group/layout/img_btnZalo", this.node),
                            this.ShareBtnList[1].getChildByName("button").on("click", this.WhatsAppShare, this),
                            this.ShareBtnList[2].getChildByName("button").on("click", this.facebookShare, this),
                            this.ShareBtnList[3].getChildByName("button").on("click", this.LineShare, this),
                            this.ShareBtnList[4].getChildByName("button").on("click", this.zaloShare, this);
                        //  for (var t = 1; t <= 4; t++)
                        //     (n = this.ShareBtnList[t]).active = false;
                        //   for (t = 0; t < e.length; t++) {
                        //     var n = e[t]
                        //        , o = this.ShareBtnList[n];
                        //   o && (o.active = true)
                        // }
                        // }
                    } catch (i) {
                        cc.error("initShareBtnList ERROR")
                    }
                }
                ,
                t.prototype.onCommissionDesList = function (e) {
                    for (var t = cc.find("regras", this.node).children, n = 1; n < t.length; n++) {
                        var o = t[n]
                            , i = e[n - 1];
                        if (i) {
                            if (cc.find("layer", o).children[0].getComponent(cc.Label).string = i.title,
                                cc.find("layer", o).children[1].getComponent(cc.Label).string = i.content,
                                i.link > 0 || i.external_link) {
                                cc.find("learn_more", o).active = true;
                                var a = new cc.Component.EventHandler;
                                a.target = this.node,
                                    a.component = this.JS_Name,
                                    a.handler = "NoticeWndEvent",
                                    a.customEventData = JSON.stringify(i),
                                    cc.find("learn_more", o).getComponent(cc.Button).clickEvents = [],
                                    cc.find("learn_more", o).getComponent(cc.Button).clickEvents.push(a)
                            } else
                                cc.find("learn_more", o).active = false;
                            o.active = true
                        } else
                            o.active = false
                    }
                }
                ,
                t.prototype.findRenderIndex = function () {
                    var e = this.boxInfoArray.length;
                    if (e <= 4)
                        return 0;
                    for (var t = e, n = 0; n < e; n++)
                        if (this.boxInfoArray[n].state != u.GOT) {
                            t = n;
                            break
                        }
                    return e - t < 4 && (t = e - 4),
                        t
                }
                ,
                t.prototype.onBtnBoxClick = function (e) {
                    if (!app.UserManager().GetIsOfficialPopup()) {
                        var t = e.target.boxInfo;
                        (t.state == u.REACH) && (this.SelAwardNode = e.target,
                            //  app.Client.OnEvent(i.GameEventDefine.GET_SPREAD_WAY, e),
                            app.PromoteMainManager().RequstShareAward(t.id))
                    }
                }
                ,
                t.prototype.onShareAward = function (data) {
                    if (this.SelAwardNode) {
                        var e = this.SelAwardNode.boxInfo;
                        e.state = u.GOT,
                            app.GoldRewardManager().FormGoldReward({
                                gold: data.gold,
                                source: app.i18n.t("UI_Reward")
                            }),
                            cc.systemEvent.emit("open_hintdownload"),
                            app.RedDotManager().updateSingleData({
                                type: s.RedDotStr.spread_way
                            }),
                            this.OnEnable()
                    }
                }
                ,
                t.prototype.setLabelID = function (e) {
                    e && (this.node.getChildByName("label_number").getComponent(cc.Label).string = e + "")
                }
                ,
                t.prototype.facebookShare = function () {
                    "" !== this.ShareUrl ? app.NativeMgr().FaceBookShare(JSON.stringify({
                        des: this.ShareContent,
                        url: this.ShareUrl
                    })) : app.SysNotifyManager().ShowToast("ShareUrlError")
                }
                ,
                t.prototype.LineShare = function () {

                    var originalUrl = location.origin + location.pathname + "?agentid=" + app.UserManager().UserInfo.uid
                    var encodedUrl = encodeURIComponent(originalUrl);

                    if (is2048Game) {
                        cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl + "&text=Convide amigos e ganhe R$ 100 grátis")
                    }
                    else {
                        cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl + "&text=Registre-se com sucesso e receba bônus de R$13")
                    }
                    //"" !== this.ShareUrl ? app.NativeMgr().LineAppShare(this.ShareContent + "    " + this.ShareUrl) : app.SysNotifyManager().ShowToast("ShareUrlError")
                }
                ,
                t.prototype.zaloShare = function () {
                    "" !== this.ShareUrl && app.NativeMgr().zaloShareCallback(JSON.stringify({
                        msg: this.ShareContent,
                        link: this.ShareUrl
                    }))
                }
                ,
                t.prototype.WhatsAppShare = function () {
                    "" !== this.ShareUrl ? app.NativeMgr().WhatsAppShare(this.ShareContent + "    " + this.ShareUrl) : app.SysNotifyManager().ShowToast("ShareUrlError")
                }
                ,
                t.prototype.NoticeWndEvent = function (e, t) {
                    var n = JSON.parse(t);
                    if (null != n) {
                        var o = n.link;
                        if (o > 0)
                            app.InteractionMgr().SendWndEvent(o);
                        else {
                            var i = n.external_link;
                            i && cc.sys.openURL(i)
                        }
                    } else
                        this.ErrLog("NoticeWndEvent ==> ")
                }
                ,
                __decorate([m], t)
        }(o.default));
n.default = f,
    module.exports = n
