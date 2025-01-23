let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.CameraMgr = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.JS_Name = "CameraMgr",
        this.Log("Init"),
        cc.systemEvent.on("GetPhotoAndCameraDataSuccess", this.OnGetPhoto)
    }
    ,
    t.prototype.OnGetPhoto = function(e) {
        var t = {
            str_ImageUrl: encodeURIComponent(e.base64Bitmap),
            base64Img: e.base64Bitmap
        };
        app.Client.OnEvent(i.GameEventDefine.CAMERA_IMAGEDATA, t)
    }
    ,
    t.prototype.openNativeCamera = function() {
        app.NativeMgr().openCamera()
    }
    ,
    t.prototype.openNativePhoto = function() {
        app.NativeMgr().openPhoto()
    }
    ,
    t.prototype.RequestImage = function() {
        if (cc.sys.isNative && cc.sys.isMobile)
            this.openNativePhoto();
        else {
            this.input = document.createElement("input"),
            this.input.type = "file",
            this.input.setAttribute("accept", "image/*");
            var e = this;
            this.input.addEventListener("change", function() {
                for (var t = 0; t < e.input.files.length; t++) {
                    var n = e.input.files[t];
                    if (window.FileReader) {
                        var o = new FileReader;
                        o.readAsDataURL(n),
                        o.onloadend = function(t) {
                            e.onCutDownImage(t.target.result)
                        }
                    }
                }
            }),
            this.input.click()
        }
    }
    ,
    t.prototype.onCutDownImage = function(e) {
        var t = new Image;
        t.src = e,
        t.onload = function() {
            var e, n = document.createElement("canvas"), o = n.getContext("2d"), a = .3 * t.width, r = .3 * t.height;
            n.width = a,
            n.height = r,
            o.drawImage(t, 0, 0, a, r),
            e = n.toDataURL("image/png");
            var s = {
                str_ImageUrl: encodeURIComponent(e),
                base64Img: e
            };
            app.Client.OnEvent(i.GameEventDefine.CAMERA_IMAGEDATA, s)
        }
    }
    ,
    t.prototype.onLocalImageView = function(e, t) {
        var n = new Image;
        n.src = e,
        n.onload = function() {
            var e = new cc.Texture2D;
            e.initWithElement(n),
            e.handleLoadedTexture(),
            t.getComponent(cc.Sprite).spriteFrame = new cc.SpriteFrame(e)
        }
    }
    ,
    t
}(o.Singleton);
n.CameraMgr = a,
module.exports = n
