let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Component/Marquee")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.lbGold = null,
                t.btnMenu = null,
                t.nodeMarquee = null,
                t.btnRefresh = null,
                t.nodeVip = null,
                t.placeholder = null,
                t.vipSpr = [],
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.SHOW_GAME_DOWN, this.onShowGameDown),
                    this.RegEvent(a.GameEventDefine.HIDE_GAME_DOWN, this.onHideGameDown),
                    this.RegEvent(a.GameEventDefine.UPDATE_USER_VIP, this.onUpdateUserVip),
                    this.RegEvent(a.GameEventDefine.UPDATE_TOTAL_RECHARGE, this.OnUpdateUI),
                    this.RegEvent(a.GameEventDefine.HALLTOP_V_MENU, this.OnHallTopMenu)
                // this.btnMenu = this.GetWndNode("information/btn_menu")
                this.RegEvent(a.GameEventDefine.GET_channelList, this.updateJiaoBiao)
            }
            ,
            t.prototype.updateJiaoBiao = function () {
                this.JiaoBiao = cc.find("btnSignUp/Label/JiaoBiao", this.login_Node)
                if (channelIDNewbieBonusShow) {
                    this.JiaoBiao.active = true
                }
                else {
                    this.JiaoBiao.active = false
                }
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.nodeMarquee && (this.nodeMarquee.active = false)
                this.updateJiaoBiao()
            }
            ,
            t.prototype.onShowGameDown = function () {
                this.nodeMarquee && (this.nodeMarquee.getComponent(i.default).StartText(),
                    this.nodeMarquee.active = true,
                    this.lbGold.node.active = false,
                    this.btnRefresh.active = false)
            }
            ,
            t.prototype.onHideGameDown = function () {
                this.nodeMarquee && (this.nodeMarquee.active = false,
                    this.lbGold.node.active = true,
                    this.btnRefresh.active = true)
            }
            ,
            t.prototype.OnUpdateUI = function () {
                this.onUpdateUserVip()
            }
            ,
            t.prototype.onUpdateUserVip = function () {
                if (this.nodeVip) {
                    var e = app.UserManager().GetUserInfo
                        , t = e.vip_id - 1;
                    this.nodeVip.getComponent(cc.Label).string = "V" + t;
                    var n = 0 == e.is_keep_level ? "#7C7C7C" : "#AE392B"
                        , o = 0 == e.is_keep_level ? this.vipSpr[1] : this.vipSpr[0];
                    this.nodeVip.parent.getComponent(cc.Sprite).spriteFrame = o,
                        this.nodeVip.getComponent(cc.LabelOutline).color = cc.Color.BLUE.fromHEX(n)
                }
            }
            ,
            t.prototype.OnHallTopMenu = function (e) {
                this.btnMenu.scaleX = e
            }
            ,
            __decorate([c([cc.SpriteFrame])], t.prototype, "vipSpr", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
