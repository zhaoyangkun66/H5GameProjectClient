let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("./UIAnnouncementItem")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIAnnouncement_V";
        // this.RegEvent(i.GameEventDefine.GET_NOTICES, this.OnNotices),
        // this.PageParent = this.GetWndNode("layer/con"),
        // this.PageItem = this.GetWndNode("layer/node_copy"),
        // this.webWnd = this.GetWndNode("layer/node_copy/web"),
        // this.imageWnd = this.GetWndNode("layer/node_copy/node_img"),
        // this.lbl_title = this.GetWndNode("layer/title/title").getComponent(cc.Label),
        // this.PageParent.on("page-turning", this.onShowPageViewIndex, this),
        // this.PageView = this.PageParent.getComponent(cc.PageView)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        //app.HNoticeManager().RequestGetNoticeData()
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
    t.prototype.createNoticeList = function() {
        var e = app.HNoticeManager().AnnounceListResult;
        if (e) {
            e.sort(function(e, t) {
                return e.content_type - t.content_type
            });
            for (var t = false, n = 0; n < e.length; n++) {
                var o = e[n];
                if (1 == o.content_type) {
                    var i = cc.instantiate(this.PageItem);
                    i.data = o,
                    (i.addComponent(a.default) || i.getComponent(a.default)).renderInfo(o),
                    i.active && (this.PageParent.getComponent(cc.PageView).addPage(i),
                    t || (t = true,
                    this.lbl_title.string = o.title))
                }
            }
        }
    }
    ,
    t.prototype.onShowPageViewIndex = function() {
        var e = this.PageParent.getComponent(cc.PageView).getCurrentPageIndex()
          , t = this.PageView.getPages()[e].data.title;
        t && (this.lbl_title.string = t)
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_Close" != e ? "btn_right" != e ? "btn_left" != e || this.PageView.getCurrentPageIndex() > 0 && this.PageView.scrollToPage(this.PageView.getCurrentPageIndex() - 1, .5) : this.PageView.getCurrentPageIndex() < this.PageView.getPages().length - 1 && this.PageView.scrollToPage(this.PageView.getCurrentPageIndex() + 1, .5) : this.CloseForm()
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
