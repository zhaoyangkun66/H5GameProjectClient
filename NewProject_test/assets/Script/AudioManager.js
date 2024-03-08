function S(t, i, n) {
    void 0 === i && (i = false),
    void 0 === n && (n = 0),
    r.GENERAL_AUDIO.hasOwnProperty(t) && a[t] && m.isPlaying(a[t]) && (i ? (m.fade(1, 0, n, a[t]),
    m.once("fade", function() {
        m.stop(a[t])
    }, a[t])) : m.stop(a[t]))
}
function g(t, i, n) {
    void 0 === i && (i = l.SOUND);
    var e = {
        preload: false,
        src: A(t),
        mute: true,
        sprite: n
    };
    return "1" === o.cs_Launch.noAudio ? new c.default(e) : new s.default(e,i)
}
function C(t, i) {
    void 0 === i && (i = l.SOUND);
    var n = {
        preload: false,
        src: A(t),
        mute: true
    };
    return "1" === o.cs_Launch.noAudio ? new c.default(n) : new s.default(n,i)
}
function y() {
    if (!d)
        for (var t in d = true,
        u)
            if (u[t])
                for (var i = u[t], n = 0, s = i.length; n < s; n++)
                    i[n].isPlaying() && (i[n].pause(),
                    _.push(i[n]))
}
function M() {
    var t, i;
    if (d) {
        d = false;
        try {
            for (var n = __values(_), s = n.next(); !s.done; s = n.next())
                s.value.play()
        } catch (e) {
            t = {
                error: e
            }
        } finally {
            try {
                s && !s.done && (i = n.return) && i.call(n)
            } finally {
                if (t)
                    throw t.error
            }
        }
        _.length = 0
    }
}
function A(t) {
    return p + t
}
function w(t) {
    void 0 === t && (t = false),
    u[l.MUSIC] && u[l.MUSIC].map(function(i) {
        i.setMute(t)
    })
}
function I(t) {
    void 0 === t && (t = false),
    u[l.SOUND] && u[l.SOUND].map(function(i) {
        i.setMute(t)
    })
}
let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.updatePlayRate = n.generalGameAudio = n.stopSfx = n.fadeOutAudioIfPlaying = n.stopAudioIfPlaying = n.playAudioIfNotPlaying = n.audioId = n.crossFadeAudio = n.toggleEffectMuted = n.toggleMusicMuted = n.GeneralAudioPool = n.releaseAudio = n.loadAudio = n.toggleAudioGameStarted = n.unregisterAudio = n.registerAudio = n.init = n.AUDIO_TYPE = void 0;
var s = require("GameAudioAdapter")
  , e = require("SettingMenuHelper")
  , o = require("RtConfig")
  , c = require("NoSoundAdapter")
  , r = require("GeneralAudioConstant")
  , h = Object.create(null);
n.GeneralAudioPool = h;
var a = Object.create(null);
n.audioId = a;
var u = Object.create(null)
  , l = {
    SOUND: 0,
    MUSIC: 1
};
n.AUDIO_TYPE = l;
var f = false
  , d = false
  , v = 1
  , _ = []
  , p = "audio/";
h.bgm_mg = void 0,
h.bgm_mg_b = void 0,
h.bgm_bigwin_coins = void 0,
h.bgm_bigwin_end = void 0,
h.bgm_bigwin_firework = void 0,
h.bgm_bigwin_main = void 0;
var m, b = ["bgm_mg", "bgm_mg_b"];
n.generalGameAudio = m,
n.init = function() {
    var t;
    cc.game.on(cc.game.EVENT_HIDE, y),
    cc.game.on(cc.game.EVENT_SHOW, M),
    Object.keys(t = h).forEach(function(i) {
        var n = -1 !== b.indexOf(i) ? l.MUSIC : l.SOUND;
        t[i] = C(i, n)
    }),
    h.bgm_mg.setLoop(true),
    h.bgm_mg_b.setLoop(true),
    n.generalGameAudio = m = g("GeneralAudio", false, r.GENERAL_AUDIO),
    w(true),
    I(true)
}
,
n.playAudioIfNotPlaying = function(t, i, n, s) {
    void 0 === i && (i = false),
    void 0 === n && (n = 0),
    void 0 === s && (s = false),
    r.GENERAL_AUDIO.hasOwnProperty(t) && (m.isPlaying(a[t]) && void 0 !== a[t] || (a[t] = m.play(t),
    i && m.fade(0, 1, n, a[t]),
    s && m.setLoop(true, a[t])))
}
,
n.stopAudioIfPlaying = S,
n.fadeOutAudioIfPlaying = function(t, i) {
    if (void 0 === i && (i = 0),
    r.GENERAL_AUDIO.hasOwnProperty(t) && a[t] && m.isPlaying(a[t])) {
        var n = m.getInstantVolume(a[t]);
        m.fade(n, 0, i, a[t]),
        m.once("fade", function() {
            m.stop(a[t])
        }, a[t])
    }
}
,
n.registerAudio = function(t, i) {
    var n = i ? l.MUSIC : l.SOUND;
    if (f) {
        var s = e.settingMenuHelper.soundEnable;
        t.setMute(s)
    }
    return u[n] || (u[n] = []),
    u[n].push(t),
    t.setRate(v),
    n
}
,
n.unregisterAudio = function(t, i) {
    var n = u[i]
      , s = n.indexOf(t);
    if (-1 === s)
        throw Error("Audio Manager :: unRegisterAudio : audio not found");
    n.splice(s, 1)
}
,
n.updatePlayRate = function(t) {
    for (var i in v = t,
    u)
        if (u[i])
            for (var n = u[i], s = 0, e = n.length; s < e; s++)
                n[s].setRate(t)
}
,
n.toggleAudioGameStarted = function() {
    f = true,
    w(!e.settingMenuHelper.soundEnable),
    I(!e.settingMenuHelper.soundEnable)
}
,
n.toggleMusicMuted = w,
n.toggleEffectMuted = I,
n.crossFadeAudio = function(t, i, n) {
    void 0 === n && (n = 1),
    i.setVolume(0),
    i.play(),
    i.fade(0, n, 1e3),
    0 === t.getVolume() ? t.stop() : (t.fade(t.getVolume(), 0, 1e3),
    t.once("fade", function() {
        t.stop()
    }))
}
,
n.loadAudio = function(t, i) {
    var n = function() {
        t.off("loaderror", s),
        i && i()
    }
      , s = function(s, e) {
        t.off("load", n),
        i && i(e, s)
    };
    return t.once("load", n),
    t.once("loaderror", s),
    t.load()
}
,
n.releaseAudio = function(t) {
    return t.unload()
}
,
n.stopSfx = function(t, i, n) {
    void 0 === i && (i = false),
    void 0 === n && (n = 0),
    S(t.key, i, n)
}
,
module.exports = n
