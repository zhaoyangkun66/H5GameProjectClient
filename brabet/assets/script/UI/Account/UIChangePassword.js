let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.property
  , s = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.oldPass = null,
        t.newPass = null,
        t.newPass1 = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnEnable = function() {
        this.oldPass.string = "",
        this.newPass.string = "",
        this.newPass1.string = "",
        this.hideEye()
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_PasEye1" != e ? "btn_PasEye1_close" != e ? "btn_PasEye2" != e ? "btn_PasEye2_close" != e ? "btn_PasEye3" != e ? "btn_PasEye3_close" != e || this.OnPasEye3Disable() : this.OnPasEye3Disable(false) : this.OnPasEye2Disable() : this.OnPasEye2Disable(false) : this.OnPasEye1Disable() : this.OnPasEye1Disable(false)
    }
    ,
    t.prototype.hideEye = function() {
        this.OnPasEye1Disable(),
        this.OnPasEye2Disable(),
        this.OnPasEye3Disable()
    }
    ,
    t.prototype.setShow1 = function(e) {
        this.oldPass.inputFlag = e ? cc.EditBox.InputFlag.PASSWORD : cc.EditBox.InputFlag.DEFAULT
    }
    ,
    t.prototype.OnPasEye1Disable = function(e) {
        undefined === e && (e = true),
        this.GetWndNode("text_currentpassword/btn_PasEye1").active = e,
        this.GetWndNode("text_currentpassword/btn_PasEye1_close").active = !e,
        this.setShow1(e)
    }
    ,
    t.prototype.setShow2 = function(e) {
        this.newPass.inputFlag = e ? cc.EditBox.InputFlag.PASSWORD : cc.EditBox.InputFlag.DEFAULT
    }
    ,
    t.prototype.OnPasEye2Disable = function(e) {
        undefined === e && (e = true),
        this.GetWndNode("text_newpassword/btn_PasEye2").active = e,
        this.GetWndNode("text_newpassword/btn_PasEye2_close").active = !e,
        this.setShow2(e)
    }
    ,
    t.prototype.setShow3 = function(e) {
        this.newPass1.inputFlag = e ? cc.EditBox.InputFlag.PASSWORD : cc.EditBox.InputFlag.DEFAULT
    }
    ,
    t.prototype.OnPasEye3Disable = function(e) {
        undefined === e && (e = true),
        this.GetWndNode("text_newpassword1/btn_PasEye3").active = e,
        this.GetWndNode("text_newpassword1/btn_PasEye3_close").active = !e,
        this.setShow3(e)
    }
    ,
    t.prototype.onResetPassword = function() {
        if ("" != this.oldPass.string && "" != this.newPass.string && "" != this.newPass1.string)
            if (this.oldPass.string != this.newPass.string && this.oldPass.string != this.newPass1.string)
                if (this.newPass.string == this.newPass1.string) {
                    var e = {
                        token: app.UserManager().UserInfo.token,
                        old_pwd: this.oldPass.string,
                        new_pwd: this.newPass.string
                    };
                    app.UserManager().RequestChangePwd(e)
                } else
                    app.SysNotifyManager().ShowToast("UI_ChangePassword3");
            else
                app.SysNotifyManager().ShowToast("UI_ChangePassword2");
        else
            app.SysNotifyManager().ShowToast("UI_ChangePassword1")
    }
    ,
    __decorate([r(cc.EditBox)], t.prototype, "oldPass", undefined),
    __decorate([r(cc.EditBox)], t.prototype, "newPass", undefined),
    __decorate([r(cc.EditBox)], t.prototype, "newPass1", undefined),
    __decorate([a], t)
}(o.default);
n.default = s,
module.exports = n
