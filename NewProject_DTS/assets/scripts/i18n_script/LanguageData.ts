import { _decorator, Component, Node, director, isValid, resources } from 'cc';
const { ccclass, property } = _decorator;
var o = ["Form/Polyglot"]
export class LanguageData {
    langData = {
        curLang: "",
        curLangIndex: 0,
        lang: [],
        textMap: {}
    }
    static _inst: LanguageData;
    static inst() {
        return this._inst || (this._inst = new LanguageData()),
            this._inst
    }

    loadConfig() {
        for (var e = [], t = 0; t < o.length; t++)
            e.push(this.loadCSV(o[t]));
        return Promise.all(e)
    }
    loadCSV(e) {
        var t = this;
        return new Promise(function (n, o) {
            resources.load(e, function (i, a) {
                if (i)
                    return void o(i);
                t.initLanguageData(a.text),
                    resources.release(e),
                    n(true)
            })
        }
        )
    }
    initLanguageData(e) {
        for (var t = this.CSVToArray(e), n = 0; n < t.length; n++) {
            var o = t[n];
            o.length <= 1 || (0 === n ? this.langData.lang = o.slice(1) : this.langData.textMap[o[0]] = o.slice(1))
        }
    }
    selectLang(e) {
        if (e === this.langData.curLang)
            return true;
        var t = this.langData.lang.indexOf(e);
        return t > -1 ? (this.langData.curLang = e,
            this.langData.curLangIndex = t,
            this.updateSceneRenderers(),
            true) : (false)
    }
    t(e, t = {}) {
        var n = "";
        return this.langData.textMap && this.langData.textMap[e] && (n = this.langData.textMap[e][this.langData.curLangIndex] || ""),
            n ? n = (n = c(n, t = a(t))).replace(/\\n/g, "\n") : (n = (n = e).replace(/\\n/g, "\n")),
            n
    }
    getCurLang() {
        return this.langData.curLang
    }
    getCurLangIndex() {
        return this.langData.curLangIndex
    }
    getLangs() {
        return this.langData.lang
    }
    updateSceneRenderers() {
        for (var e = director.getScene().children, t = [], n = 0; n < e.length; ++n) {
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
            isValid(s.node) && s.node.active && s.updateSprite(this.langData.curLang)
        }
    }
    CSVToArray(e, t = ",") {
        for (var n = new RegExp("(\\" + t + '|\\r?\\n|\\r|^)(?:"([^"]*(?:""[^"]*)*)"|([^"\\' + t + "\\r\\n]*))", "gi"), o = [[]], i = null; i = n.exec(e);) {
            var a = i[1];
            if (a.length && a != t && o.push([]),
                i[2])
                var r = i[2].replace(new RegExp('""', "g"), '"');
            else
                r = i[3];
            o[o.length - 1].push(r)
        }
        return o
    }
}
function a(e) {
    var t = {};
    for (var n in e)
        t[n] = e[n];
    return t
}
var r = /\$/g
    , s = "$$$$";
function c(e, t) {
    var n = String.prototype.replace;
    for (var o in t)
        if ("_" !== o && t.hasOwnProperty(o)) {
            var i = t[o];
            "string" == typeof i && (i = n.call(t[o], r, s)),
                e = n.call(e, new RegExp("S\\{" + o + "\\}", "g"), i)
        }
    return e
}

