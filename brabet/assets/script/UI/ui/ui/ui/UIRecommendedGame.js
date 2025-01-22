let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../../Common/Define/GameEventDefine")
  , i = require("../../../Hall/UIGameSelectAll")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        e.prototype.OnLoadInit.call(this),
        this.JS_Name = "UIRecommendedGame",
        this.RegEvent(o.GameEventDefine.RecommendGameList, this.OnGetGameList)
    }
    ,
    t.prototype.init = function() {
        app.GameConfigManager().GetRecommendedGameList() ? this.renderGameList() : app.GameConfigManager().RequestRecommendedGames()
    }
    ,
    t.prototype.renderGameList = function() {
        var e = app.GameTypeManager().GetRecommendTypeGameList();
        this.renderGame(e)
    }
    ,
    t.prototype.OnGetGameList = function() {
        this.renderGameList()
    }
    ,
    __decorate([r], t)
}(i.default));
n.default = s,
module.exports = n
