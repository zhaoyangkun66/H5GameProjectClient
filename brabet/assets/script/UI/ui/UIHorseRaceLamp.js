let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/DB/HNoticeManager")
  , a = require("../../../Common/Define/GameEventDefine")
  , r = require("../../../Common/Define/ShareDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.richtext = null,
        t.nodeBg = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "UIHorseRaceLamp",
        this.trumperMask = this.richtext.parent,
        this.RegEvent(a.GameEventDefine.BROADCAST_LAST, this.OnBroadcastLast),
        this.RegEvent(a.GameEventDefine.GAME_BROADCAST, this.OnGameBroadcast),
        this.richtext.on(cc.Node.EventType.SIZE_CHANGED, this.Onrichtext, this)
    }
    ,
    t.prototype.OnEnable = function() {
        if (app.UserManager().UserInfo && app.UserManager().UserInfo.user_config) {
            var e = app.UserManager().UserInfo.user_config.show_arr;
            e && 1 == e[r.VisibleBtnTag.horseRaceLamp] ? (this.node.active = true,
            this.isStart = false,
            this.isWaiting = false,
            this.lastEndTime = 0,
            i.HNoticeManager.GetInstance().broadcast.length <= 0 ? i.HNoticeManager.GetInstance().SendBroadcastLast() : this.isStart || this.startTrumper()) : this.node.active = false
        } else
            this.node.active = false
    }
    ,
    t.prototype.OnBroadcastLast = function() {
        this.isStart || this.startTrumper()
    }
    ,
    t.prototype.startTrumper = function() {
        0 == i.HNoticeManager.GetInstance().trumpers.length ? this.startIndex = -1 : this.startIndex = 0,
        this.moveFinish()
    }
    ,
    t.prototype.Onrichtext = function() {
        this.targetPosX = this.trumperMask.width / 2 - this.trumperMask.width - 2 * this.richtext.width
    }
    ,
    t.prototype.runTrumperActionForever = function() {
        if ("" != this.richtext.getComponent(cc.RichText).string) {
            this.isStart = true;
            var e = this.richtext
              , t = this.trumperMask.width / 2;
            e.x = t,
            this.targetPosX = e.x - this.trumperMask.width - 2 * e.width
        } else
            this.isWaiting = false
    }
    ,
    t.prototype.moveFinish = function() {
        var e = this
          , t = i.HNoticeManager.GetInstance().trumpers;
        if (0 == t.length) {
            this.isWaiting = true;
            var n = this.getNextBroadcast();
            this.richtext.getComponent(cc.RichText).string = n.content,
            this.runTrumperActionForever();
            var o = Date.parse((new Date).toString()) - this.lastEndTime;
            (o = n.time - o) > n.time && (o = 0),
            setTimeout(function() {
                e.isWaiting = false
            }, o / 1e3)
        } else {
            var a = t.shift();
            this.richtext.getComponent(cc.RichText).string = a,
            this.runTrumperActionForever()
        }
    }
    ,
    t.prototype.getNextBroadcast = function() {
        var e = i.HNoticeManager.GetInstance().broadcast;
        return e && 0 != e.length ? (this.startIndex++,
        this.startIndex >= e.length && (this.startIndex = 0),
        e[this.startIndex]) : {
            content: "",
            time: 0
        }
    }
    ,
    t.prototype.OnGameBroadcast = function() {
        this.isStart || this.startTrumper()
    }
    ,
    t.prototype.update = function() {
        0 == this.isStart || this.isWaiting ? this.nodeBg.active = false : (this.nodeBg.active = true,
        this.richtext.x -= 2,
        this.richtext.x <= this.targetPosX && (this.lastEndTime = Date.parse((new Date).toString()),
        this.isStart = false,
        this.moveFinish()))
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "richtext", undefined),
    __decorate([l(cc.Node)], t.prototype, "nodeBg", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
