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
                    for (var e in this.LanguageNodeList = {},
                        this.LanguageNodeList[i.default.enus] = cc.find("toggle_en", this.node),
                        this.LanguageNodeList[i.default.hiin] = cc.find("toggle_en_IN", this.node),
                        this.LanguageNodeList[i.default.thth] = cc.find("toggle_th_TH", this.node),
                        this.LanguageNodeList[i.default.zhcn] = cc.find("toggle_zh_CN", this.node),
                        this.LanguageNodeList[i.default.zhhk] = cc.find("toggle_zh_HK", this.node),
                        this.LanguageNodeList[i.default.vivn] = cc.find("toggle_vi_VN", this.node),
                        this.LanguageNodeList[i.default.idid] = cc.find("toggle_id_ID", this.node),
                        this.LanguageNodeList[i.default.intelugu] = cc.find("toggle_IN_Telugu", this.node),
                        this.LanguageNodeList[i.default.inmarathi] = cc.find("toggle_IN_Marathi", this.node),
                        this.LanguageNodeList[i.default.intelugu] = cc.find("toggle_IN_Telugu", this.node),
                        this.LanguageNodeList[i.default.inmarathi] = cc.find("toggle_IN_Marathi", this.node),
                        this.LanguageNodeList[i.default.ptpt] = cc.find("toggle_Portuguese", this.node),
                        this.LanguageNodeList[i.default.eses] = cc.find("toggle_Spanish", this.node),
                        this.LanguageNodeList)
                        if (Object.hasOwnProperty.call(this.LanguageNodeList, e)) {
                            var t = this.LanguageNodeList[e];
                            t && (t.active = false)
                        }
                }
                ,
                t.prototype.OnEnable = function () {
                    this.InitLanguageConfig(),
                        this.InitLanSelect()
                }
                ,
                t.prototype.InitLanguageConfig = function () {
                    var e = app.LanguageManager().GetLanguageList();
                    if (e)
                        for (var t = 0; t < e.length; t++) {
                            var n = e[t]
                                , o = this.LanguageNodeList[n.lang];
                            if (o) {
                                o.active = true,
                                    o.zIndex = Number(n.sort),
                                    cc.find("Background/label", o).getComponent(cc.Label).string = n.name,
                                    cc.find("checkmark/label", o).getComponent(cc.Label).string = n.name;
                                var i = cc.find("checkmark/icon", o);
                                app.ImageUtil().LoadImage(i, n.icon)
                            }
                        }
                    this.node.getComponent(cc.Layout).updateLayout()
                }
                ,
                t.prototype.InitLanSelect = function () {
                    var e = app.LanguageManager().GetLocalLanguage(true);
                    null != e && this.OnVisible(e)
                }
                ,
                t.prototype.OnVisible = function (e) {
                    for (var t in this.LanguageNodeList)
                        if (Object.hasOwnProperty.call(this.LanguageNodeList, t)) {
                            var n = this.LanguageNodeList[t];
                            n && (cc.find("checkmark", n).active = e == t)
                        }
                }
                ,
                t.prototype.OnClick = function (e) {
                    var t = this.getLanguage(e);
                    if ("" != t)
                        return this.OnVisible(t),
                            app.LanguageManager().SetLanguage(t),
                            void app.TextManager().RequestTextInfoMore()
                }
                ,
                t.prototype.getLanguage = function (e) {
                    var t = "";
                    switch (e) {
                        case "toggle_en":
                            t = i.default.enus;
                            break;
                        case "toggle_en_IN":
                            t = i.default.hiin;
                            break;
                        case "toggle_th_TH":
                            t = i.default.thth;
                            break;
                        case "toggle_zh_CN":
                            t = i.default.zhcn;
                            break;
                        case "toggle_zh_HK":
                            t = i.default.zhhk;
                            break;
                        case "toggle_vi_VN":
                            t = i.default.vivn;
                            break;
                        case "toggle_id_ID":
                            t = i.default.idid;
                            break;
                        case "toggle_IN_Telugu":
                            t = i.default.intelugu;
                            break;
                        case "toggle_IN_Marathi":
                            t = i.default.inmarathi;
                            break;
                        case "toggle_Portuguese":
                            t = i.default.ptpt;
                            break;
                        case "toggle_Spanish":
                            t = i.default.eses
                    }
                    return t
                }
                ,
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
