let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.menu
    , l = (a.property,
        function (t) {
            function e() {
                var e = null !== t && t.apply(this, arguments) || this;
                return e.ui = null,
                    e
            }
            return __extends(e, t),
                e.prototype.OnCreateInit = function () {
                    this.JS_Name = "Game_1053Rules"
                }
                ,
                e.prototype.OnLoad = function () {
                    this.GeneralRules2 = this.GetWndComponent("scrollview/view/content/GeneralRules2", cc.Label)
                    let TitleDesc2 = app.i18n.t("UI_Game1052_FDRules2").replace("%{minChip}", app.GameBetCommonMgr().betAmountConfig[app.GameBetCommonMgr().betAmountConfig.length - 1])
                    TitleDesc2 = TitleDesc2.replace("%{maxChip}", app.GameBetCommonMgr().betAmountConfig[0])
                    this.GeneralRules2.string = TitleDesc2
                    this.label_InGameCurrency = this.GetWndComponent("scrollview/view/content/label_InGameCurrency", cc.Label)
                    this.label_InGameCurrency.string = app.i18n.t("UI_Game1051_InGameCurrency").replace("%{configuredValue}", app.GameConfigManager().GetCurrency);
                }
                ,
                e.prototype.OnShow = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e]
                }
                ,
                e.prototype.OnClick = function () { }
                ,
                e.prototype.OnClose = function () {
                    for (var t = [], e = 0; e < arguments.length; e++)
                        t[e] = arguments[e]
                }
                ,
                __decorate([r, s("UI/prefab/Game_1053Rules")], e)
        }(n.default));
i.default = l,
    module.exports = i
