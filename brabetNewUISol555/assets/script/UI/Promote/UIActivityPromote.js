var BaseForm = require("BaseForm")
var i = require("../../../Common/Define/GameEventDefine")
    , s = require("../../../Common/Define/ShareDefine")
    , c = require("../../../Common/Define/UINameDefine")
    , l = require("../Account/UIUniversalList")
    , u = cc.Enum({
        NORAML: 0,
        REACH: 1,
        GOT: 2
    })
cc.Class({
    extends: BaseForm.default,

    properties: {
        ShareUrl: "",
        QRcodeUrl: "",
        boxInfoArray: null,
        boxInfoIdx: 0,
        invCount: 0,
        showBoxCount: 0,
        boxNodes: [],
        nodeProgress: null,
        labelGo: null,
        ShareContent: "",
        defualtCopyNode: null,
        SelAwardNode: null,
    },

    OnCreateInit() {
        this.RegEvent(i.GameEventDefine.GET_SPREAD_WAY, this.onShareData)
        this.RegEvent(i.GameEventDefine.GET_SHAREAWARD, this.onShareAward)

        this.rootNode = this.GetWndNode("bg/scrollview/content", this.node)
        this.nodeCode = this.GetWndNode("node_Progress/node_code/code", this.rootNode)
        this.QRcode = this.GetWndNode("QRcode", this.nodeCode)
        this.defualtCopyNode = cc.find("/node_Progress/node_copy/lbl_link", this.rootNode)
        this.DirectSubordinates = cc.find("/node_Progress/DirectSubordinates", this.rootNode).getComponent(cc.RichText)
        this.lbl_UidCopyNode = cc.find("/node_Progress/node_copy/lbl_Uid/lbl_Uid", this.rootNode)
        this.ShareBtnList = []
        this.ShareBtnList[0] = cc.find("/node_Progress/node_group/layout/img_btnInstagram", this.rootNode)
        this.ShareBtnList[1] = cc.find("/node_Progress/node_group/layout/img_btnWsApp", this.rootNode)
        this.ShareBtnList[2] = cc.find("/node_Progress/node_group/layout/img_btnFb", this.rootNode)
        this.ShareBtnList[3] = cc.find("/node_Progress/node_group/layout/img_btnTelegram", this.rootNode)
        this.ShareBtnList[4] = cc.find("/node_Progress/node_group/layout/img_btnLine", this.rootNode)
        this.ShareBtnList[0].getChildByName("button").on("click", this.InstagramShare, this)
        this.ShareBtnList[1].getChildByName("button").on("click", this.WhatsAppShare, this)
        this.ShareBtnList[2].getChildByName("button").on("click", this.facebookShare, this)
        this.ShareBtnList[3].getChildByName("button").on("click", this.TelegramShare, this)
        this.ShareBtnList[4].getChildByName("button").on("click", this.LineShare, this)
        this.ShareUrl = location.origin + location.pathname + "?agentid=" + app.UserManager().UserInfo.uid + "&time=" + new Date().getTime()
        this.defualtCopyNode.getComponent(cc.Label).string = this.ShareUrl
        this.lbl_UidCopyNode.getComponent(cc.Label).string = app.UserManager().GetUserInfo.uid
        app.ComTool().GenQRCode(window.location.href, this.QRcode.getComponent(cc.Graphics))

        this.boxBG = cc.find("boxBG", this.rootNode)
        this.boxLayout1 = cc.find("boxLayout1", this.node)
        this.NewNode1 = cc.find("NewNode1", this.node)
        this.boxLayout2 = cc.find("boxLayout2", this.node)
        this.NewNode2 = cc.find("NewNode2", this.node)
    },
    OnShow() {
        app.PromoteMainManager().ReqShareData()
    },
    updateBox(boxLayout1, boxName, data) {
        // data.state = u.REACH
        if (data.state == u.GOT) {
            boxLayout1.getChildByName(boxName).getChildByName("boxCloseCanOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("boxClose").active = false
            boxLayout1.getChildByName(boxName).getChildByName("boxOpen").active = true
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldOpen").active = true
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldClose").active = false
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldOpen").getComponent(cc.Label).string = data.showtx
        }
        else if (data.state == u.REACH) {
            boxLayout1.getChildByName(boxName).getChildByName("boxCloseCanOpen").active = true
            boxLayout1.getChildByName(boxName).getChildByName("boxClose").active = false
            boxLayout1.getChildByName(boxName).getChildByName("boxOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldClose").active = true
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldClose").getComponent(cc.Label).string = data.showtx
        }
        else {
            boxLayout1.getChildByName(boxName).getChildByName("boxCloseCanOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("boxClose").active = true
            boxLayout1.getChildByName(boxName).getChildByName("boxOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldOpen").active = false
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldClose").active = true
            boxLayout1.getChildByName(boxName).getChildByName("lb_goldClose").getComponent(cc.Label).string = data.showtx
        }
        boxLayout1.getChildByName(boxName).getChildByName("lb_need").getComponent(cc.Label).string = data.count + " pessoas"
        boxLayout1.getChildByName(boxName).boxInfo = data
    },
    onShareData() {
        var e = app.PromoteMainManager().GetShareData;
        this.DirectSubordinates.string = "Subordinados válidos <color=#f0b33d>" + e.share_valid_count + "</c> pessoas<color=#f0b33d> Detalhes</c>"
        this.invCount = e.share_valid_count
        this.boxInfoArray = e.share_list
        let share_list = e.share_list
        this.boxBG.removeAllChildren()
        for (let index = 0; index < share_list.length; index++) {
            if (index % 8 == 0) {
                if (index != 0) {
                    let NewNode2 = cc.instantiate(this.NewNode2);
                    NewNode2.active = true
                    NewNode2.parent = this.boxBG
                }
                let boxLayout1 = cc.instantiate(this.boxLayout1);
                this.updateBox(boxLayout1, "box1", share_list[index])
                if (index + 1 < share_list.length) {
                    this.updateBox(boxLayout1, "box2", share_list[index + 1])
                }
                else {
                    boxLayout1.getChildByName("NewNode1").active = false
                    boxLayout1.getChildByName("box2").active = false
                }
                if (index + 2 < share_list.length) {
                    this.updateBox(boxLayout1, "box3", share_list[index + 2])
                }
                else {
                    boxLayout1.getChildByName("NewNode2").active = false
                    boxLayout1.getChildByName("box3").active = false
                }
                if (index + 3 < share_list.length) {
                    this.updateBox(boxLayout1, "box4", share_list[index + 3])
                }
                else {
                    boxLayout1.getChildByName("NewNode3").active = false
                    boxLayout1.getChildByName("box4").active = false
                }
                boxLayout1.active = true
                boxLayout1.parent = this.boxBG

            }
            else if (index % 8 == 4) {
                let NewNode1 = cc.instantiate(this.NewNode1);
                NewNode1.active = true
                NewNode1.parent = this.boxBG
                let boxLayout2 = cc.instantiate(this.boxLayout2);
                this.updateBox(boxLayout2, "box1", share_list[index])
                if (index + 1 < share_list.length) {
                    this.updateBox(boxLayout2, "box2", share_list[index + 1])
                }
                else {
                    boxLayout2.getChildByName("NewNode1").active = false
                    boxLayout2.getChildByName("box2").active = false
                }
                if (index + 2 < share_list.length) {
                    this.updateBox(boxLayout2, "box3", share_list[index + 2])
                }
                else {
                    boxLayout2.getChildByName("NewNode2").active = false
                    boxLayout2.getChildByName("box3").active = false
                }
                if (index + 3 < share_list.length) {
                    this.updateBox(boxLayout2, "box4", share_list[index + 3])
                }
                else {
                    boxLayout2.getChildByName("NewNode3").active = false
                    boxLayout2.getChildByName("box4").active = false
                }
                boxLayout2.active = true
                boxLayout2.parent = this.boxBG
            }
        }
    },
    OnClick(e) {
        if ("button_Uid" == e) {
            app.NativeMgr().copyToClipBoard("" + app.UserManager().GetUserInfo.uid);
        }
        else if ("button_link" == e) {
            this.ShareUrl && app.NativeMgr().copyToClipBoard(this.ShareContent + "    " + this.ShareUrl)
        }
        else if ("btn_help" == e) {
            app.FormManager().ShowForm(c.UINameDefine.UIUniversalList, {
                type: l.UniversalType.InvitationBonus,
                list: this.boxInfoArray
            });
        }
        else if ("DirectSubordinates" == e) {
            app.FormManager().ShowForm(c.UINameDefine.UIActivityPromoteDetail);
        }
    },
    InstagramShare() {
        cc.sys.openURL("https://www.instagram.com/")
    },
    WhatsAppShare() {
        "" !== this.ShareUrl ? app.NativeMgr().WhatsAppShare(this.ShareContent + "    " + this.ShareUrl) : app.SysNotifyManager().ShowToast("ShareUrlError")
    },
    facebookShare() {
        "" !== this.ShareUrl ? app.NativeMgr().FaceBookShare(JSON.stringify({
            des: shareTextGlobal,
            url: this.ShareUrl
        })) : app.SysNotifyManager().ShowToast("ShareUrlError")
        app.ActivityManager().WithdrawalCoupon_Share()
    },
    TelegramShare() {
        var originalUrl = this.ShareUrl
        var encodedUrl = encodeURIComponent(originalUrl);
        cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl + "&text=" + shareTextGlobal)
    },
    LineShare() {
        var originalUrl = this.ShareUrl
        var encodedUrl = encodeURIComponent(originalUrl);
        cc.sys.openURL("https://line.me/R/ti/p/?text=" + encodedUrl)
    },
    onBtnBoxClick(e) {
        app.PromoteMainManager().ReqShareData()
        if (!app.UserManager().GetIsOfficialPopup()) {
            var t = e.target.boxInfo;
            (t.state == u.REACH) && (this.SelAwardNode = e.target,
                //  app.Client.OnEvent(i.GameEventDefine.GET_SPREAD_WAY, e),
                app.PromoteMainManager().RequstShareAward(t.id))
        }
    },
    onShareAward(data) {
        if (this.SelAwardNode) {
            var e = this.SelAwardNode.boxInfo;
            e.state = u.GOT,
                app.GoldRewardManager().FormGoldReward({
                    gold: data.gold,
                    source: app.i18n.t("UI_Reward")
                }),
                app.RedDotManager().updateSingleData({
                    type: s.RedDotStr.spread_wayActivity
                }),
                app.PromoteMainManager().ReqShareData()
        }
    },
});
