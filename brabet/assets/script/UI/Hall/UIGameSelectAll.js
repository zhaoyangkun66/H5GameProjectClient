let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Component/NodePool")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("./UIGameIconItem")
    , c = 1
    , l = cc._decorator
    , p = l.ccclass
    , d = l.property
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.RowCount = 4,
                t.nodetypeList = [],
                t.curRenderIndex = 0,
                t.btnMore = null,
                t.content = null,
                t.curPage = 0,
                t.showPageCount = c,
                t.pageCount = 0,
                t.pageMax = 0,
                t.CellHeight = 0,
                t.curPrefabItem = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIGameSelectAll",
                    this.btnMore = this.GetWndNode("more"),
                    this.content = this.GetWndNode("content"),
                    this.RegEvent(a.GameEventDefine.SearchGameList, this.OnSearchGameList),
                    this.nodePool = this.node.addComponent(i.default)
            }
            ,
            t.prototype.OnEnable = function () {
                this.content.getComponent(cc.Layout).enabled = true
            }
            ,
            t.prototype.SetRowCount = function (e) {
                var t = Math.floor(e / app.GameTypeManager().GetColumCount);
                t > 0 && (this.RowCount = t)
            }
            ,
            t.prototype.renderGame = function (e, t, n, o) {
                var i = this;
                n || (n = r.HallPrefabType.Normal),
                    this.prefabType = n,
                    this.ColumCount = n == r.HallPrefabType.Recent ? app.GameTypeManager().GetRecentColumCount : app.GameTypeManager().GetColumCount,
                    this.savePage = o,
                    this.showPageCount = c,
                    "number" == typeof e ? (this.showPageCount = app.GameTypeManager().GetTypeSelectCount() || c,
                        this._data = app.GameTypeManager().GetGameTypeList(e, t)) : this._data = e,
                    this._OldData = this._data,
                    this.scheduleOnce(function () {
                        app.GameTypeManager().LoadTime += i.RefreshData()
                    }, app.GameTypeManager().LoadTime)
            }
            ,
            t.prototype.RecycleNode = function () {
                for (var e = this.content.children, t = e.length - 1; t >= 0; --t)
                    e[t].destroy()
            }
            ,
            t.prototype.RefreshData = function () {
                var e = this;
                this.unscheduleAllCallbacks(),
                    this.RecycleNode(),
                    this.Log("renderGame count: " + this._data.length);
                var t = this.RowCount * this.ColumCount;
                this.btnMore.active = this._data.length > t,
                    this.curPage = 0,
                    this.pageCount = t,
                    this.pageMax = Math.ceil(this._data.length / t),
                    this.curRenderIndex = 0;
                var n = 0;
                if (0 == this._data.length) {
                    var o = app.ComTool().DesktopPlatform() ? 2 * this.CellHeight : this.CellHeight;
                    this.content.height = o - this.content.getComponent(cc.Layout).spacingY
                } else
                    for (var i = 0, a = function (t) {
                        n += r.GetOnePageRenderTime(t),
                            r.scheduleOnce(function () {
                                e.curPage = t,
                                    i += e.renderOnePageGame(t)
                            }, i)
                    }, r = this, s = 0; s < this.showPageCount; s++)
                        a(s);
                return n
            }
            ,
            t.prototype.GetOnePageRenderTime = function (e) {
                var t = this._data.length
                    , n = this.pageCount * e
                    , o = n + this.pageCount - 1
                    , i = this.pageCount;
                return o >= t - 1 && (i = t - n),
                    i <= 0 ? 0 : .005 * Math.floor(i / this.ColumCount)
            }
            ,
            t.prototype.renderOnePageGame = function (e) {
                var t = this
                    , n = this._data.length
                    , o = this.pageCount * e
                    , i = o + this.pageCount - 1
                    , a = this.pageCount;
                if (i >= n - 1 && (a = n - o,
                    i = n - 1,
                    this.btnMore.active = false),
                    a <= 0)
                    return 0;
                for (var c = -1, l = 0, p = function (e) {
                    var n = o + e
                        , i = d._data[n]
                        , a = (d.ColumCount,
                            Math.floor(n / d.ColumCount));
                    a != c && (c = a,
                        l++),
                        d.scheduleOnce(function () {
                            var n = 1;
                            if (t.prefabType == r.HallPrefabType.Recent)
                                n = 0;
                            else if (i.gid) {
                                var o = app.HGameManager().GetGameLogoInfoByGid(i.gid);
                                o && (n = o.style)
                            }
                            var a = cc.instantiate(t.nodetypeList[Number(n)]);
                            a.getComponent(s.default).iconType = n,
                                a.active = true,
                                t.content.addChild(a),
                                i ? a.getComponent(s.default).renderData(i) : t.ErrLog("renderOnePageGame error: " + e)
                        }
                            .bind(d, a), .005 * l)
                }, d = this, h = 0; h < a; h++)
                    p(h);
                return .005 * l
            }
            ,
            t.prototype.OnClick = function () {
                this.curPage++,
                    this.curPage >= this.pageMax || (this.showPageCount = this.curPage + 1,
                        this.savePage && app.GameTypeManager().SetTypeSelectCount(this.showPageCount),
                        this.renderOnePageGame(this.curPage))
            }
            ,
            t.prototype.OnUpdate = function () { }
            ,
            t.prototype.OnSearchGameList = function (e) {
                if (e.length > 0) {
                    var t = [];
                    this._OldData.forEach(function (n) {
                        n.name.toLowerCase().indexOf(e.toLowerCase()) >= 0 && t.push(n)
                    }),
                        this._data = t,
                        this.RefreshData()
                } else
                    this._data = this._OldData,
                        this.RefreshData()
            }
            ,
            __decorate([d], t.prototype, "RowCount", undefined),
            __decorate([d([cc.Prefab])], t.prototype, "nodetypeList", undefined),
            __decorate([p], t)
    }(o.default);
n.default = h,
    module.exports = n
