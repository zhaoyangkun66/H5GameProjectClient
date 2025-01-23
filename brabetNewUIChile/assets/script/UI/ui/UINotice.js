let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/UINameDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("../../../Common/Define/HttpServerDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.notice_pageWnd = null,
        t.scrollView = null,
        t.item = null,
        t.NoDataItem = null,
        t.NoticeListNode = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegHttpEvent(r.HttpAPI.GET_NOTICES, this.OnNotices)
    }
    ,
    t.prototype.OnEnable = function() {
        this.NoticeListNode.removeAllChildren(),
        this.NoDataItem.active = false,
        app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_NOTICES, {
            token: app.UserManager().GetUserInfo.token,
            notice_id: 0
        }),
        app.RedDotManager().updateSingleData({
            type: a.RedDotStr.notice,
            bShow: false
        })
    }
    ,
    t.prototype.OnNotices = function(e) {
        this.initActivityInfo(e)
    }
    ,
    t.prototype.initActivityInfo = function(e) {
        this.gameNotice = [];
        for (var t = 0; t < e.length; ++t)
            this.gameNotice.push(e[t]);
        this.createNoticeList()
    }
    ,
    t.prototype.createNoticeList = function() {
        if (this.gameNotice)
            for (var e = function(e) {
                var n = t.gameNotice[e]
                  , o = cc.instantiate(t.item);
                t.NoticeListNode.addChild(o),
                o.data = n,
                o.getChildByName("label").getComponent(cc.Label).string = n.title,
                cc.find("title/time", o).getComponent(cc.Label).string = n.create_time;
                var i = cc.find("img", o)
                  , a = n.content;
                1 == n.content_type && ("" == a || null == a ? (cc.error("url = null"),
                i.active = false) : (i.active = true,
                i.opacity = 0,
                i.info = n,
                t.noticerenderImageWnd(a, i, function() {
                    i.opacity = 255
                }))),
                o.active = true
            }, t = this, n = 0; n < this.gameNotice.length; n++)
                e(n)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if ("notice_item" == e)
            return this.setNoticePageVisible(true),
            void this.setNoticePageData(t.data);
        "btnDlgClose" != e ? "item" != e || this.NoticeWndEvent(t.data) : this.setNoticePageVisible(false)
    }
    ,
    t.prototype.setNoticePageVisible = function(e) {
        this.notice_pageWnd.active = e
    }
    ,
    t.prototype.setNoticePageData = function(e) {
        if (this.notice_pageWnd && e) {
            var t = e.content
              , n = cc.find("scrollview/view/content", this.notice_pageWnd)
              , o = cc.find("scrollview/view/webview", this.notice_pageWnd)
              , i = cc.find("sprite", n);
            if (cc.find("notice_item/label", n).getComponent(cc.Label).string = e.title,
            cc.find("notice_item/notice_time", n).getComponent(cc.Label).string = e.create_time,
            app.HttpServerManager().SendHttpPack(r.HttpAPI.GET_NOTICE_READ, {
                token: app.UserManager().GetUserInfo.token,
                notice_id: e.notice_id
            }),
            n.active = 1 == e.content_type,
            o.active = !(1 == e.content_type),
            o.x = 1,
            1 == e.content_type)
                "" == t || null == t ? (cc.error("url = null"),
                i.active = false) : (i.active = true,
                i.opacity = 0,
                i.info = e,
                this.noticerenderImageWnd(t, i, function() {
                    i.opacity = 255
                }));
            else {
                var a = t + "&token=" + app.UserManager().GetUserInfo.token;
                this.setNoticeWebUrl(a, o),
                o.opacity = 0,
                i.active = false
            }
        }
    }
    ,
    t.prototype.NoticeWndEvent = function(e) {
        if (null != e) {
            var t = e.link;
            if (t > 0)
                return app.InteractionMgr().SendWndEvent(t),
                void app.FormManager().CloseForm(i.UINameDefine.UIChat);
            var n = e.external_link;
            n && cc.sys.openURL(n)
        } else
            this.ErrLog("NoticeWndEvent ==> ")
    }
    ,
    t.prototype.noticerenderImageWnd = function(e, t) {
        "" != e && null != e ? t && app.ImageUtil().LoadImage(t, e) : cc.error("url = null")
    }
    ,
    t.prototype.setNoticeWebUrl = function(e, t) {
        if ("" != e && null != e) {
            var n = new cc.Component.EventHandler;
            n.target = this.node,
            n.component = "NoticeLayer",
            n.handler = "WebviewCallBack",
            n.customEventData = "foobar",
            t.getComponent(cc.WebView).webviewEvents = [],
            t.getComponent(cc.WebView).webviewEvents.push(n),
            t.getComponent(cc.WebView).url = e
        } else
            cc.error("url = null")
    }
    ,
    t.prototype.WebviewCallBack = function(e, t) {
        1 == t && (cc.find("scrollview/view/webview", this.notice_pageWnd).opacity = 255)
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "notice_pageWnd", undefined),
    __decorate([l(cc.ScrollView)], t.prototype, "scrollView", undefined),
    __decorate([l(cc.Node)], t.prototype, "item", undefined),
    __decorate([l(cc.Node)], t.prototype, "NoDataItem", undefined),
    __decorate([l(cc.Node)], t.prototype, "NoticeListNode", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
