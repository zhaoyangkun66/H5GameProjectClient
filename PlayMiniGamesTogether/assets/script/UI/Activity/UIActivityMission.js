let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.img_ItemCheck = [],
                t.lblGold = [],
                t.btn_Receive = null,
                t.content = null,
                t.cloneItem = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(i.GameEventDefine.GET_DailyRegistrations, this.onGetDailyRegistrations)
                this.cloneItem.active = false
            }
            ,
            t.prototype.OnShow = function (e) {
                this.node.active = false
                app.ActivityManager().RequestDailyRegistrations(0, 0)
            }
            ,
            t.prototype.onGetDailyRegistrations = function (data) {
                this.data = data
                this.node.active = true
                this.lblGold[0].string = "+500"
                this.lblGold[1].string = "+1000"
                this.lblGold[2].string = "+1500"
                this.lblGold[3].string = "+2000"
                this.lblGold[4].string = "+3000"
                this.lblGold[5].string = "+4000"
                if (data.gold > 0) {
                    app.RedDotManager().OnLoadHallSuccess()
                    app.GoldRewardManager().FormGoldReward({
                        gold: data.gold,
                        type: 0//0金币 1ton
                    })
                }
                if (this.data.isReceived == 0) {
                    this.btn_Receive.interactable = true
                }
                else {
                    this.btn_Receive.interactable = false
                }

                for (let index = 0; index < this.img_ItemCheck.length; index++) {
                    this.img_ItemCheck[index].active = false
                    this.lblGold[index].node.color = cc.color().fromHEX("#FFCA4C")
                }
                for (let index = 0; index < data.cumulativeDays; index++) {
                    this.img_ItemCheck[index].active = true
                    this.lblGold[index].node.color = cc.color().fromHEX("#5F32FF")
                }
                this.lblGold[6].node.color = cc.color().fromHEX("#FFFFFF")
                this.btn_Receive.interactable = true

                this.content.removeAllChildren();
                for (let index = 0; index < data.taskList.length; index++) {
                    const element = data.taskList[index];
                    let cloneItem = cc.instantiate(this.cloneItem);
                    cloneItem.active = true
                    cloneItem.getChildByName("label").getComponent(cc.Label).string = element.title
                    cloneItem.getChildByName("Rectangle10").getChildByName("Label").getComponent(cc.Label).string = element.rewardGold
                    cloneItem.getChildByName("progressBar").getComponent(cc.ProgressBar).progress = (element.progress) / 100
                    cloneItem.getChildByName("progressBar").getChildByName("bar").color = cc.color().fromHEX(element.barcolor)
                    if (element.progress == 100) {
                        cloneItem.getChildByName("btn_Invite").active = false
                        cloneItem.getChildByName("btn_Collect").getComponent(cc.Button).interactable = true
                    }
                    else {
                        if (element.id == 2) {
                            cloneItem.getChildByName("btn_Invite").active = true
                        }
                        else {
                            cloneItem.getChildByName("btn_Invite").active = false
                        }
                        cloneItem.getChildByName("btn_Collect").getComponent(cc.Button).interactable = false
                    }
                    var EventHandler = new cc.Component.EventHandler;
                    EventHandler.target = this.node
                    EventHandler.component = "UIActivityMission"
                    EventHandler.handler = "onbtn_Collect"
                    EventHandler.customEventData = JSON.stringify(element)
                    cloneItem.getChildByName("btn_Collect").getComponent(cc.Button).clickEvents = []
                    cloneItem.getChildByName("btn_Collect").getComponent(cc.Button).clickEvents.push(EventHandler);

                    element.icon ? app.ImageUtil().LoadImage(cloneItem.getChildByName("icon"), element.icon) : cloneItem.getChildByName("icon").getComponent(cc.Sprite).spriteFrame = null
                    this.content.addChild(cloneItem)
                    cloneItem.EndTime = Number(element.startTime) + Number(app.GameConfigManager().GetAsTime())
                    cloneItem.btn_CollectLabel = cloneItem.getChildByName("btn_Collect").getChildByName("Label").getComponent(cc.Label)
                    /// Number(element.startTime) - app.GameConfigManager().GetAsTime()
                }
                //this.content.getComponent(cc.Layout).updateLayout()
                var self = this;
                this.UpdateSeconds()
                this.unscheduleAllCallbacks()
                this.schedule(function () {
                    self.UpdateSeconds()
                }, 1)

            },
            t.prototype.UpdateSeconds = function () {
                let have = false
                for (let index = 0; index < this.content.children.length; index++) {
                    const element = this.content.children[index];
                    if (element.EndTime > 0) {
                        var e = app.GameConfigManager().GetAsTime()
                            , t = Number(element.EndTime) - e;
                        if (t < 1) {
                            element.EndTime = 0
                            element.btn_CollectLabel.string = app.i18n.t("UI_PlayMiniGamesTogether_Collect")
                        }
                        else {
                            element.btn_CollectLabel.string = app.TimeUtil().FormatTimeWithNum(t)
                        }
                        have = true
                    }
                }
                if (have == false) {
                    this.unscheduleAllCallbacks()
                }
            },
            t.prototype.OnInitView = function (e) {

            },
            t.prototype.onbtn_Collect = function (e, data) {
                data = JSON.parse(data)
                app.ActivityManager().RequestDailyRegistrations(3, data.id)
            },
            t.prototype.OnClick = function (e) {
                if (e == "btn_Invite") {
                    var originalUrl = "https://t.me/playtogetherhub_bot/playtogether?start=" + app.UserManager().UserInfo.uid
                    var encodedUrl = encodeURIComponent(originalUrl);
                    cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl)//+ "&text=Convide amigos e ganhe R$ 100 grátis"
                }
                else {
                    app.ActivityManager().RequestDailyRegistrations(2, 0)
                }
            }
            ,
            t.prototype.OnClose = function () {
            }
            ,
            __decorate([c([cc.Node])], t.prototype, "img_ItemCheck", undefined),
            __decorate([c([cc.Label])], t.prototype, "lblGold", undefined),
            __decorate([c(cc.Button)], t.prototype, "btn_Receive", undefined),
            __decorate([c(cc.Node)], t.prototype, "content", undefined),
            __decorate([c(cc.Node)], t.prototype, "cloneItem", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
