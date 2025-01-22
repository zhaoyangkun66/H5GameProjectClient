let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , r = require("./UIGameSelectAll")
    , s = cc._decorator
    , c = s.ccclass
    , l = s.property
    , p = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.IconGame = null,
                t.sHistory = null,
                t.LabelGame = null,
                t.gameAll = null,
                t.GameTypeIdx = 0,
                t.btnView = null,
                t.type_Id = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIGameTypeItem",
                    this.gameAll = this.GetWndNode("games_all"),
                    this.btnView = this.GetWndNode("top/btn/btn_view"),
                    this.RegEvent(i.GameEventDefine.HALL_Language, this.renderLabelGame)
            }
            ,
            t.prototype.OnEnable = function () { }
            ,
            Object.defineProperty(t.prototype, "GetTypeID", {
                get: function () {
                    return this.type_Id
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.renderGameType = function (e, t) {
                this.GameTypeIdx = e;
                var n = app.GameConfigManager().GetGameConfig().game_type[e];
                n ? (this.btnView.active = t,
                    this.type_Id = n.type_id,
                    this.renderLabelGame(),
                    n.icon_on && app.ImageUtil().LoadImage(this.IconGame.node, n.icon_on),
                    n.num_of_phone && this.gameAll.getComponent(r.default).SetRowCount(n.num_of_phone),
                    this.gameAll.getComponent(r.default).renderGame(e),
                    app.PlaceholderManager().FirstLogin && (this.IconGame.node.active = false,
                        this.LabelGame.node.active = false,
                        app.PlaceholderManager().AddBeginHideIcon(this.IconGame.node),
                        app.PlaceholderManager().AddBeginHideIcon(this.LabelGame.node))) : this.ErrLog("renderGameType failed: " + e)
            }
            ,
            t.prototype.renderLabelGame = function () {
                var e = app.GameConfigManager().GetGameConfig().game_type[this.GameTypeIdx];
                this.LabelGame.string = e.type_name;
                var t = app.LocalDataManager().GetConfigProperty("SysSetting"+ GameTypeGlobal, "Language")
                    , n = e.type_name_arr.other;
                e.type_name_arr[t] && (n = e.type_name_arr[t]),
                    this.LabelGame.string = n
            }
            ,
            t.prototype.renderHistory = function () {
                this.GetWndNode("top/btn").active = false,
                    this.IconGame.spriteFrame = this.sHistory,
                    this.LabelGame.node.active = false,
                    this.GetWndNode("top/label_i18n").active = true,
                    app.PlaceholderManager().FirstLogin && (this.IconGame.node.active = false,
                        this.GetWndNode("top/label_i18n").active = false,
                        app.PlaceholderManager().AddBeginHideIcon(this.IconGame.node),
                        app.PlaceholderManager().AddBeginHideIcon(this.GetWndNode("top/label_i18n")));
                var e = app.GameTypeManager().GetHistoryGame();
                app.GameTypeManager().LoadTime = 0,
                    this.gameAll.getComponent(r.default).renderGame(e, null, a.HallPrefabType.Recent)
            }
            ,
            t.prototype.OnClick = function (e) {
                "btn_view" != e || app.Client.OnEvent(i.GameEventDefine.SELECT_GAME_TYPE, this.GameTypeIdx)
            }
            ,
            __decorate([l(cc.Sprite)], t.prototype, "IconGame", undefined),
            __decorate([l(cc.SpriteFrame)], t.prototype, "sHistory", undefined),
            __decorate([l(cc.Label)], t.prototype, "LabelGame", undefined),
            __decorate([c], t)
    }(o.default);
n.default = p,
    module.exports = n
