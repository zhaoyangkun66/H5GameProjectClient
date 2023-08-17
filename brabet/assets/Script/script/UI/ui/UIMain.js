let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Component/UIScrollview")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = require("../../../Common/Define/TrackEventName")
    , s = require("../../../Common/Define/UINameDefine")
    , c = cc._decorator
    , l = c.ccclass
    , p = c.property
    , d = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.nodeContent = null,
                t.nodeView = null,
                t.scrollView = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIMain",
                    this.RegEvent(a.GameEventDefine.HallWidgetVariety, this.OnWidgetVariety),
                    this.RegEvent(a.GameEventDefine.SHOW_BG, this.OnShowBg),
                    this.RegEvent(a.GameEventDefine.SET_VISIBLE_BOTTOM, this.OnShowBottom),
                    this.RegEvent(a.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess),
                    this.RegEvent(a.GameEventDefine.SET_NODE_ZERO, this.OnSetNodeZero),
                    this.RegEvent(a.GameEventDefine.MOVE_CONTENT, this.OnMoveContent),
                    this.RegEvent(a.GameEventDefine.TOUCH_SCROLLVIEW, this.OnScrollView),
                    this.RegEvent(a.GameEventDefine.OPEN_STORE, this.OnOpenStore),
                    this.RegEvent(a.GameEventDefine.OPEN_SPECIAL_OFFER, this.OnOpenSpecialOffer),
                    this.RegEvent(a.GameEventDefine.TOP_MAINSCROLLVIEW, this.onToTopMainScollView),
                    this.RegEvent(a.GameEventDefine.KEYBOARD_POS, this.OnKeyBoardPos),
                    this.RegEvent(a.GameEventDefine.JUMP_SCROLL_PERCENT, this.OnJumpScollViewPercent),
                    this.RegEvent(a.GameEventDefine.MAIN_JUMP_INTERACTION, this.OnJumpMainScollView),
                    this.node.on(cc.Node.EventType.MOUSE_WHEEL, this.OnMouseWheel, this, true)
            }
            ,
            t.prototype.OnEnable = function () {
                app.ComTool().H5Platform() ? (this.scrollView.enabled = true,
                    this.node.getComponent(cc.Widget).top = 140,
                    this.node.getComponent(cc.Widget).bottom = 140,
                    this.scrollView.node.on("scroll-ended", this.OnScrolling, this, true)) : (this.scrollView.enabled = false,
                        this.node.getComponent(cc.Widget).top = 66,
                        this.node.getComponent(cc.Widget).bottom = 0,
                        this.nodeContent.setPosition(120, 0),
                        this.nodeContent.getComponent(cc.Widget).left = 240,
                        this.nodeContent.getComponent(cc.Widget).right = 0,
                        this.nodeContent.getComponent(cc.Widget).updateAlignment()),
                    this.node.getComponent(cc.Widget).updateAlignment()
            }
            ,
            t.prototype.OnKeyBoardPos = function (e) {
                var t = e.isShow ? this.nodeContent.y + e.height : this.nodeContent.y - e.height;
                cc.tween(this.nodeContent).to(.1, {
                    y: t
                }).start()
            }
            ,
            t.prototype.OnShowBg = function () {
                var e = this
                    , t = this.GetWndNode("bg");
                0 == t.childrenCount && cc.resources.load("common/prefab/UIBG", function (n, o) {
                    if (n)
                        e.ErrLog(n);
                    else {
                        var i = cc.instantiate(o);
                        t.addChild(i)
                    }
                })
            }
            ,
            t.prototype.OnLoadHallSuccess = function () {
                this.OnShowBottom(true)
            }
            ,
            t.prototype.OnShowBottom = function (e) {
                this.OnSetNodeZero(),
                    app.FormManager().FormVisible(s.UINameDefine.UIHallBottom, e),
                    e || (this.GetWndNode("bottom", this.nodeContent).height = 0)
            }
            ,
            t.prototype.OnSetNodeZero = function () {
                this.nodeContent.y = 0
            }
            ,
            t.prototype.OnScrollView = function (e) {
                app.ComTool().H5Platform() && (this.scrollView.enabled = e)
            }
            ,
            t.prototype.OnOpenStore = function () {
                app.StoreManager().ShowStoreUI({
                    in_type: r.default.PAGETRACK_EVENT_RECHARGE_ACTIVITY
                })
            }
            ,
            t.prototype.OnOpenSpecialOffer = function () {
                0 == app.ActivityManager().GetRechargeRewardInfo().is_discount ? app.FormManager().ShowForm(s.UINameDefine.UIDiscount) : app.SysNotifyManager().ShowToast("UI.System_25")
            }
            ,
            t.prototype.OnWidgetVariety = function () {
                var e = this;
                if (!app.ComTool().H5Platform()) {
                    var t = 0;
                    app.FormManager().IsFormShow(s.UINameDefine.UIMenu) || app.FormManager().IsFormShow(s.UINameDefine.UIChat) ? app.FormManager().IsFormShow(s.UINameDefine.UIMenu) && app.FormManager().IsFormShow(s.UINameDefine.UIChat) ? t = -100 : app.FormManager().IsFormShow(s.UINameDefine.UIMenu) && !app.FormManager().IsFormShow(s.UINameDefine.UIChat) ? t = 240 : !app.FormManager().IsFormShow(s.UINameDefine.UIMenu) && app.FormManager().IsFormShow(s.UINameDefine.UIChat) && (t = -340) : t = 0,
                        this.nodeContent.x !== t / 2 && cc.tween(this.nodeContent).to(.2, {
                            position: cc.v3(t / 2, this.nodeContent.y)
                        }).call(function () {
                            e.nodeContent.getComponent(cc.Widget).left = t,
                                e.nodeContent.getComponent(cc.Widget).right = 0,
                                e.nodeContent.getComponent(cc.Widget).updateAlignment()
                        }).start()
                }
            }
            ,
            t.prototype.OnMouseWheel = function (e) {
                this.MoveNodeContent(e.getScrollY())
            }
            ,
            t.prototype.MoveNodeContent = function (e) {
                if (!(this.nodeContent.height <= this.node.height)) {
                    var t = this.nodeContent.y - e
                        , n = this.GetTop();
                    t >= n ? t = n : t < 0 && (t = 0),
                        this.nodeContent.y = t,
                        app.Client.OnEvent(a.GameEventDefine.HallShowHallRank, {
                            ViewHeight: this.nodeView.height,
                            nodeContentY: this.nodeContent.y
                        })
                }
            }
            ,
            t.prototype.OnMoveContent = function (e) {
                this.MoveNodeContent(-e)
            }
            ,
            t.prototype.onToTopMainScollView = function () {
                this.scrollView.stopAutoScroll(),
                    this.scrollView.scrollToTop()
            }
            ,
            t.prototype.OnJumpScollViewPercent = function (e) {
                this.scrollView.scrollToPercentVertical(e)
            }
            ,
            t.prototype.OnJumpMainScollView = function (e) {
                var t = this.nodeContent.convertToNodeSpaceAR(e);
                this.scrollView.setContentPosition(cc.v2(this.nodeContent.x, Math.abs(t.y)))
            }
            ,
            t.prototype.GetTop = function () {
                return this.nodeContent.height - this.nodeView.height
            }
            ,
            t.prototype.OnScrolling = function () {
                app.Client.OnEvent(a.GameEventDefine.HallShowHallRank, {
                    ViewHeight: this.nodeView.height,
                    nodeContentY: this.nodeContent.y
                })
            }
            ,
            __decorate([p(cc.Node)], t.prototype, "nodeContent", undefined),
            __decorate([p(cc.Node)], t.prototype, "nodeView", undefined),
            __decorate([p(i.default)], t.prototype, "scrollView", undefined),
            __decorate([l], t)
    }(o.default);
n.default = d,
    module.exports = n
