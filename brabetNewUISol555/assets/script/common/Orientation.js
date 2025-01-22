let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function() {
    function e() {}
    return e.setOrientation = function(e, t) {
        app.NativeMgr().setOrientation(t);
        var n = cc.view.getFrameSize();
        cc.log("frameSize: " + n.width + "   " + n.height),
        "V" == t ? (cc.view.setOrientation(cc.macro.ORIENTATION_PORTRAIT),
        n.width > n.height ? (cc.view.setFrameSize(n.height, n.width),
        e.designResolution = new cc.Size(750,1334)) : (e.fitHeight = false,
        e.fitWidth = true,
        e.designResolution = new cc.Size(750,1334),
        cc.view.setDesignResolutionSize(750, 1334, cc.ResolutionPolicy.FIXED_WIDTH))) : (cc.view.setOrientation(cc.macro.ORIENTATION_LANDSCAPE),
        n.height > n.width ? (cc.view.setFrameSize(n.height, n.width),
        e.designResolution = new cc.Size(n.width,n.height)) : (e.fitHeight = true,
        e.fitWidth = false,
        e.designResolution = new cc.Size(n.width,n.height),
        cc.view.setDesignResolutionSize(n.width, n.height, cc.ResolutionPolicy.FIXED_HEIGHT))),
        cc.sys.isNative ? window.jsb : cc.view.resizeWithBrowserSize(true)
    }
    ,
    e
}();
n.default = o,
module.exports = n
