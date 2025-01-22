let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.SupportManager = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/HttpServerDefine")
  , r = require("../../Define/ShareDefine")
  , s = require("../../Define/UINameDefine")
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.officeList = null,
        t.PoRotQuestionsList = null,
        t.PoRotQuestionsAllType = null,
        t.WebviewSubIframeName = "Supportwebview",
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "SupportManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_KEFU_LIST, this.onSupportList, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_OUT_LINKS, this.onGetOutLinks, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_KEFU_LISTBYTEXT, this.onSupportByText, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_ROBOTQUESTIONS, this.onRobotQuestions, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_ROBOTQUESTIONSAL_LTYPE, this.onRobotQuestionsAllType, this),
        app.Client.RegEvent(i.GameEventDefine.KF_REPLY_USER_QUESTION, this.onKfReplayQuestion.bind(this), this)
    }
    ,
    t.prototype.onKfReplayQuestion = function(e) {
        var t = document.getElementById(app.SupportManager().WebviewSubIframeName);
        if (e.question_id) {
            var n = {
                iframeType: "chat_notice_renew",
                iframeData: {
                    id: e.question_id
                }
            };
            t.contentWindow.postMessage(n, "*")
        }
    }
    ,
    t.prototype.RequestSupportListByText = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_KEFU_LISTBYTEXT, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onSupportByText = function(e) {
        this.SupportList = e,
        app.Client.OnEvent(i.GameEventDefine.SUPPORT_LIST_BYTEXT)
    }
    ,
    Object.defineProperty(t.prototype, "GetSupportList", {
        get: function() {
            return this.SupportList
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "GetTGUrl", {
        get: function() {
            if (this.SupportList)
                for (var e = 0; e < this.SupportList.length; e++) {
                    var t = this.SupportList[e];
                    if (t.lang_name == r.SupportListByText.group_chat_tel)
                        return t.value
                }
            return ""
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.RequestSupportList = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_KEFU_LIST, {
            //token: app.UserManager().GetUserInfo.token,
            type: 3
        })
    }
    ,
    t.prototype.onSupportList = function(e) {
        if (!isgoServer) {
            e.sort(function(e, t) {
                return t.vip_level - e.vip_level
            })
        }
        app.Client.OnEvent(i.GameEventDefine.GET_KEFU_LIST, e)
    }
    ,
    t.prototype.RequestOutLink = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_OUT_LINKS, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.onGetOutLinks = function(e) {
        this.officeList = e.sort(function(e, t) {
            return t.sort - e.sort
        }),
        app.Client.OnEvent(i.GameEventDefine.GET_OUT_LINKS)
    }
    ,
    Object.defineProperty(t.prototype, "GetOfficeList", {
        get: function() {
            return this.officeList
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.OnReload = function() {
        this.officeList = null
    }
    ,
    t.prototype.RequestRobotQuestionsAllType = function(e) {
        var t = {
            token: app.UserManager().GetUserInfo.token,
            page: e,
            limit: 30
        };
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_ROBOTQUESTIONSAL_LTYPE, t)
    }
    ,
    t.prototype.onRobotQuestionsAllType = function(e) {
        this.PoRotQuestionsAllType = e,
        app.Client.OnEvent(i.GameEventDefine.GET_ROBOTQUESTIONSAL_LTYPE, e)
    }
    ,
    t.prototype.RequestRobotQuestions = function(e) {
        var t = {
            token: app.UserManager().GetUserInfo.token,
            search: e.search,
            page: e.page,
            limit: 20,
            type: e.type,
            ver: 2
        };
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_ROBOTQUESTIONS, t)
    }
    ,
    t.prototype.SelToServiceTypeName = function() {
        return 0 === app.GameConfigManager().GetGameConfig().ai_chat_robot_switch ? s.UINameDefine.UISupport : s.UINameDefine.UIAiSupport
    }
    ,
    t.prototype.onRobotQuestions = function(e, t) {
        app.Client.OnEvent(i.GameEventDefine.GET_ROBOTQUESTIONS, {
            data: e,
            senddata: t
        })
    }
    ,
    t
}(o.Singleton);
n.SupportManager = c,
module.exports = n
