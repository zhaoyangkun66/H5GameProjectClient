let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.IndexManager = undefined;
var o = require("../Art/DefaultBGColor")
  , i = require("../Base/Singleton")
  , a = require("../Define/GameEventDefine")
  , r = new cc.Color(0,0,0,180)
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.TopDefault = cc.Color.WHITE.fromHEX(o.DefaultBGColor.HallTop),
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "IndexManager",
        this.Log("Init"),
        app.Client.RegEvent(a.GameEventDefine.UpdateMoveStatus, this.onUpdateMoveStatus, this)
    }
    ,
    t.prototype.onUpdateMoveStatus = function(e) {
        this.setIndexDefaultColor(!e)
    }
    ,
    t.prototype.setIndexHeadColorByNode = function(e) {
        if (!app.ComTool().DesktopPlatform()) {
            var t = cc.Color.WHITE.fromHEX(o.DefaultBGColor.Launch);
            e && (t = this.blendColors(t, r)),
            this.setIndexBackgroundColor(t)
        }
    }
    ,
    t.prototype.setTopColor = function() {
        this.setIndexDefaultColor()
    }
    ,
    t.prototype.setIndexDefaultColor = function(e) {
        if (!app.ComTool().DesktopPlatform()) {
            var t = e ? this.blendColors(this.TopDefault, r) : this.TopDefault;
            this.setIndexBackgroundColor(t)
        }
    }
    ,
    t.prototype.setIndexBackgroundColor = function(e) {
        document.body.style.backgroundColor = "#" + e.toHEX()
    }
    ,
    t.prototype.blendColors = function(e, t) {
        var n = t.a / 255
          , o = 1 - n
          , i = o * e.r + n * t.r
          , a = o * e.g + n * t.g
          , r = o * e.b + n * t.b
          , s = o * e.a + n * t.a;
        return new cc.Color(i,a,r,s)
    }
    ,
    t
}(i.Singleton);
n.IndexManager = s,
module.exports = n
