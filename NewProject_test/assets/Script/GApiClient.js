let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.gApiClient = void 0;
var s = require("APIClient")
  , e = (require("TweaksData"),
require("Utils"))
  , o = require("AutomationDecorator")
  , c = require("APIClient.spec")
  , r = require("GDataSource")
  , h = e.getPlatform()
  , a = function(t) {
    function i() {
        return null !== t && t.apply(this, arguments) || this
    }
    return __extends(i, t),
    i.prototype.spin = function(t) {
        var i = this
          , n = r.gDataSource.transactionModel
          , s = n.transactionId
          , e = n.betLevelValue
          , o = n.betSizeValue
          , c = e
          , a = r.gDataSource.playerModel.walletKey
          , u = {
            cs: o,
            ml: c,
            pf: h,
            id: s,
            crl: void 0,
            wk: a
        };
        this.requestEngine("v2/Spin", u, function(n, s) {
            i.mn(n, s),
            t && t(n, s)
        })
    }
    ,
    i.prototype.mn = function(t, i) {
        if (this.logResult("spin", i),
        i && i.dt) {
            var n = i.dt.si;
            this.print(n.sid),
            r.gDataSource.updateTransactionInfo(n)
        }
    }
    ,
    __decorate([o.automationDec({
        func: c.onRequestSent
    })], i.prototype, "spin", null),
    __decorate([o.automationDec({
        func: c.onRequestReceived
    })], i.prototype, "_onRespond", null),
    i
}(s.default);
n.default = a;
var u = new a(r.gDataSource);
n.gApiClient = u,
module.exports = n
