let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.TextManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("../Define/HttpServerDefine")
    , r = require("../Define/TextDefine")
    , s = function (e) {
        function t() {
            return null !== e && e.apply(this, arguments) || this
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "TextManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_TEXTINFOMORE, this.OnTextInfoMore, this)
            }
            ,
            t.prototype.RequestTextInfoMore = function () {
                app.Client.OnEvent(i.GameEventDefine.INIT_TEXT)
                // var e = "";
                // Object.keys(r.TextDefine).forEach(function (t) {
                //     e = "" + e + r.TextDefine[t] + ","
                // }),
                //     app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_TEXTINFOMORE, {
                //         name: e
                //     })
            }
            ,
            t.prototype.OnTextInfoMore = function (e) {
                this.textInfo = e,
                    app.Client.OnEvent(i.GameEventDefine.INIT_TEXT)
            }
            ,
            t.prototype.GetTextInfo = function (e) {
               // return ""
                for (var t = 0; t < this.textInfo.length; t++) {
                    var n = this.textInfo[t];
                    if (n.name === e)
                        return n.value
                }
                return this.ErrLog("GetTextInfo error: " + e),
                    null
            }
            ,
            t
    }(o.Singleton);
n.TextManager = s,
    module.exports = n
