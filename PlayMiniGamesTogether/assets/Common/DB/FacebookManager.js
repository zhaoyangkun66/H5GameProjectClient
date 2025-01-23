let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.FacebookManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/GameEventDefine")
  , a = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "FacebookManager",
        this.Log("Init")
    }
    ,
    t.prototype.WebFacebookLogin = function() {
        var e = this;
        this.checkFBObject() && FB.login(function(t) {
            t.authResponse ? (e.Log("Welcome! Fetching your information: ", JSON.stringify(t)),
            FB.api("/me", function(t) {
                var n = t.name;
                app.Client.OnEvent(i.GameEventDefine.FACEBOOK_LOGIN_SUCCESS, {
                    nickname: n,
                    third_token: t.id
                }),
                e.Log("Good to see you, ", JSON.stringify(t))
            })) : e.ErrLog("User cancelled login or did not fully authorize.")
        })
    }
    ,
    t.prototype.WebFacebookLoginout = function() {
        var e = this;
        this.checkFBObject() && FB.logout(function(t) {
            e.Log("LoginoutData", JSON.stringify(t))
        })
    }
    ,
    t.prototype.checkFBObject = function() {
        return "undefined" != typeof FB || (this.WarnLog("FB Object Error"),
        false)
    }
    ,
    t
}(o.Singleton);
n.FacebookManager = a,
module.exports = n
