let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.TaskManager = undefined;
var o = require("../../../Base/Singleton")
  , i = require("../../../Define/GameEventDefine")
  , a = require("../../../Define/HttpServerDefine")
  , r = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "TaskManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_TASK_LIST, this.onGetTaskList, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.TASK_RECEIVE, this.onGetTaskRecvie, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.GET_USER_TASK_CONFIG, this.onGetUserTask, this),
        app.HttpServerManager().RegNetPack(a.HttpAPI.TASK_RECEIVE_AWARD, this.onGetTaskRecvieAward, this)
    }
    ,
    t.prototype.onGetTaskList = function(e) {
        app.Client.OnEvent(i.GameEventDefine.GET_TASK_LIST, e)
    }
    ,
    t.prototype.RequstGetTaskList = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_TASK_LIST, {
            token: app.UserManager().GetUserInfo.token,
            type: e
        })
    }
    ,
    t.prototype.onGetTaskRecvie = function(e, t) {
        app.Client.OnEvent(i.GameEventDefine.TASK_RECEIVE, {
            task_id: t.task_id,
            gold: e.gold
        })
    }
    ,
    t.prototype.RequstGetTaskRecvie = function(e) {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.TASK_RECEIVE, {
            token: app.UserManager().GetUserInfo.token,
            task_id: e.id
        })
    }
    ,
    t.prototype.RequstGetUserTaskConfig = function() {
        app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_USER_TASK_CONFIG, {
            token: app.UserManager().GetUserInfo.token
        })
    }
    ,
    t.prototype.RequstGetTaskRecvieAward = function(e, t, n) {
        var o = {
            token: app.UserManager().GetUserInfo.token,
            bonus_id: e,
            task_type: n,
            task_id: t
        };
        app.HttpServerManager().SendHttpPack(a.HttpAPI.TASK_RECEIVE_AWARD, o)
    }
    ,
    t.prototype.onGetUserTask = function(e) {
        app.Client.OnEvent(a.HttpAPI.GET_USER_TASK_CONFIG, e)
    }
    ,
    t.prototype.onGetTaskRecvieAward = function(e, t) {
        app.GoldRewardManager().FormGoldReward({
            gold: e.gold,
            source: app.i18n.t("UI_Reward")
        }),
        app.Client.OnEvent(a.HttpAPI.TASK_RECEIVE_AWARD, t)
    }
    ,
    t
}(o.Singleton);
n.TaskManager = r,
module.exports = n
