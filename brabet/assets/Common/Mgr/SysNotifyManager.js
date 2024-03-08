let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.SysNotifyManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/FormDefine")
  , a = require("../Define/GameEventDefine")
  , r = require("../Define/ShareDefine")
  , s = require("../Define/UINameDefine")
  , c = function(e) {
    function t() {
        var t = e.call(this) || this;
        return t.NewSysMsg = {},
        t.regExpDict = {},
        t.JS_Name = "SysNotifyManager",
        t.NewSysMsg = app.SysDataManager().GetTableDict(i.FormDefine.NewSysMsg),
        t.regExpDict = {},
        t.Log("create SysNotifyManager"),
        t
    }
    return __extends(t, e),
    t.prototype.OnPack_ServerSysMsg = function(e) {
        for (var t = e.key, n = e.p || [], o = n.length, i = [], a = 0; a < o; a++) {
            var r = n[a];
            i.push(r)
        }
        this.ShowSysMsgEx(t, i),
        app.Client.OnEvent("ServerSysMsg", {
            MsgID: t,
            MsgArgList: i
        })
    }
    ,
    t.prototype.GetSysMsgContentByMsgID = function(e, t) {
        t || (t = []);
        var n = app.i18n.t(e);
        return this.TranslateMsgContent(n, t)
    }
    ,
    t.prototype.TranslateMsgContent = function(e, t) {
        for (var n = t.length, o = 0; o < n; o++) {
            var i = t[o]
              , a = null
              , r = "S" + (o + 1);
            -1 != e.indexOf(r) && (this.regExpDict.hasOwnProperty(r) ? a = this.regExpDict[r] : (a = new RegExp("{" + r + "}","g"),
            this.regExpDict[r] = a),
            e = e.replace(a, i))
        }
        return e
    }
    ,
    t.prototype.ShowSysMsg = function(e, t, n, o, i) {
        undefined === t && (t = []),
        this.Log("ShowSysMsg(%s):", e, t),
        this.ShowSysMsgEx(e, t, n, o, i)
    }
    ,
    t.prototype.ShowSysMsgEx = function(e, t, n, o, i) {
        var a = ""
          , c = 0;
        this.NewSysMsg.hasOwnProperty(e) ? (c = this.NewSysMsg[e].Pos,
        a = app.i18n.t(e),
        a = this.TranslateMsgContent(a, t)) : (c = 4,
        a = e),
        1 == c ? this.ErrLog("ShowSysMsgEx(%s) error", e) : 2 == c || (3 == c ? app.FormManager().ShowForm(s.UINameDefine.UIToast, e, t, a) : 4 == c ? app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmOK, e, t, n || this.OnConFirm, o || this.OnCancel, i || this) : 5 == c ? app.ConfirmManager().ShowConfirm(r.ConfirmType.ConfirmYN, e, t, n || this.OnConFirm, o || this.OnCancel, i || this) : this.ErrLog("ShowSysMsgEx(%s) msgPos(%s) error", e, c))
    }
    ,
    t.prototype.ShowToast = function(e, t) {
        e && "number" != typeof e ? app.FormManager().ShowForm(s.UINameDefine.UIToast, e, t) : this.ErrLog("msgID", e)
    }
    ,
    t.prototype.OnConFirm = function(e, t) {
        var n = {
            MsgID: e,
            BackArgList: t
        };
        app.Client.OnEvent(a.GameEventDefine.SYS_CONFIRM_MSG, n)
    }
    ,
    t.prototype.OnCancel = function(e, t) {
        var n = {
            MsgID: e,
            BackArgList: t
        };
        app.Client.OnEvent(a.GameEventDefine.SYS_CANCEL_MSG, n)
    }
    ,
    t
}(o.Singleton);
n.SysNotifyManager = c,
module.exports = n
