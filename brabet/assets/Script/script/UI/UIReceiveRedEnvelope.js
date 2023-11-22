let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var HttpServerDefine = require("../../Common/Define/HttpServerDefine")
var GameEventDefine = require("../../Common/Define/GameEventDefine")
var o = require("../../Common/Base/BaseForm")
    , i = cc._decorator
    , a = i.ccclass
    , r = i.property
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.LabelCount = null,
                t.hongbao_Open = null,
                t.hongbao_Close = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIReceiveRedEnvelope"
                this.RegEvent(HttpServerDefine.HttpAPI.GET_Redenvelope, this.onGetRedenvelope)
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];

                this.hongbao_Open.active = false
                this.hongbao_Close.active = true
            },
            t.prototype.OnClick = function (e) {
                if ("btn_Close" == e) {
                    this.CloseForm()
                } else if ("btn_Get" == e) {
                    app.HNoticeManager().RequestGetRedenvelope()
                }

            },
            t.prototype.onGetRedenvelope = function (e) {
                this.hongbao_Open.active = true
                this.hongbao_Close.active = false
                this.LabelCount.string = e.gold
            },
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                //    app.HNoticeManager().ShowFreeGameTip(),
                //      app.FormManager().ShowNextQueueForm("hall")
                //   (app.UserManager().RequestUserInfo({
                //      token: app.UserManager().GetUserInfo.token
                //  }),
                // app.Client.OnEvent(GameEventDefine.GameEventDefine.UPDATE_USER_INFO)
                //  void app.Client.OnEvent(GameEventDefine.GameEventDefine.UPDATE_GAME_GOLD)
                app.UserManager().RequstUserWallet()
            }
            ,
            __decorate([r(cc.Node)], t.prototype, "hongbao_Open", undefined),
            __decorate([r(cc.Node)], t.prototype, "hongbao_Close", undefined),
            __decorate([r(cc.Label)], t.prototype, "LabelCount", undefined),
            __decorate([a], t)
    }(o.default);
n.default = s,
    module.exports = n
