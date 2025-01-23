let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = require("../../../Common/Define/UINameDefine")
    , UIRedDot = require("../../Commons/UIRedDot")
    , s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.img_Item = null,
                t.txt_Item = null,
                t.content = null,
                t.cloneItem = null,
                t.type = "",
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIAllActivity",
                    this.RegEvent(i.GameEventDefine.GET_ALLPROMOTIONS, this.onRechargeInfo)
            }
            ,
            t.prototype.OnShow = function () {
                this.content.removeAllChildren(),
                    app.ActivityManager().AllPromotionData ? this.onRechargeInfo() : app.ActivityManager().RequestGetAllPromotion(),
                    app.Client.OnEvent(i.GameEventDefine.SELECT_TOPTOOGLE, a.Hall_SelectTopToggle.Coupon)
            }
            ,
            t.prototype.onRechargeInfo = function () {
                var e = app.ActivityManager().AllPromotionData;
                e && this.OnInitView(e)
            }
            ,
            t.prototype.OnLayOutStatus = function (e) {
                this.node.getComponent(cc.Layout).resizeMode = e ? cc.Layout.ResizeMode.NONE : cc.Layout.ResizeMode.CONTAINER,
                    this.node.getComponent(cc.Layout).updateLayout()
            }
            ,
            t.prototype.OnInitView = function (e) {
                if (e) {
                    this.content.removeAllChildren()
                    var n = e;
                    // if ("line1" == this.cloneItem.name) {
                    //     for (var o = [], i = 0; i < n.length; i++)
                    //         if ((u = l = n[i]).switch && (o.push(l),
                    //             o.length >= 3 || o.length >= 1 && i == n.length - 1)) {
                    //             for (var a = cc.instantiate(this.cloneItem), r = 0; r < o.length; r++) {
                    //                 var s = o[r];
                    //                 if (s) {
                    //                     var c = a.children[r];
                    //                     s.entrance_img ? app.ImageUtil().LoadImage(c.getChildByName("img"), s.entrance_img) : c.getChildByName("img").getComponent(cc.Sprite).spriteFrame = null,
                    //                         (p = cc.find("title", c)) && (p.getComponent(cc.Label).string = s.mobile_title),
                    //                         (d = cc.find("lbl_intro", c)) && (d.getComponent(cc.Label).string = s.mobile_intro),
                    //                         (h = new cc.Component.EventHandler).target = this.node,
                    //                         h.component = this.JS_Name,
                    //                         h.handler = "ActivityItemCallBack",
                    //                         h.customEventData = s.act_id,
                    //                         c.getComponent(cc.Button).clickEvents = [],
                    //                         c.getComponent(cc.Button).clickEvents.push(h),
                    //                         c.active = true
                    //                 }
                    //             }
                    //             a.active = true,
                    //                 a.parent = this.content,
                    //                 o = []
                    //         }
                    // } else
                    var RedDotIDArr = []
                    for (let i = 0; i < n.length; i++) {
                        var l, p, d, h, u = l = n[i];
                        var cloneItem = cc.instantiate(this.cloneItem)
                        if (u && u.switch) {
                            u.entrance_img ? app.ImageUtil().LoadImage(cloneItem.getChildByName("img"), u.entrance_img) : cloneItem.getChildByName("img").getComponent(cc.Sprite).spriteFrame = null,
                                (p = cc.find("title", cloneItem)) && (p.getComponent(cc.Label).string = u.mobile_title),
                                (d = cc.find("lbl_intro", cloneItem)) && (d.getComponent(cc.Label).string = u.mobile_intro),
                                RedDotIDArr = []
                            if (l.act_id == a.ActivityType.LossRebate) {
                                RedDotIDArr.push(a.RedDotEnum.lossRebate)
                            }
                            else if (l.act_id == a.ActivityType.LuckyLottery) {
                                RedDotIDArr.push(a.RedDotEnum.luckylottery)
                            }
                            else if (l.act_id == a.ActivityType.daily_Registrations) {
                                RedDotIDArr.push(a.RedDotEnum.sign_reward)
                            }
                            else if (l.act_id == a.ActivityType.NewbieBonus) {
                                RedDotIDArr.push(a.RedDotEnum.newbieBonus)
                            }
                            else if (l.act_id == a.ActivityType.BonusUnfrozen) {
                                RedDotIDArr.push(a.RedDotEnum.bonusUnfrozen)
                            }
                            cloneItem.getChildByName("node_RedDot").getComponent(UIRedDot.default).RedDotIDArr = RedDotIDArr
                            cloneItem.active = true,
                                cloneItem.parent = this.content,
                                (h = new cc.Component.EventHandler).target = this.node,
                                h.component = this.JS_Name,
                                h.handler = "ActivityItemCallBack",
                                h.customEventData = l.act_id,
                                cloneItem.getComponent(cc.Button).clickEvents = [],
                                cloneItem.getComponent(cc.Button).clickEvents.push(h)
                        }
                    }
                }
            }
            ,
            t.prototype.ActivityItemCallBack = function (e, t) {
                app.ComUtil().playBtnClick()
                if (t == a.ActivityType.daily_Registrations) {
                    if (!app.UserManager().GetIsOfficialPopup())
                        app.FormManager().ShowForm(r.UINameDefine.UIActivityDailyRegistrations)
                }
                else if (t == a.ActivityType.Cash_Wheel) {
                    app.FormManager().ShowForm(r.UINameDefine.UICashWheel)
                }
                else if (t == a.ActivityType.LossRebate) {
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityLossRebate)
                }
                else if (t == a.ActivityType.NewbieBonus) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityNewbieBonus)
                }
                else if (t == a.ActivityType.LuckyLottery) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIActivityLuckyLottery)
                }
                else if (t == a.ActivityType.BonusUnfrozen) {
                    //if (!app.UserManager().GetIsOfficialPopup())
                    app.FormManager().ShowForm(r.UINameDefine.UIBonusUnfrozen)
                }
                else {
                    app.FormManager().ShowForm(r.UINameDefine.UIActivity, t)
                }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.content.removeAllChildren()
            }
            ,
            __decorate([l(cc.Node)], t.prototype, "img_Item", undefined),
            __decorate([l(cc.Node)], t.prototype, "txt_Item", undefined),
            __decorate([l(cc.Node)], t.prototype, "content", undefined),
            __decorate([l(cc.Node)], t.prototype, "cloneItem", undefined),
            __decorate([c], t)
    }(o.default);
n.default = p,
    module.exports = n
