let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/DB/PageTrackManager")
    , a = require("../../../Common/Define/GameEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("../../../Common/Define/TrackEventName")
    , p = cc._decorator
    , d = p.ccclass
    , h = p.property
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.gameIcon = null,
                t.gameName = null,
                t.onlineUsers = null,
                t.material = null,
                t.bightness = .5,
                t.blurAmount = .5,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.gameIcon = this.GetWndComponent("content/topNode/gameIcon", cc.Sprite)
                this.gameName = this.GetWndComponent("content/topNode/gameName", cc.Label)
                this.onlineUsers = this.GetWndComponent("content/topNode/onlineUsers", cc.RichText)
                this.topNode = this.GetWndComponent("content/topNode", cc.Sprite)
                this.material.setProperty("bightness", this.bightness)
                this.material.setProperty("blurAmount", this.blurAmount)
                this.topNode.setMaterial(0, this.material)
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this._data = e[0]
                let data = this._data
                var url = data.url
                url = url.replace("/big/", "/small/").replace("/middle/", "/small/")
                this.gameIcon.spriteFrame = null
                this.topNode.spriteFrame = null
                app.ImageUtil().LoadImage(this.gameIcon.node, url)
                app.ImageUtil().LoadImage(this.topNode.node, url)
                this.gameName.string = data.name
                this.onlineUsers.string = "<color=#FF0000>" + data.game_onlineUsers + "+</c><color=#Ffffff>people have played</color>"
                // let topNodeUIGameIconBlurMask = this.GetWndComponent("content/topNode", UIGameIconBlurMask.default)
                // topNodeUIGameIconBlurMask.SetTexture(null)
                // topNodeUIGameIconBlurMask.active = false
                // app.ControlManager().CreateLoadPromiseByUrl(url).then(function (iconUrl) {
                //     topNodeUIGameIconBlurMask.active = true
                //     topNodeUIGameIconBlurMask.SetTexture(iconUrl)
                // }).catch(function () { })


                // var iconUrl = app.ControlManager().GetResCache(url);
                //  iconUrl && this.GetWndComponent("content/topNode", UIGameIconBlurMask.default).SetTexture(iconUrl)
            },
            t.prototype.OnClick = function (e) {
                if ("EnterGame" == e) {
                    app.HallManager().OnEnterGame(this._data.gid, this._data.sub_gid);
                }
            }
            ,
            __decorate([h({
                type: cc.Material,
                displayName: "\u6a21\u7cca\u6750\u8d28",
                tooltip: "\u7528\u4e8e\u5e94\u7528\u6a21\u7cca\u6240\u7528\u7684\u6750\u8d28\uff0c\u5982\u65e0\u7279\u6b8a\u9700\u6c42\u8bf7\u4fdd\u6301\u9ed8\u8ba4"
            })], t.prototype, "material", undefined),
            __decorate([h({
                type: cc.Float,
                displayName: "\u4eae\u5ea6",
                tooltip: "\u964d\u4f4e\u80cc\u666f\u7684\u4eae\u5ea6",
                min: 0,
                max: 1
            })], t.prototype, "bightness", undefined),
            __decorate([h({
                type: cc.Float,
                displayName: "\u6a21\u7cca\u5ea6",
                tooltip: "\u80cc\u666f\u7684\u6a21\u7cca\u7a0b\u5ea6",
                min: 0,
                max: 1
            })], t.prototype, "blurAmount", undefined),
            __decorate([d], t)
    }(o.default);
n.default = u,
    module.exports = n
