let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LoadTextManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = require("../Define/HttpServerDefine")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._loadTextList = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "LoadTextManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_LOADTEXTLIST, this.OnGetloadTextList, this)
    }
    ,
    t.prototype.RequestloadTextList = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_LOADTEXTLIST, {})
    }
    ,
    t.prototype.OnGetloadTextList = function(e) {
        this._loadTextList = e,
        app.Client.OnEvent(i.GameEventDefine.FINISH_LOADTEXTLIST)
    }
    ,
    t.prototype.OnGetLanguageList = function() {
        this.RequestloadTextList()
    }
    ,
    t.prototype.GetloadTextList = function() {
        return this._loadTextList
    }
    ,
    t
}(o.Singleton);
n.LoadTextManager = r,
module.exports = n
