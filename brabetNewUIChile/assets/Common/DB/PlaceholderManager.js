let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.PlaceholderManager = undefined;
var o = require("../Base/Singleton")
    , i = require("../Define/GameEventDefine")
    , a = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.gameListEnd = false,
                t.gameLogoEnd = false,
                t.deskNoticeEnd = false,
                t.LoadCount = 0,
                t.LoadSunCount = 0,
                t.LoadMaxCount = 0,
                t.urlS = [],
                t.imgNode = [],
                t.beginShowIcon = [],
                t.beginHideIcon = [],
                t.FirstLogin = false,
                t.BannerItemNum = 0,
                t.GameIconNum = 0,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "PlaceholderManager",
                    app.Client.RegEvent(i.GameEventDefine.SHOW_ICON, this.OnShowIcon, this)
            }
            ,
            Object.defineProperty(t.prototype, "GameListEnd", {
                set: function (e) {
                    this.gameListEnd = e,
                        this.isSendEnd()
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "GameLogoEnd", {
                set: function (e) {
                    this.gameLogoEnd = e,
                        this.isSendEnd()
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "DeskNoticeEnd", {
                set: function (e) {
                    this.deskNoticeEnd = e,
                        this.isSendEnd()
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.isSendEnd = function () {
                //this.FirstLogin && 
                this.gameListEnd && this.gameLogoEnd && this.deskNoticeEnd && app.Client.OnEvent(i.GameEventDefine.SEND_END)
            }
            ,
            t.prototype.SetLoadMaxCount = function () {
                this.LoadMaxCount += this.GetGameIconNum()
            }
            ,
            t.prototype.SetBannerItemNum = function (e) {
                this.BannerItemNum = e,
                    this.LoadMaxCount += this.BannerItemNum
            }
            ,
            t.prototype.GetGameIconNum = function () {
                this.GameIconNum = app.GameTypeManager().GetHistoryGame().length;
                for (var e = app.GameTypeManager().GetColumCount, t = app.GameConfigManager().GetGameConfig().game_type, n = 0, o = 0; o < t.length; o++) {
                    if (!(n < 2))
                        return this.GameIconNum;
                    var i = app.GameTypeManager().GetGameTypeList_2(o);
                    if (i.length > 0)
                        if (i.length > e) {
                            var a = e * (2 - n);
                            this.GameIconNum += i.length > a ? a : i.length,
                                n = 2
                        } else
                            n++,
                                this.GameIconNum += i.length
                }
                return this.GameIconNum
            }
            ,
            t.prototype.SubLoadCount = function () {
                this.LoadCount--,
                    this.NoticeShowIcon()
            }
            ,
            t.prototype.NoticeShowIcon = function () {
                this.FirstLogin && 0 == this.LoadCount //&& this.LoadSunCount >= this.LoadMaxCount
                    && (this.FirstLogin = false,
                        this.Log("placeholder==========showIcon"),
                        app.Client.OnEvent(i.GameEventDefine.SHOW_ICON))
            }
            ,
            t.prototype.AddBeginHideIcon = function (e) {
                this.beginHideIcon.push(e)
            }
            ,
            t.prototype.AddBeginShowIcon = function (e) {
                this.beginShowIcon.push(e)
            }
            ,
            t.prototype.OnShowIcon = function () {
                for (var e = 0; e < this.imgNode.length; e++)
                    this.imgNode[e].getComponent(cc.Sprite).spriteFrame = this.urlS[e];
                for (e = 0; e < this.beginShowIcon.length; e++)
                    this.beginShowIcon[e].active = false;
                for (e = 0; e < this.beginHideIcon.length; e++)
                    this.beginHideIcon[e].active = true;
                this.urlS = [],
                    this.imgNode = [],
                    this.beginShowIcon = [],
                    this.beginHideIcon = []
            }
            ,
            t
    }(o.Singleton);
n.PlaceholderManager = a,
    module.exports = n
