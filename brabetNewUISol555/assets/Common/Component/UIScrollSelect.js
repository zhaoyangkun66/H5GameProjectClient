let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.UIScrollSelect = undefined;
var o = require("../Define/ShareDefine")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = i.menu
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.content = null,
        t.circlePage = true,
        t.leftBtn = null,
        t.rightBtn = null,
        t.deltaY = 90,
        t.centerScale = 1,
        t.minScale = .5,
        t.scrollSpeed = 300,
        t.selectEvents = [],
        t.childs = [],
        t.isTouching = false,
        t.hasTouchMove = false,
        t.isTest = false,
        t._touchId = null,
        t.currentIndex = 0,
        t._toMoveY = 1,
        t.dy = 0,
        t.moveAim = 0,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.content.on(cc.Node.EventType.TOUCH_START, this._onTouch, this),
        this.content.on(cc.Node.EventType.TOUCH_MOVE, this._onTouch, this),
        this.content.on(cc.Node.EventType.TOUCH_END, this._onTouchEnd, this),
        this.content.on(cc.Node.EventType.TOUCH_CANCEL, this._onTouchEnd, this)
    }
    ,
    t.prototype.initChildren = function(e) {
        this.childs = [];
        for (var t = 0; t < this.content.children.length; t++)
            this.childs[t] = this.content.children[t],
            this.childs[t].position = cc.v3(this.childs[t].position.x, this.deltaY * (t - 1), 0);
        this.isTouching = false,
        this.hasTouchMove = false,
        this.isTest = false,
        this._touchId = null,
        this.scrollTo(e, false)
    }
    ,
    t.prototype.scrollTo = function(e, t) {
        if (undefined === t && (t = true),
        e < 0 && e >= this.childs.length)
            return console.error(this.node.name + "->\u79fb\u52a8\u8d85\u51fa\u8fb9\u754c\u9762");
        if (this.currentIndex = e,
        this.moveAim = e,
        t)
            this.isTest = true,
            cc.Component.EventHandler.emitEvents(this.selectEvents, {
                type: o.ScrollEventType.SCROLL_START,
                index: this.currentIndex
            });
        else
            for (var n = 0; n < this.childs.length; n++)
                this._checkChildX(this.childs[n], (n - e) * this.deltaY)
    }
    ,
    t.prototype.checkScroll = function() {
        return this.content.children.length > 1
    }
    ,
    t.prototype.scrollToLeft = function() {
        this.checkScroll() && (this._toMoveY = 1,
        this.scrollTo((this.currentIndex - 1 + this.childs.length) % this.childs.length),
        this._setPageBtnsStatus())
    }
    ,
    t.prototype.scrollToRight = function() {
        this.checkScroll() && (this._toMoveY = -1,
        this.scrollTo((this.currentIndex + 1 + this.childs.length) % this.childs.length),
        this._setPageBtnsStatus())
    }
    ,
    t.prototype._setPageBtnsStatus = function() {
        var e = this.currentIndex >= this.childs.length - 1;
        !this.circlePage && e ? (console.log("\u5df2\u7ecf\u5230\u4e86\u6700\u53f3\u8fb9", this.currentIndex),
        this.rightBtn && (this.rightBtn.interactable = false)) : this.rightBtn && (this.rightBtn.interactable = true);
        var t = this.currentIndex <= 0;
        !this.circlePage && t ? (console.log("\u5df2\u7ecf\u5230\u4e86\u6700\u5de6\u8fb9", this.currentIndex),
        this.leftBtn && (this.leftBtn.interactable = false)) : this.leftBtn && (this.leftBtn.interactable = true)
    }
    ,
    t.prototype._checkChildX = function(e, t) {
        this.circlePage && (t > this.childs.length / 2 * this.deltaY ? t -= this.childs.length * this.deltaY : t < -this.childs.length / 2 * this.deltaY && (t += this.childs.length * this.deltaY)),
        e.position = cc.v3(e.position.x, t, e.position.z);
        var n = (1 - Math.min(Math.abs(t), this.deltaY) / this.deltaY) * (this.centerScale - this.minScale) + this.minScale;
        e.scale = n
    }
    ,
    t.prototype._onTouch = function(e) {
        if ((null == this._touchId || e.touch == this._touchId) && this.checkScroll())
            if (e.type != cc.Node.EventType.TOUCH_START) {
                this.hasTouchMove = true;
                var t = e.getLocation().y - this.dy;
                this._move(t),
                this.dy = e.getLocation().y;
                var n = {
                    type: o.ScrollEventType.SCROLL_ING,
                    dx: this.dy
                };
                cc.Component.EventHandler.emitEvents(this.selectEvents, n)
            } else {
                this.isTouching = true,
                this.hasTouchMove = false,
                this.isTest = false,
                this._touchId = e.touch,
                this.dy = e.getLocation().y;
                var i = {
                    type: o.ScrollEventType.SCROLL_START,
                    index: this.currentIndex
                };
                cc.Component.EventHandler.emitEvents(this.selectEvents, i)
            }
    }
    ,
    t.prototype._isMoveEdge = function() {
        return {
            left: this.childs[0].position.y >= 0,
            right: this.childs[this.childs.length - 1].position.y <= 0
        }
    }
    ,
    t.prototype._onTouchEnd = function(e) {
        if ((null == this._touchId || e.touch == this._touchId) && this.checkScroll()) {
            if (this.isTouching = false,
            e.type != cc.Node.EventType.TOUCH_END && e.type != cc.Node.EventType.TOUCH_CANCEL || (this._touchId = null),
            !this.circlePage) {
                var t = this._isMoveEdge();
                if (t.right)
                    return void console.log("\u6700\u53f3\u8fb9 \u65e0\u6cd5\u52a8");
                if (t.left)
                    return void console.log("\u6700\u5de6\u8fb9 \u65e0\u6cd5\u52a8")
            }
            var n = this.node.convertToNodeSpaceAR(e.getLocation());
            if (this.hasTouchMove) {
                for (var i = this.deltaY, a = 0, r = 0; r < this.childs.length; r++)
                    Math.abs(this.childs[r].position.y) <= i && (i = Math.abs(this.childs[r].position.y),
                    a = r);
                this.moveAim = a,
                this._toMoveY = this.childs[a].position.y >= 0 ? -1 : 1,
                this.isTest = true
            } else {
                var s = Math.ceil((n.y - this.deltaY / 2) / this.deltaY);
                if (0 === s) {
                    var c = {
                        type: o.ScrollEventType.SCROLL_END,
                        index: this.currentIndex
                    };
                    cc.Component.EventHandler.emitEvents(this.selectEvents, c)
                } else
                    this.moveAim = (this.currentIndex + s + this.childs.length) % this.childs.length,
                    this._toMoveY = s > 0 ? -1 : 1,
                    this.isTest = true
            }
        }
    }
    ,
    t.prototype._move = function(e) {
        if (0 !== e) {
            if (!this.circlePage) {
                var t = this._isMoveEdge();
                if (e < 0 && t.right)
                    return void console.log("\u6700\u53f3\u8fb9 \u65e0\u6cd5\u52a8");
                if (e > 0 && t.left)
                    return void console.log("\u6700\u5de6\u8fb9 \u65e0\u6cd5\u52a8")
            }
            for (var n = 0; n < this.childs.length; n++)
                this._checkChildX(this.childs[n], this.childs[n].position.y + e)
        }
    }
    ,
    t.prototype.update = function(e) {
        if (!this.isTouching && this.isTest) {
            for (var t = this._toMoveY * e * this.scrollSpeed, n = this.childs[this.moveAim].position.y, i = 0; i < this.childs.length; i++)
                this._checkChildX(this.childs[i], this.childs[i].position.y + t);
            var a = this.childs[0].position.y
              , r = Math.round(a / this.deltaY)
              , s = this.deltaY * r
              , c = this.childs[this.moveAim].position.y;
            if (n * c < 0 && Math.abs(c) < this.deltaY) {
                for (this.isTest = false,
                i = 0; i < this.childs.length; i++)
                    if (Math.abs(this.childs[i].position.y) <= Math.abs(t)) {
                        this.currentIndex = i;
                        break
                    }
                for (i = 0; i < this.childs.length; i++)
                    this._checkChildX(this.childs[i], this.childs[i].position.y + s - a);
                var l = {
                    type: o.ScrollEventType.SCROLL_END,
                    index: this.currentIndex
                };
                cc.Component.EventHandler.emitEvents(this.selectEvents, l)
            }
        }
    }
    ,
    __decorate([r(cc.Node)], t.prototype, "content", undefined),
    __decorate([r({
        tooltip: "\u662f\u5426\u65e0\u9650\u7ffb\u9875"
    })], t.prototype, "circlePage", undefined),
    __decorate([r({
        type: cc.Button,
        tooltip: "\u5de6\u8fb9\u6309\u94ae",
        visible: function() {
            return !this.circlePage
        }
    })], t.prototype, "leftBtn", undefined),
    __decorate([r({
        type: cc.Button,
        tooltip: "\u53f3\u8fb9\u6309\u94ae",
        visible: function() {
            return !this.circlePage
        }
    })], t.prototype, "rightBtn", undefined),
    __decorate([r({
        tooltip: "\u5355\u4e2a\u63a7\u4ef6\u4e4b\u95f4\u7684\u8ddd\u79bb"
    })], t.prototype, "deltaY", undefined),
    __decorate([r({
        tooltip: "\u4e2d\u5fc3\u70b9\u7684\u7f29\u653e\u6bd4\u4f8b"
    })], t.prototype, "centerScale", undefined),
    __decorate([r({
        tooltip: "\u8fb9\u7f18\u70b9\u7684\u7f29\u653e\u6bd4\u4f8b"
    })], t.prototype, "minScale", undefined),
    __decorate([r({
        tooltip: "\u6eda\u52a8\u65f6\u7684\u901f\u5ea6"
    })], t.prototype, "scrollSpeed", undefined),
    __decorate([r({
        type: cc.Component.EventHandler,
        tooltip: "\u9009\u62e9\u540e\u7684\u56de\u8c03"
    })], t.prototype, "selectEvents", undefined),
    __decorate([a, s("\u81ea\u5b9a\u4e49\u7ec4\u4ef6/UIScrollSelect")], t)
}(cc.Component);
n.UIScrollSelect = c,
module.exports = n
