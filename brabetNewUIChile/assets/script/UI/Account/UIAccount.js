let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/DB/PageTrackManager")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/TrackEventName")
    , c = require("../../../Common/Define/UINameDefine")
    , l = require("./UICashAccount")
    , p = cc._decorator
    , d = p.ccclass
    , h = p.property
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.layer_account = null,
                t.layer_info = null,
                t.myNode = null,
                t.vipSpr = [],
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.UPDATE_USER_INFO, this.OnInitMyInfo),
                    this.RegEvent(a.GameEventDefine.GET_BIND_EMAIL, this.initEmail),
                    this.RegEvent(a.GameEventDefine.GET_BIND_TEL, this.initPhone),
                    this.RegEvent(a.GameEventDefine.CHANGE_BIRTHDAY, this.initBirthday),
                    this.RegEvent(a.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.onUpdateUserVip)
                this.RegEvent(a.GameEventDefine.UPDATE_USER_VIP, this.onUpdateUserVip)
            }
            ,
            t.prototype.OnShow = function () {
                for (var e, t, n, o = this, i = [], s = 0; s < arguments.length; s++)
                    i[s] = arguments[s];
                if (app.Client.OnEvent(a.GameEventDefine.SELECT_TOPTOOGLE, r.Hall_SelectTopToggle.Mine),
                    this.OnInitMyInfo(),
                    this.initInfo(),
                    this.data = i[0],
                    null === (e = this.data) || undefined === e ? undefined : e.isPlay) {
                    var c = this.layer_account.getComponent(l.default);
                    c.setIsPay(this.data.isPlay)
                }
                (null === (t = this.data) || undefined === t ? undefined : t.isNone) && (this.OnShowNode(true),
                    this.OnToggleView(true)),
                    (null === (n = this.data) || undefined === n ? undefined : n.Vertical) && this.scheduleOnce(function () {
                        app.Client.OnEvent(a.GameEventDefine.JUMP_SCROLL_PERCENT, o.data.Vertical)
                    }, .5),
                    "subClick" in this.data && this.scheduleOnce(function () {
                        app.Client.OnEvent(a.GameEventDefine.UICashAccountClick, o.data.subClick)
                    }, .5)
            }
            ,
            t.prototype.OnClick = function (e) {
                "btn_account" != e ? "btn_myInfo" != e ? "btn_setaccount" != e ? "face" != e && "btn_Arrow" != e ? "UIAccMessage" != e || app.StoreManager().ShowStoreUI({
                    in_type: s.default.PAGETRACK_EVENT_WITHDRAW_USERCENTER
                }) : app.FormManager().ShowForm(c.UINameDefine.UIPlayerEditInfo) : app.FormManager().ShowForm(c.UINameDefine.UIAccountSetting) : this.OnToggleView(false) : this.OnToggleView(true)
            }
            ,
            t.prototype.OnToggleView = function (e) {
                this.layer_account.active = e,
                    this.layer_info.active = !e
            }
            ,
            t.prototype.OnShowNode = function (e) {
                this.GetWndNode("top/ToggleContainer/btn_account").getComponent(cc.Toggle).isChecked = e,
                    this.GetWndNode("top/ToggleContainer/btn_myInfo").getComponent(cc.Toggle).isChecked = !e
            }
            ,
            t.prototype.OnInitMyInfo = function () {
                if (this.myNode) {
                    var e = app.UserManager().UserInfo;
                    this.GetWndComponent("name", cc.Label, this.myNode).string = e.nickname;
                    var t = this.GetWndNode("face/mask/tx", this.myNode);
                    app.ImageUtil().LoadHead(t, String(e.headimg)),
                        this.GetWndComponent("label_id", cc.Label, this.myNode).string = e.uid + "",
                        this.onUpdateUserVip()
                }
            }
            ,
            t.prototype.initInfo = function () {
                this.initPhone(),
                    this.initEmail(),
                    this.initBirthday()
            }
            ,
            t.prototype.initPhone = function () {
                var e = this.GetWndNode("phone", this.myNode)
                    , t = app.UserManager().UserInfo
                    , n = t.area ? "+" + t.area + " " + t.tel : t.tel;
                this.GetWndNode("label", e).getComponent(cc.Label).string = n,
                    this.GetWndNode("label", e).active = "" != t.tel,
                    this.GetWndNode("unbound", e).active = "" == t.tel
            }
            ,
            t.prototype.initEmail = function () {
                var e = this.GetWndNode("mail", this.myNode)
                    , t = app.UserManager().UserInfo;
                this.GetWndNode("unbound", e).active = "" == t.account,
                    this.GetWndNode("label", e).active = "" != t.account,
                    this.GetWndComponent("label", cc.Label, e).string = t.account
            }
            ,
            t.prototype.initBirthday = function () {
                var e = this.GetWndNode("birthday", this.myNode)
                    , t = app.UserManager().GetUserInfo;
                this.GetWndNode("unbound", e).active = !t.birthday,
                    this.GetWndComponent("unbound/lbl", cc.Label, e).string = app.i18n.t("UI_Not_filled"),
                    this.GetWndNode("label", e).active = !!t.birthday;
                var n = new Date(1e3 * t.birthday);
                this.GetWndComponent("label", cc.Label, e).string = n.getFullYear() + "." + (n.getMonth() + 1) + "." + n.getDate()
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.data && this.data.in_type && 2 == i.PageTrackpageType[this.data.in_type] && app.EventTrackManager().LogEvent(this.data.in_type, {
                    out_type: 1
                })
            }
            ,
            t.prototype.onUpdateUserVip = function () {
                var e = this.GetWndNode("face/frame_vip", this.myNode)
                    , t = app.UserManager().GetUserInfo
                    , n = 0 == t.is_keep_level ? "#828282" : "#FF8000"
                    , o = 0 == t.is_keep_level ? "#ffffff" : "#FFFF24"
                    , i = 0 == t.is_keep_level ? this.vipSpr[1] : this.vipSpr[0];
                e.getComponent(cc.Sprite).spriteFrame = i;
                var a = this.GetWndComponent("face/frame_vip/label", cc.Label, this.myNode);
                a.string = "V" + (app.UserManager().GetUserInfo.vip_id - 1),
                    a.node.color = cc.Color.BLACK.fromHEX(n),
                    a.node.getComponent(cc.LabelOutline).color = cc.Color.BLUE.fromHEX(o)
            }
            ,
            __decorate([h(cc.Node)], t.prototype, "layer_account", undefined),
            __decorate([h(cc.Node)], t.prototype, "layer_info", undefined),
            __decorate([h(cc.Node)], t.prototype, "myNode", undefined),
            __decorate([h([cc.SpriteFrame])], t.prototype, "vipSpr", undefined),
            __decorate([d], t)
    }(o.default);
n.default = u,
    module.exports = n
