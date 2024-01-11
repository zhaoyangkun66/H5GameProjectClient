let a ={} 
Object.defineProperty(a, "__esModule", {
    value: true
});
var n= require("../../../Common/Define/GameEventDefine")
  , o= require("../../../script/common_hall/GameHistoryListBase")
  , i = cc._decorator
  , s = i.ccclass
  , r = (i.property,
function(t) {
    function e() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(e, t),
    e.prototype.OnLoadInit = function() {
        t.prototype.OnLoadInit.call(this),
        this.RegEvent(n.GameEventDefine.GAME_LIST_REMOVER, this.OnRemoverChildren),
        this.RegEvent(n.GameEventDefine.GAME_UPDATE_LISTINFO, this.OnUpdateInfo),
        this.RegEvent(n.GameEventDefine.GAME_HISTORY_LIST, this.initView)
    }
    ,
    e.prototype.OnItemInfo = function(e, a) {
        t.prototype.OnItemInfo.call(this, e, a),
        e.name = a.BetPlayerID + "",
        e.BetSeat = a.BetSeat,
        cc.find("bg_id/label", e).getComponent(cc.Label).string = a.Nickname,
        cc.find("bg_odds/bg", e).active = false;
        var n = cc.find("bg_odds/label", e);
        n.color = cc.Color.WHITE,
        n.getComponent(cc.Label).string = "Not started";
        var o = a.BetGold
          , i = cc.find("bg_bets/label", e);
        i.getComponent(cc.Label).string = o.toFixed(2),
        i.color = cc.Color.WHITE
    }
    ,
    e.prototype.OnUpdateInfo = function(t) {
        for (var e = 0; e < this.content.children.length; e++) {
            var a = this.content.children[e];
            if (Number(a.name) == t.PlayerID && a.BetSeat == t.PatternID) {
                var n = cc.find("bg_odds/label", a)
                  , o = Number(t.Cards[0] / 100);
                n.getComponent(cc.Label).string = o.toFixed(2) + "X",
                n.color = o >= 2 ? new cc.Color(71,187,168) : cc.Color.WHITE;
                var i = cc.find("bg_odds/bg", a);
                i.active = true,
                i.color = o >= 2 ? new cc.Color(71,187,168) : new cc.Color(40,51,67);
                var s = Number(t.Cards[2] / 100)
                  , r = cc.find("bg_bets/label", a);
                r.getComponent(cc.Label).string = s.toFixed(2),
                r.color = new cc.Color(97,241,78);
                break
            }
        }
    }
    ,
    e.prototype.onDestroy = function() {
        app.Client.UnRegTargetEvent(this)
    }
    ,
    __decorate([s], e)
}(o.GameHistoryListBase));
a.default = r,
module.exports = a
