let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GuideManager = undefined;
var o = require("../../../Common/Base/Singleton")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/HttpServerDefine")
  , r = require("../../../Common/Define/UINameDefine")
  , s = require("./GuideDefine")
  , c = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GuideManager",
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USERGUIDE, this.onRecvGuideData, this),
        this.RecvGuideList = [],
        this.b_UpdateNodePos = true
    }
    ,
    t.prototype.RequestGuide = function(e, t) {
        if (!t) {
            if (this.getLocalDataGuideData(e))
                return;
            if (!app.UserManager().getIsOfficialAccount())
                return;
            if (app.GameConfigManager().IsExperienceServer)
                return
        }
        var n = {
            token: app.UserManager().GetUserInfo.token,
            type: s.GuideTypeByNum[e],
            status: null
        };
        t && (n.status = t),
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USERGUIDE, n)
    }
    ,
    t.prototype.CheckGuideByWithDraw = function() {
        this.RequestGuide(s.Guide_Type.Guide_withdraw)
    }
    ,
    t.prototype.onRecvGuideData = function(e, t) {
        t.status || (this.RecvGuideData = e,
        this.RecvGuideList[t.type] = e,
        this.checkGuideType(t),
        app.Client.OnEvent(i.GameEventDefine.GET_USERGUIDE, this.RecvGuideData))
    }
    ,
    t.prototype.setLocalDataGuideData = function(e) {
        app.LocalDataManager().SetConfigProperty(app.UserManager().GetUserInfo.uid + "GuideType", "TypeID" + e, "TypeID" + e)
    }
    ,
    t.prototype.getLocalDataGuideData = function(e) {
        return !!app.LocalDataManager().HaveConfigProperty(app.UserManager().GetUserInfo.uid + "GuideType", "TypeID" + e) && app.LocalDataManager().GetConfigProperty(app.UserManager().GetUserInfo.uid + "GuideType", "TypeID" + e)
    }
    ,
    t.prototype.checkGuideType = function(e) {
        if (e.type == s.GuideTypeByNum[s.Guide_Type.Guide_withdraw] && app.FormManager().IsFormShow(r.UINameDefine.UIHall))
            if (1 == this.RecvGuideData.need_guide) {
                var t = {
                    formName: r.UINameDefine.UIGuide,
                    key: "hall",
                    argumentsList: [{
                        type: s.Guide_Type.Guide_withdraw
                    }]
                };
                app.FormManager().EnqueueForm(t)
            } else
                1 == this.RecvGuideData.is_guide && this.setLocalDataGuideData(s.Guide_Type.Guide_withdraw)
    }
    ,
    t
}(o.Singleton);
n.GuideManager = c,
module.exports = n
