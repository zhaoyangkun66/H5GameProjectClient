let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.BundleHotUpdate = n.BundleConfig = n.AssetManagerState = n.AssetManagerCode = undefined;
var o, i, a = require("./EventDefine"),
    r = require("./EventListener"),
    s = require("./BundleConfig"),
    c = require("../../script/common/room_mode_tool");
(function (e) {
    e[e.ERROR_NO_LOCAL_MANIFEST = 0] = "ERROR_NO_LOCAL_MANIFEST",
        e[e.ERROR_DOWNLOAD_MANIFEST = 1] = "ERROR_DOWNLOAD_MANIFEST",
        e[e.ERROR_PARSE_MANIFEST = 2] = "ERROR_PARSE_MANIFEST",
        e[e.NEW_VERSION_FOUND = 3] = "NEW_VERSION_FOUND",
        e[e.ALREADY_UP_TO_DATE = 4] = "ALREADY_UP_TO_DATE",
        e[e.UPDATE_PROGRESSION = 5] = "UPDATE_PROGRESSION",
        e[e.ASSET_UPDATED = 6] = "ASSET_UPDATED",
        e[e.ERROR_UPDATING = 7] = "ERROR_UPDATING",
        e[e.UPDATE_FINISHED = 8] = "UPDATE_FINISHED",
        e[e.UPDATE_FAILED = 9] = "UPDATE_FAILED",
        e[e.ERROR_DECOMPRESS = 10] = "ERROR_DECOMPRESS",
        e[e.CHECKING = 11] = "CHECKING"
}
)(o = n.AssetManagerCode || (n.AssetManagerCode = {})),
    function (e) {
        e[e.UNINITED = 0] = "UNINITED",
            e[e.UNCHECKED = 1] = "UNCHECKED",
            e[e.PREDOWNLOAD_VERSION = 2] = "PREDOWNLOAD_VERSION",
            e[e.DOWNLOADING_VERSION = 3] = "DOWNLOADING_VERSION",
            e[e.VERSION_LOADED = 4] = "VERSION_LOADED",
            e[e.PREDOWNLOAD_MANIFEST = 5] = "PREDOWNLOAD_MANIFEST",
            e[e.DOWNLOADING_MANIFEST = 6] = "DOWNLOADING_MANIFEST",
            e[e.MANIFEST_LOADED = 7] = "MANIFEST_LOADED",
            e[e.NEED_UPDATE = 8] = "NEED_UPDATE",
            e[e.READY_TO_UPDATE = 9] = "READY_TO_UPDATE",
            e[e.UPDATING = 10] = "UPDATING",
            e[e.UNZIPPING = 11] = "UNZIPPING",
            e[e.UP_TO_DATE = 12] = "UP_TO_DATE",
            e[e.FAIL_TO_UPDATE = 13] = "FAIL_TO_UPDATE",
            e[e.TRY_DOWNLOAD_FAILED_ASSETS = 14] = "TRY_DOWNLOAD_FAILED_ASSETS"
    }(i = n.AssetManagerState || (n.AssetManagerState = {}));
n.BundleConfig = function (e, t, n, o, i, r) {
    undefined === r && (r = false),
        this.roomMode = c.RoomMode.HALL,
        this.bundle = "",
        this.name = "",
        this.event = a.default.ENTER_GAME,
        this.isNeedPrompt = false,
        this.customData = null,
        this.roomMode = e,
        this.name = t,
        this.bundle = n,
        this.isNeedPrompt = r,
        this.customData = o,
        i && (this.event = i)
}
    ;
var l = cc._decorator
    , p = l.ccclass
    , d = (l.property,
        function () {
            function e() {
                this.manifestRoot = "manifest/",
                    this.storagePath = "",
                    this.updating = false,
                    this._projectManifest = null,
                    this.checkCallback = null,
                    this.bundlesConfig = {},
                    this.assetsManagers = {},
                    this.currentAssetsManager = null,
                    this._hotUpdateUrls = {}
            }
            return Object.defineProperty(e.prototype, "commonHotUpdateUrl", {
                get: function () {
                    var e = app.ClientConfigManager().GetGlobalConfig.packageUrl;
                    return e.length > 0 ? e : this.projectManifest.packageUrl
                },
                enumerable: false,
                configurable: true
            }),
                Object.defineProperty(e.prototype, "projectManifest", {
                    get: function () {
                        return this._projectManifest
                    },
                    enumerable: false,
                    configurable: true
                }),
                Object.defineProperty(e.prototype, "hallProjectMainfest", {
                    get: function () {
                        return this.manifestRoot + "project.manifest"
                    },
                    enumerable: false,
                    configurable: true
                }),
                e.prototype.getHotUpdateUrl = function () {
                    var e = app.GameConfigManager().GetGameConfig().hot_update_url;
                    return e && "" != e ? ("/" != e[e.length - 1] && (e += "/"),
                        e) : ""
                }
                ,
                e.prototype.getBundleName = function (e) {
                    return this.bundlesConfig[e]
                }
                ,
                e.prototype.destroyAssetsManager = function (e) {
                    undefined === e && (e = "HALL"),
                        this.assetsManagers[e] && (cc.log("destroyAssetsManager : " + e),
                            this.currentAssetsManager = null,
                            delete this.assetsManagers[e])
                }
                ,
                e.prototype.getAssetsManager = function (e) {
                    return undefined === e && (e = "HALL"),
                        this.assetsManagers[e],
                        this.assetsManagers[e]
                }
                ,
                e.prototype.isTryDownloadFailedAssets = function () {
                    return !(!this.currentAssetsManager || this.currentAssetsManager.manager.getState() != i.FAIL_TO_UPDATE || this.currentAssetsManager.code != o.ERROR_NO_LOCAL_MANIFEST || this.currentAssetsManager.code != o.ERROR_DOWNLOAD_MANIFEST || this.currentAssetsManager.code != o.ERROR_PARSE_MANIFEST)
                }
                ,
                Object.defineProperty(e.prototype, "isBrowser", {
                    get: function () {
                        return cc.sys.platform == cc.sys.WECHAT_GAME || cc.sys.isBrowser
                    },
                    enumerable: false,
                    configurable: true
                }),
                e.prototype.isNeedUpdate = function (e) {
                    return this.isBrowser ? (this.updating = false,
                        e(o.ALREADY_UP_TO_DATE, i.UP_TO_DATE),
                        false) : (s.Config.isSkipCheckUpdate && (cc.log("Skip hot updates and use local resource code directly"),
                            this.updating = false,
                            e(o.ALREADY_UP_TO_DATE, i.UP_TO_DATE)),
                            !s.Config.isSkipCheckUpdate)
                }
                ,
                e.prototype.checkUpdate = function (e) {
                    if (this.isNeedUpdate(e)) {
                        if (cc.log("--checkUpdate--"),
                            this.updating)
                            return cc.log("Checking or updating..."),
                                void e(o.CHECKING, i.PREDOWNLOAD_VERSION);
                        if (!this.currentAssetsManager.manager.getLocalManifest() || !this.currentAssetsManager.manager.getLocalManifest().isLoaded())
                            return cc.log("Failed to load local manifest ...."),
                                void e(o.ERROR_DOWNLOAD_MANIFEST, i.FAIL_TO_UPDATE);
                        this.isTryDownloadFailedAssets() ? (cc.log("The previous download of the resource was not fully downloaded, please try downloading again"),
                            e(o.UPDATE_FAILED, i.TRY_DOWNLOAD_FAILED_ASSETS)) : (cc.log("updating......"),
                                this.updating = true,
                                this.checkCallback = e,
                                this.currentAssetsManager.manager.setEventCallback(this.checkCb.bind(this)),
                                this.currentAssetsManager.manager.checkUpdate())
                    }
                }
                ,
                e.prototype.downloadFailedAssets = function () {
                    this.currentAssetsManager && this.currentAssetsManager.manager.downloadFailedAssets()
                }
                ,
                e.prototype.checkHallUpdate = function (e) {
                    this.isNeedUpdate(e) && (this.currentAssetsManager = this.getAssetsManager(),
                        this.currentAssetsManager.manager.loadLocalManifest(this.hallProjectMainfest),
                        this.checkUpdate(e))
                }
                ,
                e.prototype.getGameManifest = function (e) {
                    return "" + this.manifestRoot + e + "_project.manifest"
                }
                ,
                e.prototype.checkGameUpdate = function (e, t) {
                    if (this.isNeedUpdate(t)) {
                        this.currentAssetsManager = this.getAssetsManager(e);
                        var n = this.getGameManifest(e)
                            , a = this.getHotUpdateUrl(e);
                        if (jsb.fileUtils.isFileExist(n)) {
                            var r = jsb.fileUtils.getStringFromFile(n)
                                , s = JSON.parse(r);
                            s.packageUrl = a,
                                s.remoteManifestUrl = "" + a + n,
                                s.remoteVersionUrl = "" + a + this.manifestRoot + e + "_version.manifest",
                                r = JSON.stringify(s);
                            var c = this.storagePath + "/" + n;
                            jsb.fileUtils.writeStringToFile(r, c);
                            var l = new jsb.Manifest(r, this.storagePath, this.getHotUpdateUrl(this.currentAssetsManager.name));
                            cc.log("--A local version control file exists--"),
                                cc.log("mainifestUrl : " + n),
                                this.currentAssetsManager.manager.loadLocalManifest(l, ""),
                                this.checkUpdate(t)
                        } else {
                            if (this.updating)
                                return cc.log("Checking or updating..."),
                                    void t(o.CHECKING, i.PREDOWNLOAD_VERSION);
                            var p = {
                                version: "0",
                                packageUrl: a,
                                remoteManifestUrl: "" + a + n,
                                remoteVersionUrl: "" + a + this.manifestRoot + e + "_version.manifest",
                                assets: {},
                                searchPaths: []
                            }
                                , d = JSON.stringify(p);
                            c = this.storagePath + "/" + n,
                                jsb.fileUtils.writeStringToFile(d, c),
                                l = new jsb.Manifest(d, this.storagePath, this.getHotUpdateUrl(this.currentAssetsManager.name)),
                                cc.log("--checkUpdate--"),
                                cc.log("mainifest content : " + d),
                                this.currentAssetsManager.manager.loadLocalManifest(l, ""),
                                this.checkUpdate(t)
                        }
                    }
                }
                ,
                e.prototype.checkCb = function (e) {
                    switch (this.currentAssetsManager.code = e.getEventCode(),
                    cc.log("checkCb event code : " + e.getEventCode() + " state : " + this.currentAssetsManager.manager.getState()),
                    e.getEventCode()) {
                        case o.ERROR_NO_LOCAL_MANIFEST:
                            cc.log("No local manifest file found, hot update skipped.");
                            break;
                        case o.ERROR_DOWNLOAD_MANIFEST:
                        case o.ERROR_PARSE_MANIFEST:
                            cc.log("Fail to download manifest file, hot update skipped.");
                            break;
                        case o.ALREADY_UP_TO_DATE:
                            cc.log("Already up to date with the latest remote version.");
                            break;
                        case o.NEW_VERSION_FOUND:
                            cc.log("New version found, please try to update.");
                            break;
                        default:
                            return
                    }
                    this.updating = false,
                        this.checkCallback && this.currentAssetsManager.manager.getState() != i.DOWNLOADING_VERSION && (this.checkCallback(e.getEventCode(), this.currentAssetsManager.manager.getState()),
                            this.checkCallback = null)
                }
                ,
                e.prototype.hotUpdate = function () {
                    this.currentAssetsManager ? (cc.log("The upcoming hot update module is:" + this.currentAssetsManager.name + " , updating : " + this.updating),
                        this.updating || (cc.log("Perform the update " + this.currentAssetsManager.name + " "),
                            this.currentAssetsManager.manager.setEventCallback(this.updateCb.bind(this)),
                            this.currentAssetsManager.manager.update())) : cc.error("\u70ed\u66f4\u65b0\u7ba1\u7406\u5668\u672a\u521d\u59cb\u5316")
                }
                ,
                e.prototype.updateCb = function (e) {
                    var t = false
                        , n = false
                        , i = this.currentAssetsManager.name;
                    switch (cc.log("--update cb code : " + e.getEventCode() + " state : " + this.currentAssetsManager.manager.getState()),
                    this.currentAssetsManager.code = e.getEventCode(),
                    e.getEventCode()) {
                        case o.ERROR_NO_LOCAL_MANIFEST:
                            cc.log("No local manifest file found, hot update skipped."),
                                n = true;
                            break;
                        case o.UPDATE_PROGRESSION:
                            cc.log(e.getDownloadedBytes() + " / " + e.getTotalBytes()),
                                cc.log(e.getDownloadedFiles() + " / " + e.getTotalFiles()),
                                cc.log("percent : " + e.getPercent()),
                                cc.log("percent by file : " + e.getPercentByFile());
                            var s = e.getMessage();
                            s && cc.log("Updated file: " + s);
                            break;
                        case o.ERROR_DOWNLOAD_MANIFEST:
                        case o.ERROR_PARSE_MANIFEST:
                            cc.log("Fail to download manifest file, hot update skipped."),
                                n = true;
                            break;
                        case o.ALREADY_UP_TO_DATE:
                            cc.log("Already up to date with the latest remote version."),
                                n = true;
                            break;
                        case o.UPDATE_FINISHED:
                            cc.log("Update finished. " + e.getMessage()),
                                t = true;
                            break;
                        case o.UPDATE_FAILED:
                            cc.log("Update failed. " + e.getMessage()),
                                this.updating = false;
                            break;
                        case o.ERROR_UPDATING:
                            cc.log("Asset update error: " + e.getAssetId() + " , " + e.getMessage());
                            break;
                        case o.ERROR_DECOMPRESS:
                            cc.log("Asset decompress fail " + e.getMessage())
                    }
                    if (n && (this.currentAssetsManager.manager.setEventCallback(null),
                        this.updating = false),
                        t) {
                        var c = jsb.fileUtils.getSearchPaths()
                            , l = this.currentAssetsManager.manager.getLocalManifest().getSearchPaths();
                        cc.log("newPaths=>" + JSON.stringify(l)),
                            Array.prototype.unshift.apply(c, l);
                        for (var p = {}, d = 0; d < c.length; d++)
                            p[c[d]] = true;
                        c = Object.keys(p),
                            cc.sys.localStorage.setItem("HotUpdateSearchPaths", JSON.stringify(c)),
                            jsb.fileUtils.setSearchPaths(c)
                    }
                    var h = this.currentAssetsManager.manager.getState();
                    "HALL" == this.currentAssetsManager.name ? t && (this.currentAssetsManager.manager.setEventCallback(null),
                        e.getDownloadedFiles() > 0 && cc.game.restart(),
                        this.destroyAssetsManager(this.currentAssetsManager.name)) : t && (cc.log(this.currentAssetsManager.name + " \u4e0b\u8f7d\u8d44\u6e90\u6570 : " + e.getDownloadedFiles()),
                            this.destroyAssetsManager(this.currentAssetsManager.name));
                    var u = {
                        downloadedBytes: e.getDownloadedBytes(),
                        totalBytes: e.getTotalBytes(),
                        downloadedFiles: e.getDownloadedFiles(),
                        totalFiles: e.getTotalFiles(),
                        percent: e.getPercent(),
                        percentByFile: e.getPercentByFile(),
                        code: e.getEventCode(),
                        state: h,
                        needRestart: t,
                        name: i
                    };
                    r.default.Inst.dispatchMsg(a.default.HOTUPDATE_DOWNLOAD, u),
                        cc.log("update cb  failed : " + n + "  , need restart : " + t + " , updating : " + this.updating)
                }
                ,
                e.prototype.versionCompareHanle = function (e, t) {
                    cc.log("JS Custom Version Compare : version A is " + e + " , version B is " + t);
                    var n = e.split(".")
                        , o = t.split(".");
                    cc.log("version A " + n + " , version B " + o);
                    for (var i = 0; i < n.length && i < o.length; ++i) {
                        var a = parseInt(n[i])
                            , r = parseInt(o[i]);
                        if (a !== r)
                            return a - r
                    }
                    return o.length > n.length ? -1 : 0
                }
                ,
                __decorate([p], e)
        }());
n.BundleHotUpdate = new d

module.exports = n
