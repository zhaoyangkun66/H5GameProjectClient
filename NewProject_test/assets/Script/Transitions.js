let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ToRespinTransition = n.ToNormalSpinTransition = void 0;
var s = require("Utils")
  , e = require("SettingMenuHelper")
  , o = require("GDataSource")
  , c = function(t) {
    function i() {
        var i = null !== t && t.apply(this, arguments) || this;
        return i.Sn = void 0,
        i
    }
    return __extends(i, t),
    i.prototype.instanceRun = function(t, i) {
        this.Sn = t.generalControllers,
        s.sequenceCallback(this.Tp.bind(this), this.kp.bind(this), this.Rp.bind(this))(i)
    }
    ,
    i.prototype.run = function(t, i) {
        this.Sn = t.generalControllers,
        s.sequenceCallback(this.Tp.bind(this), this.Rp.bind(this))(i)
    }
    ,
    i.prototype.Tp = function(t) {
        var i = this.Sn
          , n = i.spinButtonController
          , s = i.stickyController
          , c = i.slotController
          , r = o.gDataSource.transactionModel
          , h = r.betLevelValue
          , a = r.betSizeValue
          , u = o.gDataSource.systemModel.maxLineNumber;
        o.gDataSource.systemModel.winThresholds.getAllThresholds(a, h, u),
        e.settingMenuHelper.isIdle() && n.show(),
        c.stopRespin(),
        n.enableButton(),
        s.stopSticky(),
        t && t()
    }
    ,
    i.prototype.kp = function(t) {
        var i = this.Sn
          , n = i.slotController
          , s = i.backgroundController
          , c = i.backgroundController2
          , r = i.uiShiftController
          , h = i.tigerController
          , a = i.angpaoController
          , u = i.infoboardController
          , l = o.gDataSource.transactionModel
          , f = l.accumulatedWinAmount
          , d = l.betLevelValue
          , v = l.betSizeValue
          , _ = l.wildCount
          , p = o.gDataSource.systemModel.maxLineNumber
          , m = o.gDataSource.systemModel.winThresholds.getAllThresholds(v, d, p);
        f > 0 ? (u.setThreshold(m),
        u.playDynamicWin(f),
        e.settingMenuHelper.setWinAmount(f)) : (u.resetInfoboard(false),
        u.resumeInfoboard()),
        a.setupToNormalState(),
        s.setupToNormalState(),
        c.setupToNormalState(),
        r.setupToNormalState(),
        n.setupToNormalState(),
        h.setNormal(_),
        t && t()
    }
    ,
    i.prototype.Rp = function(t) {
        this.Sn.slotController.setupNormalSpinSlotConfig(),
        t && t()
    }
    ,
    i.prototype.destroy = function() {
        return this.Sn = void 0,
        t.prototype.destroy.call(this)
    }
    ,
    i
}(cc.Object);
n.ToNormalSpinTransition = c;
var r = function(t) {
    function i() {
        var i = null !== t && t.apply(this, arguments) || this;
        return i.Sn = void 0,
        i
    }
    return __extends(i, t),
    i.prototype.run = function(t, i) {
        this.Sn = t.generalControllers,
        s.sequenceCallback(this.Pp.bind(this), this.Ep.bind(this))(i)
    }
    ,
    i.prototype.instanceRun = function(t, i) {
        this.Sn = t.generalControllers,
        s.sequenceCallback(this.Lp.bind(this), this.Pp.bind(this))(i)
    }
    ,
    i.prototype.Ep = function(t) {
        this.Sn.spinButtonController.disableButton(),
        t && t()
    }
    ,
    i.prototype.Lp = function(t) {
        var i = this.Sn
          , n = i.backgroundController
          , s = i.backgroundController2
          , e = i.infoboardController
          , c = i.uiShiftController
          , r = i.tigerController
          , h = i.stickyController
          , a = i.slotController
          , u = i.spinButtonController
          , l = i.payLineNumberController
          , f = i.payLineController
          , d = i.angpaoController
          , v = o.gDataSource.transactionModel
          , _ = v.featureWinSymbol
          , p = v.reels
          , m = v.winLines;
        a.setSlotItemsVisible(false, [0, 1, 2, 3, 4, 5, 6, 7, 8]),
        d.setupToRespinState(),
        n.setupToRespinState(),
        s.setupToRespinState(),
        a.setupToRespinState(),
        a.playRespin(),
        c.setupToRespinState(),
        u.disableButton(),
        e.playRespin(_),
        e.resumeInfoboard(),
        h.playSticky(p, m, _, t);
        var b = m.winPositions;
        b.forEach(function(t, i) {
            b[i] = parseInt(t, 10)
        }),
        l.show(b),
        f.showLine(b),
        r.setRespin(_)
    }
    ,
    i.prototype.Pp = function(t) {
        var i = this.Sn.slotController
          , n = o.gDataSource.transactionModel.featureWinSymbol;
        i.setupRespinSlotConfig(),
        i.setRespinSymbol(n),
        t && t()
    }
    ,
    i.prototype.destroy = function() {
        return this.Sn = void 0,
        t.prototype.destroy.call(this)
    }
    ,
    i
}(cc.Object);
n.ToRespinTransition = r,
module.exports = n
