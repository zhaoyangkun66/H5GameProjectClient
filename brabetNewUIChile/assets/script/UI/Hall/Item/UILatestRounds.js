let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Component/NodePool")
  , a = require("../../../../Common/Define/HttpServerDefine")
  , r = [.3, .5, .8, .4]
  , s = [5, 7, 12, 15]
  , c = cc._decorator
  , l = c.ccclass
  , p = c.property
  , d = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.allContent = null,
        t.item = null,
        t.itemHeight = 60,
        t.itemNum = 10,
        t.TopHeight = 50,
        t.infoNum = 0,
        t.OldRoundsData = null,
        t.NewRoundsData = null,
        t.nodePool = null,
        t.isRequest = true,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        app.HttpServerManager().RegNetPack(a.HttpAPI.GAME_LATEST_ROUNDS, this.OnGetLatestRounds, this),
        this.nodePool = this.node.addComponent(i.default),
        this.nodePool && this.nodePool.initPool(this.item, this.itemNum)
    }
    ,
    t.prototype.GetInitRequest = function() {
        0 != this.NewRoundsData.length ? this.OnGetRankInfo() : this.RequestList()
    }
    ,
    t.prototype.RequestList = function() {
        this.NewRoundsData && 0 != this.NewRoundsData.length || this.isRequest || (this.setIsRequest(true),
        this.unscheduleAllCallbacks(),
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GAME_LATEST_ROUNDS))
    }
    ,
    t.prototype.setIsRequest = function(e) {
        this.isRequest = e,
        e ? this.unschedule(this.OnScheduleRequestList) : this.RequestList()
    }
    ,
    t.prototype.setOldRoundsData = function() {
        this.NewRoundsData = [],
        this.OldRoundsData = [],
        this.allContent.removeAllChildren()
    }
    ,
    t.prototype.OnGetLatestRounds = function(e) {
        var t = this;
        0 != e.length && (this.NewRoundsData = [],
        this.OldRoundsData ? e.forEach(function(e) {
            for (var n = true, o = 0; o < t.OldRoundsData.length; o++)
                if (t.OldRoundsData[o].creat_time == e.creat_time) {
                    n = false;
                    break
                }
            n && t.NewRoundsData.push(e)
        }) : this.NewRoundsData = e.concat(),
        this.OldRoundsData = e.concat(),
        this.initView(this.NewRoundsData.concat()))
    }
    ,
    t.prototype.initView = function(e) {
        var t = this.allContent.childrenCount;
        if (t < this.itemNum)
            for (var n = 0; n < e.length; n++) {
                var o = e[n]
                  , i = this.nodePool.createNode();
                if (i.setPosition(0, -this.itemHeight * t),
                i.active = true,
                this.allContent.addChild(i),
                this.itemInfo(i, o),
                t++,
                this.allContent.height = this.itemHeight * t,
                app.ComTool().H5Platform() || (this.allContent.parent.height = this.TopHeight + this.allContent.height,
                this.node.getComponent(cc.Layout).updateLayout()),
                this.OnSplice(),
                t >= this.itemNum)
                    break
            }
        e.length > 0 ? this.OnGetRankInfo() : this.scheduleOnce(this.OnScheduleRequestList, 60)
    }
    ,
    t.prototype.OnScheduleRequestList = function() {
        this.NewRoundsData = [],
        this.setIsRequest(false)
    }
    ,
    t.prototype.OnSplice = function() {
        this.NewRoundsData.splice(0, 1)
    }
    ,
    t.prototype.OnGetRankInfo = function() {
        if (0 != this.NewRoundsData.length) {
            if (this.NewRoundsData[0]) {
                var e = this.nodePool.createNode();
                e.active = true,
                this.allContent.addChild(e),
                this.itemInfo(e, this.NewRoundsData[0]),
                e.setPosition(0, -this.itemHeight * this.itemNum),
                this.OnPlayAnim(),
                this.OnSplice()
            }
        } else
            this.setIsRequest(false)
    }
    ,
    t.prototype.getKey = function() {
        var e = Math.round(100 * Math.random());
        return e < 10 ? 0 : e < 60 ? 1 : 2
    }
    ,
    t.prototype.OnPlayAnim = function() {
        var e = this
          , t = this.allContent.childrenCount;
        this.infoNum++;
        for (var n = r[this.getKey()], o = this.infoNum >= s[this.getKey()], i = function(i) {
            var r = a.allContent.children[i];
            cc.tween(r).to(n, {
                position: cc.v3(0, (i - 1) * -a.itemHeight)
            }).call(function(n) {
                n.y >= e.itemHeight && (n.active = false,
                n.stopAllActions(),
                e.nodePool.recycleNode(n)),
                i == t - 1 && (o ? (e.infoNum = 0,
                e.scheduleOnce(function() {
                    e.OnGetRankInfo()
                }, .5)) : e.OnGetRankInfo())
            }, r).start()
        }, a = this, c = 0; c < t; c++)
            i(c)
    }
    ,
    t.prototype.itemInfo = function(e, t) {
        var n = e.getChildByName("game")
          , o = n.getChildByName("icon");
        o && t.pic_url && app.ImageUtil().LoadImage(o, t.pic_url),
        n.getChildByName("lbl").getComponent(cc.Label).string = "" + (t.game_name.length > 10 ? app.ComUtil().cutStr(t.game_name, 10) : t.game_name),
        this.GetWndNode("amount", e).getComponent(cc.Label).string = t.total_bet_gold + "",
        this.GetWndNode("player/name", e).getComponent(cc.Label).string = t.nickname.length > 10 ? app.ComUtil().cutStr(t.nickname, 10) : t.nickname;
        var i = this.GetWndNode("player/face/mask/tx", e);
        app.ImageUtil().LoadHead(i, t.headimg ? t.headimg : "01")
    }
    ,
    t.prototype.OnDisable = function() {
        var e = this;
        this.unscheduleAllCallbacks(),
        this.infoNum = 0,
        this.allContent.children.forEach(function(t, n) {
            t.stopAllActions(),
            t.setPosition(0, -e.itemHeight * n),
            n >= e.itemNum && t.removeFromParent()
        })
    }
    ,
    __decorate([p(cc.Node)], t.prototype, "allContent", undefined),
    __decorate([p(cc.Node)], t.prototype, "item", undefined),
    __decorate([p()], t.prototype, "itemHeight", undefined),
    __decorate([p()], t.prototype, "itemNum", undefined),
    __decorate([p()], t.prototype, "TopHeight", undefined),
    __decorate([l], t)
}(o.default);
n.default = d

module.exports = n
