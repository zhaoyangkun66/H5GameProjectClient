let i ={} 
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/UIBaseComponent")
  , o = require("../../../Game1051Define")
  , a = cc._decorator
  , r = a.ccclass
  , s = (a.property,
function(t) {
    function e() {
        var e = null !== t && t.apply(this, arguments) || this;
        return e.MusicMark = null,
        e.SoundMark = null,
        e
    }
    return __extends(e, t),
    e.prototype.OnLoadInit = function() {
        this.JS_Name = "Game_1051_Setting",
        this.MusicMark = this.GetWndNode("btn_music/icon_muiscoff"),
        this.SoundMark = this.GetWndNode("btn_sound/icon_soundoff")
    }
    ,
    e.prototype.OnEnable = function() {
        this.setMusic(!app.SoundManager().GetBackMusicSetting),
        this.setSounds(!app.SoundManager().GetSoundSetting)
    }
    ,
    e.prototype.setMusic = function(t) {
        this.MusicMark.active = t
    }
    ,
    e.prototype.setSounds = function(t) {
        this.SoundMark.active = t
    }
    ,
    e.prototype.OnClick = function(t) {
        return "btn_music" == t ? (this.setMusic(!this.MusicMark.active),
        void app.SoundManager().SetBackMusic(!this.MusicMark.active)) : "btn_sound" == t ? (this.setSounds(!this.SoundMark.active),
        void app.SoundManager().SetSounds(!this.SoundMark.active)) : void ("btn_help" != t || this.OpenGameHelp())
    }
    ,
    e.prototype.OpenGameHelp = function() {
        app.FormManager().ShowForm(o.Game1051UIName.Game_1051Help)
    }
    ,
    __decorate([r], e)
}(n.default));
i.default = s,
module.exports = i
