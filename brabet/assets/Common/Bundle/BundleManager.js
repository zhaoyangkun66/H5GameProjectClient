let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.BundleManager = n.ResourceCacheData = n.ResourceInfo = n.ResourceType = n.ResourceCacheStatus = undefined;
var o, i, a = require("./EventDefine"),
    r = require("./EventListener"),
    s = require("./BundleConfig"),
    c = require("./BundleUpdate"),
    l = require("../Define/FormDefine"),
    p = require("../Define/GameEventDefine");
(function (e) {
    e[e.NONE = 0] = "NONE",
        e[e.WAITTING_FOR_RELEASE = 1] = "WAITTING_FOR_RELEASE"
}
)(o = n.ResourceCacheStatus || (n.ResourceCacheStatus = {})),
    function (e) {
        e[e.Local = 0] = "Local",
            e[e.Remote = 1] = "Remote"
    }(i = n.ResourceType || (n.ResourceType = {}));
var d = function () {
    this.url = "",
        this.type = null,
        this.data = null,
        this.assetUrl = "",
        this.retain = false,
        this.bundle = null,
        this.resourceType = i.Local
};
n.ResourceInfo = d;
var h = function () {
    function e() {
        this.isLoaded = false,
            this.data = null,
            this.info = new d,
            this.status = o.NONE,
            this.getCb = [],
            this.finishCb = []
    }
    return e.prototype.doGet = function (e) {
        for (var t = 0; t < this.getCb.length; t++)
            this.getCb[t] && this.getCb[t](e);
        this.getCb = []
    }
        ,
        e.prototype.doFinish = function (e) {
            for (var t = 0; t < this.finishCb.length; t++)
                this.finishCb[t] && this.finishCb[t](e);
            this.finishCb = []
        }
        ,
        Object.defineProperty(e.prototype, "isInvalid", {
            get: function () {
                return this.isLoaded && this.data && !cc.isValid(this.data)
            },
            enumerable: false,
            configurable: true
        }),
        e
}();
n.ResourceCacheData = h,
    function () {
        function e(e) {
            this._caches = new Map,
                this.name = "unknown",
                this.name = e
        }
        e.prototype.print = function () {
            var e = []
                , t = [];
            this._caches.forEach(function (n, o) {
                var i = {
                    url: o,
                    data: {
                        url: n.info.url,
                        isLoaded: n.isLoaded,
                        isValid: cc.isValid(n.data),
                        assetType: cc.js.getClassName(n.info.type),
                        data: n.data ? cc.js.getClassName(n.data) : null,
                        status: n.status
                    }
                };
                n.isLoaded && n.data && !cc.isValid(n.data) ? t.push(i) : e.push(i)
            }),
                e.length > 0 && (cc.log("----------- Current valid caches -----------"),
                    cc.log(JSON.stringify(e))),
                t.length > 0 && (cc.log("----------- Current invalid caches -----------"),
                    cc.log(JSON.stringify(t)))
        }
            ,
            e.prototype.get = function (e, t) {
                if (this._caches.has(e)) {
                    var n = this._caches.get(e);
                    return t && n.isInvalid ? (cc.warn("\u8d44\u6e90\u52a0\u8f7d\u5b8c\u6210\uff0c\u4f46\u5df2\u7ecf\u88ab\u91ca\u653e , \u91cd\u65b0\u52a0\u8f7d\u8d44\u6e90 : " + e),
                        this.remove(e),
                        null) : this._caches.get(e)
                }
                return null
            }
            ,
            e.prototype.set = function (e, t) {
                this._caches.set(e, t)
            }
            ,
            e.prototype.remove = function (e) {
                return this._caches.delete(e)
            }
            ,
            e.prototype.removeUnuseCaches = function () {
                var e = this;
                this._caches.forEach(function (t, n) {
                    t.data && 0 == t.data.refCount && e._caches.delete(n)
                })
            }
            ,
            Object.defineProperty(e.prototype, "size", {
                get: function () {
                    return this._caches.size
                },
                enumerable: false,
                configurable: true
            })
    }();
var u = function () {
    function e() {
        this.curBundle = null,
            this.isLoading = false,
            this.loadedBundle = [],
            this._bundles = new Map
    }
    return Object.defineProperty(e, "Instance", {
        get: function () {
            return this._instance || (this._instance = new e)
        },
        enumerable: false,
        configurable: true
    }),
        e.getBundle = function (e) {
            return e ? "string" == typeof e ? cc.assetManager.getBundle(e) : e : null
        }
        ,
        e.prototype.getBundleName = function (e) {
            return "string" == typeof e ? e : e ? e.name : null
        }
        ,
        e.prototype.removeBundle = function (t) {
            var n = e.getBundle(t);
            n && (this.removeBundleCache(t),
                n.releaseAll(),
                cc.assetManager.removeBundle(n))
        }
        ,
        e.prototype.removeBundleCache = function (e) {
            var t = this.getBundleName(e);
            t && this._bundles.has(t) && this._bundles.delete(t)
        }
        ,
        e.prototype._removeUnuseCaches = function () {
            this._bundles.forEach(function (e) {
                e && e.removeUnuseCaches()
            })
        }
        ,
        e.prototype.removeLoadedBundle = function () {
            var e = this;
            this.loadedBundle.forEach(function (t) {
                e.removeBundle(t)
            }),
                this.loadedBundle = []
        }
        ,
        e.prototype.removeLoadedGamesBundle = function () {
            for (var e = this.loadedBundle.length; e--;)
                this.loadedBundle[e] != s.Config.BUNDLE_HALL && (this.removeBundle(this.loadedBundle[e]),
                    this.loadedBundle.splice(e, 1))
        }
        ,
        e.prototype.checkCondition = function () {
            return this.isLoading ? (app.SysNotifyManager().ShowToast(app.i18n.t("SC_goldRefreshLoading") + "..."),
                cc.log("The game is being updated, please wait"),
                false) : !(!app.GameConfigManager().GetGameConfig().hot_update_url && cc.sys.isNative && (app.SysNotifyManager().ShowToast("download url error"),
                    1))
        }
        ,
        e.prototype.enterBundle = function (e, t) {
            if (!this.checkCondition)
                return false;
            var n = app.RoomManager().GetRoomModeInfoByRoomMode(e);
            if (n) {
                var o = n.BundleName
                    , i = new c.BundleConfig(e, o, o, t);
                this.curBundle = i,
                    this.isLoading = true,
                    c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle] || (c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle] = i);
                var a = c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle];
                return this.checkUpdate(a),
                    true
            }
            app.SysNotifyManager().ShowToast("Get game config error")
        }
        ,
        e.prototype.enterCommonBundle = function (e, t) {
            if (!this.checkCondition())
                return false;
            var n = new c.BundleConfig(0, e, e, t, a.default.ENTER_GAME_COMMON);
            this.curBundle = n,
                this.isLoading = true,
                c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle] || (c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle] = n);
            var o = c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle];
            return this.checkUpdate(o),
                true
        }
        ,
        e.prototype.onGameReady = function () {
            cc.systemEvent.emit(this.curBundle.event, this.curBundle)
        }
        ,
        e.prototype.checkUpdate = function (e) {
            var t = this;
            cc.log("Detect update information:" + e.name + "(" + e.bundle + ")"),
                r.default.Inst.removeEventListener(a.default.HOTUPDATE_DOWNLOAD, this.onDownload, this),
                c.BundleHotUpdate.checkGameUpdate(this.curBundle.bundle, function (n, o) {
                    if (n == c.AssetManagerCode.NEW_VERSION_FOUND)
                        r.default.Inst.addEventListener(a.default.HOTUPDATE_DOWNLOAD, t.onDownload, t),
                            cc.log("Detected" + e.name + "(" + e.bundle + ")There is a new version"),
                            e.isNeedPrompt ? cc.log("state=>" + o + " versionInfo=>" + e.name) : c.BundleHotUpdate.hotUpdate();
                    else if (o == c.AssetManagerState.TRY_DOWNLOAD_FAILED_ASSETS)
                        r.default.Inst.addEventListener(a.default.HOTUPDATE_DOWNLOAD, t.onDownload, t),
                            cc.log("The resource failed to download before attempting to redownload"),
                            e.isNeedPrompt ? cc.log("state=>" + o + " versionInfo=>" + e.name) : c.BundleHotUpdate.downloadFailedAssets();
                    else if (n == c.AssetManagerCode.ALREADY_UP_TO_DATE)
                        t.onLoadBundle();
                    else if (n == c.AssetManagerCode.ERROR_DOWNLOAD_MANIFEST || n == c.AssetManagerCode.ERROR_NO_LOCAL_MANIFEST || n == c.AssetManagerCode.ERROR_PARSE_MANIFEST) {
                        t.loadFinish(true);
                        var i = "version manifest error download!";
                        n == c.AssetManagerCode.ERROR_NO_LOCAL_MANIFEST ? i = "version manifest not found" : n == c.AssetManagerCode.ERROR_PARSE_MANIFEST && (i = "version manifest error parse"),
                            app.SysNotifyManager().ShowToast(i)
                    } else
                        n == c.AssetManagerCode.CHECKING ? cc.log("Detecting updates!!") : (cc.log("Detects the update of the current state code : " + n + " state : " + o),
                            t.loadFinish())
                })
        }
        ,
        e.prototype.onLoadBundle = function () {
            var t = this;
            cc.log("updateGame : " + this.curBundle.bundle);
            var n = c.BundleHotUpdate.bundlesConfig[this.curBundle.bundle];
            e.loadBundle(n.bundle, function (e) {
                if (e)
                    return t.loadFinish(true),
                        cc.error("load bundle : " + n.bundle + " fail !!!", e),
                        void app.SysNotifyManager().ShowToast("Update " + n.name + " fail");
                cc.log("load bundle : " + n.bundle + " success !!!"),
                    t.GetLoadedBundle(n.bundle) || t.loadedBundle.push(n.bundle),
                    app.SubGameLoadManager().LoadSubGameForm(n.bundle).then(function () {
                        t.loadFinish(),
                            t.onGameReady()
                    })
            })
        }
        ,
        e.prototype.GetLoadedBundle = function (e) {
            return this.loadedBundle.indexOf(e) > -1
        }
        ,
        e.prototype.onDownload = function (e) {
            var t = 0
                , n = c.BundleHotUpdate.getBundleName(this.curBundle.bundle);
            e.code == c.AssetManagerCode.UPDATE_PROGRESSION ? (cc.log(JSON.stringify(e) + "\u4e0b\u8f7d\u66f4\u65b0\u8fdb\u5ea6" + JSON.stringify(n)),
                t = e.percent == Number.NaN ? 0 : e.percent,
                cc.systemEvent.emit(a.default.DOWNLOAD_PROGRESS, {
                    progress: t,
                    config: n
                })) : e.code == c.AssetManagerCode.ALREADY_UP_TO_DATE ? (t = 1,
                    cc.systemEvent.emit(a.default.DOWNLOAD_PROGRESS, {
                        progress: t,
                        config: n
                    })) : e.code == c.AssetManagerCode.UPDATE_FINISHED ? (cc.sys.localStorage.setItem(n.name, 1),
                        t = 1.1,
                        cc.log("update" + n.name + "Success"),
                        cc.systemEvent.emit(a.default.DOWNLOAD_PROGRESS, {
                            progress: t,
                            config: n
                        }),
                        this.onLoadBundle()) : e.code != c.AssetManagerCode.UPDATE_FAILED && e.code != c.AssetManagerCode.ERROR_NO_LOCAL_MANIFEST && e.code != c.AssetManagerCode.ERROR_DOWNLOAD_MANIFEST && e.code != c.AssetManagerCode.ERROR_PARSE_MANIFEST && e.code != c.AssetManagerCode.ERROR_DECOMPRESS || (t = -1,
                            this.loadFinish(true),
                            cc.error("\u66f4\u65b0" + n.name + "\u5931\u8d25"),
                            cc.systemEvent.emit(a.default.DOWNLOAD_PROGRESS, {
                                progress: t,
                                config: n
                            }))
        }
        ,
        e.prototype.loadFinish = function (e) {
            undefined === e && (e = false),
                this.isLoading = false,
                e && app.Client.OnEvent(p.GameEventDefine.GAME_LOADING_FAILED)
        }
        ,
        e.loadBundle = function (e, t) {
            cc.assetManager.loadBundle(e, t)
        }
        ,
        e.LoadAssets = function (e, t, n) {
            return app.ControlManager().CreateBundleLoadPromise(t, e, n)
        }
        ,
        e.ReleaseAssets = function (t, n) {
            var o = e.getBundle(t);
            o && o.release(n)
        }
        ,
        e.CreateUINode = function (t) {
            var n = app.SysDataManager().GetTableDict(l.FormDefine.Form)[t]
                , o = n.FormPath;
            return new Promise(function (t, i) {
                e.LoadAssets(o, n.bundleName, cc.Prefab).then(function (e) {
                    var n = cc.instantiate(e);
                    t(n)
                }).catch(function (e) {
                    return i(e)
                })
            }
            )
        }
        ,
        e._instance = null,
        e
}();
n.BundleManager = u

module.exports = n
