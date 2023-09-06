let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = require("../../../../Common/Component/List")
  , a = require("../../../../Common/Define/GameEventDefine")
  , r = require("./PageBannerItem")
  , s = cc._decorator
  , c = s.ccclass
  , l = (s.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.list = null,
        t.ShowCount = 1,
        t.LastRenderTime = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "PageBanner",
        this.list = this.node.getComponent(i.default),
        this.RegEvent(a.GameEventDefine.SEND_END, this.OnGetDeskNotice),
        this.RegEvent(a.GameEventDefine.GET_DESK_NOTICE, this.OnGetDeskNotice)
    }
    ,
    t.prototype.onListRender = function(e, t) {
        var n = app.HNoticeManager().GetDeskListInfo[t];
        n ? e.getComponent(r.default).renderInfo(n) : this.ErrLog("onListRender failed: " + t)
    }
    ,
    t.prototype.OnEnable = function() {
        this.ShowCount = Math.round(this.node.width / this.list.tmpPrefab.data.width),
        this.OnGetDeskNotice()
    }
    ,
    t.prototype.OnGetDeskNotice = function() {
        0 != app.HNoticeManager().GetDeskListInfo.length && app.GameConfigManager().GetGameConfig().game_type && (this.list.numItems = app.HNoticeManager().GetDeskListInfo.length,
        this.list.numItems > this.ShowCount && (this.unschedule(this.scheduleCallBack),
        this.schedule(this.scheduleCallBack, .2)))
    }
    ,
    t.prototype.scheduleCallBack = function() {
        var e = (new Date).getTime();
        if (e - this.LastRenderTime >= 5e3) {
            this.LastRenderTime = e;
            var t = this.list.numItems - this.ShowCount + 1
              , n = this.list.curPageNum + 1;
            n = n >= t ? 0 : n,
            this.list.skipPage(n, 1)
        }
    }
    ,
    t.prototype.onPageViewEvent = function(e) {
        console.log(e);
        this.LastRenderTime = (new Date).getTime(),
        this.list.skipPage(e, 1)
    }
    ,
    __decorate([c], t)
}(o.default));
n.default = l,
module.exports = n
