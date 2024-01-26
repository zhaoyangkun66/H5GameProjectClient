let n = {}

Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.ControlManager = undefined;
var o = require("../Bundle/BundleManager")
    , i = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.downLoader = null,
                t.cacheDataDict = {},
                t.cacheUrlDataDict = {},
                t.cacheSpriteDict = {},
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "ControlManager",
                    cc.sys.isNative && (this.downLoader = new jsb.Downloader,
                        this.downLoader.setOnTaskError(this.OnTaskError.bind(this)),
                        this.downLoader.setOnTaskProgress(this.OnTaskProgress.bind(this)),
                        this.downLoader.setOnFileTaskSuccess(this.OnFileTaskSuccess.bind(this))),
                    this.Log("Init")
            }
            ,
            t.prototype.OnTaskError = function (e, t, n, o) {
                var i = JSON.parse(e.identifier);
                app.Client.OnEvent("DownloadFailed", {
                    requestURL: e.requestURL,
                    storagePath: e.storagePath,
                    eventType: i[0],
                    userData: i[1]
                }),
                    this.ErrLog("OnTaskError(%s,%s,%s):%s", e.requestURL, e.storagePath, e.identifier, o)
            }
            ,
            t.prototype.OnTaskProgress = function (e, t, n, o) {
                var i = JSON.parse(e.identifier);
                app.Client.OnEvent("DownloadProgress", {
                    requestURL: e.requestURL,
                    storagePath: e.storagePath,
                    eventType: i[0],
                    userData: i[1],
                    totalReceivedSize: n.byteLength,
                    dataTotalSize: o.byteLength
                })
            }
            ,
            t.prototype.OnFileTaskSuccess = function (e) {
                var t = e.identifier;
                if (this.SysLog("OnFileTaskSuccess:(%s)", JSON.stringify(e)),
                    t) {
                    try {
                        t = JSON.parse(t)
                    } catch (a) {
                        return void this.ErrLog("OnFileTaskSuccess(%s):%s", t, a.stack)
                    }
                    var n = e.storagePath
                        , o = t[0]
                        , i = t[1];
                    app.Client.OnEvent(o, {
                        userData: i,
                        storagePath: n
                    })
                }
            }
            ,
            t.prototype.UpdateAlignmentEx = function (e) {
                var t = e.getComponent(cc.Widget);
                t && t.updateAlignment();
                for (var n = e.children, o = e.childrenCount, i = 0; i < o; i++) {
                    var a = n[i];
                    this.UpdateAlignmentEx(a)
                }
            }
            ,
            t.prototype.ReleaseCache = function (e) {
                delete this.cacheDataDict[e],
                    cc.resources.release(e),
                    this.Log("\u6e05\u9664\u7f13\u5b58:" + e)
            }
            ,
            t.prototype.CreateBundleLoadPromise = function (e, t, n) {
                return new Promise(function (i, a) {
                    var r = o.BundleManager.getBundle(e);
                    r ? r.load(t, n, function (e, t) {
                        e ? a(e) : i(t)
                    }) : Promise.reject(null)
                }
                )
            }
            ,
            t.prototype.CreateLoadPromise = function (e, t, n) {
                var o = this;
                if (undefined === n && (n = true),
                    this.cacheDataDict.hasOwnProperty(e)) {
                    var i = this.cacheDataDict[e];
                    return Promise.resolve(i)
                }
                return new Promise(function (n, i) {
                    cc.resources.load(e, t, function (t, a) {
                        t ? i(t) : (o.cacheDataDict[e] = a,
                            n(a))
                    })
                }
                )
            }
            ,
            t.prototype.CreateSpritePromise = function (e) {
                var t = this;
                if (this.cacheSpriteDict.hasOwnProperty(e)) {
                    var n = this.cacheSpriteDict[e];
                    return Promise.resolve(n)
                }
                return new Promise(function (n, o) {
                    cc.resources.load(e, cc.SpriteFrame, function (i, a) {
                        i ? o(i) : (t.cacheSpriteDict[e] = a,
                            n(a))
                    })
                }
                )
            }
            ,
            t.prototype.GetResCache = function (e) {
                return this.cacheUrlDataDict[e]
            }
            ,
            t.prototype.CreateLoadPromiseByUrl = function (e) {
                var t = this;
                if (this.cacheUrlDataDict.hasOwnProperty(e)) {
                    var n = this.cacheUrlDataDict[e];
                    return Promise.resolve(n)
                }
                return new Promise(function (n, o) {
                    cc.assetManager.loadRemote(e + '?version=5', {
                        maxRetryCount: 0
                    }, function (i, a) {
                        if (i)
                            return t.ErrLog("\u6307\u5b9a\u8def\u5f84\u6587\u4ef6\u52a0\u8f7d\u5931\u8d25  %s", e),
                                void o(i);
                        t.cacheUrlDataDict[e] = a,
                            n(a)
                    })
                }
                )
            }
            ,
            t.prototype.DownLoadFile = function (e, t, n, o) {
                if (this.downLoader) {
                    var i = "";
                    n && (i = JSON.stringify([n, o])),
                        this.downLoader.createDownloadFileTask(e, t, i)
                } else
                    this.ErrLog("DownLoadFile not find downLoader")
            }
            ,
            t.prototype.CreateImageSavePath = function (e) {
                if (cc.sys.isNative) {
                    var t = [jsb.fileUtils.getWritablePath(), e].join("");
                    if (jsb.fileUtils.isDirectoryExist(t))
                        return t;
                    if (!jsb.fileUtils.createDirectory(t))
                        return this.ErrLog("CreateImageSavePath is Fail:%s", t),
                            ""
                }
                return ""
            }
            ,
            t
    }(require("../Base/Singleton").Singleton);
n.ControlManager = i

module.exports = n
