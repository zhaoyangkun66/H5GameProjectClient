let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
}),
n.ConfirmManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Define/UINameDefine")
  , a = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.cacheConfirmInfoList = [],
        t.cacheMsgIDDict = {},
        t._ConfirmTarget = null,
        t._ConfirmFunc = null,
        t._CancelFunc = null,
        t._ConfirmMsgID = "",
        t._ConfirmBackArgList = [],
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "ConfirmManager",
        this.Log("create ConfirmManager"),
        this.OnReload()
    }
    ,
    t.prototype.OnReload = function() {
        this.cacheConfirmInfoList = []
    }
    ,
    t.prototype.OnSwitchSceneEnd = function() {
        this.NextConfirmMessage()
    }
    ,
    t.prototype.NextConfirmMessage = function() {
        if (this.cacheConfirmInfoList.length > 0) {
            var e = this.cacheConfirmInfoList.shift();
            delete this.cacheMsgIDDict[e.msgID],
            this.ShowConfirm(e.confirmType, e.msgID, e.argList, e.confirm, e.cancel, e.target)
        }
    }
    ,
    t.prototype.ShowConfirm = function(e, t, n, o, a, r) {
        var s = i.UINameDefine.UIMessage;
        if (app.FormManager().IsFormShow(s)) {
            if (this._ConfirmMsgID == t) {
                for (var c = true, l = 0; l < this._ConfirmBackArgList.length; l++)
                    if (this._ConfirmBackArgList[l] != n[l]) {
                        c = false;
                        break
                    }
                if (c)
                    return
            } else if (this.cacheMsgIDDict.hasOwnProperty(t))
                return;
            return this.WarnLog("ShowSysMsgEx(%s) Scene doing Load", t),
            this.cacheMsgIDDict[t] = 1,
            void this.cacheConfirmInfoList.push({
                target: this,
                confirm: o,
                cancel: a,
                confirmType: e,
                msgID: t,
                argList: n
            })
        }
        this._ConfirmTarget = r,
        this._ConfirmFunc = o,
        this._CancelFunc = a,
        this._ConfirmMsgID = t,
        this._ConfirmBackArgList = n || [];
        var p = app.SysNotifyManager().GetSysMsgContentByMsgID(t, n);
        app.FormManager().ShowForm(s, e, t, n, p)
    }
    ,
    t.prototype.CloseAllBox = function() {}
    ,
    t.prototype.OnConFirmResult = function(e, t) {
        undefined === t && (t = true);
        var n = this._ConfirmTarget
          , o = this._ConfirmMsgID
          , i = this._ConfirmFunc
          , a = this._CancelFunc
          , r = this._ConfirmBackArgList;
        t && (this._ConfirmTarget = null,
        this._ConfirmMsgID = "",
        this._ConfirmFunc = null,
        this._CancelFunc = null,
        this._ConfirmBackArgList = []),
        "Sure" == e ? i && i.call(n, o, r) : a && a.call(n, o, r),
        this.NextConfirmMessage()
    }
    ,
    t
}(o.Singleton);
n.ConfirmManager = a

module.exports = n
