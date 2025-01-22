let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GetModel = n.HttpServerManager = undefined;
var o = require("../Define/GameHttpDefine")
  , i = require("../Define/HttpServerDefine")
  , a = require("./BaseHttpServerManager")
  , r = {};
r[i.HttpAPI.GET_USERINFO] = true,
r[i.HttpAPI.COMMON_CONFIG] = true,
r[i.HttpAPI.LOGIN_LOGIN] = true,
r[i.HttpAPI.LOGIN_REGISTER] = true,
r[i.HttpAPI.GET_DIRECTDETAILLIST] = true,
r[i.HttpAPI.VISITOR_LOGIN] = true,
r[i.HttpAPI.GET_NewbieBonusReceive] = true,
r[i.HttpAPI.GOODS_PAY] = true,
r[o.GameHttpAPI.SLOT_GAME_END] = true,
r[o.GameHttpAPI.SLOT_GAME_RESULT] = true,
r[o.GameHttpAPI.SLOT_CHANGE_ANTES] = true,
r[o.GameHttpAPI.SLOT_COMPARE] = true,
r[o.GameHttpAPI.SLOT2_GAME_END] = true,
r[o.GameHttpAPI.SLOT2_GAME_RESULT] = true,
r[o.GameHttpAPI.SLOT2_CHANGE_ANTES] = true,
r[o.GameHttpAPI.SLOT2_COMPARE] = true,
r[o.GameHttpAPI.LRoller_GetResult] = true,
r[o.GameHttpAPI.MINES_BET] = true,
r[o.GameHttpAPI.CRAZY_MINES_BET] = true,
r[o.GameHttpAPI.SJB_GAME_RESULT] = true,
r[o.GameHttpAPI.SJB_COMPARE] = true,
r[o.GameHttpAPI.Dice_bet] = true,
r["/single_game.gemstone/gameResult"] = true,
r["/single_game.goal_shoot/end"] = true,
r["/single_game.goal_shoot/gameResult"] = true;
var s = {};
s[i.HttpAPI.COMMON_CONFIG] = true,
s[i.HttpAPI.GAME_LIST] = true;
var c = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        e.prototype.Init.call(this),
        this.JS_Name = "HttpServerMananger",
        this.Log("Init")
    }
    ,
    t.prototype.SendHttpPack = function(t, n, o, i) {
        undefined === o && (o = true),
        undefined === i && (i = true);
        var a = app.LanguageManager().GetLocalLanguage(true);
        n || (n = {}),
        n.language = a,
        e.prototype.SendHttpPack.call(this, t, n, o, i)
    }
    ,
    t.prototype.ObserverErrorEvent = function(e) {
        return r[e]
    }
    ,
    t.prototype.ObserverFailedEvent = function(e) {
        return s[e]
    }
    ,
    t
}(a.BaseHttpServerManager);
n.HttpServerManager = c;
var l = null;
n.GetModel = function() {
    return l || (l = new c),
    l
}
,
module.exports = n
