let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ListViewDir = n.ListView = undefined;
var o, i = require("../Base/BaseClass"), a = require("./LayoutUtil"), r = function(e) {
    function t(t, n) {
        undefined === n && (n = 3);
        var i = e.call(this) || this;
        i._selected_index = -1,
        i.top = 0,
        i.left = 0,
        i.delayTime = 0,
        i.refreshTime = 0,
        i.params = t,
        i.scrollview = t.scrollview,
        i.node = i.scrollview.node,
        i.mask = t.mask,
        i.content = t.content || i.scrollview.content;
        var a = i.content.getComponent(cc.Layout);
        if (a && (a.enabled = false),
        i.item_tpl = cc.instantiate(t.item_tpl),
        !i.item_tpl)
            return i.ErrLog("\u6ca1\u6709\u521d\u59cb\u5316\u5b50\u8282\u70b9"),
            i;
        t.component && i.item_tpl.addComponent(t.component),
        0 != i.top && i.content.removeAllChildren(),
        i.item_width = i.item_tpl.width,
        i.item_height = i.item_tpl.height,
        i.offset_x = i.item_tpl.anchorX * i.item_width,
        i.offset_y = (1 - i.item_tpl.anchorY) * i.item_height,
        i.dir = t.direction || (i.scrollview.horizontal ? o.Horizontal : o.Vertical),
        i.reHeightAndWidth(),
        i.gap_x = t.gap_x || a && a.spacingX || 0,
        i.gap_y = t.gap_y || a && a.spacingY || 0,
        i.row = t.row || 1,
        i.col = t.column || 1,
        i.cb_host = t.cb_host,
        i.item_setter = t.item_setter,
        i.recycle_cb = t.recycle_cb,
        i.select_cb = t.select_cb,
        i.select_setter = t.select_setter,
        i.scroll_to_end_cb = t.scroll_to_end_cb,
        i.scroll_to_top_cb = t.scroll_to_top_cb,
        i.bounce_end_cb = t.bounce_end_cb,
        i.bounce_top_cb = t.bounce_top_cb,
        i.scroll_to_ended = t.scroll_to_ended,
        i.auto_scrolling = t.auto_scrolling || false,
        i.node_pool = new cc.NodePool,
        i._datas = [],
        i.items = [],
        i.top = t.top || a && a.paddingTop || 0,
        i.left = t.left || a && a.paddingLeft || 0,
        i.lackCenter = !!t.lackCenter,
        i.autoAnimation = !!t.autoAnimation;
        var r = i.item_tpl.getComponentInChildren(cc.Animation) && t.autoAnimation
          , s = i.item_tpl.getComponentsInChildren("AnimationDelay");
        i.delayTime = s.length > 0 ? s[0].delay : r ? .1 : 0;
        for (var c = 0; c < n; c++)
            i.node_pool.put(cc.instantiate(i.item_tpl));
        if (i.dir == o.Vertical) {
            var l = (i.item_width + i.gap_x) * i.col - i.gap_x + i.left;
            l > i.width && (i.SysLog("real width > width, resize scrollview to realwidth,", i.width, "->", l),
            i.width = l),
            i.content.width = i.width,
            i.contentOffset_x = i.content.anchorX * i.width
        } else {
            var p = (i.item_height + i.gap_y) * i.row - i.gap_y + i.top;
            p > i.height && (i.SysLog("real height > height, resize scrollview to realheight,", i.height, "->", p),
            i.height = p),
            i.content.height = i.height,
            i.contentOffset_y = (1 - i.content.anchorY) * i.height
        }
        return i.scrollview.node.setContentSize(i.width, i.height),
        i.scrollview.vertical = i.dir == o.Vertical,
        i.scrollview.horizontal = i.dir == o.Horizontal,
        i.scrollview.inertia = true,
        i.scrollview.node.on("scrolling", i.on_scrolling, i),
        i.scrollview.vertical && (i.scrollview.node.on("bounce-top", i.on_bounce_top, i),
        i.scrollview.node.on("bounce-bottom", i.on_bounce_end, i),
        i.scrollview.node.on("scroll-to-top", i.on_scroll_to_top, i),
        i.scrollview.node.on("scroll-to-bottom", i.on_scroll_to_end, i)),
        i.scrollview.horizontal && (i.scrollview.node.on("bounce-left", i.on_bounce_top, i),
        i.scrollview.node.on("bounce-right", i.on_bounce_end, i),
        i.scrollview.node.on("scroll-to-left", i.on_scroll_to_top, i),
        i.scrollview.node.on("scroll-to-right", i.on_scroll_to_end, i)),
        i.scrollview.node.on("scroll-ended", i.on_scroll_ended, i),
        i.mask.on("size-changed", i.on_mask_size_changed, i),
        i
    }
    return __extends(t, e),
    t.prototype.SetJSName = function(e) {
        this.JS_Name = "ListView" + e
    }
    ,
    t.prototype.on_mask_size_changed = function() {
        this.reHeightAndWidth(),
        this.resize_content(),
        this.layout_items(0),
        this.render_items()
    }
    ,
    t.prototype.on_scroll_to_top = function() {
        this.scroll_to_top_cb && this.scroll_to_top_cb.call(this.cb_host)
    }
    ,
    t.prototype.on_scroll_to_end = function() {
        this.scroll_to_end_cb && this.scroll_to_end_cb.call(this.cb_host)
    }
    ,
    t.prototype.on_bounce_top = function() {
        this.bounce_top_cb && this.bounce_top_cb.call(this.cb_host)
    }
    ,
    t.prototype.on_bounce_end = function() {
        this.bounce_end_cb && this.bounce_end_cb.call(this.cb_host)
    }
    ,
    t.prototype.on_scroll_ended = function() {
        this.scroll_to_ended && this.scroll_to_ended.call(this.cb_host)
    }
    ,
    t.prototype.on_scrolling = function() {
        if (this.items && this.items.length)
            if (this.dir == o.Vertical) {
                var e = this.content.y;
                e < -this.contentOffset_y + this.maskOffset_y && (e = -this.contentOffset_y + this.maskOffset_y),
                e > -this.contentOffset_y + this.maskOffset_y + this.content.height - this.height && (e = -this.contentOffset_y + this.maskOffset_y + this.content.height - this.height);
                for (var t = 0, n = this.items.length - 1, i = (a = -e + this.maskOffset_y) - this.height; this.items[t].y - (this.item_height - this.offset_y) > a; )
                    t++;
                for (; this.items[n].y + this.offset_y < i; )
                    n--;
                t == this._start_index && n == this._stop_index || (this._start_index = t,
                this._stop_index = n,
                this.render_items())
            } else {
                var a, r = this.content.x;
                for (r > this.contentOffset_x - this.maskOffset_x && (r = this.contentOffset_x - this.maskOffset_x),
                r < this.contentOffset_x - this.maskOffset_x - this.content.width + this.width && (r = this.contentOffset_x - this.maskOffset_x - this.content.width + this.width),
                t = 0,
                n = this.items.length - 1,
                i = (a = -r - this.maskOffset_x) + this.width; this.items[t].x + (this.item_width - this.offset_x) < a; )
                    t++;
                for (; this.items[n].x - this.offset_x > i; )
                    n--;
                t == this._start_index && n == this._stop_index || (this._start_index = t,
                this._stop_index = n,
                this.render_items())
            }
    }
    ,
    t.prototype.select_item = function(e) {
        e != this._selected_index && (-1 != this._selected_index && this.inner_select_item(this._selected_index, false),
        this.inner_select_item(e, true))
    }
    ,
    t.prototype.cancel_select_item = function() {
        -1 != this._selected_index && (this.inner_select_item(this._selected_index, false),
        this._selected_index = -1)
    }
    ,
    t.prototype.inner_select_item = function(e, t) {
        var n = this.items[e];
        if (n) {
            n.is_select = t;
            try {
                n.node && this.select_setter && this.select_setter.call(this.cb_host, n.node, t, e)
            } catch (o) {
                console.error("err", o)
            }
            t && (this._selected_index = e,
            this.select_cb && this.select_cb.call(this.cb_host, n.data, e))
        } else
            this.WarnLog("inner_select_item index is out of range{", 0, this.items.length - 1, "}", e)
    }
    ,
    t.prototype.spawn_node = function() {
        var e = this.node_pool.get();
        return e || (e = cc.instantiate(this.item_tpl)),
        e.active = true,
        e.parent = this.content,
        e
    }
    ,
    t.prototype.recycle_node = function(e) {
        if (e.node) {
            if (cc.isValid(e.node)) {
                this.recycle_cb && this.recycle_cb.call(this.cb_host, e.node);
                var t = e.node.getComponentsInChildren(cc.Animation);
                if (t.length > 0 && t[0].getAnimationState(t[0].defaultClip.name).isPlaying)
                    return e.node.destroy(),
                    void this.clear_item(e);
                this.node_pool.put(e.node),
                this.clear_item(e)
            }
        } else
            this.clear_item(e)
    }
    ,
    t.prototype.clear_item = function(e) {
        e.node = null,
        e.createId && (clearTimeout(e.createId),
        e.createId = 0)
    }
    ,
    t.prototype.render_items = function() {
        for (var e, t = this, n = 0; n < this._start_index; n++)
            (e = this.items[n]).node && this.recycle_node(e);
        for (n = this.items.length - 1; n > this._stop_index; n--)
            (e = this.items[n]).node && this.recycle_node(e);
        if (-1 != this._start_index || -1 != this._stop_index)
            for (var o = this._start_index; o <= this._stop_index; o++)
                if ((e = this.items[o]).node)
                    e.node.setPosition(e.x, e.y);
                else if (!e.createId)
                    if (cc.sys.browserType != cc.sys.BROWSER_TYPE_WECHAT) {
                        var i = this.refreshTime + (e.index + 1) * this.delayTime * 1e3 - Date.now();
                        if (i > 0) {
                            var a = setTimeout(function(e, n) {
                                try {
                                    if (n.node = e.spawn_node(n.index),
                                    n.node.setPosition(n.x, n.y),
                                    !n.node.activeInHierarchy)
                                        return;
                                    var o = n.node.getComponentsInChildren(cc.Animation);
                                    if (o.length > 0 && t.autoAnimation) {
                                        var i = o[0]
                                          , a = i.node.getComponent(cc.Button);
                                        a && (a.interactable = false,
                                        i.once("finished", function() {
                                            a.interactable = true
                                        }, t)),
                                        i.play()
                                    }
                                    e.item_setter.call(e.cb_host, n.node, n.data, n.index),
                                    e.select_setter && e.select_setter.call(e.cb_host, n.node, n.is_select, n.index)
                                } catch (r) {
                                    t.ErrLog("e", r)
                                }
                                n.createId = 0
                            }, i, this, e);
                            e.createId = Number(a)
                        } else {
                            try {
                                e.node = this.spawn_node(e.index),
                                e.node.setPosition(e.x, e.y),
                                (r = e.node.getComponentsInChildren(cc.Animation)).length > 0 && this.autoAnimation && (-i / 1e3 < (s = r[0]).defaultClip.duration ? (s.play(),
                                s.setCurrentTime(-i / 1e3)) : (s.play(),
                                s.setCurrentTime(s.defaultClip.duration))),
                                this.item_setter.call(this.cb_host, e.node, e.data, e.index),
                                this.select_setter && this.select_setter.call(this.cb_host, e.node, e.is_select, e.index)
                            } catch (c) {
                                this.ErrLog("e", c)
                            }
                            e.createId = 0
                        }
                    } else
                        try {
                            var r, s;
                            (r = e.node.getComponentsInChildren(cc.Animation)).length > 0 && this.autoAnimation && ((s = r[0]).play(),
                            s.setCurrentTime(s.defaultClip.duration)),
                            e.node = this.spawn_node(e.index),
                            e.node.setPosition(e.x, e.y),
                            this.item_setter.call(this.cb_host, e.node, e.data, e.index),
                            this.select_setter && this.select_setter.call(this.cb_host, e.node, e.is_select, e.index)
                        } catch (c) {
                            this.ErrLog("e", c)
                        }
    }
    ,
    t.prototype.pack_item = function(e) {
        return {
            index: 0,
            x: 0,
            y: 0,
            data: e,
            node: null,
            is_select: false,
            createId: 0
        }
    }
    ,
    t.prototype.layout_items = function(e) {
        for (var t, n, i, r, s = this.items.length, c = e, l = s; c < l; c++) {
            var p = this.items[c];
            p.index = c,
            this.isDefaultCenter && this.lackCenter && (this.dir == o.Vertical && 1 == this.col || this.dir == o.Horizontal && 1 == this.row) ? this.dir == o.Vertical ? (t = a.LayoutUtil.vertical_center_layout(c, s, this.content.height, this.item_height + this.gap_y, this.offset_x, this.offset_y, this.contentOffset_x, this.left, this.top),
            p.x = t[0],
            p.y = t[1]) : (n = a.LayoutUtil.horizontal_center_layout(c, s, this.content.width, this.item_width + this.gap_x, this.offset_x, this.offset_y, this.contentOffset_y, this.left, this.top),
            p.x = n[0],
            p.y = n[1]) : this.dir == o.Vertical ? (i = a.LayoutUtil.vertical_layout(c, this.item_width + this.gap_x, this.item_height + this.gap_y, this.col, this.offset_x, this.offset_y, this.contentOffset_x, this.contentOffset_y, this.left, this.top),
            p.x = i[0],
            p.y = i[1]) : (r = a.LayoutUtil.horizontal_layout(c, this.item_width + this.gap_x, this.item_height + this.gap_y, this.row, this.offset_x, this.offset_y, this.contentOffset_x, this.contentOffset_y, this.left, this.top),
            p.x = r[0],
            p.y = r[1])
        }
    }
    ,
    t.prototype.resize_content = function() {
        var e = this.items.length;
        if (e <= 0)
            return this.content.width = this.width,
            this.content.height = this.height,
            this.contentOffset_x = this.content.anchorX * this.width,
            void (this.contentOffset_y = (1 - this.content.anchorY) * this.height);
        if (this.dir == o.Vertical) {
            var t = Math.ceil(e / this.col);
            this.isDefaultCenter = this.height > t * this.item_height + (t - 1) * this.gap_y + this.top,
            this.content.height = Math.max(this.height, t * this.item_height + (t - 1) * this.gap_y + this.top),
            this.contentOffset_y = (1 - this.content.anchorY) * this.content.height
        } else {
            var n = Math.ceil(e / this.row);
            this.isDefaultCenter = this.width > n * this.item_width + (n - 1) * this.gap_x + this.left,
            this.content.width = Math.max(this.width, n * this.item_width + (n - 1) * this.gap_x + this.left),
            this.contentOffset_x = this.content.anchorX * this.content.width
        }
    }
    ,
    t.prototype.reHeightAndWidth = function() {
        this.width = this.params.width || this.mask.width,
        this.height = this.params.height || this.mask.height,
        this.maskOffset_x = this.mask.anchorX * this.width,
        this.maskOffset_y = (1 - this.mask.anchorY) * this.height
    }
    ,
    t.prototype.clear_items = function() {
        var e = this;
        this.cancel_select_item(),
        this.items && this.items.forEach(function(t) {
            e.recycle_node(t)
        }),
        this.items = [],
        this._datas = []
    }
    ,
    t.prototype.set_data = function(e, t) {
        var n = this;
        undefined === t && (t = true),
        this.clear_items(),
        this._datas = e,
        e.forEach(function(e) {
            var t = n.pack_item(e);
            n.items.push(t)
        }),
        this.resize_content(),
        this.layout_items(0),
        this._start_index = -1,
        this._stop_index = -1,
        t && (this.refreshTime = Date.now(),
        this.dir == o.Vertical ? this.content.y = -this.contentOffset_y + this.maskOffset_y : this.content.x = this.contentOffset_x - this.maskOffset_x),
        this.items.length > 0 && this.on_scrolling()
    }
    ,
    t.prototype.insert_data = function(e) {
        for (var t, n, o = this, i = [], a = 1; a < arguments.length; a++)
            i[a - 1] = arguments[a];
        if (0 != i.length)
            if (this.items || (this.items = []),
            this._datas || (this._datas = []),
            e < 0 || e > this.items.length)
                this.WarnLog("invalid index", e);
            else {
                var r = e == this.items.length
                  , s = [];
                i.forEach(function(e) {
                    var t = o.pack_item(e);
                    s.push(t)
                }),
                (t = this._datas).splice.apply(t, __spreadArrays([e, 0], i)),
                (n = this.items).splice.apply(n, __spreadArrays([e, 0], s)),
                this.resize_content(),
                this.layout_items(0),
                this._start_index = -1,
                this._stop_index = -1,
                this.auto_scrolling && r && this.scroll_to_end(),
                this.on_scrolling()
            }
    }
    ,
    t.prototype.remove_data = function(e, t) {
        var n = this;
        if (undefined === t && (t = 1),
        this.items)
            if (e < 0 || e >= this.items.length)
                this.WarnLog("invalid index", e);
            else if (t < 1)
                this.SysLog("nothing to remove");
            else {
                var o = this.items.splice(e, t);
                this._datas.splice(e, t),
                o.forEach(function(e) {
                    n.recycle_node(e)
                }),
                this.resize_content(),
                this.layout_items(0),
                this.items.length > 0 && (this._start_index = -1,
                this._stop_index = -1,
                this.on_scrolling())
            }
        else
            this.SysLog("call set_data before call this method")
    }
    ,
    t.prototype.append_data = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.items || (this.items = []),
        this.insert_data.apply(this, __spreadArrays([this.items.length], e))
    }
    ,
    t.prototype.scroll_to = function(e, t) {
        if (undefined === t && (t = 0),
        e = cc.misc.clampf(e, 0, this.items.length - 1),
        this.dir == cc.Layout.AxisDirection.VERTICAL) {
            if (this.height - this.content.height >= 0)
                return void this.SysLog("no need to scroll");
            this.scrollview.stopAutoScroll();
            var n = this.contentOffset_y - (this.items[e].y + this.offset_y);
            n = cc.misc.clampf(n, 0, this.scrollview.getMaxScrollOffset().y),
            this.scrollview.scrollToOffset(cc.v2(0, n), t),
            this.on_scrolling()
        } else {
            if (this.content.width - this.width <= 0)
                return void this.SysLog("no need to scroll");
            this.scrollview.stopAutoScroll();
            var o = this.contentOffset_x + (this.items[e].x - this.offset_x);
            o = cc.misc.clampf(o, 0, this.scrollview.getMaxScrollOffset().x),
            this.scrollview.scrollToOffset(cc.v2(o, 0), t),
            this.on_scrolling()
        }
    }
    ,
    t.prototype.checkInContent = function(e) {
        e = Math.min(this.items.length - 1, e);
        var t = this.items[e];
        return Boolean(t.node)
    }
    ,
    t.prototype.scroll_to_end = function(e) {
        undefined === e && (e = 0),
        this.dir == o.Vertical ? this.scrollview.scrollToBottom(e) : this.scrollview.scrollToRight(e),
        this.on_scrolling()
    }
    ,
    t.prototype.scroll_to_top = function() {
        this.dir == o.Vertical ? this.scrollview.scrollToTop() : this.scrollview.scrollToLeft(),
        this.on_scrolling()
    }
    ,
    t.prototype.stopAutoScroll = function() {
        this.scrollview.stopAutoScroll()
    }
    ,
    t.prototype.refresh_items = function() {
        this.on_scrolling()
    }
    ,
    t.prototype.refresh_item = function(e, t) {
        if (this.items)
            if (e < 0 || e >= this.items.length)
                this.WarnLog("invalid index", e);
            else {
                var n = this.items[e];
                if (n.data = t,
                this._datas[e] = t,
                n.node)
                    try {
                        this.recycle_cb && this.recycle_cb.call(this.cb_host, n.node),
                        this.item_setter.call(this.cb_host, n.node, n.data, e)
                    } catch (o) {
                        this.ErrLog("e", o)
                    }
            }
        else
            this.SysLog("call set_data before call this method")
    }
    ,
    t.prototype.destroy = function() {
        this.item_setter = null,
        this.select_setter = null,
        this.recycle_cb = null,
        this.select_cb = null,
        this.clear_items(),
        this.node_pool && this.node_pool.clear(),
        this.node_pool = null,
        this.items = null,
        this._datas = null,
        cc.isValid(this.scrollview.node) && (this.scrollview.node.off("scrolling", this.on_scrolling, this),
        this.scrollview.node.off("bounce-top", this.on_bounce_top, this),
        this.scrollview.node.off("bounce-bottom", this.on_bounce_end, this),
        this.scrollview.node.off("scroll-to-top", this.on_scroll_to_top, this),
        this.scrollview.node.off("scroll-to-bottom", this.on_scroll_to_end, this),
        this.scrollview.node.off("bounce-left", this.on_bounce_top, this),
        this.scrollview.node.off("bounce-right", this.on_bounce_end, this),
        this.scrollview.node.off("scroll-to-left", this.on_scroll_to_top, this),
        this.scrollview.node.off("scroll-to-right", this.on_scroll_to_end, this),
        this.mask.off("size-changed", this.on_mask_size_changed, this))
    }
    ,
    Object.defineProperty(t.prototype, "datas", {
        get: function() {
            return this._datas
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "selected_index", {
        get: function() {
            return this._selected_index
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "selected_data", {
        get: function() {
            var e = this.items[this._selected_index];
            return e ? e.data : null
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "start_index", {
        get: function() {
            return this._start_index
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "stop_index", {
        get: function() {
            return this._stop_index
        },
        enumerable: false,
        configurable: true
    }),
    t
}(i.BaseClass);
n.ListView = r,
module.exports = n
