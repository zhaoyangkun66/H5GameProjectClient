let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../script/common_hall/BaseSingleGameHistory")
  , i = cc._decorator
  , a = i.ccclass
  , s = (i.property,
function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.itemInfo = function(e, n) {
        t.prototype.itemInfo.call(this, e, n),
        cc.find("id/label", e).getComponent(cc.Label).string = n.round_id + "",
        cc.find("mines/label", e).getComponent(cc.Label).string = n.lnum + "",
        cc.find("bets/label", e).getComponent(cc.Label).string = Number(n.bet_gold).toFixed(2),
        cc.find("time/label", e).getComponent(cc.Label).string = n.create_time;
        var o = cc.find("status/label", e);
        o.getComponent(cc.Label).string = null == n.profit_gold ? "" : n.profit_gold + "",
        o.color = 2 == n.is_win ? new cc.Color(255,81,81) : new cc.Color(82,180,69)
    }
    ,
    __decorate([a], e)
}(o.default));
n.default = s,
module.exports = n
