let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Mgr/UserManager")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.EDI_Nickname = null,
        t.layerChooseHead = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIPlayerEditInfo"
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        var n = app.UserManager().GetUserInfo;
        null != n && (this.oldHeadName = String(n.headimg),
        this.setNickName(n.nickname),
        this.setHeadShow("" + app.UserManager().GetUserInfo.headimg))
    }
    ,
    t.prototype.OnClick = function(e) {
        this.isHeadNode(e) ? "facebook" == e ? this.oldHeadName = app.UserManager().GetUserInfo.third_headimg : (this.oldHeadName = e,
        this.setHeadShow(e)) : "btn_Revise" != e || this.onReqUpdateUserInfo()
    }
    ,
    t.prototype.setNickName = function(e) {
        this.EDI_Nickname.string = e
    }
    ,
    t.prototype.setHeadShow = function(e) {
        for (var t = this.layerChooseHead.children, n = 0; n < t.length; n++) {
            var o = t[n];
            o.getChildByName("checkmark").active = Number(o.name) == Number(e)
        }
    }
    ,
    t.prototype.onReqUpdateUserInfo = function() {
        var e = this.EDI_Nickname.string;
        // if (e == app.UserManager().GetUserInfo.nickname)
        //     e = null;
        // else {
        //     if (!app.ComTool().checkSpecialStr(e))
        //         return void app.SysNotifyManager().ShowToast("SC_System_ullegalNickName");
        //     if ("" == e)
        //         return void app.SysNotifyManager().ShowToast("UI.System_24")
        // }
        var t = this.oldHeadName.replace(/&/g, "%26");
       // this.oldHeadName == app.UserManager().GetUserInfo.headimg && (t = null);
        var n = new i.ReqUpdateUserInfo(app.UserManager().GetUserInfo.token,e,t);
        app.UserManager().RequestUpdateUserInfo(n)
    }
    ,
    t.prototype.isHeadNode = function(e) {
        return !(!this.layerChooseHead.getChildByName(e) && "facebook" != e)
    }
    ,
    __decorate([s(cc.EditBox)], t.prototype, "EDI_Nickname", undefined),
    __decorate([s(cc.Node)], t.prototype, "layerChooseHead", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
