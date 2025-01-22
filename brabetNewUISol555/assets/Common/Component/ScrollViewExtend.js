let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ScrollDir = undefined;
var o, i = cc._decorator, a = i.ccclass;
i.property,
function(e) {
    e.VERTICAL = "VERTICAL",
    e.HORIZONTAL = "HORIZONTAL",
    e.ALL = "ALL",
    e.NOT = "NOT"
}(o = n.ScrollDir || (n.ScrollDir = {}));
var r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._isScene = false,
        t._activeCellMap = {},
        t._activeCellList = [],
        t._cacheCellList = [],
        t._cacheStyleCellMap = {},
        t._defaultCellSize = false,
        t._paddingTop = 0,
        t._paddingBottom = 0,
        t._spacing = 0,
        t._cellCount = 0,
        t._gruop = 1,
        t._cellDefaultSize = 0,
        t._middleSyn = false,
        t._isFillFull = false,
        t._recycling = true,
        t._scrollViewHeight = 0,
        t._scrollViewWidth = 0,
        t._isCreated = false,
        t._isUpdate = false,
        t._cellPerfab = null,
        t._needCraeteArray = [],
        t._needCraeteIndex = 0,
        t._updateTimer = 0,
        t._updateInterval = 2,
        t
    }
    var n;
    return __extends(t, e),
    n = t,
    t.prototype.onLoad = function() {
        this._scrollView = this.node.getComponent(cc.ScrollView),
        this._content = this._scrollView.content,
        this._scrollViewHeight = this._scrollView.node.height,
        this._scrollViewWidth = this._scrollView.node.width,
        this._direction = n.getScrollDir(this._scrollView)
    }
    ,
    t.prototype.setDelegate = function(e) {
        this.cleanCache(),
        this._delegate = e,
        this._paddingTop = this._delegate.paddingTop || 0,
        this._paddingBottom = this._delegate.paddingBottom || 0,
        this._spacing = this._delegate.spacing || 0,
        this._defaultCellSize = this._delegate.defaultCellSize || false,
        this._gruop = this._delegate.gruop || 1,
        this._cellPerfabName = this._delegate.cellPerfabName || null,
        this._preCreateCount = this._delegate.preCreateCount || null,
        this._cellPerfabName && (this._cellPerfab = null,
        "string" == typeof this._cellPerfabName || (this._cellPerfab = cc.instantiate(this._cellPerfabName))),
        true === this._delegate.middleSyn ? this._middleSyn = true : this._middleSyn = false,
        false === this._delegate.recycling ? this._recycling = false : this._recycling = true,
        this._delegate.defaultCellSize && (this._cellDefaultSize = this._delegate.sizeOfCell(0)),
        this.checkDelegate()
    }
    ,
    t.prototype.setDelegateNoClean = function(e) {
        this._delegate = e,
        this._paddingTop = this._delegate.paddingTop || 0,
        this._paddingBottom = this._delegate.paddingBottom || 0,
        this._spacing = this._delegate.spacing || 0,
        this._defaultCellSize = this._delegate.defaultCellSize || false,
        this._gruop = this._delegate.gruop || 1,
        this._cellPerfabName = this._delegate.cellPerfabName || null,
        this._preCreateCount = this._delegate.preCreateCount || null,
        this._cellPerfabName && (this._cellPerfab = null,
        "string" == typeof this._cellPerfabName || (this._cellPerfab = cc.instantiate(this._cellPerfabName))),
        true === this._delegate.middleSyn ? this._middleSyn = true : this._middleSyn = false,
        false === this._delegate.recycling ? this._recycling = false : this._recycling = true,
        this._delegate.defaultCellSize && (this._cellDefaultSize = this._delegate.sizeOfCell(0)),
        this.checkDelegate()
    }
    ,
    t.prototype.checkDelegate = function() {
        if (this._middleSyn && this._gruop > 1 && !this._defaultCellSize)
            throw new Error("ScrollViewExtend: middleSyn is no apply beacause gruop > 1 or defaultCellSize is false");
        if (this._direction !== o.VERTICAL && this._direction !== o.HORIZONTAL)
            throw new Error("ScrollViewExtend: ScrollView direction shoule be only horizontal or only vertical")
    }
    ,
    t.prototype.scrollEvent = function() {}
    ,
    t.prototype.forcScrollEvent = function() {
        this.updateCell()
    }
    ,
    t.prototype.update = function() {
        if (this._cellPerfabName)
            if (this._isCreated) {
                if (this._updateTimer += 1,
                this._updateTimer < this._updateInterval)
                    return;
                this._updateTimer = 0,
                this.updateCell()
            } else {
                if (!this._cellPerfab)
                    return;
                this.createItem(),
                this.createItem()
            }
        else {
            if (this._updateTimer += 1,
            this._updateTimer < this._updateInterval)
                return;
            this._updateTimer = 0,
            this.updateCell()
        }
    }
    ,
    t.prototype.reload = function(e) {
        this._cellCount = this._delegate.cellCount(),
        this.updateContentSize(),
        this.updateCell(e, true)
    }
    ,
    t.prototype.createItem = function() {
        if (this._needCraeteIndex >= this._needCraeteArray.length)
            this._isCreated = true;
        else {
            var e = cc.instantiate(this._cellPerfab);
            this._content.addChild(e);
            var t, n = this._needCraeteArray[this._needCraeteIndex], o = this.getPosByIndex(n), i = o[0], a = o[1];
            e.setPosition(i, a),
            this._activeCellMap[n] && this._activeCellMap[n]instanceof cc.Component && (this._activeCellMap[n].node.removeFromParent(),
            this._activeCellMap[n] = null),
            t = "string" == typeof this._cellPerfabName ? e.addComponent(this._cellPerfabName) : e._components[0],
            this._activeCellMap[n] = t,
            this._delegate.updateCell(t, n),
            this._needCraeteIndex++,
            this._needCraeteIndex >= this._needCraeteArray.length && (this._isCreated = true,
            this._needCraeteIndex = 0,
            this._needCraeteArray = [])
        }
    }
    ,
    t.prototype.updateContentSize = function() {
        if (this._scrollViewHeight = this._scrollView.node.height,
        this._scrollViewWidth = this._scrollView.node.width,
        this._isFillFull = true,
        this._defaultCellSize)
            this._direction === o.VERTICAL ? (this._content.height = Math.ceil(this._cellCount / this._gruop) * (this._cellDefaultSize + this._spacing) + this._paddingTop + this._paddingBottom,
            this._content.height < this._scrollViewHeight && (this._content.height = this._scrollViewHeight,
            this._isFillFull = false)) : (this._content.width = Math.ceil(this._cellCount / this._gruop) * (this._cellDefaultSize + this._spacing) + this._paddingTop + this._paddingBottom,
            this._content.width < this._scrollViewWidth && (this._content.width = this._scrollViewWidth,
            this._isFillFull = false));
        else if (this._direction === o.VERTICAL) {
            for (var e = 0, t = 0; t < this._cellCount; t++)
                e += this._delegate.sizeOfCell(t) + this._spacing;
            this._content.height = e,
            this._content.height < this._scrollViewHeight && (this._content.height = this._scrollViewHeight,
            this._isFillFull = false)
        } else {
            var n = 0;
            for (t = 0; t < this._cellCount; t++)
                n += this._delegate.sizeOfCell(t) + this._spacing;
            this._content.width = n,
            this._content.width < this._scrollViewWidth && (this._content.width = this._scrollViewWidth,
            this._isFillFull = false)
        }
    }
    ,
    t.prototype.updateCell = function(e, t) {
        var n = this
          , o = this.getActiveIndex();
        true === e ? (this.hideUselessCell(this._activeCellList),
        this.showActiveCell(o),
        this._activeCellList = o) : (JSON.stringify(o) !== JSON.stringify(this._activeCellList) && (this.hideUselessCell(this._activeCellList.filter(function(e) {
            return -1 === o.indexOf(e)
        })),
        this.showActiveCell(o.filter(function(e) {
            return -1 === n._activeCellList.indexOf(e)
        })),
        this._activeCellList = o),
        true === t && this.refreshActiveCell(o.filter(function(e) {
            return -1 !== n._activeCellList.indexOf(e)
        })))
    }
    ,
    t.prototype.updateSingle = function(e) {
        this._activeCellMap[e] && this._activeCellMap[e]instanceof cc.Component && this._delegate.updateCell(this._activeCellMap[e], e)
    }
    ,
    t.prototype.hideUselessCell = function(e) {
        var t = this
          , n = this;
        e.forEach(function(e) {
            n._activeCellMap[e] && (n._activeCellMap[e].node.setPosition(6666, 6666),
            n._cellPerfabName ? n._cacheCellList.push(t._activeCellMap[e]) : n.addStyleCellCache(t._activeCellMap[e]),
            delete n._activeCellMap[e])
        })
    }
    ,
    t.prototype.refreshActiveCell = function(e) {
        var t = this;
        this._cellPerfabName ? e.forEach(function(e) {
            if (t._activeCellMap[e]) {
                t._delegate.updateCell(t._activeCellMap[e], e);
                var n = t.getPosByIndex(e)
                  , o = n[0]
                  , i = n[1];
                t._activeCellMap[e].node.setPosition(o, i)
            }
        }) : e.forEach(function(e) {
            t._delegate.updateCell(t, e)
        })
    }
    ,
    t.prototype.showActiveCell = function(e) {
        var t = this;
        if (this._cellPerfabName) {
            var n = [];
            e.forEach(function(e) {
                var o = t._cacheCellList.pop();
                if (o) {
                    var i = t.getPosByIndex(e)
                      , a = i[0]
                      , r = i[1];
                    o.node.setPosition(a, r),
                    t._delegate.updateCell(o, e),
                    t._activeCellMap[e] = o
                } else
                    n.push(e)
            }),
            n.length > 0 ? (this._needCraeteIndex = 0,
            this._needCraeteArray = n,
            this._isCreated = false) : this._isCreated = true
        } else
            e.forEach(function(e) {
                t._delegate.updateCell(t, e)
            })
    }
    ,
    t.prototype.getStyleCell = function(e, t) {
        var n = null;
        if (this._activeCellMap[t]) {
            if ((n = this._activeCellMap[t]).styleName === e) {
                var o = this.getPosByIndex(t)
                  , i = o[0]
                  , a = o[1];
                return n.node.setPosition(i, a),
                n
            }
            return this._activeCellMap[t].node.setPosition(6666, 6666),
            this.addStyleCellCache(this._activeCellMap[t]),
            this._activeCellMap[t] = null,
            null
        }
        if (this._cacheStyleCellMap[e] && (n = this._cacheStyleCellMap[e].pop())) {
            var r = this.getPosByIndex(t);
            i = r[0],
            a = r[1],
            n.node.setPosition(i, a),
            this._activeCellMap[t] = n
        }
        return n
    }
    ,
    t.prototype.updateStyleCell = function(e, t, n) {
        var o = n || "defalutStyle";
        e.styleName = o,
        this._activeCellMap[t] && this._activeCellMap[t]instanceof cc.Component && (this._activeCellMap[t].node.setPosition(6666, 6666),
        this.addStyleCellCache(this._activeCellMap[t]),
        this._activeCellMap[t] = null),
        this._activeCellMap[t] = e;
        var i = this.getPosByIndex(t)
          , a = i[0]
          , r = i[1];
        e.node.setPosition(a, r),
        this._content.addChild(e.node)
    }
    ,
    t.prototype.addStyleCellCache = function(e) {
        var t = e.styleName || "defalutStyle";
        this._cacheStyleCellMap[t] || (this._cacheStyleCellMap[t] = []),
        this._cacheStyleCellMap[t].push(e)
    }
    ,
    t.prototype.getPosByIndex = function(e) {
        var t = 0
          , n = 0;
        if (this._defaultCellSize)
            if (this._direction === o.VERTICAL)
                t = (e % this._gruop + .5) * (this._scrollViewWidth / this._gruop) - this._scrollViewWidth / 2,
                n = -1 * ((Math.floor(e / this._gruop) + .5) * (this._cellDefaultSize + this._spacing) + this._paddingTop),
                !this._isFillFull && this._middleSyn && (n = (e + 1) * this._scrollViewWidth / (this._cellCount + 1) * -1);
            else {
                var i = this._scrollViewHeight / this._gruop;
                n = (this._gruop - 1 - e % this._gruop + .5) * i - this._scrollViewHeight / 2,
                t = (Math.floor(e / this._gruop) + .5) * (this._cellDefaultSize + this._spacing) + this._paddingTop,
                !this._isFillFull && this._middleSyn && (t = (e + 1) * this._scrollViewWidth / (this._cellCount + 1))
            }
        else if (this._direction === o.VERTICAL) {
            t = 0;
            for (var a = 0; a <= e; a++) {
                var r = this._spacing;
                0 === a && (r = 0),
                n += this._delegate.sizeOfCell(a) + r,
                a === e && (n -= this._delegate.sizeOfCell(a) / 2)
            }
            n *= -1
        } else {
            for (n = 0,
            a = 0; a <= e; a++)
                r = this._spacing,
                0 === a && (r = 0),
                t += this._delegate.sizeOfCell(a) + r,
                a === e && (t -= this._delegate.sizeOfCell(a) / 2);
            t *= -1
        }
        return [t, n]
    }
    ,
    t.prototype.getActiveIndex = function() {
        if (false === this._recycling) {
            for (var e = [], t = 0; t < this._cellCount; t++)
                e.push(t);
            return e
        }
        var n, i, a, r;
        if (this._direction === o.VERTICAL ? ((n = this._scrollView.getScrollOffset().y - this._paddingTop) < 0 && (n = 0),
        n + this._scrollViewHeight - this._paddingTop > this._content.height && (n = this._content.height - this._scrollViewHeight + this._paddingTop),
        i = n + this._scrollViewHeight - this._paddingTop) : ((n = -1 * this._scrollView.getScrollOffset().x - this._paddingTop) < 0 && (n = 0),
        (i = n + this._scrollViewWidth - this._paddingTop) > this._content.width && (i = this._content.width)),
        this._defaultCellSize) {
            var s = this._cellDefaultSize + this._spacing;
            a = Math.floor(n / s) * this._gruop - this._gruop,
            r = Math.ceil(i / s) * this._gruop + this._gruop + 1
        } else
            a = this.getIndexByOffset(n) - this._gruop,
            r = this.getIndexByOffset(i) + this._gruop + 1;
        n <= 0 && (r += 2 * this._gruop),
        a < 0 && (a = 0),
        this._preCreateCount && (r = a + this._preCreateCount - 1),
        r > this._cellCount - 1 && (r = this._cellCount - 1);
        var c = [];
        for (t = a; t <= r; t++)
            c.push(t);
        return c
    }
    ,
    t.prototype.getIndexByOffset = function(e) {
        for (var t = 0, n = 0; n < this._cellCount; n++)
            if ((n + 1) % this._gruop == 0 && (t += this._delegate.sizeOfCell(n) + this._spacing),
            t > e)
                return n;
        return this._cellCount
    }
    ,
    t.prototype.cleanCache = function() {
        this._activeCellMap = {},
        this._activeCellList = [],
        this._cacheCellList = [],
        this._cacheStyleCellMap = {},
        this._content.removeAllChildren(),
        this._scrollView.scrollToTop()
    }
    ,
    t.prototype.addCellToCache = function() {
        for (var e in this._activeCellMap)
            this._cellPerfabName ? this._cacheCellList.push(this._activeCellMap[e]) : this.addStyleCellCache(this._activeCellMap[e])
    }
    ,
    t.prototype.cleanContent = function() {
        this.addCellToCache();
        for (var e = 0; e <= this._content.children.length - 1; e++)
            this._content.children[e].setPosition(6666, 6666);
        this._activeCellMap = {},
        this._activeCellList = [],
        this._scrollView.stopAutoScroll(),
        this._cellCount = 0,
        this._scrollView.scrollToTop()
    }
    ,
    t.getScrollDir = function(e) {
        return e.horizontal && e.vertical ? o.ALL : e.horizontal ? o.HORIZONTAL : e.vertical ? o.VERTICAL : o.NOT
    }
    ,
    t.prototype.getCacheCellList = function() {
        return this._cacheCellList
    }
    ,
    t.prototype.getActiveCellMap = function() {
        return this._activeCellMap
    }
    ,
    n = __decorate([a], t)
}(cc.Component);
n.default = r,
module.exports = n
