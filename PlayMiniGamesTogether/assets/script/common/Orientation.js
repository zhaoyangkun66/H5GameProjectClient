let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function () {
    function e() { }
    return e.setOrientation = function (e, t) {


        // let frameSize = cc.view.getFrameSize();
        // let rtFrame = frameSize.width / frameSize.height;
        // let deFrame = 1334 / 750;
        // if (rtFrame > 1704 / 750 || rtFrame < 1136 / 960) {
        //     cc.view.setDesignResolutionSize(1334, 750, cc.ResolutionPolicy.SHOW_ALL);
        // }
        // else 
        // if (rtFrame < deFrame) {
        //     cc.view.setDesignResolutionSize(1334, 750, cc.ResolutionPolicy.FIXED_WIDTH);
        // } else {
        //     cc.view.setDesignResolutionSize(1334, 750, cc.ResolutionPolicy.FIXED_HEIGHT);
        // }

        if (cc.sys.platform == cc.sys.DESKTOP_BROWSER) {
            t = "H"
        }
        var n = cc.view.getFrameSize();
        cc.log("frameSize: " + n.width + "   " + n.height)
        if ("V" == t) {
            cc.view.setOrientation(cc.macro.ORIENTATION_PORTRAIT)
            if (n.width > n.height) {
                cc.view.setFrameSize(n.height, n.width)
                e.designResolution = new cc.Size(750, 1334)
            } else {
                e.fitHeight = false
                e.fitWidth = true
                e.designResolution = new cc.Size(750, 1334)
                cc.view.setDesignResolutionSize(750, 1334, cc.ResolutionPolicy.FIXED_WIDTH)
            }
        }
        else {
            cc.view.setOrientation(cc.macro.ORIENTATION_PORTRAIT)
            // if (n.height > n.width) {
            //     cc.view.setFrameSize(n.height, n.width)
            //     e.designResolution = new cc.Size(n.width, n.height)
            // }
            // else {
            e.fitHeight = true
            e.fitWidth = false
            e.designResolution = new cc.Size(750, 1334)
            cc.view.setDesignResolutionSize(750, 1334, cc.ResolutionPolicy.FIXED_HEIGHT)
            //  }
        }

        cc.sys.isNative ? window.jsb : cc.view.resizeWithBrowserSize(true)
    }
        ,
        e
}();
n.default = o,
    module.exports = n
