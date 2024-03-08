let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIAnnouncement",
        this.RegEvent(i.GameEventDefine.GET_NOTICES, this.OnNotices),
        this.TableToggleParent = this.GetWndNode("layer/left/view/content/toggleContainer"),
        this.ToggleItem = this.GetWndNode("layer/left/toggleItem"),
        this.webWnd = this.GetWndNode("layer/web"),
        this.imageWnd = this.GetWndNode("layer/con")
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.HNoticeManager().RequestGetNoticeData()
    }
    ,
    t.prototype.OnNotices = function() {
        this.initActivityInfo()
    }
    ,
    t.prototype.initActivityInfo = function() {
        this.createNoticeList()
    }
    ,
    t.prototype.onToggleCallBack = function(e, t) {
        var n = JSON.parse(t);
        this.renderSelectContent(n)
    }
    ,
    t.prototype.createNoticeList = function() {
        var e = app.HNoticeManager().AnnounceListResult;
        if (e) {
            this.TableToggleParent.removeAllChildren();
            for (var t = 0; t < e.length; t++) {
                var n = e[t]
                  , o = cc.instantiate(this.ToggleItem);
                this.TableToggleParent.addChild(o),
                o.data = n;
                var i = new cc.Component.EventHandler;
                i.target = this.node,
                i.component = this.JS_Name,
                i.handler = "onToggleCallBack",
                i.customEventData = JSON.stringify(n),
                o.getComponent(cc.Toggle).checkEvents = [],
                o.getComponent(cc.Toggle).checkEvents.push(i),
                cc.find("Background/label", o).getComponent(cc.Label).string = n.title,
                cc.find("checkmark/label", o).getComponent(cc.Label).string = n.title,
                0 == t && (this.TableToggleParent.children.length > 0 && this.TableToggleParent.children[0].getComponent(cc.Toggle).check(),
                this.renderSelectContent(n)),
                o.active = true
            }
        }
    }
    ,
    t.prototype.renderSelectContent = function(e) {
        var t = e.content;
        if (1 == e.content_type)
            if (this.setWebWndVisible(false),
            this.setImageWndVisible(false),
            "" == t || null == t)
                cc.error("url = null");
            else {
                var n = this.GetWndNode("layer/con/scrollview/view/content/img");
                this.noticerenderImageWnd(t, n),
                this.setImageWndVisible(true, e)
            }
        else {
            this.setWebWndVisible(true);
            var o = t + "&token=" + app.UserManager().GetUserInfo.token;
            this.setWebUrl(o),
            this.setImageWndVisible(false)
        }
    }
    ,
    t.prototype.setWebWndVisible = function(e) {
        this.webWnd.active = e
    }
    ,
    t.prototype.setImageWndVisible = function(e, t) {
        if (this.imageWnd.active = e,
        t) {
            var n = new cc.Component.EventHandler;
            n.target = this.node,
            n.component = this.JS_Name,
            n.handler = "NoticeWndEvent",
            n.customEventData = JSON.stringify(t),
            cc.find("scrollview/view/content", this.imageWnd).getComponent(cc.Button).clickEvents = [],
            cc.find("scrollview/view/content", this.imageWnd).getComponent(cc.Button).clickEvents.push(n)
        }
    }
    ,
    t.prototype.setWebUrl = function(e) {
        "" != e && null != e ? this.webWnd.children[0].getComponent(cc.WebView).url = e : cc.error("url = null")
    }
    ,
    t.prototype.noticerenderImageWnd = function(e, t) {
        "" != e && null != e ? t && app.ImageUtil().LoadImage(t, e) : cc.error("url = null")
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        "btn_Close" != e ? "toggleItem" != e || this.onToggleCallBack(t, n) : this.CloseForm()
    }
    ,
    t.prototype.NoticeWndEvent = function(e, t) {
        var n = JSON.parse(t);
        if (null != n) {
            var o = n.link;
            if (o > 0)
                return app.InteractionMgr().SendWndEvent(o),
                void app.FormManager().CloseForm(a.UINameDefine.UIAnnouncement);
            var i = n.external_link;
            i && cc.sys.openURL(i)
        } else
            this.ErrLog("NoticeWndEvent ==> ")
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.FormManager().ShowNextQueueForm("hall")
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
