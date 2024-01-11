let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
    , i = require("../../Common/Define/LanguageDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = (a.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.OnLoadInit = function () {
                    this.LanguageNodeList = {}
                    this.LanguageNodeList[1] = cc.find("toggle_Portuguese", this.node)
                    this.LanguageNodeList[2] = cc.find("toggle_Spanish", this.node)


                }
                ,
                t.prototype.OnEnable = function () {
                    //  this.InitLanguageConfig(),
                    this.InitLanSelect()
                }
                ,
                t.prototype.InitLanguageConfig = function () {

                },
                t.prototype.InitLanSelect = function () {
                    var e = app.LanguageManager().GetLocalSelectRegion();
                    if (e) {
                        this.OnVisible(e)
                    }
                },
                t.prototype.OnVisible = function (e) {
                    for (var t in this.LanguageNodeList)
                        if (Object.hasOwnProperty.call(this.LanguageNodeList, t)) {
                            var n = this.LanguageNodeList[t];
                            n && (cc.find("checkmark", n).active = e == t)
                        }
                },
                t.prototype.OnClick = function (e) {
                    var index = this.getLanguage(e);
                    if ("" != index) {
                        app.LanguageManager().SetSelectRegion(index)
                        if (index == 1) {
                            app.LanguageManager().SetLanguage(i.default.ptpt)
                        } else {
                            app.LanguageManager().SetLanguage(i.default.eses)
                        }
                        app.LoginManager().RemoveCurrentUser()
                        location.reload();
                    }
                }
                ,
                t.prototype.getLanguage = function (e) {
                    var t = "";
                    switch (e) {
                        case "toggle_Portuguese":
                            t = 1;
                            break;
                        case "toggle_Spanish":
                            t = 2
                    }
                    return t
                }
                ,
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
