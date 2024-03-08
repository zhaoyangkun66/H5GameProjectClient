let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = [new cc.Color(111,37,63,255), new cc.Color(33,96,104,255), new cc.Color(76,96,177,255)]
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.data = null,
        t.bg_Sprs = [],
        t
    }
    return __extends(t, e),
    t.prototype.RefreshData = function(e, t) {
        var n = this;
        this.data = e,
        this.node.active = true,
        cc.find("label/label", this.node).getComponent(cc.Label).string = this.data.name,
        cc.find("label/time", this.node).getComponent(cc.Label).string = this.data.day,
        t = t >= 2 ? 2 : t,
        cc.find("mask/item_light", this.node).color = s[t],
        cc.find("icon_1", this.node).getComponent(cc.Sprite).spriteFrame = this.bg_Sprs[t],
        cc.find("layout_lose/lost", this.node).getComponent(cc.Label).string = (this.data.lost > this.data.max_gold ? this.data.max_gold : this.data.lost) + "",
        cc.find("layout_lose/max", this.node).getComponent(cc.Label).string = this.data.max_gold + "";
        var o = cc.find("layout/time", this.node)
          , i = cc.find("layout/btn/disabled", this.node);
        cc.find("layout/btn/btn_receive/label", this.node).getComponent(cc.Label).string = (this.data.lost > this.data.max_gold ? this.data.max_gold : this.data.lost) + "",
        i.active = true,
        o.active = false,
        cc.find("complete", this.node).active = 1 == this.data.is_get || 0 == this.data.is_get && this.data.lost <= 0 && this.data.start_get_time - app.LoseWaiverManager().GetSeverTime <= 0,
        0 == this.data.is_get && this.data.start_get_time <= app.LoseWaiverManager().GetSeverTime && (i.active = this.data.lost <= 0),
        1 == this.data.is_get && (i.active = true),
        0 == this.data.is_get && this.data.start_get_time > app.LoseWaiverManager().GetSeverTime && (o.active = true,
        o.getComponent(cc.Label).string = this.formatTimeWithNum(this.data.start_get_time - app.LoseWaiverManager().GetSeverTime),
        this.schedule(function() {
            var e = n.data.start_get_time - app.LoseWaiverManager().GetSeverTime;
            if (e < 1)
                return n.unscheduleAllCallbacks(),
                void app.LoseWaiverManager().RequestLoseWaiver();
            o.getComponent(cc.Label).string = n.formatTimeWithNum(e)
        }, 1))
    }
    ,
    t.prototype.formatTimeWithNum = function(e) {
        var t = e / 86400 >> 0
          , n = (e - 86400 * t) / 3600 >> 0
          , o = (e - 86400 * t - 3600 * n) / 60 >> 0
          , i = e - 86400 * t - 3600 * n - 60 * o;
        return (t > 0 ? t + " " + app.i18n.t("UI_Loss_Waiver_Days") : app.i18n.t("UI_Loss_Waiver_Ex")) + " " + n + ":" + (o < 10 ? "0" + o : o) + ":" + (i < 10 ? "0" + i : i)
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_receive" != e || this.onReceiveAward()
    }
    ,
    t.prototype.onReceiveAward = function() {
        this.data.start_get_time - app.LoseWaiverManager().GetSeverTime > 0 || this.data.lost <= 0 || 1 == this.data.is_get || app.LoseWaiverManager().RequstFreeLose(this.data.tid)
    }
    ,
    t.prototype.onDestroy = function() {
        this.unscheduleAllCallbacks()
    }
    ,
    __decorate([r([cc.SpriteFrame])], t.prototype, "bg_Sprs", undefined),
    __decorate([a], t)
}(o.default);
n.default = c,
module.exports = n
