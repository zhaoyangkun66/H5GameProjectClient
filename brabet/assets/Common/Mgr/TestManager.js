let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.TestManager = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "TestManager"
    }
    ,
    t.prototype.gm = function() {
        app.FormManager().ShowForm("UIToast", "I am aa happy toast.")
    }
    ,
    t.prototype.roomgm = function() {}
    ,
    t.prototype.TestHallPack = function() {}
    ,
    t.prototype.TestRoomPack = function() {}
    ,
    t.prototype.TestLeaveRoomPack = function() {
        app.GameServerManager().send(app.GameServerManager().req_key_map.req_leave_hall.key, {
            hall_id: 28e4
        }),
        app.GameServerManager().send(app.GameServerManager().req_key_map.req_join_hall.key, {
            hall_id: 3e5
        })
    }
    ,
    t.prototype.GetAllList = function(e, t) {
        var n = []
          , o = []
          , i = function(a, r) {
            for (var s = r; s <= a; s++)
                if (o[r - 1] = s - 1,
                r > 1)
                    i(s - 1, r - 1);
                else {
                    for (var c = [], l = 0; l <= t - 1; l++)
                        c.push(e[o[l]]);
                    n.push(c)
                }
        };
        return i(e.length, t),
        n
    }
    ,
    t.prototype.LeaveHall = function(e) {
        app.GameServerManager().send(app.GameServerManager().req_key_map.req_leave_hall.key, {
            hall_id: e
        })
    }
    ,
    t.prototype.TestFloat = function() {
        console.log(.1 + .2);
        var e = Big(.1).plus(.2);
        console.log(e.toNumber()),
        console.log(6.8 - .9),
        e = new Big(6.8).minus(.9),
        console.log(e.toNumber()),
        console.log(2.3 * 100),
        e = new Big(2.3).times(100),
        console.log(e.toNumber()),
        console.log(2.14 / 100),
        e = new Big(2.14).div(100),
        console.log(e.toNumber())
    }
    ,
    t
}(require("../Base/Singleton").Singleton);
n.TestManager = o,
module.exports = n
