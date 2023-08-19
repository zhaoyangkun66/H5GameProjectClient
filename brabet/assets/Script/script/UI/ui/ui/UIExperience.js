let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../../Common/Base/BaseForm")
  , i = require("../../../../../Common/Define/HttpServerDefine")
  , a = require("../../autoui/Prefab/auto_UIExperience")
  , r = require("./UIRecommendedGame")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.menu
  , p = (s.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.gid = 0,
        t.subGid = 0,
        t.roomMode = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIExperience",
        this.ui = this.node.addComponent(a.default)
    }
    ,
    t.prototype.OnShow = function(e) {
        this.hideUI(),
        this.gid = e.gid,
        this.subGid = e.subGid,
        this.roomMode = e.roomMode,
        this.inView()
    }
    ,
    t.prototype.hideUI = function() {
        this.ui.spr_img.getComponent(cc.Sprite).spriteFrame = null,
        this.ui.lb_name.string = "",
        this.ui.lb_firm.string = ""
    }
    ,
    t.prototype.inView = function() {
        var e = app.HGameManager().GetCountryGameLogo(this.gid)
          , t = app.GameConfigManager().GetGameListItem(this.gid).game_name
          , n = null;
        this.subGid && (e = (n = app.GameConfigManager().GetSubGameListItem(this.gid, this.subGid)).fury_icon,
        t = n.game_name),
        app.ImageUtil().LoadImage(this.ui.spr_img, e),
        this.ui.lb_name.string = t;
        var o = app.GameConfigManager().GetGameFactory(this.gid);
        this.ui.lb_firm.string = o || "",
        this.ui.game_node.getComponent(r.default).init()
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_fun" != e ? "btn_Real" != e || app.HallManager().EnterGame(this.gid, this.subGid) : this.OnRequest()
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.OnRequest = function() {
        var e = this
          , t = app.RoomManager().GetRoomModeInfoByGid(this.gid)
          , n = 0;
        t && (n = t.RoomMode);
        var o = {
            token: app.UserManager().GetUserInfo.token,
            pkgName: app.ComTool().getPackageName(),
            platform: app.ComTool().H5Platform() ? 100 : 101,
            deviceid: app.LoginManager().GetDeviceID(),
            language: app.LanguageManager().GetLocalLanguage(true),
            uid: app.UserManager().UserInfo.uid,
            gid: this.gid,
            sub_gid: this.subGid,
            room_mod: this.roomMode ? this.roomMode : n
        }
          , a = "" + app.GameConfigManager().ExperienceServerUrl;
        app.WebClientManager().request(i.HttpAPI.EXPERIENCE_GAME_LOGIN, o, function(t) {
            0 == t.code ? (e.Log("EXPERIENCE_GAME_LOGIN", t.data),
            app.ExternGameManager().OnExperienceGame(t.data)) : app.SysNotifyManager().ShowToast(t.msg)
        }, null, a)
    }
    ,
    __decorate([c, l("UI/Prefab/UIExperience")], t)
}(o.default));
n.default = p,
module.exports = n
