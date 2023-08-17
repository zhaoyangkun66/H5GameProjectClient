let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/UIBaseComponent")
  , i = cc._decorator.ccclass
  , a = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.contentArr = [],
        t.lblYear = null,
        t.content = null,
        t.layBlue = null,
        t.lblLastMonth = null,
        t.lblNextMonth = null,
        t.currentMonth = 0,
        t.newYear = 0,
        t.newMonth = 0,
        t.defaultDayTag = null,
        t.lblCurrentTime = null,
        t.nodeDayTime = null,
        t.limitDayNum = 30,
        t
    }
    return __extends(t, e),
    Object.defineProperty(t.prototype, "setectColor", {
        get: function() {
            return (new cc.Color).fromHEX("#FFF073")
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "defaultColor", {
        get: function() {
            return (new cc.Color).fromHEX("#FFF6E6")
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "disableColor", {
        get: function() {
            return (new cc.Color).fromHEX("#8F8F8F")
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.init = function() {
        this.uiltTime = new r,
        this.content = this.sprBgNode.getChildByName("conten"),
        this.lblYear = this.sprBgNode.getChildByName("lblYear"),
        this.layBlue = this.sprBgNode.getChildByName("layblue"),
        this.nodeDayTime = this.sprBgNode.getChildByName("lblDayTime");
        var e = this.sprBgNode.getChildByName("lblLasttMonth")
          , t = this.sprBgNode.getChildByName("lblNextMonth");
        this.lblLastMonth = e.getComponent(cc.Label),
        this.lblNextMonth = t.getComponent(cc.Label),
        this.contentArr = this.content.children;
        for (var n = null, o = 0; o < this.contentArr.length; o++)
            (n = this.contentArr[o].getComponent(cc.Label)) && (n.overflow = cc.Label.Overflow.CLAMP,
            n.node.setContentSize(40, 40))
    }
    ,
    t.prototype.OnLoadInit = function() {
        this.init(),
        this.addEventNodeFun()
    }
    ,
    t.prototype.setCurrent = function(e) {
        this.lblCurrentTime = e,
        this.initViewFun()
    }
    ,
    Object.defineProperty(t.prototype, "sprBgNode", {
        get: function() {
            return this.node.getChildByName("sprBg")
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.addEventNodeFun = function() {
        this.contentArr = this.content.children;
        for (var e = 0; e < this.contentArr.length; e++)
            this.contentArr[e].on(cc.Node.EventType.TOUCH_START, this.upEventReceiveFun, this),
            this.contentArr[e].on(cc.Node.EventType.TOUCH_END, this.upLayBlueFun, this);
        this.node.getChildByName("sprBg").on(cc.Node.EventType.TOUCH_START, function(e) {
            e.stopPropagation()
        }, this)
    }
    ,
    t.prototype.onUpdateDayTime = function() {
        this.initViewFun()
    }
    ,
    t.prototype.initViewCalendar = function(e, t, n) {
        undefined === n && (n = -1);
        for (var o = 7 == e ? 0 : e, i = 0, a = this.getUpMonthMaxDay().end - o, r = 0, s = 0; s < this.contentArr.length; s++)
            this.contentArr[s].getChildByName("lblYinli").getComponent(cc.Label).string = "",
            o <= s && t + o > s ? (++i,
            this.contentArr[s].name = i + "",
            i == n && (this.defaultDayTag = s),
            this.contentArr[s].getComponent(cc.Label).string = i.toString()) : s < o ? (++a,
            this.contentArr[s].name = 100 + a + "",
            this.contentArr[s].getComponent(cc.Label).string = a.toString()) : s >= t + o && (++r,
            this.contentArr[s].getComponent(cc.Label).string = r.toString(),
            this.contentArr[s].name = 200 + r + ""),
            this.setlblNodeColor(this.contentArr[s])
    }
    ,
    t.prototype.setlblNodeColor = function(e) {
        if (this.limitDayNum > 0) {
            var t = this.uiltTime.formatTimeStamp(this.getTimeFormat(e.name))
              , n = this.uiltTime.get1DayLastDate((new Date).getTime(), -this.limitDayNum);
            t > n && t - n > 864e5 * (this.limitDayNum + 1) - 1 ? e.color = this.disableColor : e.color = this.defaultColor
        } else
            e.color = this.defaultColor
    }
    ,
    t.prototype.initViewFun = function() {
        var e = this.lblCurrentTime.string;
        this.lblYear.getComponent(cc.Label).string = e;
        var t = e.split("-");
        this.newYear = Number(t[0]),
        this.newMonth = Number(t[1]),
        this.currentMonth = this.newMonth,
        this.Log(this.currentMonth),
        this.updateMonth();
        var n = this.getTimeDataFun(this.newYear, this.newMonth);
        this.initViewCalendar(n.start, n.end, Number(t[2])),
        this.setLayBlueState(this.contentArr[this.defaultDayTag])
    }
    ,
    t.prototype.setLayBlueState = function(e) {
        if (e) {
            this._curSelectTarget && (this._curSelectTarget.color = this.defaultColor),
            this._curSelectTarget = e,
            e.color = this.setectColor;
            var t = this.content.convertToWorldSpaceAR(e.getPosition())
              , n = this.sprBgNode.convertToNodeSpaceAR(t);
            this.layBlue.setPosition(n)
        }
        this.layBlue.active = !!e
    }
    ,
    t.prototype.updateFun = function() {
        this.lblYear.getComponent(cc.Label).string = this.newYear + "/" + this.newMonth;
        var e = this.getTimeDataFun(this.newYear, this.newMonth);
        this.initViewCalendar(e.start, e.end)
    }
    ,
    t.prototype.upLayBlueFun = function(e) {
        var t = this;
        e.target.getComponent(cc.Label).string && (e.target.color.equals(this.disableColor) || (this.setLayBlueState(e.target),
        this.scheduleOnce(function() {
            t.OnBtnClose()
        }, .2)))
    }
    ,
    t.prototype.upEventReceiveFun = function(e) {
        var t;
        e.target.getComponent(cc.Label).string && !e.target.color.equals(this.disableColor) && (t = this.getTimeFormat(e.target.name),
        this.lblYear.getComponent(cc.Label).string = t,
        this.Log("\u4e8b\u4ef6=================", t),
        this.lblCurrentTime && (this.lblCurrentTime.string = t))
    }
    ,
    t.prototype.getTimeFormat = function(e) {
        var t = Number(e)
          , n = {
            yaer: 0,
            month: 0
        }
          , o = 0;
        t > 200 ? (o = Math.abs(t - 200),
        n = this.downYearMonthWayFun()) : t > 100 ? (o = Math.abs(t - 100),
        n = this.upYearMonthWayFun()) : (o = t,
        n.yaer = this.newYear,
        n.month = this.newMonth);
        var i = (n.month < 10 ? "0" : "") + n.month
          , a = (o < 10 ? "0" : "") + o;
        return n.yaer + "-" + i + "-" + a
    }
    ,
    t.prototype.leftBtnFun = function() {
        this.reduceDateFun() ? (this.setLayBlueState(null),
        this.updateFun()) : alert("\u8d85\u51fa\u65e5\u671f\u8303\u56f4")
    }
    ,
    t.prototype.rigthBtnFun = function() {
        this.setLayBlueState(null),
        this.addDateFun(),
        this.updateFun()
    }
    ,
    t.prototype.reduceDateFun = function() {
        return this.newMonth - 1 > 0 ? (this.newMonth -= 1,
        this.currentMonth = this.newMonth,
        this.updateMonth(),
        true) : this.newYear - 1 > 1980 && (this.newYear -= 1,
        this.newMonth = 12,
        this.currentMonth = this.newMonth,
        this.updateMonth(),
        true)
    }
    ,
    t.prototype.addDateFun = function() {
        this.newMonth + 1 < 13 ? (this.newMonth += 1,
        this.currentMonth = this.newMonth,
        this.updateMonth()) : (this.newYear += 1,
        this.newMonth = 1,
        this.currentMonth = this.newMonth,
        this.updateMonth())
    }
    ,
    t.prototype.updateMonth = function() {
        12 == this.currentMonth ? (this.lblNextMonth.string = "1",
        this.lblLastMonth.string = this.currentMonth - 1 + "") : 1 == this.currentMonth ? (this.lblNextMonth.string = this.currentMonth + 1 + "",
        this.lblLastMonth.string = "12") : (this.lblNextMonth.string = this.currentMonth + 1 + "",
        this.lblLastMonth.string = this.currentMonth - 1 + "")
    }
    ,
    t.prototype.getTimeDataFun = function(e, t) {
        var n = new Date(e,t,0)
          , o = n.getDate();
        return n.setDate(1),
        e % 4 == 0 && e % 100 != 0 || e % 400 == 0 ? 2 == t && (o = 29) : 2 == t && (o = 28),
        {
            start: n.getDay(),
            end: o
        }
    }
    ,
    t.prototype.getUpMonthMaxDay = function() {
        var e;
        return e = this.upYearMonthWayFun(),
        this.getTimeDataFun(e.yaer, e.month)
    }
    ,
    t.prototype.upYearMonthWayFun = function() {
        var e = 0
          , t = 0;
        return 1 == this.newMonth ? (e = this.newYear - 1,
        t = 12) : (e = this.newYear,
        t = this.newMonth - 1),
        {
            yaer: e,
            month: t
        }
    }
    ,
    t.prototype.downYearMonthWayFun = function() {
        var e = 0
          , t = 0;
        return 12 == this.newMonth ? (e = this.newYear + 1,
        t = 1) : (e = this.newYear,
        t = this.newMonth + 1),
        {
            yaer: e,
            month: t
        }
    }
    ,
    t.prototype.OnBtnClose = function() {
        this.node.active = false,
        this.unscheduleAllCallbacks(),
        this.node.parent.getComponent(cc.Layout) && (this.node.parent.getComponent(cc.Layout).enabled = true)
    }
    ,
    __decorate([i], t)
}(o.default);
n.default = a;
var r = function() {
    function e() {}
    return e.prototype.formatYMD1 = function(e) {
        return e.getFullYear() + "/" + (e.getMonth() + 1) + "/" + e.getDate()
    }
    ,
    e.prototype.formatYMD2 = function(e) {
        return e.getFullYear().toString() + "-" + (e.getMonth() + 1 < 10 ? "0" : "") + (e.getMonth() + 1) + "-" + (e.getDate() < 10 ? "0" : "") + e.getDate()
    }
    ,
    e.prototype.formatTimeStamp = function(e) {
        return new Date(e).getTime()
    }
    ,
    e.prototype.get1DayLastDate = function(e, t) {
        undefined === t && (t = 1);
        var n = new Date(e);
        return n.setHours(0),
        n.setMinutes(0),
        n.setSeconds(0),
        n.setMilliseconds(0),
        n.getTime() + 864e5 * t - 1
    }
    ,
    e
}();
module.exports = n
