let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/HttpServerDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {}
    ,
    t.prototype.OnLoadInit = function() {
        app.HttpServerManager().RegNetPack(i.HttpAPI.DOWNLOAD_RECORD, this.DownloadRecordCallBack, this)
    }
    ,
    t.prototype.OnEnable = function() {}
    ,
    t.prototype.DownloadRecordCallBack = function(e) {
        this.Log(JSON.stringify(e))
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("UIDownApp_IOS" == e || "UIDownApp_Android" == e) {
            if (!cc.sys.isBrowser)
                return;
            var t = app.ClientConfigManager().getLocalUrlDataByName("agentid");
            app.HttpServerManager().SendHttpPack(i.HttpAPI.DOWNLOAD_RECORD, {
                agentid: t || ""
            });
            var n = app.GameConfigManager().GetGameConfig().down_urls
              , o = ""
              , r = app.ClientConfigManager().getLocalUrlDataByName("agentid");
            r && app.NativeMgr().copyToClipBoard(r, "UI_DownCopyed"),
            cc.sys.os == cc.sys.OS_ANDROID ? o = n.android_download_url : cc.sys.os == cc.sys.OS_IOS && (o = app.GameConfigManager().GetGameConfig().down_urls.ios_download_url),
            app.ComTool().H5Platform() && cc.sys.os == cc.sys.OS_IOS ? app.FormManager().ShowForm(a.UINameDefine.UIJudge) : o && cc.sys.openURL(o)
        }
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
