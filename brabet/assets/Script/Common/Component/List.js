let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o,
    i,
    a,
    r = cc._decorator,
    s = r.ccclass,
    c = r.property,
    l = r.disallowMultiple,
    p = r.menu,
    d = r.executionOrder,
    h = r.requireComponent,
    u = require("./ListIndicator"),
    _ = require("./ListItem");
    
(function (e) {
    e[e.NODE = 1] = "NODE",
        e[e.PREFAB = 2] = "PREFAB"
}
)(o || (o = {})),

    function (e) {
        e[e.NORMAL = 1] = "NORMAL",
            e[e.ADHERING = 2] = "ADHERING",
            e[e.PAGE = 3] = "PAGE"
    }(i || (i = {})),

    function (e) {
        e[e.NONE = 0] = "NONE",
            e[e.SINGLE = 1] = "SINGLE",
            e[e.MULT = 2] = "MULT"
    }(a || (a = {}));

var m = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.templateType = o.NODE,
            t.tmpNode = null,
            t.tmpPrefab = null,
            t._slideMode = i.NORMAL,
            t.pageDistance = .3,
            t.pageChangeEvent = new cc.Component.EventHandler,
            t.indicator = null,
            t._virtual = true,
            t.cyclic = false,
            t.lackCenter = false,
            t.lackSlide = false,
            t._updateRate = 0,
            t.frameByFrameRenderNum = 0,
            t.renderEvent = new cc.Component.EventHandler,
            t.selectedMode = a.NONE,
            t.repeatEventSingle = false,
            t.selectedEvent = new cc.Component.EventHandler,
            t._selectedId = -1,
            t._forceUpdate = false,
            t._updateDone = true,
            t._numItems = 0,
            t._inited = false,
            t._needUpdateWidget = false,
            t._aniDelRuning = false,
            t._doneAfterUpdate = false,
            t.adhering = false,
            t._adheringBarrier = false,
            t.curPageNum = 0,
            t
    }
    return __extends(t, e),
        Object.defineProperty(t.prototype, "slideMode", {
            get: function () {
                return this._slideMode
            },
            set: function (e) {
                this._slideMode = e
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "virtual", {
            get: function () {
                return this._virtual
            },
            set: function (e) {
                null != e && (this._virtual = e),
                    0 != this._numItems && this._onScrolling()
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "updateRate", {
            get: function () {
                return this._updateRate
            },
            set: function (e) {
                e >= 0 && e <= 6 && (this._updateRate = e)
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "selectedId", {
            get: function () {
                return this._selectedId
            },
            set: function (e) {
                var t, n = this;
                switch (n.selectedMode) {
                    case a.SINGLE:
                        if (!n.repeatEventSingle && e == n._selectedId)
                            return;
                        t = n.getItemByListId(e);
                        var o = undefined;
                        if (n._selectedId >= 0 ? n._lastSelectedId = n._selectedId : n._lastSelectedId = null,
                            n._selectedId = e,
                            t && ((o = t.getComponent(_.default)).selected = true),
                            n._lastSelectedId >= 0 && n._lastSelectedId != n._selectedId) {
                            var i = n.getItemByListId(n._lastSelectedId);
                            i && (i.getComponent(_.default).selected = false)
                        }
                        n.selectedEvent && cc.Component.EventHandler.emitEvents([n.selectedEvent], t, e % this._actualNumItems, null == n._lastSelectedId ? null : n._lastSelectedId % this._actualNumItems);
                        break;
                    case a.MULT:
                        if (!(t = n.getItemByListId(e)))
                            return;
                        o = t.getComponent(_.default),
                            n._selectedId >= 0 && (n._lastSelectedId = n._selectedId),
                            n._selectedId = e;
                        var r = !o.selected;
                        o.selected = r;
                        var s = n.multSelected.indexOf(e);
                        r && s < 0 ? n.multSelected.push(e) : !r && s >= 0 && n.multSelected.splice(s, 1),
                            n.selectedEvent && cc.Component.EventHandler.emitEvents([n.selectedEvent], t, e % this._actualNumItems, null == n._lastSelectedId ? null : n._lastSelectedId % this._actualNumItems, r)
                }
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "numItems", {
            get: function () {
                return this._actualNumItems
            },
            set: function (e) {
                var t = this;
                if (t.checkInited(false))
                    if (null == e || e < 0)
                        cc.error("numItems set the wrong::", e);
                    else if (t._actualNumItems = t._numItems = e,
                        t._forceUpdate = true,
                        t._virtual)
                        t._resizeContent(),
                            t.cyclic && (t._numItems = t._cyclicNum * t._numItems),
                            t._onScrolling(),
                            t.frameByFrameRenderNum || t.slideMode != i.PAGE || (t.curPageNum = t.nearestListId),
                            t._slideMode == i.PAGE && t.indicator && t.indicator._refresh();
                    else {
                        t.cyclic && (t._resizeContent(),
                            t._numItems = t._cyclicNum * t._numItems);
                        var n = t.content.getComponent(cc.Layout);
                        if (n && (n.enabled = true),
                            t._delRedundantItem(),
                            t.firstListId = 0,
                            t.frameByFrameRenderNum > 0) {
                            for (var o = t.frameByFrameRenderNum > t._numItems ? t._numItems : t.frameByFrameRenderNum, a = 0; a < o; a++)
                                t._createOrUpdateItem2(a);
                            t.frameByFrameRenderNum < t._numItems && (t._updateCounter = t.frameByFrameRenderNum,
                                t._updateDone = false)
                        } else {
                            for (a = 0; a < t._numItems; a++)
                                t._createOrUpdateItem2(a);
                            t.displayItemNum = t._numItems
                        }
                    }
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(t.prototype, "scrollView", {
            get: function () {
                return this._scrollView
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.onLoad = function () {
            this._init()
        }
        ,
        t.prototype.onDestroy = function () {
            var e = this;
            cc.isValid(e._itemTmp) && e._itemTmp.destroy(),
                cc.isValid(e.tmpNode) && e.tmpNode.destroy(),
                e._pool && e._pool.clear()
        }
        ,
        t.prototype.onEnable = function () {
            this._registerEvent(),
                this._init(),
                this._aniDelRuning && (this._aniDelRuning = false,
                    this._aniDelItem && (this._aniDelBeforePos && (this._aniDelItem.position = this._aniDelBeforePos,
                        delete this._aniDelBeforePos),
                        this._aniDelBeforeScale && (this._aniDelItem.scale = this._aniDelBeforeScale,
                            delete this._aniDelBeforeScale),
                        delete this._aniDelItem),
                    this._aniDelCB && (this._aniDelCB(),
                        delete this._aniDelCB))
        }
        ,
        t.prototype.onDisable = function () {
            this._unregisterEvent()
        }
        ,
        t.prototype._registerEvent = function () {
            var e = this;
            e.node.on(cc.Node.EventType.TOUCH_START, e._onTouchStart, e, true),
                e.node.on("touch-up", e._onTouchUp, e),
                e.node.on(cc.Node.EventType.TOUCH_CANCEL, e._onTouchCancelled, e, true),
                e.node.on("scroll-began", e._onScrollBegan, e, true),
                e.node.on("scroll-ended", e._onScrollEnded, e, true),
                e.node.on("scrolling", e._onScrolling, e, true),
                e.node.on(cc.Node.EventType.SIZE_CHANGED, e._onSizeChanged, e)
        }
        ,
        t.prototype._unregisterEvent = function () {
            var e = this;
            e.node.off(cc.Node.EventType.TOUCH_START, e._onTouchStart, e, true),
                e.node.off("touch-up", e._onTouchUp, e),
                e.node.off(cc.Node.EventType.TOUCH_CANCEL, e._onTouchCancelled, e, true),
                e.node.off("scroll-began", e._onScrollBegan, e, true),
                e.node.off("scroll-ended", e._onScrollEnded, e, true),
                e.node.off("scrolling", e._onScrolling, e, true),
                e.node.off(cc.Node.EventType.SIZE_CHANGED, e._onSizeChanged, e)
        }
        ,
        t.prototype._init = function () {
            var e = this;
            if (!e._inited)
                if (e._scrollView = e.node.getComponent(cc.ScrollView),
                    e.content = e._scrollView.content,
                    e.content) {
                    switch (e._layout = e.content.getComponent(cc.Layout),
                    e._align = e._layout.type,
                    e._resizeMode = e._layout.resizeMode,
                    e._startAxis = e._layout.startAxis,
                    e._topGap = e._layout.paddingTop,
                    e._rightGap = e._layout.paddingRight,
                    e._bottomGap = e._layout.paddingBottom,
                    e._leftGap = e._layout.paddingLeft,
                    e._columnGap = e._layout.spacingX,
                    e._lineGap = e._layout.spacingY,
                    e._colLineNum,
                    e._verticalDir = e._layout.verticalDirection,
                    e._horizontalDir = e._layout.horizontalDirection,
                    e.setTemplateItem(cc.instantiate(e.templateType == o.PREFAB ? e.tmpPrefab : e.tmpNode)),
                    e._slideMode != i.ADHERING && e._slideMode != i.PAGE || (e._scrollView.inertia = false,
                        e._scrollView._onMouseWheel = function () { }
                        ,
                        e._slideMode == i.PAGE && e.indicator && e.indicator.setPageView(this)),
                    e.virtual || (e.lackCenter = false),
                    e._lastDisplayData = [],
                    e.displayData = [],
                    e._pool = new cc.NodePool,
                    e._forceUpdate = false,
                    e._updateCounter = 0,
                    e._updateDone = true,
                    e.curPageNum = 0,
                    e.cyclic && (e._scrollView._processAutoScrolling = this._processAutoScrolling.bind(e),
                        e._scrollView._startBounceBackIfNeeded = function () {
                            return false
                        }
                    ),
                    e._align) {
                        case cc.Layout.Type.HORIZONTAL:
                            switch (e._horizontalDir) {
                                case cc.Layout.HorizontalDirection.LEFT_TO_RIGHT:
                                    e._alignCalcType = 1;
                                    break;
                                case cc.Layout.HorizontalDirection.RIGHT_TO_LEFT:
                                    e._alignCalcType = 2
                            }
                            break;
                        case cc.Layout.Type.VERTICAL:
                            switch (e._verticalDir) {
                                case cc.Layout.VerticalDirection.TOP_TO_BOTTOM:
                                    e._alignCalcType = 3;
                                    break;
                                case cc.Layout.VerticalDirection.BOTTOM_TO_TOP:
                                    e._alignCalcType = 4
                            }
                            break;
                        case cc.Layout.Type.GRID:
                            switch (e._startAxis) {
                                case cc.Layout.AxisDirection.HORIZONTAL:
                                    switch (e._verticalDir) {
                                        case cc.Layout.VerticalDirection.TOP_TO_BOTTOM:
                                            e._alignCalcType = 3;
                                            break;
                                        case cc.Layout.VerticalDirection.BOTTOM_TO_TOP:
                                            e._alignCalcType = 4
                                    }
                                    break;
                                case cc.Layout.AxisDirection.VERTICAL:
                                    switch (e._horizontalDir) {
                                        case cc.Layout.HorizontalDirection.LEFT_TO_RIGHT:
                                            e._alignCalcType = 1;
                                            break;
                                        case cc.Layout.HorizontalDirection.RIGHT_TO_LEFT:
                                            e._alignCalcType = 2
                                    }
                            }
                    }
                    e.content.removeAllChildren(),
                        e._inited = true
                } else
                    cc.error(e.node.name + "'s cc.ScrollView unset content!")
        }
        ,
        t.prototype._processAutoScrolling = function (e) {
            this._scrollView._autoScrollAccumulatedTime += 1 * e;
            var t = Math.min(1, this._scrollView._autoScrollAccumulatedTime / this._scrollView._autoScrollTotalTime);
            if (this._scrollView._autoScrollAttenuate) {
                var n = t - 1;
                t = n * n * n * n * n + 1
            }
            var o = this._scrollView._autoScrollStartPosition.add(this._scrollView._autoScrollTargetDelta.mul(t))
                , i = this._scrollView.getScrollEndedEventTiming()
                , a = Math.abs(t - 1) <= i;
            Math.abs(t - 1) <= this._scrollView.getScrollEndedEventTiming() && !this._scrollView._isScrollEndedWithThresholdEventFired && (this._scrollView._dispatchEvent("scroll-ended-with-threshold"),
                this._scrollView._isScrollEndedWithThresholdEventFired = true),
                a && (this._scrollView._autoScrolling = false);
            var r = o.sub(this._scrollView.getContentPosition());
            this._scrollView._moveContent(this._scrollView._clampDelta(r), a),
                this._scrollView._dispatchEvent("scrolling"),
                this._scrollView._autoScrolling || (this._scrollView._isBouncing = false,
                    this._scrollView._scrolling = false,
                    this._scrollView._dispatchEvent("scroll-ended"))
        }
        ,
        t.prototype.setTemplateItem = function (e) {
            if (e) {
                var t = this;
                t._itemTmp = e,
                    t._resizeMode == cc.Layout.ResizeMode.CHILDREN ? t._itemSize = t._layout.cellSize : t._itemSize = cc.size(e.width, e.height);
                var n = e.getComponent(_.default)
                    , o = false;
                switch (n || (o = true),
                o && (t.selectedMode = a.NONE),
                (n = e.getComponent(cc.Widget)) && n.enabled && (t._needUpdateWidget = true),
                t.selectedMode == a.MULT && (t.multSelected = []),
                t._align) {
                    case cc.Layout.Type.HORIZONTAL:
                        t._colLineNum = 1,
                            t._sizeType = false;
                        break;
                    case cc.Layout.Type.VERTICAL:
                        t._colLineNum = 1,
                            t._sizeType = true;
                        break;
                    case cc.Layout.Type.GRID:
                        switch (t._startAxis) {
                            case cc.Layout.AxisDirection.HORIZONTAL:
                                var i = t.content.width - t._leftGap - t._rightGap;
                                t._colLineNum = Math.floor((i + t._columnGap) / (t._itemSize.width + t._columnGap)),
                                    t._sizeType = true;
                                break;
                            case cc.Layout.AxisDirection.VERTICAL:
                                var r = t.content.height - t._topGap - t._bottomGap;
                                t._colLineNum = Math.floor((r + t._lineGap) / (t._itemSize.height + t._lineGap)),
                                    t._sizeType = false
                        }
                }
            }
        }
        ,
        t.prototype.checkInited = function (e) {
            return undefined === e && (e = true),
                !!this._inited || (e && cc.error("List initialization not completed!"),
                    false)
        }
        ,
        t.prototype._resizeContent = function () {
            var e, t = this;
            switch (t._align) {
                case cc.Layout.Type.HORIZONTAL:
                    if (t._customSize) {
                        var n = t._getFixedSize(null);
                        e = t._leftGap + n.val + t._itemSize.width * (t._numItems - n.count) + t._columnGap * (t._numItems - 1) + t._rightGap
                    } else
                        e = t._leftGap + t._itemSize.width * t._numItems + t._columnGap * (t._numItems - 1) + t._rightGap;
                    break;
                case cc.Layout.Type.VERTICAL:
                    t._customSize ? (n = t._getFixedSize(null),
                        e = t._topGap + n.val + t._itemSize.height * (t._numItems - n.count) + t._lineGap * (t._numItems - 1) + t._bottomGap) : e = t._topGap + t._itemSize.height * t._numItems + t._lineGap * (t._numItems - 1) + t._bottomGap;
                    break;
                case cc.Layout.Type.GRID:
                    switch (t.lackCenter && (t.lackCenter = false),
                    t._startAxis) {
                        case cc.Layout.AxisDirection.HORIZONTAL:
                            var o = Math.ceil(t._numItems / t._colLineNum);
                            e = t._topGap + t._itemSize.height * o + t._lineGap * (o - 1) + t._bottomGap;
                            break;
                        case cc.Layout.AxisDirection.VERTICAL:
                            var i = Math.ceil(t._numItems / t._colLineNum);
                            e = t._leftGap + t._itemSize.width * i + t._columnGap * (i - 1) + t._rightGap
                    }
            }
            var a = t.content.getComponent(cc.Layout);
            if (a && (a.enabled = false),
                t._allItemSize = e,
                t._allItemSizeNoEdge = t._allItemSize - (t._sizeType ? t._topGap + t._bottomGap : t._leftGap + t._rightGap),
                t.cyclic) {
                var r = t._sizeType ? t.node.height : t.node.width;
                t._cyclicPos1 = 0,
                    r -= t._cyclicPos1,
                    t._cyclicNum = Math.ceil(r / t._allItemSizeNoEdge) + 1;
                var s = t._sizeType ? t._lineGap : t._columnGap;
                t._cyclicPos2 = t._cyclicPos1 + t._allItemSizeNoEdge + s,
                    t._cyclicAllItemSize = t._allItemSize + t._allItemSizeNoEdge * (t._cyclicNum - 1) + s * (t._cyclicNum - 1),
                    t._cycilcAllItemSizeNoEdge = t._allItemSizeNoEdge * t._cyclicNum,
                    t._cycilcAllItemSizeNoEdge += s * (t._cyclicNum - 1)
            }
            t._lack = !t.cyclic && t._allItemSize < (t._sizeType ? t.node.height : t.node.width);
            var c = t._lack && t.lackCenter || !t.lackSlide ? .1 : 0
                , l = t._lack ? (t._sizeType ? t.node.height : t.node.width) - c : t.cyclic ? t._cyclicAllItemSize : t._allItemSize;
            l < 0 && (l = 0),
                t._sizeType ? t.content.height = l : t.content.width = l
        }
        ,
        t.prototype._onScrolling = function (e) {
            if (undefined === e && (e = null),
                null == this.frameCount && (this.frameCount = this._updateRate),
                !this._forceUpdate && e && "scroll-ended" != e.type && this.frameCount > 0)
                this.frameCount--;
            else if (this.frameCount = this._updateRate,
                !this._aniDelRuning) {
                if (this.cyclic) {
                    var t = this.content.getPosition();
                    t = this._sizeType ? t.y : t.x;
                    var n = this._allItemSizeNoEdge + (this._sizeType ? this._lineGap : this._columnGap)
                        , o = this._sizeType ? cc.v2(0, n) : cc.v2(n, 0);
                    switch (this._alignCalcType) {
                        case 1:
                            t > -this._cyclicPos1 ? (this.content.x = -this._cyclicPos2,
                                this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.sub(o))) : t < -this._cyclicPos2 && (this.content.x = -this._cyclicPos1,
                                    this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.add(o)));
                            break;
                        case 2:
                            t < this._cyclicPos1 ? (this.content.x = this._cyclicPos2,
                                this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.add(o))) : t > this._cyclicPos2 && (this.content.x = this._cyclicPos1,
                                    this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.sub(o)));
                            break;
                        case 3:
                            t < this._cyclicPos1 ? (this.content.y = this._cyclicPos2,
                                this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.add(o))) : t > this._cyclicPos2 && (this.content.y = this._cyclicPos1,
                                    this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.sub(o)));
                            break;
                        case 4:
                            t > -this._cyclicPos1 ? (this.content.y = -this._cyclicPos2,
                                this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.sub(o))) : t < -this._cyclicPos2 && (this.content.y = -this._cyclicPos1,
                                    this._scrollView.isAutoScrolling() && (this._scrollView._autoScrollStartPosition = this._scrollView._autoScrollStartPosition.add(o)))
                    }
                }
                var i, a, r, s;
                if (this._calcViewPos(),
                    this._sizeType ? (i = this.viewTop,
                        r = this.viewBottom) : (a = this.viewRight,
                            s = this.viewLeft),
                    this._virtual) {
                    this.displayData = [];
                    var c = undefined
                        , l = 0
                        , p = this._numItems - 1;
                    if (this._customSize)
                        for (var d = false; l <= p && !d; l++)
                            switch (c = this._calcItemPos(l),
                            this._align) {
                                case cc.Layout.Type.HORIZONTAL:
                                    c.right >= s && c.left <= a ? this.displayData.push(c) : 0 != l && this.displayData.length > 0 && (d = true);
                                    break;
                                case cc.Layout.Type.VERTICAL:
                                    c.bottom <= i && c.top >= r ? this.displayData.push(c) : 0 != l && this.displayData.length > 0 && (d = true);
                                    break;
                                case cc.Layout.Type.GRID:
                                    switch (this._startAxis) {
                                        case cc.Layout.AxisDirection.HORIZONTAL:
                                            c.bottom <= i && c.top >= r ? this.displayData.push(c) : 0 != l && this.displayData.length > 0 && (d = true);
                                            break;
                                        case cc.Layout.AxisDirection.VERTICAL:
                                            c.right >= s && c.left <= a ? this.displayData.push(c) : 0 != l && this.displayData.length > 0 && (d = true)
                                    }
                            }
                    else {
                        var h = this._itemSize.width + this._columnGap
                            , u = this._itemSize.height + this._lineGap;
                        switch (this._alignCalcType) {
                            case 1:
                                l = (s - this._leftGap) / h,
                                    p = (a - this._leftGap) / h;
                                break;
                            case 2:
                                l = (-a - this._rightGap) / h,
                                    p = (-s - this._rightGap) / h;
                                break;
                            case 3:
                                l = (-i - this._topGap) / u,
                                    p = (-r - this._topGap) / u;
                                break;
                            case 4:
                                l = (r - this._bottomGap) / u,
                                    p = (i - this._bottomGap) / u
                        }
                        for (l = Math.floor(l) * this._colLineNum,
                            p = Math.ceil(p) * this._colLineNum,
                            l < 0 && (l = 0),
                            --p >= this._numItems && (p = this._numItems - 1); l <= p; l++)
                            this.displayData.push(this._calcItemPos(l))
                    }
                    if (this._delRedundantItem(),
                        this.displayData.length <= 0 || !this._numItems)
                        return void (this._lastDisplayData = []);
                    this.firstListId = this.displayData[0].id,
                        this.displayItemNum = this.displayData.length;
                    var _ = this._lastDisplayData.length
                        , m = this.displayItemNum != _;
                    if (m && (this.frameByFrameRenderNum > 0 && this._lastDisplayData.sort(function (e, t) {
                        return e - t
                    }),
                        m = this.firstListId != this._lastDisplayData[0] || this.displayData[this.displayItemNum - 1].id != this._lastDisplayData[_ - 1]),
                        this._forceUpdate || m)
                        if (this.frameByFrameRenderNum > 0)
                            this._numItems > 0 ? (this._updateDone ? this._updateCounter = 0 : this._doneAfterUpdate = true,
                                this._updateDone = false) : (this._updateCounter = 0,
                                    this._updateDone = true);
                        else {
                            this._lastDisplayData = [];
                            for (var f = 0; f < this.displayItemNum; f++)
                                this._createOrUpdateItem(this.displayData[f]);
                            this._forceUpdate = false
                        }
                    this._calcNearestItem()
                }
            }
        }
        ,
        t.prototype._calcViewPos = function () {
            var e = this.content.getPosition();
            switch (this._alignCalcType) {
                case 1:
                    this.elasticLeft = e.x > 0 ? e.x : 0,
                        this.viewLeft = (e.x < 0 ? -e.x : 0) - this.elasticLeft,
                        this.viewRight = this.viewLeft + this.node.width,
                        this.elasticRight = this.viewRight > this.content.width ? Math.abs(this.viewRight - this.content.width) : 0,
                        this.viewRight += this.elasticRight;
                    break;
                case 2:
                    this.elasticRight = e.x < 0 ? -e.x : 0,
                        this.viewRight = (e.x > 0 ? -e.x : 0) + this.elasticRight,
                        this.viewLeft = this.viewRight - this.node.width,
                        this.elasticLeft = this.viewLeft < -this.content.width ? Math.abs(this.viewLeft + this.content.width) : 0,
                        this.viewLeft -= this.elasticLeft;
                    break;
                case 3:
                    this.elasticTop = e.y < 0 ? Math.abs(e.y) : 0,
                        this.viewTop = (e.y > 0 ? -e.y : 0) + this.elasticTop,
                        this.viewBottom = this.viewTop - this.node.height,
                        this.elasticBottom = this.viewBottom < -this.content.height ? Math.abs(this.viewBottom + this.content.height) : 0,
                        this.viewBottom += this.elasticBottom;
                    break;
                case 4:
                    this.elasticBottom = e.y > 0 ? Math.abs(e.y) : 0,
                        this.viewBottom = (e.y < 0 ? -e.y : 0) - this.elasticBottom,
                        this.viewTop = this.viewBottom + this.node.height,
                        this.elasticTop = this.viewTop > this.content.height ? Math.abs(this.viewTop - this.content.height) : 0,
                        this.viewTop -= this.elasticTop
            }
        }
        ,
        t.prototype._calcItemPos = function (e) {
            var t, n, o, i, a, r, s, c;
            switch (this._align) {
                case cc.Layout.Type.HORIZONTAL:
                    switch (this._horizontalDir) {
                        case cc.Layout.HorizontalDirection.LEFT_TO_RIGHT:
                            if (this._customSize) {
                                var l = this._getFixedSize(e);
                                a = this._leftGap + (this._itemSize.width + this._columnGap) * (e - l.count) + (l.val + this._columnGap * l.count),
                                    t = (p = this._customSize[e]) > 0 ? p : this._itemSize.width
                            } else
                                a = this._leftGap + (this._itemSize.width + this._columnGap) * e,
                                    t = this._itemSize.width;
                            return this.lackCenter && (a -= this._leftGap,
                                a += this.content.width / 2 - this._allItemSizeNoEdge / 2),
                            {
                                id: e,
                                left: a,
                                right: r = a + t,
                                x: a + this._itemTmp.anchorX * t,
                                y: this._itemTmp.y
                            };
                        case cc.Layout.HorizontalDirection.RIGHT_TO_LEFT:
                            return this._customSize ? (l = this._getFixedSize(e),
                                r = -this._rightGap - (this._itemSize.width + this._columnGap) * (e - l.count) - (l.val + this._columnGap * l.count),
                                t = (p = this._customSize[e]) > 0 ? p : this._itemSize.width) : (r = -this._rightGap - (this._itemSize.width + this._columnGap) * e,
                                    t = this._itemSize.width),
                                this.lackCenter && (r += this._rightGap,
                                    r -= this.content.width / 2 - this._allItemSizeNoEdge / 2),
                            {
                                id: e,
                                right: r,
                                left: a = r - t,
                                x: a + this._itemTmp.anchorX * t,
                                y: this._itemTmp.y
                            }
                    }
                    break;
                case cc.Layout.Type.VERTICAL:
                    switch (this._verticalDir) {
                        case cc.Layout.VerticalDirection.TOP_TO_BOTTOM:
                            return this._customSize ? (l = this._getFixedSize(e),
                                o = -this._topGap - (this._itemSize.height + this._lineGap) * (e - l.count) - (l.val + this._lineGap * l.count),
                                n = (p = this._customSize[e]) > 0 ? p : this._itemSize.height) : (o = -this._topGap - (this._itemSize.height + this._lineGap) * e,
                                    n = this._itemSize.height),
                                this.lackCenter && (o += this._topGap,
                                    o -= this.content.height / 2 - this._allItemSizeNoEdge / 2),
                            {
                                id: e,
                                top: o,
                                bottom: i = o - n,
                                x: this._itemTmp.x,
                                y: i + this._itemTmp.anchorY * n
                            };
                        case cc.Layout.VerticalDirection.BOTTOM_TO_TOP:
                            var p;
                            if (this._customSize)
                                l = this._getFixedSize(e),
                                    i = this._bottomGap + (this._itemSize.height + this._lineGap) * (e - l.count) + (l.val + this._lineGap * l.count),
                                    n = (p = this._customSize[e]) > 0 ? p : this._itemSize.height;
                            else
                                i = this._bottomGap + (this._itemSize.height + this._lineGap) * e,
                                    n = this._itemSize.height;
                            return this.lackCenter && (i -= this._bottomGap,
                                i += this.content.height / 2 - this._allItemSizeNoEdge / 2),
                            {
                                id: e,
                                top: o = i + n,
                                bottom: i,
                                x: this._itemTmp.x,
                                y: i + this._itemTmp.anchorY * n
                            }
                    }
                case cc.Layout.Type.GRID:
                    var d = Math.floor(e / this._colLineNum);
                    switch (this._startAxis) {
                        case cc.Layout.AxisDirection.HORIZONTAL:
                            switch (this._verticalDir) {
                                case cc.Layout.VerticalDirection.TOP_TO_BOTTOM:
                                    c = (i = (o = -this._topGap - (this._itemSize.height + this._lineGap) * d) - this._itemSize.height) + this._itemTmp.anchorY * this._itemSize.height;
                                    break;
                                case cc.Layout.VerticalDirection.BOTTOM_TO_TOP:
                                    o = (i = this._bottomGap + (this._itemSize.height + this._lineGap) * d) + this._itemSize.height,
                                        c = i + this._itemTmp.anchorY * this._itemSize.height
                            }
                            switch (s = this._leftGap + e % this._colLineNum * (this._itemSize.width + this._columnGap),
                            this._horizontalDir) {
                                case cc.Layout.HorizontalDirection.LEFT_TO_RIGHT:
                                    s += this._itemTmp.anchorX * this._itemSize.width,
                                        s -= this.content.anchorX * this.content.width;
                                    break;
                                case cc.Layout.HorizontalDirection.RIGHT_TO_LEFT:
                                    s += (1 - this._itemTmp.anchorX) * this._itemSize.width,
                                        s -= (1 - this.content.anchorX) * this.content.width,
                                        s *= -1
                            }
                            return {
                                id: e,
                                top: o,
                                bottom: i,
                                x: s,
                                y: c
                            };
                        case cc.Layout.AxisDirection.VERTICAL:
                            switch (this._horizontalDir) {
                                case cc.Layout.HorizontalDirection.LEFT_TO_RIGHT:
                                    r = (a = this._leftGap + (this._itemSize.width + this._columnGap) * d) + this._itemSize.width,
                                        s = a + this._itemTmp.anchorX * this._itemSize.width,
                                        s -= this.content.anchorX * this.content.width;
                                    break;
                                case cc.Layout.HorizontalDirection.RIGHT_TO_LEFT:
                                    s = (a = (r = -this._rightGap - (this._itemSize.width + this._columnGap) * d) - this._itemSize.width) + this._itemTmp.anchorX * this._itemSize.width,
                                        s += (1 - this.content.anchorX) * this.content.width
                            }
                            switch (c = -this._topGap - e % this._colLineNum * (this._itemSize.height + this._lineGap),
                            this._verticalDir) {
                                case cc.Layout.VerticalDirection.TOP_TO_BOTTOM:
                                    c -= (1 - this._itemTmp.anchorY) * this._itemSize.height,
                                        c += (1 - this.content.anchorY) * this.content.height;
                                    break;
                                case cc.Layout.VerticalDirection.BOTTOM_TO_TOP:
                                    c -= this._itemTmp.anchorY * this._itemSize.height,
                                        c += this.content.anchorY * this.content.height,
                                        c *= -1
                            }
                            return {
                                id: e,
                                left: a,
                                right: r,
                                x: s,
                                y: c
                            }
                    }
            }
        }
        ,
        t.prototype._calcExistItemPos = function (e) {
            var t = this.getItemByListId(e);
            if (!t)
                return null;
            var n = {
                id: e,
                x: t.x,
                y: t.y
            };
            return this._sizeType ? (n.top = t.y + t.height * (1 - t.anchorY),
                n.bottom = t.y - t.height * t.anchorY) : (n.left = t.x - t.width * t.anchorX,
                    n.right = t.x + t.width * (1 - t.anchorX)),
                n
        }
        ,
        t.prototype.getItemPos = function (e) {
            return this._virtual ? this._calcItemPos(e) : this.frameByFrameRenderNum ? this._calcItemPos(e) : this._calcExistItemPos(e)
        }
        ,
        t.prototype._getFixedSize = function (e) {
            if (!this._customSize)
                return null;
            null == e && (e = this._numItems);
            var t = 0
                , n = 0;
            for (var o in this._customSize)
                parseInt(o) < e && (t += this._customSize[o],
                    n++);
            return {
                val: t,
                count: n
            }
        }
        ,
        t.prototype._onScrollBegan = function () {
            this._beganPos = this._sizeType ? this.viewTop : this.viewLeft
        }
        ,
        t.prototype._onScrollEnded = function () {
            var e = this;
            if (e.curScrollIsTouch = false,
                null != e.scrollToListId) {
                var t = e.getItemByListId(e.scrollToListId);
                e.scrollToListId = null,
                    t && cc.tween(t).to(.1, {
                        scale: 1.06
                    }).to(.1, {
                        scale: 1
                    }).start()
            }
            e._onScrolling(),
                e._slideMode != i.ADHERING || e.adhering ? e._slideMode == i.PAGE && (null != e._beganPos && e.curScrollIsTouch ? this._pageAdhere() : e.adhere()) : e.adhere()
        }
        ,
        t.prototype._onTouchStart = function (e, t) {
            if (!this._scrollView.hasNestedViewGroup(e, t) && (this.curScrollIsTouch = true,
                e.eventPhase !== cc.Event.AT_TARGET || e.target !== this.node)) {
                for (var n = e.target; null == n._listId && n.parent;)
                    n = n.parent;
                this._scrollItem = null != n._listId ? n : e.target
            }
        }
        ,
        t.prototype._onTouchUp = function () {
            var e = this;
            e._scrollPos = null,
                e._slideMode == i.ADHERING ? (this.adhering && (this._adheringBarrier = true),
                    e.adhere()) : e._slideMode == i.PAGE && (null != e._beganPos ? this._pageAdhere() : e.adhere()),
                this._scrollItem = null
        }
        ,
        t.prototype._onTouchCancelled = function (e, t) {
            var n = this;
            n._scrollView.hasNestedViewGroup(e, t) || e.simulate || (n._scrollPos = null,
                n._slideMode == i.ADHERING ? (n.adhering && (n._adheringBarrier = true),
                    n.adhere()) : n._slideMode == i.PAGE && (null != n._beganPos ? n._pageAdhere() : n.adhere()),
                this._scrollItem = null)
        }
        ,
        t.prototype._onSizeChanged = function () {
            this.checkInited(false) && this._onScrolling()
        }
        ,
        t.prototype._onItemAdaptive = function (e) {
            if (!this._sizeType && e.width != this._itemSize.width || this._sizeType && e.height != this._itemSize.height) {
                this._customSize || (this._customSize = {});
                var t = this._sizeType ? e.height : e.width;
                this._customSize[e._listId] != t && (this._customSize[e._listId] = t,
                    this._resizeContent(),
                    this.updateAll(),
                    null != this._scrollToListId && (this._scrollPos = null,
                        this.unschedule(this._scrollToSo),
                        this.scrollTo(this._scrollToListId, Math.max(0, this._scrollToEndTime - (new Date).getTime() / 1e3))))
            }
        }
        ,
        t.prototype._pageAdhere = function () {
            var e = this;
            if (e.cyclic || !(e.elasticTop > 0 || e.elasticRight > 0 || e.elasticBottom > 0 || e.elasticLeft > 0)) {
                var t = e._sizeType ? e.viewTop : e.viewLeft
                    , n = (e._sizeType ? e.node.height : e.node.width) * e.pageDistance;
                if (Math.abs(e._beganPos - t) > n)
                    switch (e._alignCalcType) {
                        case 1:
                        case 4:
                            e._beganPos > t ? e.prePage(.5) : e.nextPage(.5);
                            break;
                        case 2:
                        case 3:
                            e._beganPos < t ? e.prePage(.5) : e.nextPage(.5)
                    }
                else
                    e.elasticTop <= 0 && e.elasticRight <= 0 && e.elasticBottom <= 0 && e.elasticLeft <= 0 && e.adhere();
                e._beganPos = null
            }
        }
        ,
        t.prototype.adhere = function () {
            var e = this;
            if (e.checkInited() && !(e.elasticTop > 0 || e.elasticRight > 0 || e.elasticBottom > 0 || e.elasticLeft > 0)) {
                e.adhering = true,
                    e._calcNearestItem();
                var t = (e._sizeType ? e._topGap : e._leftGap) / (e._sizeType ? e.node.height : e.node.width);
                e.scrollTo(e.nearestListId, .7, t)
            }
        }
        ,
        t.prototype.update = function () {
            if (!(this.frameByFrameRenderNum <= 0 || this._updateDone))
                if (this._virtual) {
                    for (var e = this._updateCounter + this.frameByFrameRenderNum > this.displayItemNum ? this.displayItemNum : this._updateCounter + this.frameByFrameRenderNum, t = this._updateCounter; t < e; t++) {
                        var n = this.displayData[t];
                        n && this._createOrUpdateItem(n)
                    }
                    this._updateCounter >= this.displayItemNum - 1 ? this._doneAfterUpdate ? (this._updateCounter = 0,
                        this._updateDone = false,
                        this._doneAfterUpdate = false) : (this._updateDone = true,
                            this._delRedundantItem(),
                            this._forceUpdate = false,
                            this._calcNearestItem(),
                            this.slideMode == i.PAGE && (this.curPageNum = this.nearestListId)) : this._updateCounter += this.frameByFrameRenderNum
                } else if (this._updateCounter < this._numItems) {
                    for (e = this._updateCounter + this.frameByFrameRenderNum > this._numItems ? this._numItems : this._updateCounter + this.frameByFrameRenderNum,
                        t = this._updateCounter; t < e; t++)
                        this._createOrUpdateItem2(t);
                    this._updateCounter += this.frameByFrameRenderNum
                } else
                    this._updateDone = true,
                        this._calcNearestItem(),
                        this.slideMode == i.PAGE && (this.curPageNum = this.nearestListId)
        }
        ,
        t.prototype._createOrUpdateItem = function (e) {
            var t = this.getItemByListId(e.id);
            if (t)
                this._forceUpdate && this.renderEvent && (t.setPosition(cc.v2(e.x, e.y)),
                    this._resetItemSize(t),
                    this.renderEvent && cc.Component.EventHandler.emitEvents([this.renderEvent], t, e.id % this._actualNumItems));
            else {
                var n = this._pool.size() > 0;
                if (t = n ? this._pool.get() : cc.instantiate(this._itemTmp),
                    n && cc.isValid(t) || (t = cc.instantiate(this._itemTmp),
                        n = false),
                    t._listId != e.id && (t._listId = e.id,
                        t.setContentSize(this._itemSize)),
                    t.setPosition(cc.v2(e.x, e.y)),
                    this._resetItemSize(t),
                    this.content.addChild(t),
                    n && this._needUpdateWidget) {
                    var o = t.getComponent(cc.Widget);
                    o && o.updateAlignment()
                }
                t.setSiblingIndex(this.content.childrenCount - 1);
                var i = t.getComponent(_.default);
                t.listItem = i,
                    i && (i.listId = e.id,
                        i.list = this,
                        i._registerEvent()),
                    this.renderEvent && cc.Component.EventHandler.emitEvents([this.renderEvent], t, e.id % this._actualNumItems)
            }
            this._resetItemSize(t),
                this._updateListItem(t.listItem),
                this._lastDisplayData.indexOf(e.id) < 0 && this._lastDisplayData.push(e.id)
        }
        ,
        t.prototype._createOrUpdateItem2 = function (e) {
            var t, n = this.content.children[e];
            n ? this._forceUpdate && this.renderEvent && (n._listId = e,
                t && (t.listId = e),
                this.renderEvent && cc.Component.EventHandler.emitEvents([this.renderEvent], n, e % this._actualNumItems)) : ((n = cc.instantiate(this._itemTmp))._listId = e,
                    this.content.addChild(n),
                    t = n.getComponent(_.default),
                    n.listItem = t,
                    t && (t.listId = e,
                        t.list = this,
                        t._registerEvent()),
                    this.renderEvent && cc.Component.EventHandler.emitEvents([this.renderEvent], n, e % this._actualNumItems)),
                this._updateListItem(t),
                this._lastDisplayData.indexOf(e) < 0 && this._lastDisplayData.push(e)
        }
        ,
        t.prototype._updateListItem = function (e) {
            if (e && this.selectedMode > a.NONE) {
                var t = e.node;
                switch (this.selectedMode) {
                    case a.SINGLE:
                        e.selected = this.selectedId == t._listId;
                        break;
                    case a.MULT:
                        e.selected = this.multSelected.indexOf(t._listId) >= 0
                }
            }
        }
        ,
        t.prototype._resetItemSize = function () { }
        ,
        t.prototype._updateItemPos = function (e) {
            var t = isNaN(e) ? e : this.getItemByListId(e)
                , n = this.getItemPos(t._listId);
            t.setPosition(n.x, n.y)
        }
        ,
        t.prototype.setMultSelected = function (e, t) {
            var n = this;
            if (n.checkInited()) {
                if (Array.isArray(e) || (e = [e]),
                    null == t)
                    n.multSelected = e;
                else {
                    var o = undefined
                        , i = undefined;
                    if (t)
                        for (var a = e.length - 1; a >= 0; a--)
                            o = e[a],
                                (i = n.multSelected.indexOf(o)) < 0 && n.multSelected.push(o);
                    else
                        for (a = e.length - 1; a >= 0; a--)
                            o = e[a],
                                (i = n.multSelected.indexOf(o)) >= 0 && n.multSelected.splice(i, 1)
                }
                n._forceUpdate = true,
                    n._onScrolling()
            }
        }
        ,
        t.prototype.getMultSelected = function () {
            return this.multSelected
        }
        ,
        t.prototype.hasMultSelected = function (e) {
            return this.multSelected && this.multSelected.indexOf(e) >= 0
        }
        ,
        t.prototype.updateItem = function (e) {
            if (this.checkInited()) {
                Array.isArray(e) || (e = [e]);
                for (var t = 0, n = e.length; t < n; t++) {
                    var o = e[t]
                        , i = this.getItemByListId(o);
                    i && cc.Component.EventHandler.emitEvents([this.renderEvent], i, o % this._actualNumItems)
                }
            }
        }
        ,
        t.prototype.updateAll = function () {
            this.checkInited() && (this.numItems = this.numItems)
        }
        ,
        t.prototype.getItemByListId = function (e) {
            if (this.content)
                for (var t = this.content.childrenCount - 1; t >= 0; t--) {
                    var n = this.content.children[t];
                    if (n._listId == e)
                        return n
                }
        }
        ,
        t.prototype._getOutsideItem = function () {
            for (var e, t = [], n = this.content.childrenCount - 1; n >= 0; n--)
                e = this.content.children[n],
                    this.displayData.find(function (t) {
                        return t.id == e._listId
                    }) || t.push(e);
            return t
        }
        ,
        t.prototype._delRedundantItem = function () {
            if (this._virtual)
                for (var e = this._getOutsideItem(), t = e.length - 1; t >= 0; t--) {
                    var n = e[t];
                    if (!this._scrollItem || n._listId != this._scrollItem._listId) {
                        n.isCached = true,
                            this._pool.put(n);
                        for (var o = this._lastDisplayData.length - 1; o >= 0; o--)
                            if (this._lastDisplayData[o] == n._listId) {
                                this._lastDisplayData.splice(o, 1);
                                break
                            }
                    }
                }
            else
                for (; this.content.childrenCount > this._numItems;)
                    this._delSingleItem(this.content.children[this.content.childrenCount - 1])
        }
        ,
        t.prototype._delSingleItem = function (e) {
            e.removeFromParent(),
                e.destroy && e.destroy(),
                e = null
        }
        ,
        t.prototype.aniDelItem = function (e, t, n) {
            var o = this;
            if (!o.checkInited() || o.cyclic || !o._virtual)
                return cc.error("This function is not allowed to be called!");
            if (!t)
                return cc.error("CallFunc are not allowed to be NULL, You need to delete the corresponding index in the data array in the CallFunc!");
            if (o._aniDelRuning)
                return cc.warn("Please wait for the current deletion to finish!");
            var i, r = o.getItemByListId(e);
            if (r) {
                i = r.getComponent(_.default),
                    o._aniDelRuning = true,
                    o._aniDelCB = t,
                    o._aniDelItem = r,
                    o._aniDelBeforePos = r.position,
                    o._aniDelBeforeScale = r.scale;
                var s = o.displayData[o.displayData.length - 1].id
                    , c = i.selected;
                i.showAni(n, function () {
                    var n, i, l;
                    if (s < o._numItems - 2 && (n = s + 1),
                        null != n) {
                        var p = o._calcItemPos(n);
                        o.displayData.push(p),
                            o._virtual ? o._createOrUpdateItem(p) : o._createOrUpdateItem2(n)
                    } else
                        o._numItems--;
                    if (o.selectedMode == a.SINGLE)
                        c ? o._selectedId = -1 : o._selectedId - 1 >= 0 && o._selectedId--;
                    else if (o.selectedMode == a.MULT && o.multSelected.length) {
                        var d = o.multSelected.indexOf(e);
                        d >= 0 && o.multSelected.splice(d, 1);
                        for (var h = o.multSelected.length - 1; h >= 0; h--)
                            (m = o.multSelected[h]) >= e && o.multSelected[h]--
                    }
                    if (o._customSize) {
                        o._customSize[e] && delete o._customSize[e];
                        var u = {}
                            , _ = undefined;
                        for (var m in o._customSize) {
                            _ = o._customSize[m];
                            var f = parseInt(m);
                            u[f - (f >= e ? 1 : 0)] = _
                        }
                        o._customSize = u
                    }
                    for (h = null != n ? n : s; h >= e + 1; h--)
                        if (r = o.getItemByListId(h)) {
                            var g = o._calcItemPos(h - 1);
                            i = cc.tween(r).to(.2333, {
                                position: cc.v2(g.x, g.y)
                            }),
                                h <= e + 1 && (l = true,
                                    i.call(function () {
                                        o._aniDelRuning = false,
                                            t(e),
                                            delete o._aniDelCB
                                    })),
                                i.start()
                        }
                    l || (o._aniDelRuning = false,
                        t(e),
                        o._aniDelCB = null)
                }, true)
            } else
                t(e)
        }
        ,
        t.prototype.scrollTo = function (e, t, n, o) {
            undefined === t && (t = .5),
                undefined === n && (n = null),
                undefined === o && (o = false);
            var i = this;
            if (i.checkInited(false)) {
                null == t ? t = .5 : t < 0 && (t = 0),
                    e < 0 ? e = 0 : e >= i._numItems && (e = i._numItems - 1),
                    !i._virtual && i._layout && i._layout.enabled && i._layout.updateLayout();
                var a, r, s = i.getItemPos(e);
                if (!s)
                    return false;
                switch (i._alignCalcType) {
                    case 1:
                        a = s.left,
                            a -= null != n ? i.node.width * n : i._leftGap,
                            s = cc.v2(a, 0);
                        break;
                    case 2:
                        a = s.right - i.node.width,
                            a += null != n ? i.node.width * n : i._rightGap,
                            s = cc.v2(a + i.content.width, 0);
                        break;
                    case 3:
                        r = s.top,
                            r += null != n ? i.node.height * n : i._topGap,
                            s = cc.v2(0, -r);
                        break;
                    case 4:
                        r = s.bottom + i.node.height,
                            r -= null != n ? i.node.height * n : i._bottomGap,
                            s = cc.v2(0, -r + i.content.height)
                }
                var c = i.content.getPosition();
                c = Math.abs(i._sizeType ? c.y : c.x);
                var l = i._sizeType ? s.y : s.x;
                Math.abs((null != i._scrollPos ? i._scrollPos : c) - l) > .5 && (i._scrollView.scrollToOffset(s, t),
                    i._scrollToListId = e,
                    i._scrollToEndTime = (new Date).getTime() / 1e3 + t,
                    i._scrollToSo = i.scheduleOnce(function () {
                        if (i._adheringBarrier || (i.adhering = i._adheringBarrier = false),
                            i._scrollPos = i._scrollToListId = i._scrollToEndTime = i._scrollToSo = null,
                            o) {
                            var t = i.getItemByListId(e);
                            t && cc.tween(t).to(.1, {
                                scale: 1.05
                            }).to(.1, {
                                scale: 1
                            }).start()
                        }
                    }, t + .1),
                    t <= 0 && i._onScrolling())
            }
        }
        ,
        t.prototype._calcNearestItem = function () {
            var e, t, n, o, i, a, r = this;
            r.nearestListId = null,
                r._virtual && r._calcViewPos(),
                n = r.viewTop,
                o = r.viewRight,
                i = r.viewBottom,
                a = r.viewLeft;
            for (var s = false, c = 0; c < r.content.childrenCount && !s; c += r._colLineNum)
                if (e = r._virtual ? r.displayData[c] : r._calcExistItemPos(c))
                    switch (t = r._sizeType ? (e.top + e.bottom) / 2 : t = (e.left + e.right) / 2,
                    r._alignCalcType) {
                        case 1:
                            e.right >= a && (r.nearestListId = e.id,
                                a > t && (r.nearestListId += r._colLineNum),
                                s = true);
                            break;
                        case 2:
                            e.left <= o && (r.nearestListId = e.id,
                                o < t && (r.nearestListId += r._colLineNum),
                                s = true);
                            break;
                        case 3:
                            e.bottom <= n && (r.nearestListId = e.id,
                                n < t && (r.nearestListId += r._colLineNum),
                                s = true);
                            break;
                        case 4:
                            e.top >= i && (r.nearestListId = e.id,
                                i > t && (r.nearestListId += r._colLineNum),
                                s = true)
                    }
            if ((e = r._virtual ? r.displayData[r.displayItemNum - 1] : r._calcExistItemPos(r._numItems - 1)) && e.id == r._numItems - 1)
                switch (t = r._sizeType ? (e.top + e.bottom) / 2 : t = (e.left + e.right) / 2,
                r._alignCalcType) {
                    case 1:
                        o > t && (r.nearestListId = e.id);
                        break;
                    case 2:
                        a < t && (r.nearestListId = e.id);
                        break;
                    case 3:
                        i < t && (r.nearestListId = e.id);
                        break;
                    case 4:
                        n > t && (r.nearestListId = e.id)
                }
        }
        ,
        t.prototype.prePage = function (e) {
            undefined === e && (e = .5),
                this.checkInited() && this.skipPage(this.curPageNum - 1, e)
        }
        ,
        t.prototype.nextPage = function (e) {
            undefined === e && (e = .5),
                this.checkInited() && this.skipPage(this.curPageNum + 1, e)
        }
        ,
        t.prototype.skipPage = function (e, t) {
            undefined === t && (t = .5);
            var n = this;
            if (n.checkInited())
                return n._slideMode != i.PAGE ? cc.error("This function is not allowed to be called, Must SlideMode = PAGE!") : void (e < 0 || e >= n._numItems || n.curPageNum != e && (n.curPageNum = e,
                    n.indicator && n.indicator._changedState(),
                    n.pageChangeEvent && cc.Component.EventHandler.emitEvents([n.pageChangeEvent], e),
                    n.scrollTo(e, t)))
        }
        ,
        t.prototype.calcCustomSize = function (e) {
            var t = this;
            if (t.checkInited()) {
                if (!t._itemTmp)
                    return cc.error("Unset template item!");
                if (!t.renderEvent)
                    return cc.error("Unset Render-Event!");
                t._customSize = {};
                var n = cc.instantiate(t._itemTmp);
                t.content.addChild(n);
                for (var o = 0; o < e; o++)
                    cc.Component.EventHandler.emitEvents([t.renderEvent], n, o),
                        n.height == t._itemSize.height && n.width == t._itemSize.width || (t._customSize[o] = t._sizeType ? n.height : n.width);
                return Object.keys(t._customSize).length || (t._customSize = null),
                    n.removeFromParent(),
                    n.destroy && n.destroy(),
                    t._customSize
            }
        }
        ,
        __decorate([c({
            type: cc.Enum(o),
            //tooltip: false
        })], t.prototype, "templateType", undefined),
        __decorate([c({
            type: cc.Node,
            //tooltip: false,
            visible: function () {
                return this.templateType == o.NODE
            }
        })], t.prototype, "tmpNode", undefined),
        __decorate([c({
            type: cc.Prefab,
            //tooltip: false,
            visible: function () {
                return this.templateType == o.PREFAB
            }
        })], t.prototype, "tmpPrefab", undefined),
        __decorate([c()], t.prototype, "_slideMode", undefined),
        __decorate([c({
            type: cc.Enum(i),
            //tooltip: false
        })], t.prototype, "slideMode", null),
        __decorate([c({
            type: cc.Float,
            range: [0, 1, .1],
            //tooltip: false,
            slide: true,
            visible: function () {
                return this._slideMode == i.PAGE
            }
        })], t.prototype, "pageDistance", undefined),
        __decorate([c({
            type: cc.Component.EventHandler,
            //tooltip: false,
            visible: function () {
                return this._slideMode == i.PAGE
            }
        })], t.prototype, "pageChangeEvent", undefined),
        __decorate([c({
            type: u.default,
            //tooltip: false,
            visible: function () {
                return this._slideMode == i.PAGE
            }
        })], t.prototype, "indicator", undefined),
        __decorate([c()], t.prototype, "_virtual", undefined),
        __decorate([c({
            type: cc.Boolean,
            //tooltip: false
        })], t.prototype, "virtual", null),
        __decorate([c({
            //tooltip: false,
            visible: function () {
                var e = this.slideMode == i.NORMAL;
                return e || (this.cyclic = false),
                    e
            }
        })], t.prototype, "cyclic", undefined),
        __decorate([c({
            //tooltip: false,
            visible: function () {
                return this.virtual
            }
        })], t.prototype, "lackCenter", undefined),
        __decorate([c({
            //tooltip: false,
            visible: function () {
                var e = this.virtual && !this.lackCenter;
                return e || (this.lackSlide = false),
                    e
            }
        })], t.prototype, "lackSlide", undefined),
        __decorate([c({
            type: cc.Integer
        })], t.prototype, "_updateRate", undefined),
        __decorate([c({
            type: cc.Integer,
            range: [0, 6, 1],
            //tooltip: false,
            slide: true
        })], t.prototype, "updateRate", null),
        __decorate([c({
            type: cc.Integer,
            range: [0, 12, 1],
            //tooltip: false,
            slide: true
        })], t.prototype, "frameByFrameRenderNum", undefined),
        __decorate([c({
            type: cc.Component.EventHandler,
            //tooltip: false
        })], t.prototype, "renderEvent", undefined),
        __decorate([c({
            type: cc.Enum(a),
            //tooltip: false
        })], t.prototype, "selectedMode", undefined),
        __decorate([c({
            //tooltip: false,
            visible: function () {
                return this.selectedMode == a.SINGLE
            }
        })], t.prototype, "repeatEventSingle", undefined),
        __decorate([c({
            type: cc.Component.EventHandler,
            //tooltip: false,
            visible: function () {
                return this.selectedMode > a.NONE
            }
        })], t.prototype, "selectedEvent", undefined),
        __decorate([c({
            serializable: false
        })], t.prototype, "_numItems", undefined),
        __decorate([s, l(), p("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/List"), h(cc.ScrollView), d(-5e3)], t)
}(cc.Component);

n.default = m,
    module.exports = n
