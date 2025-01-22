let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Component/UIScrollViewItem")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/MsgIDDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/UINameDefine")
    , c = require("./UIHall")
    , l = cc._decorator
    , p = l.ccclass
    , d = (l.property,
        function (e) {
            function t() {
                return null !== e && e.apply(this, arguments) || this
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    e.prototype.OnCreateInit.call(this),
                        app.GameTypeManager().SetRecentColumCount(5),
                        app.GameTypeManager().SetMaxHistoryGame(5),
                        this.toggleGroup = this.GetWndNode("node_home/type/view/content/type"),
                        this.nodeSearch = this.GetWndNode("node_home/Search"),
                        this.typeNode = this.GetWndNode("node_home/type"),
                        this.RegEvent(i.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.apply(this, t)
                    app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, true)
                }
                ,
                t.prototype.OnClose = function () {
                    e.prototype.OnClose.call(this),
                        app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, false)
                }
                ,
                t.prototype.LoadHallSuccess = function () {
                    app.FormManager().FormVisible(s.UINameDefine.UIDownAndSevice, true)
                    if (app.ComTool().AndroidHybirdPlatform()) {
                        // if (app.NativeMgr().getApkVersion() < 100) {
                        //     var e = app.GameConfigManager().GetGameConfig().is_force ? r.ConfirmType.ConfirmModal : r.ConfirmType.ConfirmYN;
                        //     app.ConfirmManager().ShowConfirm(e, a.MsgIDDefine.System_42, null, this.OnConFirm, null, this)
                        // }
                    }
                }
                ,
                t.prototype.OnConFirm = function () {
                    cc.sys.openURL(app.GameConfigManager().GetGameConfig().android_download_url)
                }
                ,
                t.prototype.RenderGameTypeTitleAuto = function () {
                    var e = app.GameConfigManager().GetGameConfig().game_type
                        , t = this.toggleGroup.children
                        , n = e.length + c.default.Start_Index > 5;
                    // this.typeNode.getComponent(o.default).enabled = !!n,
                    this.toggleGroup.getComponent(cc.Layout).resizeMode = n ? cc.Layout.ResizeMode.CONTAINER : cc.Layout.ResizeMode.CHILDREN,
                        n ? t.forEach(function (e) {
                            e.width = 116
                        }) : this.toggleGroup.width = 690,
                        this.toggleGroup.getComponent(cc.Layout).updateLayout()
                }
                ,
                __decorate([p], t)
        }(c.default));
n.default = d,
    module.exports = n
