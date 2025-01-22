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
                    this.RegEvent(i.GameEventDefine.GET_SPREAD_WAY, this.onShareData)
                    this.RegEvent(i.GameEventDefine.UPDATE_COMMISSIONDESC, this.updateAgent_commission2)
                    this.RegHttpEvent(a.HttpAPI.CHECK_AGENT_GOLD_LIMIT, this.OnCheckAgentGoldLimit)

                    this.nodeCode = this.GetWndNode("node_Progress/node_code/code", this.node)
                    this.QRcode = this.GetWndNode("QRcode", this.nodeCode)
                    this.defualtCopyNode = cc.find("/node_Progress/node_copy/lbl_link", this.node)
                    this.DirectSubordinates = cc.find("/node_Progress/node_copy/DirectSubordinates", this.node).getComponent(cc.Label)
                    this.lbl_UidCopyNode = cc.find("/node_Progress/node_copy/lbl_Uid/lbl_Uid", this.node)
                    this.ShareBtnList = []
                    this.ShareBtnList[0] = cc.find("/node_Progress/node_group/layout/img_btnInstagram", this.node)
                    this.ShareBtnList[1] = cc.find("/node_Progress/node_group/layout/img_btnWsApp", this.node)
                    this.ShareBtnList[2] = cc.find("/node_Progress/node_group/layout/img_btnFb", this.node)
                    this.ShareBtnList[3] = cc.find("/node_Progress/node_group/layout/img_btnTelegram", this.node)
                    this.ShareBtnList[4] = cc.find("/node_Progress/node_group/layout/img_btnLine", this.node)
                    this.ShareBtnList[0].getChildByName("button").on("click", this.InstagramShare, this)
                    this.ShareBtnList[1].getChildByName("button").on("click", this.WhatsAppShare, this)
                    this.ShareBtnList[2].getChildByName("button").on("click", this.facebookShare, this)
                    this.ShareBtnList[3].getChildByName("button").on("click", this.TelegramShare, this)
                    this.ShareBtnList[4].getChildByName("button").on("click", this.LineShare, this)
                    this.ShareUrl = location.origin + location.pathname + "?agentid=" + app.UserManager().UserInfo.uid + "&time=" + new Date().getTime()
                    this.defualtCopyNode.getComponent(cc.Label).string = this.ShareUrl
                    this.lbl_UidCopyNode.getComponent(cc.Label).string = app.UserManager().GetUserInfo.uid
                    app.ComTool().GenQRCode(window.location.href, this.QRcode.getComponent(cc.Graphics))

                }
                ,
                t.prototype.OnEnable = function () {
                    app.PromoteMainManager().ReqShareData()
                },
                t.prototype.onShareData = function () {
                    var e = app.PromoteMainManager().GetShareData;
                    this.updateAgent_commission();
                    this.DirectSubordinates.string = "Subordinados diretos " + e.share_valid_count + " Pessoas"

                    var a = 1 == e.partner_agent ? h.TextDefine.agent_welcome : h.TextDefine.player_welcome
                        , s = app.TextManager().GetTextInfo(a);
                    s && this.setHintLbl(s)
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
                    if ("button_Uid" == e) {
                        app.NativeMgr().copyToClipBoard("" + app.UserManager().GetUserInfo.uid);
                    } else if ("button_link" == e) {
                        this.ShareUrl && app.NativeMgr().copyToClipBoard(this.ShareContent + "    " + this.ShareUrl)
                    }
                    else if ("btn_receive" == e) {
                        if (app.UserManager().GetIsOfficialPopup())
                            return;
                        app.HttpServerManager().SendHttpPack(a.HttpAPI.CHECK_AGENT_GOLD_LIMIT, {
                            token: app.UserManager().GetUserInfo.token,
                            btnName: 2
                        })
                    }
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
                t.prototype.setLabelID = function (e) {
                    e && (this.node.getChildByName("label_number").getComponent(cc.Label).string = e + "")
                }
                ,
                t.prototype.facebookShare = function () {
                    "" !== this.ShareUrl ? app.NativeMgr().FaceBookShare(JSON.stringify({
                        des: shareTextGlobal,
                        url: this.ShareUrl
                    })) : app.SysNotifyManager().ShowToast("ShareUrlError")
                    app.ActivityManager().WithdrawalCoupon_Share()
                }
                ,
                t.prototype.LineShare = function () {
                    var originalUrl = this.ShareUrl
                    var encodedUrl = encodeURIComponent(originalUrl);
                    cc.sys.openURL("https://line.me/R/ti/p/?text=" + encodedUrl)
                }
                ,
                t.prototype.TelegramShare = function () {
                    var originalUrl = this.ShareUrl
                    var encodedUrl = encodeURIComponent(originalUrl);
                    cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl + "&text=" + shareTextGlobal)
                }
                ,
                t.prototype.InstagramShare = function () {
                    cc.sys.openURL("https://www.instagram.com/")
                },
                t.prototype.WhatsAppShare = function () {
                    "" !== this.ShareUrl ? app.NativeMgr().WhatsAppShare(this.ShareContent + "    " + this.ShareUrl) : app.SysNotifyManager().ShowToast("ShareUrlError")
                }
                ,
                __decorate([m], t)
        }(o.default));
n.default = f,
    module.exports = n
