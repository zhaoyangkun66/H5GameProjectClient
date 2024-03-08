let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.gDataSource = void 0;
var s = require("RtConfig")
  , e = require("GSlotTransactionModel")
  , o = require("DataSource")
  , c = require("PlayerModel")
  , r = require("SlotSystemModel")
  , h = function(t) {
    function i() {
        return t.call(this, {
            playerModel: new c.default,
            systemModel: new r.default(s.cs_Config),
            transactionModel: new e.default
        }) || this
    }
    return __extends(i, t),
    i
}(o.default);
n.default = h;
var a = new h;
n.gDataSource = a,
module.exports = n
