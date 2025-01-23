let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ComUtil = undefined;
var o = require("../Base/Singleton")
  , i = (new Map,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "ComUtil",
        this.Log("Init")
    }
    ,
    t.prototype.uniqueid = function() {
        var e = Math.random
          , t = parseInt;
        return Number(new Date).toString() + t("" + 10 * e()) + t("" + 10 * e())
    }
    ,
    t.prototype.shuffle = function(e) {
        for (var t = undefined, n = undefined, o = e.length; o; t = parseInt("" + Math.random() * o),
        n = e[--o],
        e[o] = e[t],
        e[t] = n)
            ;
        return e
    }
    ,
    t.prototype.format_date = function(e) {
        var t = null == e ? new Date : new Date(1e3 * parseInt(e));
        return t.getFullYear() + "." + (t.getMonth() + 1) + "." + t.getDate() + " " + t.getHours() + ":" + t.getMinutes() + ":" + t.getSeconds()
    }
    ,
    t.prototype.deepCopy = function(e) {
        if ("object" != typeof e)
            return e;
        if (this.isArray(e))
            return e;
        var t = {};
        for (var n in e)
            if (this.isArray(e[n])) {
                var o = e[n];
                t[n] = [];
                for (var i = 0; i < o.length; i++)
                    t[n].push(o[i])
            } else
                t[n] = this.deepCopy(e[n]);
        return t
    }
    ,
    t.prototype.isArray = function(e) {
        return "[object Array]" == Object.prototype.toString.call(e)
    }
    ,
    t.prototype.formatName = function(e) {
        var t = "";
        if (2 === e.length)
            t = e.substring(0, 1) + "*";
        else if (e.length > 2) {
            for (var n = "", o = 0, i = e.length - 2; o < i; o++)
                n += "*";
            t = e.substring(0, 1) + n + e.charAt(e.length - 1)
        } else
            t = e;
        return t
    }
    ,
    t.prototype.get_strLength = function(e) {
        var t, n, o = 0;
        for (t = 0; t < e.length; t++)
            (n = e.charCodeAt(t)) < 127 ? o += 1 : 128 <= n && n <= 2047 ? o += 2 : 2048 <= n && n <= 65535 && (o += 3);
        return o
    }
    ,
    t.prototype.copyToClipboard = function(e) {
        var t = e
          , n = true;
        if (window.clipboardData)
            window.clipboardData.setData("Text", t);
        else {
            var o = app.ComUtil().createElementForExecCommand(t);
            app.ComUtil().selectContent(o);
            try {
                window.netscape && window.netscape.security && window.netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"),
                n = document.execCommand("copy", false, null)
            } catch (i) {
                n = false
            }
            document.body.removeChild(o)
        }
        return n
    }
    ,
    t.prototype.createElementForExecCommand = function(e) {
        var t = document.createElement("div");
        return t.style.position = "absolute",
        t.style.left = "-10000px",
        t.style.top = "-10000px",
        t.textContent = e,
        document.body.appendChild(t),
        t.contentEditable = true,
        t
    }
    ,
    t.prototype.selectContent = function(e) {
        var t = document.createRange();
        t.selectNodeContents(e);
        var n = window.getSelection();
        n.removeAllRanges(),
        n.addRange(t)
    }
    ,
    t.prototype.calcRoomCard = function(e, t, n, o, i) {
        var a = 0;
        for (var r in e)
            if (r == t) {
                for (var s in e[r].data)
                    if (s == n) {
                        a = 3 == o ? parseFloat(e[r].data[s].average_card_num) : parseFloat(e[r].data[s].total_card_num),
                        i && (a += 3 == o ? parseFloat(e[r].data[s].king_average_num) : parseFloat(e[r].data[s].king_num));
                        break
                    }
                break
            }
        var c = a + ""
          , l = c.length
          , p = c.indexOf(".");
        return -1 != p && l - p >= 3 && (c = c.substr(0, p + 2)),
        c
    }
    ,
    t.prototype.intToByteArray = function(e) {
        for (var t = []; e; )
            e % 2 > 0 ? t.push(1) : t.push(0),
            e = Math.floor(e / 2);
        return t
    }
    ,
    t.prototype.countOf1 = function(e) {
        for (var t = 0, n = 1; n; )
            e & n && t++,
            n <<= 1;
        return t
    }
    ,
    t.prototype.playBtnClick = function() {
        app.SoundManager().PlaySound("BtnClick")
    }
    ,
    t.prototype.playBoxOpenSound = function() {
        app.SoundManager().PlaySound("WndOpen")
    }
    ,
    t.prototype.playBoxCloseSound = function() {
        app.SoundManager().PlaySound("WndClose")
    }
    ,
    t.prototype.deepClone = function(e) {
        var t = Array.isArray(e) ? [] : {};
        if (e && "object" == typeof e)
            for (var n in e)
                e.hasOwnProperty(n) && (e[n] && "object" == typeof e[n] ? t[n] = this.deepClone(e[n]) : t[n] = e[n]);
        return t
    }
    ,
    t.prototype.createListItem = function(e, t, n) {
        var o = t.children
          , i = o.length;
        if (0 == i && null == n)
            return cc.error("createChild"),
            false;
        var a = i > 0 ? o[0] : n;
        if (e > i)
            for (var r = i; r < e; ++r) {
                var s = cc.instantiate(a);
                t.addChild(s)
            }
        else if (e < i)
            for (r = e; r < i; ++r)
                o[r].active = false;
        return true
    }
    ,
    t.prototype.cutStr = function(e, t) {
        undefined === t && (t = 8);
        for (var n = 0, o = "", i = 0; i < e.length; i++)
            if (e.charCodeAt(i) > 128 ? n += 2 : n++,
            o += e.charAt(i),
            n >= t)
                return o + "...";
        return o
    }
    ,
    t.prototype.CheckDateEventTimeIn = function(e, t, n) {
        var o = n - Math.round(Date.now() / 1e3);
        o || (o = 0);
        var i = Math.round(Date.now() / 1e3) + o;
        return !(!e || !t || i > t || i < e)
    }
    ,
    t.prototype.translate = function(e) {
        var t = e.replace(/[&\|\\\*^%$ #@\-.]/g, "")
          , n = [];
        n[0] = t.substring(0, 3),
        t.length > 3 && (n[1] = t.substring(3, 6),
        t.length > 6 && (n[2] = t.substring(6, 9),
        t.length > 9 && (n[3] = t.substring(9, 12),
        t.length > 12 && (n[4] = t.substring(12, t.length)))));
        var o = n.join(".");
        if (11 == t.length || 14 == t.length) {
            var i = o.length - 2
              , a = o.substring(0, i - 1)
              , r = o.substring(i, o.length);
            o = a + "-" + r
        }
        return o
    }
    ,
    t.prototype.timeStr = function(e) {
        var t = new Date(e);
        return t.getFullYear(),
        (t.getMonth() + 1 < 10 ? "0" + (t.getMonth() + 1) : t.getMonth() + 1) + "-" + t.getDate() + " " + (t.getHours() < 10 ? "0" + t.getHours() : t.getHours()) + ":" + (t.getMinutes() < 10 ? "0" + t.getMinutes() : t.getMinutes())
    }
    ,
    t.prototype.IsSameDay = function(e) {
        return new Date(e).getDay() === (new Date).getDay()
    }
    ,
    t.prototype.PlayAnim = function(e, t, n) {
        if (e) {
            var o = e.getComponent(cc.Animation);
            o ? (n && o.once("finished", function() {
                n()
            }),
            o.play(t)) : this.ErrLog("cc.Animation fail==>" + e)
        } else
            this.ErrLog("PlayAnim fail  node==>")
    }
    ,
    t.prototype.StopAnimation = function(e, t) {
        var n = e.getComponent(cc.Animation);
        n && n.stop(t)
    }
    ,
    t
}(o.Singleton));
n.ComUtil = i,
module.exports = n
