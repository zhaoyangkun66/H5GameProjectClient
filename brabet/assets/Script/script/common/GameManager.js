let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.GameManager = undefined;
var o = require("../../Common/Define/GameEventDefine")
  , i = require("../../script/common/room_mode_tool")
  , a = require("../../script/common/Global")
  , r = require("../../Common/Base/Singleton")
  , s = require("../../Common/Define/FormDefine")
  , c = require("../../Common/Define/UINameDefine")
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.sceneInfo = app.SysDataManager().GetTableDict(s.FormDefine.SceneInfo),
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "GameManager",
        this.initCommon()
    }
    ,
    t.prototype.initCommon = function() {
        cc.mg = {},
        this.curr_scene_name = i.GameScene.LAUNCH,
        this.last_scene_name = "",
        this.loading = false,
        cc.mg.global = new a.default,
        app.ClientConfigManager().GetGlobalConfig.debug ? app.Client.InitDebug(true) : cc.sys.isBrowser && app.Client.EnableLog(app.ClientConfigManager().GetGlobalConfig.EnableLog),
        cc.mg.native_class = app.NativeMgr()
    }
    ,
    t.prototype.enterScene = function(e, t) {
        var n = this;
        this.Log("enterScene call scene_name = " + e);
        var i = this.GetSceneInfo(e)
          , a = e.indexOf("game") > -1;
        if (i) {
            var r = i.DefaultForm.slice();
            a && r.push(e),
            e != this.curr_scene_name ? this.loading ? this.ErrLog("call error: someone scene is loading") : (this.loading = true,
            this.curr_scene_name && (this.last_scene_name = this.curr_scene_name),
            app.SoundManager().StopAll(),
            app.EffectMgr().ClearAnimation(),
            app.Client.OnEvent(o.GameEventDefine.SHOW_BG),
            app.FormManager().ChangeToFormList(r).then(function() {
                n.curr_scene_name = e,
                n.loading = false,
                t && t()
            }).catch(function(e) {
                n.ErrLog(e)
            })) : app.FormManager().ChangeToFormList(r).then(function() {
                t && t()
            })
        } else
            this.ErrLog("enterScene error: scene_name: " + e)
    }
    ,
    t.prototype.enterSceneByRoomMode = function(e, t) {
        var n = this
          , o = app.RoomManager().GetRoomModeInfoByRoomMode(e);
        if (o) {
            var a = function() {
                n.enterScene(o.SceneName, t)
            };
            if (this.curr_scene_name == o.SceneName)
                return void this.enterScene(i.GameScene.HALL, function() {
                    app.HallManager().ImmediateEnterGame(e, a)
                });
            app.HallManager().ImmediateEnterGame(e, a)
        } else
            0 == e ? app.GameConfigManager().IsExperienceServer && app.UserManager().GetUserInfo.roomMode ? this.enterScene(i.GameScene.HALL, function() {
                t && t(),
                app.HallManager().GetFreeOutGameWindow()
            }) : this.enterScene(i.GameScene.HALL, t) : this.ErrLog("roomMode: " + e + " not exist!")
    }
    ,
    Object.defineProperty(t.prototype, "InHallScene", {
        get: function() {
            return this.curr_scene_name == i.GameScene.HALL
        },
        enumerable: false,
        configurable: true
    }),
    Object.defineProperty(t.prototype, "InGameScene", {
        get: function() {
            return this.curr_scene_name == app.RoomManager().GetGameScene()
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.InCurScene = function(e) {
        return this.curr_scene_name == e
    }
    ,
    t.prototype.BackHallScene = function(e) {
        this.enterSceneByRoomMode(i.RoomMode.HALL, e)
    }
    ,
    t.prototype.BackLoginScene = function(e) {
        this.enterScene(i.GameScene.LOGIN, e)
    }
    ,
    t.prototype.GetSceneInfo = function(e) {
        var t = e.indexOf("game") > -1 ? "Fight" : e;
        return this.sceneInfo[t] ? this.sceneInfo[t] : (this.ErrLog("GetSceneInfo: scene_name: " + e),
        null)
    }
    ,
    t.prototype.PushFightDefaultForm = function() {
        var e = this.sceneInfo.Fight;
        e && -1 == e.DefaultForm.indexOf(c.UINameDefine.UIGameLoading) && e.DefaultForm.push(c.UINameDefine.UIGameLoading)
    }
    ,
    t.prototype.SpliceFightDefaultForm = function() {
        var e = this.sceneInfo.Fight;
        e && e.DefaultForm.splice(e.DefaultForm.indexOf(c.UINameDefine.UIGameLoading), 1)
    }
    ,
    Object.defineProperty(t.prototype, "GetCurSceneInfo", {
        get: function() {
            var e = this.GetSceneInfo(this.curr_scene_name);
            return e ? e.DefaultForm : []
        },
        enumerable: false,
        configurable: true
    }),
    t
}(r.Singleton);
n.GameManager = l,
module.exports = n
