let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.conRichtext = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIHallNotice"
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.renderListData()
    }
    ,
    t.prototype.renderListData = function() {
        var e = app.HNoticeManager().NoticeListDataResult.shift();
        this.setContent(e.title, e.content),
        this.setBtnCallBack(e)
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_Close" != e || this.CloseForm()
    }
    ,
    t.prototype.setBtnCallBack = function(e) {
        var t = Boolean(e.in_url || e.out_url)
          , n = cc.find("/bg/scrollview/view/content/btn_label", this.node);
        if (n.active = t,
        t) {
            var o = new cc.Component.EventHandler;
            o.target = this.node,
            o.component = "UIHallNotice",
            o.handler = "BtnLabelCallBack",
            o.customEventData = JSON.stringify(e),
            e.in_url && (n.getComponent(cc.Button).clickEvents = [],
            n.getComponent(cc.Button).clickEvents.push(o)),
            e.out_url && (n.getComponent(cc.Label).string = e.out_url,
            n.getComponent(cc.Button).clickEvents = [],
            n.getComponent(cc.Button).clickEvents.push(o)),
            e.url_text && (n.getComponent(cc.Label).string = e.url_text)
        }
    }
    ,
    t.prototype.BtnLabelCallBack = function(e, t) {
        var n = (t = JSON.parse(t)).out_url;
        this.CloseForm(),
        n ? cc.sys.openURL(n) : t.in_url > 0 && app.InteractionMgr().SendWndEvent(t.in_url)
    }
    ,
    t.prototype.setContent = function(e, t) {
        this.conRichtext.string = t
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.HNoticeManager().ShowFreeGameTip(),
        app.FormManager().ShowNextQueueForm("hall")
    }
    ,
    __decorate([r(cc.RichText)], t.prototype, "conRichtext", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
