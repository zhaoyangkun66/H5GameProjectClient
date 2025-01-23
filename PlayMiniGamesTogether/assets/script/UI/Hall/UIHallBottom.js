let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"),
    a = require("../../../Common/Define/GameEventDefine"),
    r = require("../../../Common/Define/ShareDefine"),
    s = require("../../../Common/Define/TextDefine"),
    c = require("../../../Common/Define/UINameDefine"),
    l = cc._decorator,
    p = l.ccclass,
    d = (l.property,
        o = cc.Node,
        __extends(function () {
            return null !== o && o.apply(this, arguments) || this
        }, o),
        function (e) {
            __extends(function () {
                return null !== e && e.apply(this, arguments) || this
            }, e)
        }(cc.Node),
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.gameFastJoinList = null,
                    t.gameNode = null,
                    t.BottomTextList = null,
                    t.gameIcon = null,
                    t.txtIcon = null,
                    t.isGameList = false,
                    t.textNode = null,
                    t.gameFastCloneItem = null,
                    t.textItem = null,
                    t.iconItem = null,
                    t.logoItem = null,
                    t.sprItem = null,
                    t.BottomLabel = null,
                    t.list_icon = null,
                    t.list_logo = null,
                    t.official = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    this.JS_Name = "UIHallBottom"
                      
                }
                ,
                t.prototype.OnShow = function () {
                }
                ,
                t.prototype.OnClick = function (e, t) {
                   
                }
                ,
                t.prototype.OnFastGameJoinList = function () {
                    
                }
                ,
                t.prototype.OnBottomTextList = function (e) {
                   
                }
                ,
                t.prototype.OnBottomIconList = function () {
                    
                }
                ,
                t.prototype.OnBottomTextIconList = function () {
                  
                }
                ,
                t.prototype.setBottomLabel = function () {
                
                }
                ,
                t.prototype.setNodeShow = function () {
                  
                }
                ,
                t.prototype.OnOfficialList = function () {
                   
                }
                ,
                t.prototype.OnHideChildNode = function (e, t) {
                   
                }
                ,
                __decorate([p], t)
        }(i.default));
n.default = d,
    module.exports = n
