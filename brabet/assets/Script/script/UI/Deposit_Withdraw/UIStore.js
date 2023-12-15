let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/UIBaseComponent"), a = require("../../../Common/DB/Hall/StoreManager"), r = require("../../../Common/Define/GameEventDefine"), s = require("../../../Common/Define/UINameDefine"), c = cc._decorator, l = c.ccclass, p = c.property, d = (o = cc.Node,
    __extends(function () {
        var e = null !== o && o.apply(this, arguments) || this;
        return e.isSale = 0,
            e.price = null,
            e
    }, o),
    function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.ShopNumEditBox = null,
                t.toggleContainerItem = null,
                t.ScrollViewItem = null,
                t.ScrollViewSaleItem = null,
                t.node_GameLayoutTime = null,
                t.ItemBgSpriteFrame = [],
                t.UIDW_AccMessage = null,
                t.SaleNode = null,
                t._SelectChannelID = 0,
                t._Sale = 0,
                t.SelColor = null,
                t.NoSelColor = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                var e = this;
                this.JS_Name = "UIStore",
                    this.RegEvent(r.GameEventDefine.GET_GOODS_LIST, this.onGetGoodsList),
                    this.RegEvent(r.GameEventDefine.GOODS_PAY, this.onGoodsPay),
                    this.ShopListNode = this.GetWndNode("scrollview/view/content") || this.GetWndNode("scrollview_content/view/content/pay"),
                    this.CheckPercentNode = this.GetWndNode("scrollview_content/view/content/btnNode"),
                    this._ischeckPercentBox = this.GetWndComponent("scrollview_content/view/content/btnNode/btn_check", cc.Toggle),
                    this.lblExtra = this.GetWndNode("scrollview_content/view/content/amount/lb_Extra"),
                    this.lblSymbol = this.GetWndNode("scrollview_content/view/content/amount/label_symbol"),
                    this.RegEvent(r.GameEventDefine.COMPANY_PAYMENT, function () {
                        e.Refresh()
                    }),
                    this.RegEvent(r.GameEventDefine.UserCenterActivities, this.OnUpdateInfo)
            }
            ,
            t.prototype.OnEnable = function () {
                this.GetWndNode("scrollview_content").active = false,
                    this.Refresh()
            }
            ,
            t.prototype.OnUpdateInfo = function () { }
            ,
            t.prototype.Refresh = function () {
                this.DiffTime = 0,
                    app.ActivityManager().RequestUserCenterActivities();
                var e = app.GameConfigManager().GetGameConfig().recharge_default;
                this.ShopNumEditBox.getComponent(cc.EditBox).string = e ? app.GameConfigManager().GetGameConfig().recharge_default : "";
                for (var t = cc.find("scrollview_content/view/content/num", this.node).children, n = 0; n < t.length; n++) {
                    var o = t[n];
                    o && (o.active = false)
                }
                this.ShopListNode.active = false,
                    app.StoreManager().RequstGoodsList(),
                    this._ischeckPercentBox.check()
            }
            ,
            t.prototype.OnClick = function (e) {
                if (this.Log(e),
                    "btn_service" != e) {
                    if ("btnFAQ" != e)
                        if ("btn_buy" != e) {
                            if ("btn_record" == e) {
                                var t = app.StoreManager().GetSubChannel(this._SelectChannelID);
                                t && t.channel_id || this.ErrLog("this._SelectID: " + this._SelectChannelID)
                            }
                            "btn_check" == e && this.goldListShowPercents()
                        } else {
                            var n = this.ShopNumEditBox.getComponent(cc.EditBox).string;
                            this.GoPay(n)
                        }
                } else
                    cc.systemEvent.emit("open_help_panel")
            }
            ,
            t.prototype.onGetGoodsList = function () {
                this.GetWndNode("scrollview_content").active = true,
                    this.InitToggleContainer()
            }
            ,
            t.prototype.onGameEventShow = function () {
                this.Refresh()
            }
            ,
            t.prototype.InitToggleContainer = function () {
                var e = this;
                this.ShopListNode.removeAllChildren();
                var t = app.StoreManager().GetGoodsList
                    , n = new cc.Component.EventHandler;
                n.target = this.node,
                    n.component = this.JS_Name,
                    n.handler = "SelectItemToggleCallBack",
                    n.customEventData = "",
                    this.ShopListNode.getComponent(cc.ToggleContainer).checkEvents = [],
                    this.ShopListNode.getComponent(cc.ToggleContainer).checkEvents.push(n);
                var o = this.GetWndNode("scrollview")
                    , i = this.GetWndNode("scrollview_content");
                if (0 == t.length)
                    return o && (o.active = false),
                        i && (i.active = false),
                        void this.unscheduleAllCallbacks();
                o && (o.active = true),
                    i && (i.active = true),
                    t.length > 1 ? this.ShopListNode.active = true : this.ShopListNode.active = false,
                    t.forEach(function (t, n) {
                        var o = cc.instantiate(e.toggleContainerItem);
                        0 == n && (o.getComponent(cc.Toggle).isChecked = true);
                        var i = cc.find("Background", o);
                        cc.find("label", i).getComponent(cc.Label).string = t.group_name;
                        var a = cc.find("checkmark", o);
                        cc.find("label", a).getComponent(cc.Label).string = t.group_name;
                        var r = Number(t.max_discount_value);
                        cc.find("node_num", i).active = r > 0,
                            cc.find("node_num", a).active = r > 0,
                            r && (cc.find("node_num/label", i).getComponent(cc.Label).string = r + "%",
                                cc.find("node_num/label", a).getComponent(cc.Label).string = r + "%"),
                            o.active = true,
                            o.name = "" + t.id,
                            e.ShopListNode.addChild(o)
                    }),
                    t.length > 0 && this.InitScrollViewData(t[0].id)
            }
            ,
            t.prototype.SelectItemToggleCallBack = function (e) {
                app.ComUtil().playBtnClick(),
                    this.InitScrollViewData(parseInt(e.node.name))
            }
            ,
            t.prototype.InitScrollViewData = function (e) {
                var t = this;
                this._SelectChannelID = e;
                var n = 0;
                app.GameConfigManager().GetGameConfig().recharge_default ? (this.ShopNumEditBox.getComponent(cc.EditBox).string = app.GameConfigManager().GetGameConfig().recharge_default,
                    n = Number(this.ShopNumEditBox.getComponent(cc.EditBox).string)) : this.ShopNumEditBox.getComponent(cc.EditBox).string = "",
                    this.SetShopNumNodeData(n);
                var o = cc.find("scrollview_content/view/content/num", this.node);
                o.removeAllChildren();
                var i = app.StoreManager().GetChannel(e)
                    , a = app.StoreManager().GetSubChannel(e);
                if (a) {
                    var r = 1 == i.is_usdt
                        , s = cc.find("scrollview_content/view/content/lbl_usdt", this.node);
                    s.active = r;
                    var c = cc.find("scrollview_content/view/content/node_ratio", this.node);
                    if (i.recharge_tips ? (c.getChildByName("label_radio").getComponent(cc.Label).string = i.recharge_tips,
                        c.active = true) : c.active = false,
                        r) {
                        var l = app.GameConfigManager().GetCurrency;
                        s.getComponent(cc.Label).string = i.rate_text + " " + app.i18n.t("UI_Shop_USDT_Tether") + " " + i.rate + " " + l
                    }
                    var p = a.sale.cur_time - Math.round(Date.now() / 1e3);
                    p && (this.DiffTime = p);
                    var d = app.GameConfigManager().GetCurrency;
                    r && (d = app.i18n.t("UI_Shop_USDT_TetherText")),
                        cc.find("scrollview_content/view/content/amount/label", this.node).getComponent(cc.Label).string = d,
                        cc.find("scrollview_content/view/content/below/label", this.node).getComponent(cc.Label).string = i.show_desc,
                        this.SaleNode = null;
                    var h = app.StoreManager().IsJoinActivity(this._SelectChannelID);
                    this.CheckPercentNode.active = h,
                        this.lblExtra.getComponent(cc.Label).string = "",
                        a.goods.forEach(function (e) {
                            var n = cc.instantiate(t.ScrollViewItem);
                            n.active = true,
                                n.getComponent(cc.Sprite).spriteFrame = t.ItemBgSpriteFrame[0];
                            var i = app.GameConfigManager().GetCurrency;
                            cc.find("Label", n).getComponent(cc.Label).string = i + e + a.multiple_unit,
                                n.price = e,
                                n.isSale = 0,
                                n.active = true;
                            var s = app.GameConfigManager().GetGameConfig().recharge_default
                                , c = 0
                                , l = app.StoreManager().GetActSendPercent(a, e);
                            l && (c = Number(l.send_percent)),
                                s && s == e && (n.getComponent(cc.Sprite).spriteFrame = t.ItemBgSpriteFrame[1],
                                    cc.find("mask/spr_bg", n).color = t.SelColor,
                                    n.getChildByName("mask_check").active = true,
                                    t.SetShopNumNodeData(Number(e)));
                            var p = cc.find("mask", n)
                                , d = cc.find("lb_num", p).getComponent(cc.Label)
                                , u = 0;
                            if (c > 0 && h && (u = Number(e) * c / 100),
                                l) {
                                var _ = l.channel_recharge_activity_info;
                                if (_)
                                    for (var m = 0; m < _.length; m++) {
                                        var f = _[m]
                                            , g = Number(f.send_percent);
                                        u += Number(e) * g / 100
                                    }
                            }
                            u > 0 ? (d.string = "+" + u + a.multiple_unit,
                                p.active = t._ischeckPercentBox.isChecked) : (p.active = false,
                                    d.string = ""),
                                r && (i = app.i18n.t("UI_Shop_USDT_TetherText"),
                                    cc.find("Label", n).getComponent(cc.Label).string = i + e);
                            var y = new cc.Component.EventHandler;
                            y.target = t.node,
                                y.component = t.JS_Name,
                                y.handler = "OnBtnGoodClick",
                                n.getComponent(cc.Button).clickEvents.push(y),
                                o.addChild(n)
                        }),
                        this.lblSymbol.getComponent(cc.Label).string = a.multiple_unit
                }
            }
            ,
            t.prototype.EditBoxGoldNumEnd = function (e) {
                this.SetShopNumNodeData(Number(e.string)),
                    this.UpdateSelGoldStates(e.string)
            }
            ,
            t.prototype.UpdateSelGoldStates = function (e) {
                var t = cc.find("scrollview_content/view/content/num", this.node).children;
                this.goodlistSetColor();
                for (var n = 0; n < t.length; n++) {
                    var o = t[n];
                    o.price == e && (o.getComponent(cc.Sprite).spriteFrame = this.ItemBgSpriteFrame[1],
                        cc.find("mask/spr_bg", o).color = this.SelColor,
                        o.getChildByName("mask_check").active = true)
                }
            }
            ,
            t.prototype.onBiaoQianView = function (e, t) {
                var n = cc.find("layout_gold/chip_y/biaoqian", e);
                cc.find("bonus/label", n).getComponent(cc.Label).string = t ? app.i18n.t("Shop_Bonus") : app.i18n.t("Shop_Cash"),
                    cc.find("bonus/bg_bonus", n).active = t,
                    cc.find("bonus/bg_cash", n).active = !t
            }
            ,
            t.prototype.OnBtnGoodClick = function (e) {
                app.ComUtil().playBtnClick(),
                    this.goodlistSetColor();
                var t = e.target
                    , n = t.price;
                this._Sale = t.isSale,
                    e.target.getComponent(cc.Sprite).spriteFrame = this.ItemBgSpriteFrame[1],
                    e.target.getChildByName("mask_check").active = true,
                    cc.find("mask/spr_bg", e.target).color = this.SelColor,
                    this.SetShopNumNodeData(Number(n)),
                    this.ShopNumEditBox.getComponent(cc.EditBox).string = n
            }
            ,
            t.prototype.SetShopNumNodeData = function (e) {
                var t = app.StoreManager().GetSubChannel(this._SelectChannelID)
                    , n = app.StoreManager().GetActSendPercent(t, e)
                    , o = 0;
                this.unscheduleAllCallbacks();
                var i = this.GetWndNode("/scrollview_content/view/content/UIAccMessage")
                    , a = this.GetWndNode("/scrollview_content/view/content/node_AccMessage");
                if (a.removeAllChildren(),
                    a.height = 0,
                    i.active = false,
                    n) {
                    if (o = Number(n.send_percent),
                        app.StoreManager().IsShowActivityInfoTime(n) && app.StoreManager().IsJoinTimerActivity(this._SelectChannelID) && (this._SingleTimeData = n,
                            this.schedule(this.updateTime, 1)),
                        n.activity_info && this._ischeckPercentBox.isChecked && this.CheckPercentNode.active) {
                        i.active = true,
                            cc.find("/view/content/MessageItem/lb_tit", i).getComponent(cc.Label).string = n.activity_info.name;
                        var r = cc.find("/view/content/MessageItem/lb_num", i)
                            , s = app.StoreManager().IsShowActivityInfoCount(n);
                        if (r.active = s,
                            s) {
                            var c = n.activity_info.use_num + "/" + n.activity_info.total_num;
                            r.getComponent(cc.Label).string = "" + c
                        }
                    } else
                        i.active = false;
                    if ((h = n.channel_recharge_activity_info) && this._ischeckPercentBox.isChecked)
                        for (var l = 0; l < h.length; l++) {
                            var p = h[l]
                                , d = cc.instantiate(this.UIDW_AccMessage);
                            a.addChild(d),
                                a.height += d.height,
                                d.getComponent(this.UIDW_AccMessage.name).UpdateActivity(p, t)
                        }
                }
                if (this.lblExtra.getComponent(cc.Label).string = "",
                    this._ischeckPercentBox.isChecked && this.CheckPercentNode.active) {
                    var h, u = 0, _ = "", m = app.StoreManager().GetChannel(this._SelectChannelID);
                    if (o > 0 && (u = m.is_usdt ? Big(Number(e) * o / 100).times(Number(m.rate)).toNumber() : Number(e) * o / 100),
                        n && (h = n.channel_recharge_activity_info))
                        for (l = 0; l < h.length; l++) {
                            var f = h[l]
                                , g = Number(f.send_percent);
                            m && m.is_usdt ? u += Big(Number(e) * g / 100).times(Number(m.rate)).toNumber() : u += Number(e) * g / 100
                        }
                    u > 0 && (_ = app.i18n.t("UI_UIStore_Extra") + "+" + app.GameConfigManager().GetCurrency + u.toFixed(2),
                        this.lblExtra.getComponent(cc.Label).string = _ + t.multiple_unit,
                        this.lblExtra.active = true)
                }
            }
            ,
            t.prototype.updateTime = function () {
                var e = app.StoreManager().GetSubChannel(this._SelectChannelID).act_send;
                if (this._SingleTimeData && (r = this._SingleTimeData.activity_info) && 0 != r.end_time_stamp && 0 != r.start_time_stamp) {
                    if ((s = r.end_time_stamp - (Math.round(Date.now() / 1e3) + this.DiffTime)) < -6)
                        return this.unscheduleAllCallbacks(),
                            void this.Refresh();
                    if (s < 1)
                        return;
                    var t = this.GetWndNode("/scrollview_content/view/content/UIAccMessage");
                    cc.find("/view/content/MessageItem/lb_tit", t).getComponent(cc.Label).string = r.name + "    " + app.TimeUtil().FormatTimeWithNum(s);
                    var n = r.use_num + "/" + r.total_num;
                    cc.find("/view/content/MessageItem/lb_num", t).getComponent(cc.Label).string = "" + n
                }
                for (var o = 0; o < e.length; o++) {
                    var i = e[o].channel_recharge_activity_info;
                    if (i)
                        for (var a = 0; a < i.length; a++) {
                            var r, s;
                            if ((s = (r = i[a]).end_time_stamp - (Math.round(Date.now() / 1e3) + this.DiffTime)) < -6)
                                return this.unscheduleAllCallbacks(),
                                    void this.Refresh();
                            if (s < 1)
                                return;
                            if (a + 1 == i.length)
                                return
                        }
                }
            }
            ,
            t.prototype.goodlistSetColor = function () {
                var e = this;
                cc.find("scrollview_content/view/content/num", this.node).children.forEach(function (t) {
                    t.getComponent(cc.Sprite).spriteFrame = e.ItemBgSpriteFrame[0],
                        cc.find("mask_check", t).active = false,
                        cc.find("mask/spr_bg", t).color = e.NoSelColor
                })
            }
            ,
            t.prototype.goldListShowPercents = function () {
                var e = this;
                cc.find("scrollview_content/view/content/num", this.node).children.forEach(function (t) {
                    cc.find("mask/lb_num", t).getComponent(cc.Label).string && (cc.find("mask", t).active = e._ischeckPercentBox.isChecked,
                        0 == cc.find("mask_check", t).active && (cc.find("mask/spr_bg", t).color = e.NoSelColor,
                            t.getComponent(cc.Sprite).spriteFrame = e.ItemBgSpriteFrame[0]))
                });
                var t = Number(this.ShopNumEditBox.getComponent(cc.EditBox).string);
                this.SetShopNumNodeData(t),
                    this.lblExtra.active = this._ischeckPercentBox.isChecked
            }
            ,
            t.prototype.onGoodsPay = function (e) {
                var t = app.StoreManager().GetPayGoodResult();
                if (t) {
                    if (t.payURL) {
                        app.FormManager().ShowForm(s.UINameDefine.UIStoreQRWebview, t)
                    }
                    else {
                        var n = app.StoreManager().GetChannel(this._SelectChannelID);
                        n.is_usdt ? app.FormManager().ShowForm(s.UINameDefine.UIStoreQRUSDT, e.amount, n.usdt_desc) : app.FormManager().ShowForm(s.UINameDefine.UIStoreQR, t)
                    }
                }
            }
            ,
            t.prototype.GoPay = function (e) {
                if ("" != e) {
                    var t = app.StoreManager().GetChannel(this._SelectChannelID)
                        , n = app.StoreManager().GetSubChannel(this._SelectChannelID);
                    if (t && n)
                        if (t.is_usdt && 2 == t.usdt_type)
                            this.showRechargeInfoForm();
                        else if (n.type != a.StorePayType.GooglePay)
                            this.showRechargeInfoForm();
                        else {
                            var o = {
                                token: app.UserManager().GetUserInfo.token,
                                channel_id: this._SelectChannelID,
                                id: this._SelectChannelID,
                                amount: e,
                                type: n.type
                            };
                            app.StoreManager().RequstPayGood(o)
                        }
                    else
                        this.ErrLog("GetChannel Error, " + this._SelectChannelID)
                } else
                    app.SysNotifyManager().ShowToast("UI.System_22")
            }
            ,
            t.prototype.isCheckInportShopNum = function () {
                var e = app.StoreManager().GetSubChannel(this._SelectChannelID);
                return !(!e || 1 != e.is_custom)
            }
            ,
            t.prototype.showRechargeInfoForm = function () {
                var e = app.StoreManager().GetSubChannel(this._SelectChannelID);
                if (this.isCheckInportShopNum() && "" == this.ShopNumEditBox.getComponent(cc.EditBox).string)
                    app.SysNotifyManager().ShowToast("UI.System_22");
                else {
                    var t = Number(this.ShopNumEditBox.getComponent(cc.EditBox).string);
                    if (t > Number(e.max_amount))
                        app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_26") + e.max_amount);
                    else if (t < Number(e.min_amount))
                        app.SysNotifyManager().ShowToast(app.i18n.t("UI.System_27") + e.min_amount);
                    else {
                        var n = this._Sale
                            , o = 1 == this._ischeckPercentBox.isChecked ? 1 : 0
                            , i = app.StoreManager().GetSubChannel(this._SelectChannelID)
                            , a = 0;
                        if (0 != o) {
                            var r = app.StoreManager().GetActSendPercent(i, t);
                            if (r) {
                                a = Number(r.send_percent);
                                var c = r.channel_recharge_activity_info;
                                if (c)
                                    for (var l = 0; l < c.length; l++) {
                                        var p = c[l];
                                        a += Number(p.send_percent)
                                    }
                            }
                        }
                        var d = {
                            channel_id: this._SelectChannelID,
                            id: this._SelectChannelID,
                            amount: t,
                            send_percent: a,
                            is_sale: n
                        };
                        this.CheckPercentNode.active && (d.join_activity = o),
                            app.FormManager().ShowForm(s.UINameDefine.UIRechargeInfo, d)
                    }
                }
            }
            ,
            __decorate([p(cc.Node)], t.prototype, "ShopNumEditBox", undefined),
            __decorate([p(cc.Prefab)], t.prototype, "toggleContainerItem", undefined),
            __decorate([p(cc.Node)], t.prototype, "ScrollViewItem", undefined),
            __decorate([p(cc.Node)], t.prototype, "ScrollViewSaleItem", undefined),
            __decorate([p(cc.Node)], t.prototype, "node_GameLayoutTime", undefined),
            __decorate([p([cc.SpriteFrame])], t.prototype, "ItemBgSpriteFrame", undefined),
            __decorate([p(cc.Prefab)], t.prototype, "UIDW_AccMessage", undefined),
            __decorate([p(cc.Color)], t.prototype, "SelColor", undefined),
            __decorate([p(cc.Color)], t.prototype, "NoSelColor", undefined),
            __decorate([l], t)
    }(i.default));
n.default = d,
    module.exports = n
