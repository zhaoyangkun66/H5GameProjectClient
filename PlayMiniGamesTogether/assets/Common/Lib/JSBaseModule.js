function mul(t, e) {
    var r = 0
      , i = t.toString()
      , n = e.toString();
    try {
        r += i.split(".")[1].length
    } catch (u) {}
    try {
        r += n.split(".")[1].length
    } catch (u) {}
    return Number(i.replace(".", "")) * Number(n.replace(".", "")) / Math.pow(10, r)
}
Object.defineProperties(Array.prototype, {
    InArray: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t, e) {
            var r;
            if (e)
                return -1 != this.indexOf(t);
            for (r = 0; r < this.length; r++)
                if (this[r] == t)
                    return true;
            return false
        }
    },
    IndexOf: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t, e) {
            if (e)
                return this.indexOf(t);
            var r;
            for (r = 0; r < this.length; r++)
                if (this[r] == t)
                    return r;
            return -1
        }
    },
    SortList: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            t ? this.sort(function(t, e) {
                return (t = +t) < e ? 1 : -1
            }) : this.sort(function(t, e) {
                return (t = +t) > e ? 1 : -1
            })
        }
    },
    Remove: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t, e) {
            var r, i;
            if (e) {
                if (-1 == (r = this.indexOf(t)))
                    return false
            } else {
                for (i = false,
                r = 0; r < this.length; r++)
                    if (this[r] == t) {
                        i = true;
                        break
                    }
                if (!i)
                    return false
            }
            return this.splice(r, 1),
            true
        }
    },
    Equals: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            if (!t)
                return false;
            if (this.length != t.length)
                return false;
            for (var e = 0, r = this.length; e < r; e++)
                if (this[e]instanceof Array && t[e]instanceof Array) {
                    if (!this[e].Equals(t[e]))
                        return false
                } else if (this[e] != t[e])
                    return false;
            return true
        }
    }
}),
Object.defineProperties(Object.prototype, {
    Update: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            for (var e in t)
                this[e] = t[e]
        }
    },
    SetDefault: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t, e) {
            return this.hasOwnProperty(t) || (this[t] = e),
            this[t]
        }
    }
}),
Object.defineProperties(Number.prototype, {
    add: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            var e, r, i;
            try {
                e = this.toString().split(".")[1].length
            } catch (n) {
                e = 0
            }
            try {
                r = t.toString().split(".")[1].length
            } catch (n) {
                r = 0
            }
            return (mul(this, i = Math.pow(10, Math.max(e, r))) + mul(t, i)) / i
        }
    },
    sub: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            var e, r, i;
            try {
                e = this.toString().split(".")[1].length
            } catch (n) {
                e = 0
            }
            try {
                r = t.toString().split(".")[1].length
            } catch (n) {
                r = 0
            }
            return (mul(this, i = Math.pow(10, Math.max(e, r))) - mul(t, i)) / i
        }
    },
    mul: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            return mul(this, t)
        }
    },
    div: {
        writable: false,
        enumerable: false,
        configurable: true,
        value: function(t) {
            var e = 0
              , r = 0;
            try {
                e = this.toString().split(".")[1].length
            } catch (i) {}
            try {
                r = t.toString().split(".")[1].length
            } catch (i) {}
            return mul(Number(this.toString().replace(".", "")) / Number(t.toString().replace(".", "")), Math.pow(10, r - e))
        }
    }
}),
Date.prototype.format = function(t) {
    var e = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "H+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        S: this.getMilliseconds()
    };
    for (var r in /(y+)/.test(t) && (t = t.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length))),
    /(E+)/.test(t) && (t = t.replace(RegExp.$1, (RegExp.$1.length > 1 ? RegExp.$1.length > 2 ? "/u661f/u671f" : "/u5468" : "") + {
        0: "/u65e5",
        1: "/u4e00",
        2: "/u4e8c",
        3: "/u4e09",
        4: "/u56db",
        5: "/u4e94",
        6: "/u516d"
    }[this.getDay() + ""])),
    e)
        new RegExp("(" + r + ")").test(t) && (t = t.replace(RegExp.$1, 1 == RegExp.$1.length ? e[r] : ("00" + e[r]).substr(("" + e[r]).length)));
    return t
}
,
Array.prototype.Clear = function() {
    this.splice(0, this.length)
}
,
Array.prototype.Shuffle = function() {
    this.sort(()=>Math.random() > .5 ? -1 : 1)
}
;
