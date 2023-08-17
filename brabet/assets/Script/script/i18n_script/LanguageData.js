let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = ["Form/Polyglot"]
  , i = function() {
    function e() {
        this.langData = null,
        this.langData || (this.langData = {
            curLang: "",
            curLangIndex: 0,
            lang: [],
            textMap: {}
        })
    }
    return Object.defineProperty(e, "inst", {
        get: function() {
            return e._inst || (e._inst = new e),
            e._inst
        },
        enumerable: false,
        configurable: true
    }),
    e.prototype.loadConfig = function() {
        cc.log("load config");
        for (var e = [], t = 0; t < o.length; t++)
            e.push(this.loadCSV(o[t]));
        return Promise.all(e)
    }
    ,
    e.prototype.loadCSV = function(e) {
        var t = this;
        return new Promise(function(n, o) {
            cc.resources.load(e, function(i, a) {
                if (i)
                    return cc.error("load csv(%s) error ==>>", e, i),
                    void o(i);
                t.initLanguageData(a.text),
                cc.resources.release(e),
                n(true)
            })
        }
        )
    }
    ,
    e.prototype.initLanguageData = function(e) {
        for (var t = this.CSVToArray(e), n = 0; n < t.length; n++) {
            var o = t[n];
            o.length <= 1 || (0 === n ? this.langData.lang = o.slice(1) : this.langData.textMap[o[0]] = o.slice(1))
        }
    }
    ,
    e.prototype.selectLang = function(e) {
        if (cc.log("selectLang ==>>" + e),
        e === this.langData.curLang)
            return true;
        var t = this.langData.lang.indexOf(e);
        return t > -1 ? (this.langData.curLang = e,
        this.langData.curLangIndex = t,
        this.updateSceneRenderers(),
        true) : (cc.error("selectLang error !! " + e + " not exsit!!"),
        false)
    }
    ,
    e.prototype.t = function(e, t) {
        var n = "";
        return this.langData.textMap && this.langData.textMap[e] && (n = this.langData.textMap[e][this.langData.curLangIndex] || ""),
        t = null == t ? {} : t,
        n ? n = (n = c(n, t = a(t))).replace(/\\n/g, "\n") : (n = (n = e).replace(/\\n/g, "\n"),
        cc.warn('Missing translation for key: "' + e + '"')),
        n
    }
    ,
    e.prototype.getCurLang = function() {
        return this.langData.curLang
    }
    ,
    e.prototype.getCurLangIndex = function() {
        return this.langData.curLangIndex
    }
    ,
    e.prototype.getLangs = function() {
        return this.langData.lang
    }
    ,
    e.prototype.updateSceneRenderers = function() {
        for (var e = cc.director.getScene().children, t = [], n = 0; n < e.length; ++n) {
            var o = e[n].getComponentsInChildren("LocalizedLabel");
            Array.prototype.push.apply(t, o)
        }
        for (n = 0; n < t.length; ++n) {
            var i = t[n];
            i.node.active && i.updateLabel()
        }
        var a = [];
        for (n = 0; n < e.length; ++n) {
            var r = e[n].getComponentsInChildren("LocalizedSprite");
            Array.prototype.push.apply(a, r)
        }
        for (n = 0; n < a.length; ++n) {
            var s = a[n];
            cc.isValid(s.node) && s.node.active && s.updateSprite(this.langData.curLang)
        }
    }
    ,
    e.prototype.CSVToArray = function(e, t) {
        t = t || ",";
        for (var n = new RegExp("(\\" + t + '|\\r?\\n|\\r|^)(?:"([^"]*(?:""[^"]*)*)"|([^"\\' + t + "\\r\\n]*))","gi"), o = [[]], i = null; i = n.exec(e); ) {
            var a = i[1];
            if (a.length && a != t && o.push([]),
            i[2])
                var r = i[2].replace(new RegExp('""',"g"), '"');
            else
                r = i[3];
            o[o.length - 1].push(r)
        }
        return o
    }
    ,
    e._inst = null,
    e
}();
function a(e) {
    var t = {};
    for (var n in e)
        t[n] = e[n];
    return t
}
n.default = i;
var r = /\$/g
  , s = "$$$$";
function c(e, t) {
    var n = String.prototype.replace;
    for (var o in t)
        if ("_" !== o && t.hasOwnProperty(o)) {
            var i = t[o];
            "string" == typeof i && (i = n.call(t[o], r, s)),
            e = n.call(e, new RegExp("S\\{" + o + "\\}","g"), i)
        }
    return e
}
module.exports = n
