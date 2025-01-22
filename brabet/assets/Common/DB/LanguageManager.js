let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.LanguageManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("../Define/HttpServerDefine")
    , r = require("../Define/LanguageDefine")
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t._LanguageList = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "LanguageManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_LANG_LIST, this.OnGetLanguageList, this)
            }
            ,
            t.prototype.RequestLangList = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_LANG_LIST)
            }
            ,
            t.prototype.OnGetLanguageList = function (e) {
                // if (isgoServer) {
                //     e.push({
                //         "id": 3,
                //         "icon": "https://www.bigerwin.com/uploads/images/langconfig/es-es.png",
                //         "lang": "es-es",
                //         "name": "Español",
                //         "default": 0,
                //         "sort": 3
                //     })
                // }
                // else {
                //     e.push({
                //         "id": 3,
                //         "icon": "https://www.bigerwin.com/uploads/images/langconfig/es-es.png",
                //         //"icon": "https://d37kgoga0nrx6r.cloudfront.net/static/images/lang/es-es.png",
                //         "lang": "es-es",
                //         "name": "Español",
                //         "default": 0,
                //         "sort": 3
                //     })
                // }
                this._LanguageList = e,
                    this.SetServerDefaultLanguage()
            }
            ,
            t.prototype.SetDefaultLanguage = function () {
                var e = this.GetLocalLanguage(true);
                app.i18n.selectLang(e)
            }
            ,
            t.prototype.SetLanguage = function (e) {
                app.i18n.selectLang(e) && (app.LocalDataManager().SetConfigProperty("SysSetting", "Language", e),
                    app.Client.OnEvent(i.GameEventDefine.HALL_Language))
            },
            t.prototype.SetSelectRegion = function (e) {
                app.LocalDataManager().SetConfigProperty("SysSetting", "LocalSelectRegion4" + channelIDGlobal, e)
            }
            ,
            t.prototype.GetLanguageItem = function () {
                var e = this.GetLocalLanguage(true)
                    , t = this._LanguageList;
                if (t && e)
                    for (var n = 0; n < t.length; n++) {
                        var o = t[n];
                        if (o.lang == e)
                            return o
                    }
            }
            ,
            t.prototype.GetLocalLanguage = function (e) {
                return app.LocalDataManager().GetConfigProperty("SysSetting", "Language") || (e ? r.default.enus : null)
            },
            t.prototype.GetLocalSelectRegion = function (e) {
                return app.LocalDataManager().GetConfigProperty("SysSetting", "LocalSelectRegion4" + channelIDGlobal)
            }
            ,
            t.prototype.SetServerDefaultLanguage = function () {
                if (!this.GetLocalLanguage())
                    for (var e = 0; e < this._LanguageList.length; e++) {
                        var t = this._LanguageList[e];
                        if (1 == t.default) {
                            this.SetLanguage(t.lang);
                            break
                        }
                    }
            }
            ,
            t.prototype.GetLanguageList = function () {
                return this._LanguageList
            }
            ,
            t
    }(o.Singleton);
n.LanguageManager = s,
    module.exports = n
