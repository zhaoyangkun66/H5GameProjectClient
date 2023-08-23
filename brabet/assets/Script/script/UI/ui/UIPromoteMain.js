let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"),
    a = require("../../../Common/Define/GameEventDefine"),
    r = require("../../../Common/Define/ShareDefine");
(function (e) {
    e[e.PROMOTE = 0] = "PROMOTE",
        e[e.MEMBER = 1] = "MEMBER"
}
)(o || (o = {}));
var s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.tgC = null,
                t.layerWin = [],
                t.InviteToggle = null,
                t.data = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(a.GameEventDefine.SHOW_PROMOTELAYERINDEX, this.showWin)
            }
            ,
            t.prototype.OnShow = function () {
                for (var e, t, n = this, o = [], i = 0; i < arguments.length; i++)
                    o[i] = arguments[i];
                app.Client.OnEvent(a.GameEventDefine.SELECT_TOPTOOGLE, r.Hall_SelectTopToggle.Share),
                    this.InviteToggle.check(),
                    this.data = o[0];
                var s = (null === (e = this.data) || undefined === e ? undefined : e.subName) ? this.data.subName : r.PromoteMainSelTopTe.Invite;
                this.showWin(s),
                    (null === (t = this.data) || undefined === t ? undefined : t.Vertical) && this.scheduleOnce(function () {
                        app.Client.OnEvent(a.GameEventDefine.JUMP_SCROLL_PERCENT, n.data.Vertical)
                    }, .5)
            }
            ,
            t.prototype.onSelect = function (e) {
                app.ComUtil().playBtnClick();
                var t = this.tgC.toggleItems.indexOf(e);
                t > -1 && this.showWin(t)
            }
            ,
            t.prototype.showWin = function (e) {
                this.tgC.toggleItems[e].getComponent(cc.Toggle).check();
                for (var t = 0; t < this.layerWin.length; t++)
                    this.layerWin[t].active = t == e
            }
            ,
            __decorate([l(cc.ToggleContainer)], t.prototype, "tgC", undefined),
            __decorate([l(cc.Node)], t.prototype, "layerWin", undefined),
            __decorate([l(cc.Toggle)], t.prototype, "InviteToggle", undefined),
            __decorate([c], t)
    }(i.default);
n.default = p,
    module.exports = n
