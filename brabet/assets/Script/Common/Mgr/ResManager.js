let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = require("./ResDefine")
    , r = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.resMap = new Map,
                t.totalCount = 0,
                t.loadCount = 0,
                t.isInit = false,
                t.texturePaths = [],
                t.prefabPaths = [],
                t
        }
        return __extends(t, e),
            t.prototype.initSync = function () {
                this.isInit || (this.isInit = true,
                    this.texturePaths = this.getAssetPaths(a.TextureRes),
                    this.prefabPaths = this.getAssetPaths(a.PrefabRes),
                    this.totalCount = this.texturePaths.length + this.prefabPaths.length,
                    cc.log("this.resCount = ", this.totalCount),
                    this.loadResSync())
            }
            ,
            t.prototype.initAsync = function () {
                var e = this;
                if (!this.isInit) {
                    this.isInit = true;
                    var t = this.getAssetPaths(a.TextureRes)
                        , n = this.getAssetPaths(a.PrefabRes);
                    this.totalCount = t.length + n.length,
                        cc.log("this.resCount = ", this.totalCount),
                        0 != this.totalCount ? (t.forEach(function (t) {
                            cc.resources.loadDir(t, cc.SpriteFrame, function (n, o) {
                                e.loadResAsyncCb(n, o, t)
                            })
                        }),
                            n.forEach(function (t) {
                                cc.resources.loadDir(t, cc.Prefab, function (n, o) {
                                    e.loadResAsyncCb(n, o, t)
                                })
                            })) : app.Client.OnEvent(i.GameEventDefine.LOAD_RES_SUCCESS)
                }
            }
            ,
            t.prototype.getResource = function (e) {
                return this.resMap.get(e)
            }
            ,
            t.prototype.getLoadPercent = function () {
                var e = this.loadCount / this.totalCount;
                return (e += 0) > 1 ? 1 : Number(e.toFixed(2))
            }
            ,
            t.prototype.getPokerTextureByName = function (e) {
                var t = a.TextureRes.POKER_PATH + "/" + e;
                return this.getResource(t)
            }
            ,
            t.prototype.getBigPokerTextureByName = function (e) {
                var t = a.TextureRes.BIG_POKER_PATH + "/" + e;
                return this.getResource(t)
            }
            ,
            t.prototype.getSmallPokerTextureByName = function () { }
            ,
            t.prototype.getRummyPokerTextureByName = function (e) {
                var t = a.TextureRes.RUMMY_POKER_PATH + "/" + e;
                return this.getResource(t)
            }
            ,
            t.prototype.getRummyPokerTextureByID = function (e) {
                var t = this.getCardTextureName(e);
                return this.getRummyPokerTextureByName(t)
            }
            ,
            t.prototype.getBigPokerTextureByID = function (e) {
                var t = this.getCardTextureName(e);
                return this.getBigPokerTextureByName(t)
            }
            ,
            t.prototype.getSmallPokerTextureByID = function (e) {
                var t = this.getCardTextureName(e);
                return this.getSmallPokerTextureByName(t)
            }
            ,
            t.prototype.getPokerTextureByID = function (e) {
                var t = this.getCardTextureName(e);
                return this.getPokerTextureByName(t)
            }
            ,
            t.prototype.getCardTextureName = function (e) {
                var t = Math.floor(e / 16)
                    , n = e % 16;
                if (t > 4 || t < 0 || 0 == e)
                    return "card";
                if (4 == t) {
                    if (1 == n)
                        return "king2";
                    if (2 == n)
                        return "king1"
                }
                var o = "";
                switch (t) {
                    case 0:
                        o = "T";
                        break;
                    case 1:
                        o = "H";
                        break;
                    case 2:
                        o = "M";
                        break;
                    case 3:
                        o = "F"
                }
                return n >= 2 && n <= 10 ? o += n : 11 == n ? o += "J" : 12 == n ? o += "Q" : 13 == n ? o += "K" : 14 == n ? o += "A" : "card"
            }
            ,
            t.prototype.loadResAsyncCb = function (e, t, n) {
                var o = this;
                e ? cc.error(e) : (t.forEach(function (e, t) {
                    var i = n + "/" + e.name;
                    i ? (e.addRef(),
                        o.resMap.set(i, e)) : cc.error("urls = ", i, "idx = ", t)
                }),
                    this.loadCount++,
                    cc.log("this.loadCount = ", this.loadCount),
                    this.loadCount == this.totalCount && app.Client.OnEvent(i.GameEventDefine.LOAD_RES_SUCCESS))
            }
            ,
            t.prototype.loadResSync = function () {
                var e = this;
                if (this.texturePaths.length > 0) {
                    var t = this.texturePaths.shift();
                    cc.resources.loadDir(t, cc.SpriteFrame, function (n, o) {
                        e.loadResSyncCb(n, o, t)
                    })
                } else if (this.prefabPaths.length > 0) {
                    var n = this.prefabPaths.shift();
                    cc.resources.loadDir(n, cc.Prefab, function (t, o) {
                        e.loadResSyncCb(t, o, n)
                    })
                } else
                    app.Client.OnEvent(i.GameEventDefine.LOAD_RES_SUCCESS)
            }
            ,
            t.prototype.loadResSyncCb = function (e, t, n) {
                var o = this;
                e ? cc.error(e) : (t.forEach(function (e, t) {
                    var i = n + "/" + e.name;
                    i ? (e.addRef(),
                        o.resMap.set(i, e)) : cc.error("urls = ", i, "idx = ", t)
                }),
                    this.loadCount++,
                    cc.log("this.loadCount = ", this.loadCount),
                    this.loadResSync())
            }
            ,
            t.prototype.getAssetPaths = function (e) {
                var t = [];
                for (var n in e)
                    if (e.hasOwnProperty(n)) {
                        var o = e[n];
                        t.push(o)
                    }
                return t
            }
            ,
            t.prototype.getCardNumber = function (e) {
                var t = e % 16;
                return t >= 2 && t <= 10 ? t + "" : 11 == t ? "J" : 12 == t ? "Q" : 13 == t ? "K" : 14 == t ? "A" : undefined
            }
            ,
            t
    }(o.Singleton);
n.default = r,
    module.exports = n
