let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.LoginType = undefined;
var o, i = require("../../../Common/Define/UINameDefine"), a = require("../../../Common/Define/GameEventDefine"), r = require("../../../Common/Base/BaseForm");
(function(e) {
    e.Email = "email",
    e.Mobile = "mobile"
}
)(o = n.LoginType || (n.LoginType = {}));
var s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.infoNode = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(a.GameEventDefine.GET_BIND_EMAIL, this.GetEmail),
        this.RegEvent(a.GameEventDefine.GET_BIND_TEL, this.GetTel),
        this.RegEvent(a.GameEventDefine.CHANGE_BIRTHDAY, this.initBirthday),
        this.InitBindMethod()
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.initInfo()
    }
    ,
    t.prototype.InitBindMethod = function() {
        this.GetWndNode("phone", this.infoNode).active = this.getIsBindMethod(o.Mobile),
        this.GetWndNode("email", this.infoNode).active = this.getIsBindMethod(o.Email)
    }
    ,
    t.prototype.getIsBindMethod = function(e) {
        var t = app.GameConfigManager().GetGameConfig().reg_login_weight_conf;
        if (!t)
            return true;
        for (var n = 0; n < t.length; n++) {
            var o = t[n];
            if (o.key == e && 1 == o.status)
                return true
        }
        return false
    }
    ,
    t.prototype.initInfo = function() {
        this.initPhone(),
        this.initEmail(),
        this.initBirthday()
    }
    ,
    t.prototype.GetTel = function() {
        this.initPhone(),
        app.FormManager().CloseForm(i.UINameDefine.UIAccountPop)
    }
    ,
    t.prototype.initPhone = function() {
        var e = this.GetWndNode("phone", this.infoNode)
          , t = app.UserManager().UserInfo
          , n = t.area ? "+" + t.area + " " + t.tel : t.tel;
        this.GetWndNode("phone/label", e).getComponent(cc.Label).string = n,
        this.GetWndNode("phone/label", e).active = "" != t.tel,
        this.GetWndNode("top/verified", e).active = "" != t.tel,
        this.GetWndNode("top/unbound", e).active = "" == t.tel,
        this.GetWndNode("phone/btn_bindPhone", e).active = "" == t.tel
    }
    ,
    t.prototype.GetEmail = function() {
        this.initEmail(),
        app.FormManager().CloseForm(i.UINameDefine.UIAccountPop)
    }
    ,
    t.prototype.initEmail = function() {
        var e = this.GetWndNode("email", this.infoNode)
          , t = app.UserManager().UserInfo;
        this.GetWndNode("top/verified", e).active = "" != t.account,
        this.GetWndNode("top/unbound", e).active = "" == t.account,
        this.GetWndNode("mail/btn_bindEmail", e).active = "" == t.account,
        this.GetWndNode("mail/label", e).active = "" != t.account,
        this.GetWndComponent("mail/label", cc.Label, e).string = t.account
    }
    ,
    t.prototype.initBirthday = function() {
        var e = this.GetWndNode("birthday", this.infoNode)
          , t = app.UserManager().GetUserInfo
          , n = !!t.birthday;
        if (this.GetWndNode("top/verified", e).active = n,
        this.GetWndNode("top/unbound", e).active = !n,
        this.GetWndNode("lay/btn_setBirthday", e).active = !n,
        this.GetWndNode("lay/birthday", e).active = n,
        n) {
            var o = new Date(1e3 * t.birthday);
            this.GetWndComponent("lay/birthday/yy/label", cc.Label, e).string = "" + o.getFullYear(),
            this.GetWndComponent("lay/birthday/mm/label", cc.Label, e).string = "" + (o.getMonth() + 1),
            this.GetWndComponent("lay/birthday/dd/label", cc.Label, e).string = "" + o.getDate()
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_bindEmail" != e ? "btn_bindPhone" != e ? "btn_pas" != e ? "btn_back" != e ? "btn_setBirthday" != e || app.FormManager().ShowForm(i.UINameDefine.UIAccountBirthday, {
            isNone: true
        }) : app.FormManager().ShowForm(i.UINameDefine.UIAccount, {
            isNone: true
        }) : app.FormManager().ShowForm(i.UINameDefine.UIAccountPop, 2) : app.FormManager().ShowForm(i.UINameDefine.UIAccountPop, 0) : app.FormManager().ShowForm(i.UINameDefine.UIAccountPop, 1)
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([l(cc.Node)], t.prototype, "infoNode", undefined),
    __decorate([c], t)
}(r.default);
n.default = p,
module.exports = n
