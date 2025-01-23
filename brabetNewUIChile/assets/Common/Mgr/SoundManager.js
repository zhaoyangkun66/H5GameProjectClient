let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.SoundManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/FormDefine")
    , a = function (e) {
        function t() {
            var t = e.call(this) || this;
            return t.LocalDataManager = app.LocalDataManager(),
                t.backMusicName = "",
                t.targetBackMusicName = "",
                t.pauseTimes = 0,
                t.JS_Name = "SoundManager",
                t.Log("Init"),
                t.Sound = app.SysDataManager().GetTableDict(i.FormDefine.Sound),
                t.UpdateMusicVolume(),
                cc.game.on(cc.game.EVENT_HIDE, function () {
                    t.PauseAll()
                }),
                cc.game.on(cc.game.EVENT_SHOW, function () {
                    t.GetBackMusicSetting && t.ResumeAll()
                }),
                t
        }
        return __extends(t, e),
            t.prototype.PlayBackMusic = function (e, t, n) {
                return undefined === e && (e = this.targetBackMusicName),
                    undefined === t && (t = true),
                    __awaiter(this, undefined, undefined, function () {
                        var o, i, a, r, s, c = this;
                        return __generator(this, function (l) {
                            switch (l.label) {
                                case 0:
                                    return e ? (this.targetBackMusicName = e,
                                        this.GetBackMusicSetting ? e == this.backMusicName ? [2] : (o = this.Sound[e]) ? (i = o.SoundPath,
                                            this.backMusicName = e,
                                            o.BundleName ? [4, app.ControlManager().CreateBundleLoadPromise(o.BundleName, i, cc.AudioClip)] : [3, 2]) : (this.WarnLog("PlayBackMusic(%s) not find", e),
                                                [2]) : [2]) : [2];
                                case 1:
                                    return a = l.sent(),
                                        [3, 4];
                                case 2:
                                    return [4, app.ControlManager().CreateLoadPromise(i, cc.AudioClip)];
                                case 3:
                                    a = l.sent(),
                                        l.label = 4;
                                case 4:
                                    return this.SysLog("\u64ad\u653e\u80cc\u666f\u97f3\u4e50 " + e),
                                        r = cc.audioEngine.playMusic(a, t),
                                        t || (s = function () {
                                            c.StopBackMusic(),
                                                n && n()
                                        }
                                            ,
                                            cc.audioEngine.setFinishCallback(r, s)),
                                        [2]
                            }
                        })
                    })
            }
            ,
            Object.defineProperty(t.prototype, "isMusicPlaying", {
                get: function () {
                    return cc.audioEngine.isMusicPlaying()
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.StopBackMusic = function () {
                this.SysLog("\u505c\u6b62\u6240\u6709\u97f3\u4e50"),
                    cc.audioEngine.stopMusic(),
                    this.backMusicName = null,
                    this.targetBackMusicName = null
            }
            ,
            t.prototype.PauseBackMusic = function () {
                0 == this.pauseTimes && cc.audioEngine.pauseMusic(),
                    ++this.pauseTimes,
                    this.SysLog("\u6682\u505c\u80cc\u666f\u97f3\u4e50 \u5269\u4f59\u6b21\u6570:" + this.pauseTimes)
            }
            ,
            t.prototype.ResumeBackMusic = function () {
                this.pauseTimes = Math.max(0, this.pauseTimes - 1),
                    this.SysLog("\u6062\u590d\u80cc\u666f\u97f3\u4e50 \u5269\u4f59\u6b21\u6570:" + this.pauseTimes),
                    0 == this.pauseTimes && cc.audioEngine.resumeMusic()
            }
            ,
            t.prototype.UpdateMusicVolume = function () {
                var e = this.GetBackMusicSetting
                    , t = app.LocalDataManager().GetConfigProperty("SysSetting" + GameTypeGlobal, "BackVolume");
                t = e ? t : 0,
                    cc.audioEngine.setMusicVolume(t)
            }
            ,
            t.prototype.PlaySound = function (e, t) {
                return undefined === t && (t = false),
                    __awaiter(this, undefined, undefined, function () {
                        var n, o, i, a, r, s;
                        return __generator(this, function (c) {
                            switch (c.label) {
                                case 0:
                                    return n = this.LocalDataManager.GetConfigProperty("SysSetting" + GameTypeGlobal, "SpVolume"),
                                        n = this.GetSoundSetting ? n : 0,
                                        e instanceof cc.AudioClip ? (o = cc.audioEngine.play(e, t, n),
                                            [2, Promise.resolve(o)]) : [3, 1];
                                case 1:
                                    if (!(i = this.Sound[e]))
                                        return this.WarnLog("PlaySound(%s) not find", e),
                                            [2, Promise.resolve(0)];
                                    a = i.SoundPath,
                                        c.label = 2;
                                case 2:
                                    return c.trys.push([2, 7, , 8]),
                                        r = undefined,
                                        i.BundleName ? [4, app.ControlManager().CreateBundleLoadPromise(i.BundleName, a, cc.AudioClip)] : [3, 4];
                                case 3:
                                    return r = c.sent(),
                                        [3, 6];
                                case 4:
                                    return [4, app.ControlManager().CreateLoadPromise(a, cc.AudioClip)];
                                case 5:
                                    r = c.sent(),
                                        c.label = 6;
                                case 6:
                                    return this.SysLog("\u64ad\u653e\u97f3\u6548 " + e),
                                        [2, cc.audioEngine.play(r, t, n)];
                                case 7:
                                    return s = c.sent(),
                                        this.ErrLog("PlaySound:%s error", s.stack),
                                        [2, 0];
                                case 8:
                                    return [2]
                            }
                        })
                    })
            }
            ,
            t.prototype.SetSounds = function (e) {
                app.LocalDataManager().SetConfigProperty("SysSetting" + GameTypeGlobal, "SpSound", e)
            }
            ,
            t.prototype.SetBackMusic = function (e) {
                app.LocalDataManager().SetConfigProperty("SysSetting" + GameTypeGlobal, "BackMusic", e),
                    this.UpdateMusicVolume(),
                    e && this.PlayBackMusic()
            }
            ,
            Object.defineProperty(t.prototype, "GetBackMusicSetting", {
                get: function () {
                    return app.LocalDataManager().GetConfigProperty("SysSetting" + GameTypeGlobal, "BackMusic")
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GetSoundSetting", {
                get: function () {
                    return app.LocalDataManager().GetConfigProperty("SysSetting" + GameTypeGlobal, "SpSound")
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.StopSoundByAudioID = function (e) {
                null != e && cc.audioEngine.stop(e)
            }
            ,
            t.prototype.PauseAll = function () {
                cc.audioEngine.pauseAll(),
                    cc.audioEngine.pauseMusic()
            }
            ,
            t.prototype.ResumeAll = function () {
                cc.audioEngine.resumeAll(),
                    cc.audioEngine.resumeMusic()
            }
            ,
            t.prototype.StopAll = function () {
                this.StopBackMusic(),
                    cc.audioEngine.stopAll()
            }
            ,
            t
    }(o.Singleton);
n.SoundManager = a,
    module.exports = n
