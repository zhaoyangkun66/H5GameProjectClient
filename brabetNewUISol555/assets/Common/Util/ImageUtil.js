let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function (e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "ImageUtil"
        }
        ,
        t.prototype.LoadLocalImage = function (e, t) {
            e ? app.ControlManager().CreateSpritePromise(t).then(function (t) {
                var n = function (e) {
                    cc.isValid(e, true) && e && e.getComponent(cc.Sprite) && (e.getComponent(cc.Sprite).spriteFrame = t)
                };
                Array.isArray(e) ? e.forEach(function (e) {
                    n(e)
                }) : n(e)
            }).catch(function () { }) : this.ErrLog("Load Head failed: " + t)
        }
        ,
        t.prototype.LoadRemoteImage = function (e, t) {
            if (e) {
                //  t = t + '?version=1'
               // t = 'https://lh3.googleusercontent.com/a/AGNmyxa1CobziYwbIVctzveO-lsp3A0uNnSh6Efes5vD=s96-c'
                var n = t.substring(t.lastIndexOf(".") + 1);
              //  n = "png"
                "jpeg" == n || "png" == n || "jpg" == n ? app.ControlManager().CreateLoadPromiseByUrl(t).then(function (t) {
                    var n = function (e) {
                        if (cc.isValid(e, true) && e && e.getComponent(cc.Sprite)) {
                            var n = new cc.SpriteFrame(t);
                            e.getComponent(cc.Sprite).spriteFrame = n
                        }
                    };
                    Array.isArray(e) ? e.forEach(function (e) {
                        n(e)
                    }) : n(e)
                }).catch(function () { }) : this.ErrLog("LoadRemoteImage failed: " + t)
            } else
                this.ErrLog("LoadRemoteImage failed: " + t)
        }
        ,
        t.prototype.LoadImage = function (e, t) {
            0 == t.indexOf("http") ? this.LoadRemoteImage(e, t) : this.LoadLocalImage(e, t)
        }
        ,
        t.prototype.LoadHead = function (e, t) {
            e && cc.isValid(e, true) ? (null != (t = "" + t) && "/0" != t && "" != t || (t = "00"),
                0 == t.indexOf("http") ? this.LoadImage(e, t) : (t = app.ComTool().PrefixInteger(t, 2),
                    this.LoadImage(e, "common/atlas/face/" + t))) : this.ErrLog("Load Head failed: " + t)
        }
        ,
        t
}(require("../Base/Singleton").Singleton);
n.default = o,
    module.exports = n
