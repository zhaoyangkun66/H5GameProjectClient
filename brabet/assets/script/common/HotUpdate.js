let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.HotUpdate = undefined;
var o = require("../../Common/Base/BaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.manifestUrl = null,
        t._updating = false,
        t._canRetry = false,
        t._storagePath = "",
        t._lastBytes = 0,
        t._curBytes = 0,
        t._updatInfoString = "",
        t._speedString = "",
        t._isComputeSpeed = false,
        t._am = null,
        t
    }
    return __extends(t, e),
    t.prototype.onLoad = function() {
        this.JS_Name = "HotUpdate",
        this.Log("onload"),
        cc.sys.isNative && (this._storagePath = (jsb.fileUtils ? jsb.fileUtils.getWritablePath() : "/") + "blackjack-remote-asset",
        this.Log("Storage path for remote asset : " + this._storagePath),
        this._am = new jsb.AssetsManager("",this._storagePath,function(e, t) {
            if (e == t)
                return -1;
            this.Log("JS Custom Version Compare: version A is " + e + ", version B is " + t);
            for (var n = e.split("_"), o = t.split("_"), i = 0; i < n.length; ++i) {
                var a = parseInt(n[i])
                  , r = parseInt(o[i] || 0);
                if (a !== r)
                    return a - r
            }
            return o.length > n.length ? -1 : 0
        }
        ),
        cc.log("-------this._am" + this._am),
        this._am.setVerifyCallback(function(e, t) {
            return t.compressed,
            t.md5,
            t.path,
            t.size,
            true
        }),
        cc.sys.os === cc.sys.OS_ANDROID && this._am.setMaxConcurrentTask(2),
        this.updateProgress(0))
    }
    ,
    t.prototype.checkCb = function(e) {
        switch (cc.log("Code: " + e.getEventCode()),
        e.getEventCode()) {
        case jsb.EventAssetsManager.ERROR_NO_LOCAL_MANIFEST:
            this.Log("No local manifest file found, hot update skipped.");
            break;
        case jsb.EventAssetsManager.ERROR_DOWNLOAD_MANIFEST:
        case jsb.EventAssetsManager.ERROR_PARSE_MANIFEST:
            this.Log("Fail to download manifest file, hot update skipped.");
            break;
        case jsb.EventAssetsManager.ALREADY_UP_TO_DATE:
            this.Log("Already up to date with the latest remote version.");
            break;
        case jsb.EventAssetsManager.NEW_VERSION_FOUND:
            this.Log("New version found, please try to update."),
            this.updateProgress(0),
            this.hotUpdate();
            break;
        default:
            return
        }
        this._updating = false
    }
    ,
    t.prototype.updateCb = function(e) {
        var t = false
          , n = false;
        switch (e.getEventCode()) {
        case jsb.EventAssetsManager.ERROR_NO_LOCAL_MANIFEST:
            this.Log("No local manifest file found, hot update skipped."),
            n = true;
            break;
        case jsb.EventAssetsManager.UPDATE_PROGRESSION:
            this.updateProgress(e.getPercent());
            var o = e.getDownloadedBytes()
              , i = e.getTotalBytes()
              , a = this.translateBytes(i)
              , r = this.translateBytes(o) + "/" + a;
            this._updatInfoString = r,
            0 == this._isComputeSpeed ? (this._speedString = " 0KB/s",
            this._isComputeSpeed = true,
            this._lastBytes = o,
            this._curBytes = o,
            this._lastTime = (new Date).getTime(),
            this.schedule(function() {
                var e = (new Date).getTime()
                  , t = e - this._lastTime;
                if (this.Log("takeTime=" + t),
                this._lastTime = e,
                t > 0) {
                    var n = t / 1e3
                      , o = this._curBytes - this._lastBytes;
                    this._lastBytes = this._curBytes;
                    var i = o / n;
                    i = this.translateBytes(i),
                    this.Log("kbs = " + i),
                    this._speedString = " " + i + "/s",
                    this.setUpdateProgressInfo()
                }
            }
            .bind(this), .5)) : this._curBytes = o,
            this.setUpdateProgressInfo();
            var s = e.getMessage();
            s && this.Log("Updated file: " + s);
            break;
        case jsb.EventAssetsManager.ERROR_DOWNLOAD_MANIFEST:
        case jsb.EventAssetsManager.ERROR_PARSE_MANIFEST:
            this.Log("Fail to download manifest file, hot update skipped."),
            n = true;
            break;
        case jsb.EventAssetsManager.ALREADY_UP_TO_DATE:
            this.Log("Already up to date with the latest remote version."),
            t = true;
            break;
        case jsb.EventAssetsManager.UPDATE_FINISHED:
            this.Log("Update finished. " + e.getMessage()),
            t = true;
            break;
        case jsb.EventAssetsManager.UPDATE_FAILED:
            this.Log("Update failed. " + e.getMessage()),
            this._updating = false,
            this._canRetry = true,
            t = true;
            break;
        case jsb.EventAssetsManager.ERROR_UPDATING:
            this.Log("Asset update error: " + e.getAssetId() + ", " + e.getMessage());
            break;
        case jsb.EventAssetsManager.ERROR_DECOMPRESS:
            this.Log(e.getMessage())
        }
        if (n && (this._am.setEventCallback(null),
        this._updating = false),
        t) {
            this.Log("--------------------startneedRestartrestart------------"),
            this.unscheduleAllCallbacks(),
            this._am.setEventCallback(null);
            var c = jsb.fileUtils.getSearchPaths()
              , l = this._storagePath;
            cc.log(JSON.stringify(l)),
            Array.prototype.unshift(c, l),
            cc.sys.localStorage.setItem("HotUpdateSearchPaths", JSON.stringify(c)),
            jsb.fileUtils.setSearchPaths(c),
            cc.audioEngine.stopAll(),
            this.Log(JSON.stringify(c) + "--------------------restart------------" + JSON.stringify(l)),
            setTimeout(function() {
                cc.log("\u91cd\u65b0\u8bbe\u7f6e\u6e38\u620f"),
                cc.game.restart(),
                cc.log("\u91cd\u65b0\u8bbe\u7f6e\u6e38\u620f\u5b8c\u6210")
            }, 1e3)
        }
    }
    ,
    t.prototype.retry = function() {
        !this._updating && this._canRetry && (this._canRetry = false,
        this._am.downloadFailedAssets())
    }
    ,
    t.prototype.checkUpdate = function() {
        if (this._updating)
            this.Log("Checking or updating ...");
        else {
            if (this._tempStoragePath = this._storagePath + "_temp",
            this.removeDirectory(this._tempStoragePath),
            this._am.getState() === jsb.AssetsManager.State.UNINITED) {
                var e = this.manifestUrl.nativeUrl;
                this._am.loadLocalManifest(e)
            }
            this._am.getLocalManifest() && this._am.getLocalManifest().isLoaded() ? (this._am.setEventCallback(this.checkCb.bind(this)),
            this._am.checkUpdate(),
            this._updating = true) : this.Log("Failed to load local manifest ...")
        }
    }
    ,
    t.prototype.hotUpdate = function(e) {
        this._am && !this._updating && (this._am.setEventCallback(this.updateCb.bind(this)),
        cc.log("url_____" + e),
        cc.log("this.manifestUrl" + this.manifestUrl),
        cc.log("this.manifestUrl.nativeUrl" + this.manifestUrl.nativeUrl),
        this._am.getState() === jsb.AssetsManager.State.UNINITED && (e ? this.modifyHotUpdateUrl(e) : this._am.loadLocalManifest(this.manifestUrl.nativeUrl)),
        this._am.update(),
        this._updating = true)
    }
    ,
    t.prototype.updateProgress = function(e) {
        isNaN(e)
    }
    ,
    t.prototype.setUpdateProgressInfo = function() {}
    ,
    t.prototype.removeManifestFile = function(e) {
        cc.log("-------------removeManifestFile------------"),
        jsb.fileUtils.isFileExist(e) ? (cc.log("-------------" + e + " exist------------"),
        jsb.fileUtils.removeFile(e),
        jsb.fileUtils.isFileExist(e) ? cc.log("-------------remove file failed------------") : cc.log("-------------remove file successful------------")) : cc.log("-------------" + e + " not exist------------")
    }
    ,
    t.prototype.removeDirectory = function(e) {
        cc.log("-------------removeDirectory------------"),
        jsb.fileUtils.isDirectoryExist(e) ? (cc.log("-------------" + e + " exist------------"),
        jsb.fileUtils.removeDirectory(e),
        jsb.fileUtils.isDirectoryExist(e) ? cc.log("-------------remove directory failed------------") : cc.log("-------------remove directory successful------------")) : cc.log("-------------" + e + " not exist------------")
    }
    ,
    t.prototype.modifyHotUpdateUrl = function(e) {
        cc.log("this.manifestUrl11-------" + this.manifestUrl);
        var t = jsb.fileUtils.getStringFromFile(this.manifestUrl.nativeUrl);
        cc.log("jsonString" + t);
        var n = JSON.parse(t);
        n.packageUrl = e,
        n.remoteManifestUrl = e + "project.manifest",
        n.remoteVersionUrl = e + "version.manifest",
        t = JSON.stringify(n);
        var o = jsb.fileUtils.getWritablePath() + "HotUpdate";
        jsb.fileUtils.isDirectoryExist(o) || jsb.fileUtils.createDirectory(o);
        var i = o + "/project.manifest";
        jsb.fileUtils.writeStringToFile(t, i),
        cc.log("\u66f4\u65b0\u7684\u8def\u5f84" + o);
        var a = new jsb.Manifest(t,o);
        this._am.loadLocalManifest(a, o)
    }
    ,
    t.prototype.translateBytes = function(e) {
        if (e <= 0)
            return "0B";
        var t = "";
        return e > 1e6 ? (t = (e / 1e6).toFixed(1),
        t += "MB") : e > 1e3 ? (t = (e / 1e3).toFixed(1),
        t += "KB") : (t = e.toFixed(1),
        t += "B"),
        t
    }
    ,
    __decorate([r(cc.Asset)], t.prototype, "manifestUrl", undefined),
    __decorate([a], t)
}(o.default);
n.HotUpdate = s,
module.exports = n
