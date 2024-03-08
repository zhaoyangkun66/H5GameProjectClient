let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = require("../../../Common/Define/ShareDefine")
    , UICashWheelWithdrawRecord = require("./Item/UICashWheelWithdrawRecord")
    , ShareDefine = require("../../../Common/Define/ShareDefine")
    , TrackEventName = require("../../../Common/Define/TrackEventName")
    , r = cc._decorator
    , s = r.ccclass
    , c = r.property
    , l = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.lbl_link = null,
                t.type = 0,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {

            }
            ,
            t.prototype.OnShow = function (data) {
                this.lbl_link.string = location.origin + location.pathname + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid + "&regionid=" + channelID
            }
            ,
            t.prototype.OnInitView = function (e) {

            }
            ,
            t.prototype.OnClick = function (e) {
                if ("img_btnWsApp" == e) {
                    app.NativeMgr().WhatsAppShare(location.origin + location.pathname + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid + "&regionid=" + channelID)
                }
                else if ("img_btnFb" == e) {
                    app.NativeMgr().FaceBookShare(JSON.stringify({
                        des: "",
                        url: location.origin + location.pathname + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid + "&regionid=" + channelID
                    }))
                }
                else if ("img_btnBg" == e) {
                    app.NativeMgr().copyToClipBoard(location.origin + location.pathname + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid + "&regionid=" + channelID)
                }
                else if ("img_Telegram" == e) {
                    var originalUrl = location.origin + location.pathname + "?f=UICashWheel&agentid=" + app.UserManager().UserInfo.uid + "&regionid=" + channelID
                    var encodedUrl = encodeURIComponent(originalUrl);
                    cc.sys.openURL("https://t.me/share/url?url=" + encodedUrl + "&text=Gana COL$50.000 Gratis, Retiro Rápido NEQUI")
                }


            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([c(cc.Label)], t.prototype, "lbl_link", undefined),
            __decorate([s], t)
    }(o.default);
n.default = l,
    module.exports = n
