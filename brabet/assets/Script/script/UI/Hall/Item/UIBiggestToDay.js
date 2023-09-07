let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Define/HttpServerDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.allContent = null,
        t.item = null,
        t.rankSpr = [],
        t.newHisData = null,
        t.oldHisData = null,
        t.isRequest = true,
        t.time = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        app.HttpServerManager().RegNetPack(i.HttpAPI.GET_BIGGEST_TODAY, this.OnGetBiggestToDay, this)
    }
    ,
    t.prototype.GetInitRequest = function(e) {
        this.setIsRequest(e),
        this.RequestList()
    }
    ,
    t.prototype.RequestList = function() {
        this.unscheduleAllCallbacks(),
        this.isRequest || (this.setIsRequest(true),
        app.HttpServerManager().SendHttpPack(i.HttpAPI.GET_BIGGEST_TODAY))
    }
    ,
    t.prototype.setIsRequest = function(e) {
        this.isRequest = e,
        this.time = 0
    }
    ,
    t.prototype.OnGetBiggestToDay = function(e) {
        var t = this;
        this.setIsRequest(false);
        var n = this.oldHisData ? .1 : 0;
        if (0 != e.length) {
            this.newHisData = e;
            for (var o = function(o) {
                if (o > 9)
                    return {
                        value: undefined
                    };
                var a = function() {
                    var n = t.allContent.children[o + 1];
                    n || (n = cc.instantiate(t.item),
                    t.allContent.addChild(n)),
                    t.itemInfo(o, n, e[o])
                };
                n ? (i.schedule(function() {
                    a()
                }, n),
                n += .2) : a()
            }, i = this, a = 0; a < e.length; a++) {
                var r = o(a);
                if ("object" == typeof r)
                    return r.value
            }
            this.oldHisData = e
        }
    }
    ,
    t.prototype.itemInfo = function(e, t, n) {
        t.active = true;
        var o = t.getChildByName("rank")
          , i = o.getChildByName("icon");
        i.active = e < 3,
        i.active && (i.getComponent(cc.Sprite).spriteFrame = this.rankSpr[e]);
        var a = o.getChildByName("lbl");
        a.active = e >= 3,
        a.active && (a.getComponent(cc.Label).string = Number(e + 1) + ""),
        this.GetWndNode("profit", t).getComponent(cc.Label).string = n.game_profit + "";
        var r = this.GetWndNode("player/name", t);
        t.name = n.nickname,
        r.getComponent(cc.Label).string = n.nickname.length > 10 ? app.ComUtil().cutStr(n.nickname, 10) : n.nickname;
        var s = this.GetWndNode("player/face/mask/tx", t);
        app.ImageUtil().LoadHead(s, n.headimg ? n.headimg : "01")
    }
    ,
    t.prototype.update = function(e) {
        this.isRequest || (this.time += e,
        this.time >= 60 && this.RequestList())
    }
    ,
    t.prototype.OnDisable = function() {
        if (this.unscheduleAllCallbacks(),
        this.setIsRequest(true),
        this.oldHisData = null,
        this.newHisData)
            for (var e = 0; e < this.newHisData.length; e++) {
                if (e > 9)
                    return;
                var t = this.allContent.children[e + 1];
                t || (t = cc.instantiate(this.item),
                this.allContent.addChild(t)),
                this.itemInfo(e, t, this.newHisData[e])
            }
    }
    ,
    __decorate([s(cc.Node)], t.prototype, "allContent", undefined),
    __decorate([s(cc.Node)], t.prototype, "item", undefined),
    __decorate([s([cc.SpriteFrame])], t.prototype, "rankSpr", undefined),
    __decorate([r], t)
}(o.default);
n.default = c

module.exports = n
