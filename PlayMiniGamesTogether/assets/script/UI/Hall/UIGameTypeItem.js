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
                t.type_Id = 0,
                t.MovingDistance = 100,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIGameTypeItem",
                    this.gameAll = this.GetWndNode("games_all"),
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
                if (n) {
                    this.type_Id = n.type_id
                    this.renderLabelGame()
                    n.icon_on && app.ImageUtil().LoadImage(this.IconGame.node, n.icon_on)
                    n.num_of_phone && this.gameAll.getComponent(r.default).SetRowCount(n.num_of_phone)
                    this.gameAll.getComponent(r.default).renderGame(e)
                } else {
                    this.ErrLog("renderGameType failed: " + e)
                }

                if (this.MovingDistance > 0) {
                    let gameAllScrollView = this.gameAll.getComponent(cc.ScrollView)
                    gameAllScrollView._unregisterEvent()
                    gameAllScrollView.node.on(cc.Node.EventType.TOUCH_START, gameAllScrollView._onTouchBegan, gameAllScrollView, false);
                    gameAllScrollView.node.on(cc.Node.EventType.TOUCH_MOVE, gameAllScrollView._onTouchMoved, gameAllScrollView, false);
                    gameAllScrollView.node.on(cc.Node.EventType.TOUCH_END, gameAllScrollView._onTouchEnded, gameAllScrollView, false);
                    gameAllScrollView.node.on(cc.Node.EventType.TOUCH_CANCEL, gameAllScrollView._onTouchCancelled, gameAllScrollView, false);
                    gameAllScrollView.node.on(cc.Node.EventType.MOUSE_WHEEL, gameAllScrollView._onMouseWheel, gameAllScrollView, false);
                    this.ScrollViewEvent()
                }
                // ,
                // app.PlaceholderManager().FirstLogin && (this.IconGame.node.active = false,
                //     this.LabelGame.node.active = false,
                //     app.PlaceholderManager().AddBeginHideIcon(this.IconGame.node),
                //     app.PlaceholderManager().AddBeginHideIcon(this.LabelGame.node))
            }
            ,
            t.prototype.renderLabelGame = function () {
                var e = app.GameConfigManager().GetGameConfig().game_type[this.GameTypeIdx];
                this.LabelGame.string = e.type_name;
                var t = app.LocalDataManager().GetConfigProperty("SysSetting", "Language2")
                    , n = e.type_name_arr.other;
                e.type_name_arr[t] && (n = e.type_name_arr[t]),
                    this.LabelGame.string = n
            }
            ,
            t.prototype.renderHistory = function () {
                this.IconGame.spriteFrame = this.sHistory
                this.LabelGame.node.active = false
                this.GetWndNode("top/label_i18n").active = true
                // app.PlaceholderManager().FirstLogin && (this.IconGame.node.active = false,
                //     this.GetWndNode("top/label_i18n").active = false,
                //     app.PlaceholderManager().AddBeginHideIcon(this.IconGame.node),
                //     app.PlaceholderManager().AddBeginHideIcon(this.GetWndNode("top/label_i18n")));
                var e = app.GameTypeManager().GetHistoryGame();
                app.GameTypeManager().LoadTime = 0,
                    this.gameAll.getComponent(r.default).renderGame(e, null, a.HallPrefabType.Recent)
                this.ScrollViewEvent()

                // if (this.isHistory == true) {
                //     if (n.icon_on) {
                //         let icon_on = n.icon_on.replace("/big/", "/small/").replace("/middle/", "/small/")
                //         app.ImageUtil().LoadImage(this.IconGame.node, icon_on)
                //     }
                // } else {
            }
            ,
            t.prototype.OnClick = function (e) {
                if ("VectorRight" == e) {
                    let gameAllScrollView = this.gameAll.getComponent(cc.ScrollView)//this.gameAll.getChildByName("content").getPosition().x
                    let eee = gameAllScrollView.getScrollOffset()
                    gameAllScrollView.scrollToOffset(cc.v2(-gameAllScrollView.getScrollOffset().x + this.MovingDistance, 0), 0.2)
                }
                else if ("VectorLeft" == e) {
                    let gameAllScrollView = this.gameAll.getComponent(cc.ScrollView)
                    gameAllScrollView.scrollToOffset(cc.v2(-gameAllScrollView.getScrollOffset().x - this.MovingDistance, 0), 0.2)
                }
            },
            t.prototype.ScrollViewEvent = function () {
                let gameAllScrollView = this.gameAll.getComponent(cc.ScrollView)
                if (gameAllScrollView.getMaxScrollOffset().x == 0) {
                    this.GetWndNode("top/VectorRight").active = false
                    this.GetWndNode("top/VectorLeft").active = false
                }
                else {
                    if (gameAllScrollView.getScrollOffset().x >= 0 - 0.5) {
                        this.GetWndNode("top/VectorRight").active = true
                        this.GetWndNode("top/VectorLeft").active = false
                    }
                    else if (gameAllScrollView.getScrollOffset().x <= -gameAllScrollView.getMaxScrollOffset().x + 0.5) {
                        this.GetWndNode("top/VectorRight").active = false
                        this.GetWndNode("top/VectorLeft").active = true
                    }
                    else {
                        this.GetWndNode("top/VectorRight").active = true
                        this.GetWndNode("top/VectorLeft").active = true
                    }
                }
            }
            ,
            __decorate([l(cc.Sprite)], t.prototype, "IconGame", undefined),
            __decorate([l(cc.SpriteFrame)], t.prototype, "sHistory", undefined),
            __decorate([l(cc.Label)], t.prototype, "LabelGame", undefined),
            __decorate([l({})], t.prototype, "MovingDistance", undefined),
            __decorate([c], t)
    }(o.default);
n.default = p,
    module.exports = n
