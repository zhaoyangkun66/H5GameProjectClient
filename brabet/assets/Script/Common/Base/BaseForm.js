let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i, a, r = cc._decorator, s = r.ccclass, c = r.property, l = require("./BaseComponent"), p = require("../Define/ColorDefine"), d = require("../Define/EffectPosTypeDefine"), h = require("../Define/ShareDefine"), u = require("./EventFunAdapter"), _ = require("../Define/GameEventDefine"), m = require("../../script/common/room_mode_tool");
(function(e) {
    e[e.ZorderLv0 = 0] = "ZorderLv0",
    e[e.ZorderLv1 = 1] = "ZorderLv1",
    e[e.ZorderLv2 = 2] = "ZorderLv2",
    e[e.ZorderLv3 = 3] = "ZorderLv3",
    e[e.ZorderLv4 = 4] = "ZorderLv4",
    e[e.ZorderLv5 = 5] = "ZorderLv5",
    e[e.ZorderLv6 = 6] = "ZorderLv6",
    e[e.ZorderLv7 = 7] = "ZorderLv7",
    e[e.ZorderLv8 = 8] = "ZorderLv8",
    e[e.ZorderLv9 = 9] = "ZorderLv9"
}
)(o || (o = {})),
function(e) {
    e[e.None = 0] = "None",
    e[e.FromTop = 1] = "FromTop",
    e[e.FromBottom = 2] = "FromBottom",
    e[e.FromLeft = 3] = "FromLeft",
    e[e.FromRight = 4] = "FromRight",
    e[e.FromCenter = 5] = "FromCenter",
    e[e.FadeIn = 6] = "FadeIn"
}(i || (i = {})),
function(e) {
    e[e.None = 0] = "None",
    e[e.ToTop = 1] = "ToTop",
    e[e.ToBottom = 2] = "ToBottom",
    e[e.ToLeft = 3] = "ToLeft",
    e[e.ToRight = 4] = "ToRight",
    e[e.ToCenter = 5] = "ToCenter",
    e[e.FadeOut = 6] = "FadeOut"
}(a || (a = {}));
var f = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ShowEffectType = i.None,
        t.CloseEffectType = a.None,
        t.ZorderLv = o.ZorderLv6,
        t.background = null,
        t.closeForm = false,
        t.buttonClose = false,
        t.router = false,
        t.phoneKey = false,
        t.ShowFormActionSec = .2,
        t.CloseFormActionSec = .2,
        t.OpenClip = null,
        t.CloseClip = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreate = function(e) {
        if (this.JS_Name = e.FormName,
        this.ActionTag = 1e3,
        this._closeAction = null,
        this._showAction = null,
        this._closeAnimationState = null,
        this._showAnimationState = null,
        this.OpenClip && (this.node.getComponent(cc.Animation) || this.node.addComponent(cc.Animation)).addClip(this.OpenClip),
        this.CloseClip && (this.node.getComponent(cc.Animation) || this.node.addComponent(cc.Animation)).addClip(this.CloseClip),
        this._dataInfo = {
            InitScale: this.node.scale,
            InitWidth: this.node.width,
            InitHeight: this.node.height,
            InitAnchorX: this.node.anchorX,
            InitAnchorY: this.node.anchorY,
            InitOpacity: this.node.opacity,
            InitWidget: 0,
            InitPosition: cc.v2(0, 0)
        },
        this._formInfo = e,
        this.EventFunAdapter || (this.EventFunAdapter = new u.EventFunAdapter(this)),
        this.InitBaseData(),
        this.OnCreateInit(),
        this.background) {
            this._background = cc.instantiate(this.background);
            var t = this._background.addComponent(cc.Button);
            this.closeForm ? this.BindButtonEvent(t, "OnClick_Close") : this.BindButtonEvent(t, "OnClickForm")
        } else
            this._background = new cc.Node("background");
        this.phoneKey && this.RegEvent(_.GameEventDefine.KEYBOARD_EVENTE, this.OnKeyBoardEvent)
    }
    ,
    t.prototype.InitBaseData = function() {
        this.ComTool = app.ComTool(),
        this.FormManager = app.FormManager(),
        this.ControlManager = app.ControlManager(),
        this.ButtonRepeatDict = {},
        this.buttonClose && this.RegBackEvent(this.OnClick_Return),
        this.router && this.RegRouterEvent()
    }
    ,
    t.prototype.OnLoad = function() {}
    ,
    t.prototype.onDestroy = function() {}
    ,
    t.prototype.update = function(e) {
        try {
            this.OnUpdate(e)
        } catch (t) {
            this.FormManager.DingDingMessage("update error:" + this.JS_Name, t.stack)
        }
    }
    ,
    t.prototype.ShowForm = function(e) {
        var t = this;
        e || (e = []);
        var n = this._formInfo.Independent == h.FormType.Independent ? app.Client.GetIndependentLayer() : this._formInfo.Independent == h.FormType.Crossing ? app.Client.GetHomeLayer() : app.Client.GetContentLayer();
        if (n)
            if (this._showAction || this._showAnimationState)
                this.Log("\u754c\u9762\u6b63\u5728\u6253\u5f00\u4e2d...");
            else {
                this.node.parent == n ? this._closeAction ? (this.node.stopActionByTag(this.ActionTag),
                this._background.stopAllActions(),
                this._closeAction = null,
                this.ResetNodeInfo(),
                this.ShowFormAction()) : this._closeAnimationState ? (this._closeAnimationState.stop(),
                this._closeAnimationState = null,
                this.ResetNodeInfo(),
                this.ShowFormAction()) : this.Log("\u754c\u9762\u5df2\u7ecf\u6253\u5f00,\u65e0\u9700\u91cd\u590d\u6253\u5f00") : (n.addChild(this._background, this.ZorderLv),
                n.addChild(this.node, this.ZorderLv),
                this.node.active = true,
                this.ControlManager.UpdateAlignmentEx(this._background),
                this.ShowFormAction()),
                this.EventFunAdapter.RegisterEvent(e),
                this.Log("\u6210\u529f\u6253\u5f00\u754c\u9762");
                var o = function() {
                    t.scheduleOnce(function() {
                        app.Client.OnEvent(_.GameEventDefine.SET_VISIBLE_BOTTOM, true)
                    }, .5)
                };
                this._formInfo.Independent == h.FormType.Hall ? (app.UserManager().GetUserInfo.roomMode = 0,
                app.GameManager().curr_scene_name = m.GameScene.HALL,
                o()) : this._formInfo.Independent == h.FormType.HallGame && o(),
                this.FormManager.AddShowingForm(this._formInfo.FormName);
                try {
                    this.OnShow.apply(this, e)
                } catch (i) {
                    this.ErrLog("error", i),
                    this.FormManager.DingDingMessage("ShowForm error:" + this.JS_Name, i.stack)
                }
            }
        else
            this.ErrLog("ShowForm not find uiLayer")
    }
    ,
    t.prototype.CloseForm = function(e) {
        var t = app.Client.GetIndependentLayer()
          , n = app.Client.GetContentLayer()
          , o = app.Client.GetHomeLayer();
        if (this.node.parent == t || this.node.parent == n || this.node.parent == o) {
            if (this._showAction && (this.node.stopActionByTag(this.ActionTag),
            this._showAction = null),
            this._showAnimationState && (this._showAnimationState.stop(),
            this._showAnimationState = null),
            this.Log("\u6210\u529f\u5173\u95ed\u754c\u9762"),
            this.node.parent === n && app.Client.OnEvent(_.GameEventDefine.SET_VISIBLE_BOTTOM, false),
            this.EventFunAdapter.UnRegisterEvent(),
            "ExitScene" == e)
                this.node.stopActionByTag(this.ActionTag),
                this._closeAction = null,
                this._closeAnimationState = null;
            else {
                if (this._closeAction || this._closeAnimationState)
                    return void this.Log("\u6b63\u5728\u5173\u95ed\u754c\u9762,\u65e0\u9700\u91cd\u590d\u5173\u95ed");
                this.CreateFormAction()
            }
            if (this.FormManager.RemoveShowingForm(this._formInfo.FormName),
            app.Client.OnEvent("CloseForm", this._formInfo.FormName),
            this._closeAction) {
                var i = cc.sequence(this._closeAction, cc.callFunc(this.onCloseFormEnd, this));
                this._background.stopAllActions(),
                this._background.runAction(cc.fadeOut(this.CloseFormActionSec)),
                i.setTag(this.ActionTag),
                this.node.runAction(i)
            } else {
                if (this.CloseClip && "ExitScene" != e) {
                    var a = this.node.getComponent(cc.Animation);
                    return this._closeAnimationState = a.play(this.CloseClip.name),
                    void a.once("finished", this.onCloseFormEnd, this)
                }
                this.onCloseFormEnd()
            }
        } else
            this.Log("\u754c\u9762\u5df2\u7ecf\u5173\u95ed")
    }
    ,
    t.prototype.onOpenFormEnd = function() {
        this._showAction = null,
        this._showAnimationState = null
    }
    ,
    t.prototype.onCloseFormEnd = function() {
        this.OnClose(),
        this._closeAction = null,
        this._closeAnimationState = null,
        this.FormManager.IsFormShow(this._formInfo.FormName) ? this.Log("\u5173\u95ed\u754c\u9762\u7684\u65f6\u5019\u53c8\u6253\u5f00\u4e86\u754c\u9762") : (this.ResetNodeInfo(),
        this.node.active = false,
        this._background.removeFromParent(false),
        this.node.removeFromParent(false),
        this._formInfo.FormRelease && (this._background.destroy(),
        this.FormManager.DestroyForm(this._formInfo.FormName),
        this.ControlManager.ReleaseCache(this._formInfo.FormPath),
        this.node.destroy()))
    }
    ,
    t.prototype.ShowFormName = function() {
        if (!this.node.getChildByName("LabelFormName")) {
            var e = new cc.Node("LabelFormName");
            e.parent = this.node,
            e.setPosition(10, -10);
            var t = e.addComponent(cc.Label);
            t.string = this._formInfo.FormName,
            t.fontSize = 25,
            e.color = p.default.Color_Orange
        }
    }
    ,
    t.prototype.IsFormShow = function() {
        var e = cc.find("Canvas/uiLayer");
        return this.node.parent == e
    }
    ,
    t.prototype.GetComponentsInAllChildren = function(e, t, n) {
        undefined === n && (n = []);
        var o = e.getComponent(t);
        o && n.push(o);
        for (var i = e.children, a = e.childrenCount, r = 0; r < a; r++) {
            var s = i[r];
            this.GetComponentsInAllChildren(s, t, n)
        }
        return n
    }
    ,
    t.prototype.ShowFormAction = function() {
        if (!this.GetFormProperty("InitWidget")) {
            this.ControlManager.UpdateAlignmentEx(this.node);
            var e = this.node.getPosition();
            this.SetFormProperty("InitPosition", e),
            this.SetFormProperty("InitWidget", 1)
        }
        if (this.OpenClip) {
            var t = this.node.getComponent(cc.Animation);
            return this._showAnimationState = t.play(this.OpenClip.name),
            void t.once("finished", this.onOpenFormEnd, this)
        }
        if (this.ShowEffectType != i.None) {
            this._background.opacity = 128,
            this.node.opacity = 0,
            this.node.setPosition(0, 0),
            this.ControlManager.UpdateAlignmentEx(this.node),
            this.node.stopActionByTag(this.ActionTag),
            this._showAction = null,
            this._showAnimationState = null;
            var n = this.GetFormProperty("InitPosition")
              , o = this.GetFormProperty("InitScale")
              , a = this.GetFormProperty("InitWidth")
              , r = this.GetFormProperty("InitHeight")
              , s = null
              , c = null;
            if (this.ShowEffectType) {
                switch (this.ShowEffectType) {
                case i.FromTop:
                    var l = cc.v2(n.x, n.y + r);
                    s = cc.spawn(cc.fadeIn(0), cc.moveTo(0, l)),
                    c = cc.moveTo(this.ShowFormActionSec, n);
                    break;
                case i.FromBottom:
                    var p = cc.v2(n.x, n.y - r);
                    s = cc.spawn(cc.fadeIn(0), cc.moveTo(0, p)),
                    c = cc.moveTo(this.ShowFormActionSec, n);
                    break;
                case i.FromLeft:
                    var d = cc.v2(n.x - a, n.y);
                    s = cc.spawn(cc.fadeIn(0), cc.moveTo(0, d)),
                    c = cc.moveTo(this.ShowFormActionSec, n);
                    break;
                case i.FromRight:
                    var h = cc.v2(n.x + a, n.y);
                    s = cc.spawn(cc.fadeIn(0), cc.moveTo(0, h)),
                    c = cc.moveTo(this.ShowFormActionSec, n);
                    break;
                case i.FromCenter:
                    s = cc.scaleTo(0, .3 * o),
                    c = cc.spawn(cc.fadeIn(this.ShowFormActionSec), cc.scaleTo(this.ShowFormActionSec, o).easing(cc.easeBackOut()));
                    break;
                case i.FadeIn:
                    s = cc.fadeIn(this.ShowFormActionSec)
                }
                s && c ? this._showAction = cc.sequence(s, c, cc.callFunc(this.onOpenFormEnd, this)) : s && (this._showAction = cc.sequence(s, cc.callFunc(this.onOpenFormEnd, this))),
                this._showAction && (this._background.stopAllActions(),
                this._background.runAction(cc.fadeIn(this.ShowFormActionSec)),
                this._showAction.setTag(this.ActionTag),
                this.node.runAction(this._showAction))
            }
        }
    }
    ,
    t.prototype.CreateFormAction = function() {
        if (this.CloseEffectType != a.None) {
            this.node.stopActionByTag(this.ActionTag),
            this._closeAction = null;
            var e = this.GetFormProperty("InitPosition")
              , t = this.GetFormProperty("InitHeight")
              , n = this.GetFormProperty("InitScale");
            if (!this._closeAction && this.CloseEffectType)
                switch (this.CloseEffectType) {
                case a.ToTop:
                    var o = cc.v2(e.x, e.y + t);
                    this._closeAction = cc.moveTo(this.CloseFormActionSec, o);
                    break;
                case a.ToBottom:
                    var i = cc.v2(e.x, e.y - t);
                    this._closeAction = cc.moveTo(this.CloseFormActionSec, i);
                    break;
                case a.ToLeft:
                    var r = cc.v2(e.x - t, e.y);
                    this._closeAction = cc.moveTo(this.CloseFormActionSec, r);
                    break;
                case a.ToRight:
                    var s = cc.v2(e.x + t, e.y);
                    this._closeAction = cc.moveTo(this.CloseFormActionSec, s);
                    break;
                case a.ToCenter:
                    this._closeAction = cc.spawn(cc.fadeOut(this.CloseFormActionSec), cc.scaleTo(this.CloseFormActionSec, .3 * n).easing(cc.easeBackIn()));
                    break;
                case a.FadeOut:
                    this._closeAction = cc.fadeOut(this.CloseFormActionSec)
                }
        } else
            this.ResetNodeInfo()
    }
    ,
    t.prototype.ResetNodeInfo = function() {
        var e = this.GetFormProperty("InitPosition")
          , t = this.GetFormProperty("InitScale")
          , n = this.GetFormProperty("InitWidth")
          , o = this.GetFormProperty("InitHeight");
        switch (this.ShowEffectType) {
        case i.None:
            this.node.setScale(t),
            this.node.setPosition(e),
            this._background.opacity = 255;
            break;
        case i.FromTop:
            var a = cc.v2(e.x, e.y + o);
            this.node.setScale(t),
            this.node.setPosition(a),
            this.node.opacity = 255;
            break;
        case i.FromBottom:
            var r = cc.v2(e.x, e.y - o);
            this.node.setScale(t),
            this.node.setPosition(r),
            this.node.opacity = 255;
            break;
        case i.FromLeft:
            var s = cc.v2(e.x - n, e.y);
            this.node.setScale(t),
            this.node.setPosition(s),
            this.node.opacity = 255;
            break;
        case i.FromRight:
            var c = cc.v2(e.x + n, e.y);
            this.node.setScale(t),
            this.node.setPosition(c),
            this.node.opacity = 255;
            break;
        case i.FromCenter:
            this.node.setScale(t),
            this.node.setPosition(e),
            this.node.opacity = 128;
            break;
        case i.FadeIn:
            this.node.setScale(t),
            this.node.setPosition(e),
            this._background.opacity = 128;
            break;
        default:
            this.ErrLog("ShowEffectType:%s error", this.ShowEffectType)
        }
    }
    ,
    t.prototype.GetFormContentSize = function() {
        return this.node.getContentSize()
    }
    ,
    t.prototype.GetFormProperty = function(e) {
        if (this._dataInfo.hasOwnProperty(e))
            return this._dataInfo[e];
        this.ErrLog("GetFormProperty not find:%s", e)
    }
    ,
    t.prototype.SetFormPosition = function(e) {
        this.node.setPosition(e)
    }
    ,
    t.prototype.SetFormProperty = function(e, t) {
        this._dataInfo.hasOwnProperty(e) ? this._dataInfo[e] = t : this.ErrLog("\u8bbe\u7f6e\u754c\u9762\u5c5e\u6027\u627e\u4e0d\u5230key not find:%s", e)
    }
    ,
    t.prototype.SetWndFlyTo = function(e, t, n, o, i) {
        undefined === i && (i = 0);
        var a = {
            StartPos: t,
            EndPos: n,
            Time: o
        };
        this.WndRunAction(e, "MoveAction", a, i)
    }
    ,
    t.prototype.SetWndOpacity = function(e, t, n, o) {
        undefined === o && (o = 0);
        var i = {
            EndFade: t,
            Time: n
        };
        this.WndRunAction(e, "OpacityAction", i, o)
    }
    ,
    t.prototype.SetWndDelay = function(e, t, n) {
        undefined === n && (n = 0);
        var o = {
            DelayTime: t
        };
        this.WndRunAction(e, "DelayAction", o, n)
    }
    ,
    t.prototype.SetWndRotateTo = function(e, t, n, o) {
        undefined === o && (o = 0);
        var i = {
            Rotation: t,
            Time: n
        };
        this.WndRunAction(e, "RotateAction", i, o)
    }
    ,
    t.prototype.StopWndFly = function(e) {
        var t = cc.find(e, this.node);
        t ? t.stopActionByTag(11111) : this.ErrLog("StopWndFly(%s) wndPath not find", e)
    }
    ,
    t.prototype.StopWndOpacity = function(e) {
        var t = cc.find(e, this.node);
        t ? t.stopActionByTag(22222) : this.ErrLog("StopWndFly(%s) wndPath not find", e)
    }
    ,
    t.prototype.StopWndDelay = function(e) {
        var t = cc.find(e, this.node);
        t ? t.stopActionByTag(33333) : this.ErrLog("StopWndDelay(%s) wndPath not find", e)
    }
    ,
    t.prototype.WndRunAction = function(e, t, n) {
        var o = cc.find(e, this.node);
        if (o)
            if (o.stopActionByTag(11111),
            "MoveAction" == t) {
                var i = n.StartPos
                  , a = n.EndPos
                  , r = n.Time;
                o.setPosition(i),
                (l = cc.sequence(cc.moveTo(r, a), cc.callFunc(this.OnRunActionEnd, this, "FlyWndEnd"))).setTag(11111),
                o.runAction(l)
            } else if ("OpacityAction" == t) {
                var s = n.EndFade;
                r = n.Time,
                (l = cc.sequence(cc.fadeTo(r, s), cc.callFunc(this.OnRunActionEnd, this, "OpacityWndEnd"))).setTag(11111),
                o.runAction(l)
            } else if ("DelayAction" == t) {
                var c = n.DelayTime;
                (l = cc.sequence(cc.delayTime(c), cc.callFunc(this.OnRunActionEnd, this, "DelayEnd"))).setTag(11111),
                o.runAction(l)
            } else {
                if ("RotateAction" != t)
                    return void this.ErrLog("WndRunAction(%s) error", t);
                var l, p = n.Rotation;
                r = n.Time,
                (l = cc.sequence(cc.rotateBy(r, p), cc.callFunc(this.OnRunActionEnd, this, "RotateWndEnd"))).setTag(11111),
                o.runAction(l)
            }
        else
            this.ErrLog("WndRunAction(%s,%s) wndPath not find", e, t)
    }
    ,
    t.prototype.OnRunActionEnd = function(e, t) {
        "FlyWndEnd" == t ? this.FlyWnd_FlyEnd(e.name, e) : "OpacityWndEnd" == t ? this.OpacityWnd_End(e.name, e) : "DelayEnd" == t ? this.FlyWnd_DelayEnd(e.name, e) : "RotateWndEnd" == t ? this.RotateWnd_End(e.name, e) : this.ErrLog("OnRunActionEnd useData:%s error", t)
    }
    ,
    t.prototype.FlyWnd_FlyEnd = function() {}
    ,
    t.prototype.OpacityWnd_End = function() {}
    ,
    t.prototype.FlyWnd_DelayEnd = function() {}
    ,
    t.prototype.RotateWnd_End = function() {}
    ,
    t.prototype.GetWndEffectPos = function(e, t, n) {
        t || (t = d.default.EffectPosType_5);
        var o = e.getContentSize()
          , i = 0
          , a = 0;
        switch (t) {
        case d.default.EffectPosType_1:
            i = -o.width / 2,
            a = -o.height / 2;
            break;
        case d.default.EffectPosType_2:
            i = 0,
            a = -o.height / 2;
            break;
        case d.default.EffectPosType_3:
            i = o.width / 2,
            a = -o.height / 2;
            break;
        case d.default.EffectPosType_4:
            i = -o.width / 2,
            a = 0;
            break;
        case d.default.EffectPosType_5:
            i = 0,
            a = 0;
            break;
        case d.default.EffectPosType_6:
            i = o.width / 2,
            a = 0;
            break;
        case d.default.EffectPosType_7:
            i = -o.width / 2,
            a = o.height / 2;
            break;
        case d.default.EffectPosType_8:
            i = 0,
            a = o.height / 2;
            break;
        case d.default.EffectPosType_9:
            i = o.width / 2,
            a = o.height / 2;
            break;
        case d.default.EffectPosType_10:
            var r = o.width / 2
              , s = o.height / 2;
            i = this.ComTool.RandInt(-r, r),
            a = this.ComTool.RandInt(-s, s)
        }
        return 2 == n.length && (i += n[0],
        a += n[1]),
        cc.v2(i, a)
    }
    ,
    t.prototype.RegEvent = function(e, t) {
        this.EventFunAdapter.RegEvent(e, t)
    }
    ,
    t.prototype.RegSystemEvent = function(e, t) {
        this.EventFunAdapter.RegSystemEvent(e, t)
    }
    ,
    t.prototype.RegBackEvent = function(e) {
        this.EventFunAdapter.RegBackEvent(e)
    }
    ,
    t.prototype.RegRouterEvent = function() {
        this.EventFunAdapter.RegRouterEvent()
    }
    ,
    t.prototype.RegHttpEvent = function(e, t) {
        this.EventFunAdapter.RegHttpEvent(e, t)
    }
    ,
    t.prototype.RegRoomEvent = function(e, t) {
        this.EventFunAdapter.RegRoomEvent(e, t)
    }
    ,
    t.prototype.SimulateOnClick = function(e) {
        var t = cc.find(e, this.node);
        if (t)
            if (t.getComponent(cc.Button)) {
                var n = t.name;
                this.OnClick(n, t, "")
            } else
                this.ErrLog("SimulateOnClick(%s) not find cc.Button", e);
        else
            this.ErrLog("SimulateOnClick not find (%s)", e)
    }
    ,
    t.prototype.OnClick_Close = function(e) {
        try {
            if (this._closeAction || this._closeAnimationState)
                return void this.WarnLog("OnClick_Close doing closeAction");
            e.currentTarget.getComponent("ButtonSound") || app.ComUtil().playBtnClick(),
            this.OnClick_Return()
        } catch (t) {
            this.ErrLog("OnClick_Close:%s", t.stack)
        }
    }
    ,
    t.prototype.OnClick_BtnWnd = function(e, t) {
        try {
            if (this._closeAction || this._closeAnimationState)
                return void this.ErrLog("OnClick_BtnWnd doing closeAction");
            var n = e.currentTarget
              , o = n.name;
            n.getComponent("ButtonSound") || app.ComUtil().playBtnClick();
            var i = n.getComponent("DependentClickEvent");
            if (i && i.IsOutGamePop())
                return;
            if (this.ButtonRepeatDict.hasOwnProperty(o)) {
                var a = Date.now();
                a - this.ButtonRepeatDict[o].LastTime > this.ButtonRepeatDict[o].RepeatTime ? (this.OnClick(o, n, t),
                this.ButtonRepeatDict[o].LastTime = a) : this.Log("nextTime is not to")
            } else
                this.OnClick(o, n, t)
        } catch (r) {
            this.ErrLog("OnClick_BtnWnd:%s", r.stack),
            this.FormManager.DingDingMessage("OnClick_BtnWnd:" + this.JS_Name + "," + r.message, r.stack)
        }
    }
    ,
    t.prototype.SetButtonRepeat = function(e, t) {
        undefined === t && (t = 1e3);
        var n = this.GetWndNode(e);
        if (n) {
            var o = n.name
              , i = t;
            this.ButtonRepeatDict[o] = {
                LastTime: 0,
                RepeatTime: i
            }
        } else
            this.ErrLog("SetButtonRepeat is not find wndPath", e)
    }
    ,
    t.prototype.OnClick_Toggle = function(e, t) {
        try {
            if (this._closeAction || this._closeAnimationState)
                return void this.ErrLog("OnClick_Toggle doing closeAction");
            var n = e.node
              , o = n.name;
            n.getComponent("ButtonSound") || app.ComUtil().playBtnClick(),
            this.OnClick(o, n, t)
        } catch (i) {
            this.ErrLog("OnClick_Toggle:%s", i.stack)
        }
    }
    ,
    t.prototype.OnClick_Form = function(e) {
        try {
            if (this._closeAction || this._closeAnimationState)
                return void this.WarnLog("OnClick_Form doing closeAction");
            this.OnClickForm(e)
        } catch (t) {
            this.ErrLog("OnClick_Form:%s", t.stack)
        }
    }
    ,
    t.prototype.OnClick_Return = function() {
        this.CloseForm()
    }
    ,
    t.prototype.WaitForConfirm = function(e, t, n, o, i, a) {
        n || (n = h.ConfirmType.Confirm),
        app.ConfirmManager().ShowConfirm(n, e, t, o || this.OnConFirm, i || this.OnCancel, a || this)
    }
    ,
    t.prototype.OnConFirm = function(e, t) {
        this.ErrLog("\u6ca1\u6709\u5b9e\u73b0 OnConFirm(%s,%s,%s)", e, t)
    }
    ,
    t.prototype.OnCancel = function(e, t) {
        this.WarnLog("\u6ca1\u6709\u5b9e\u73b0 OnCancel(%s,%s,%s)", e, t)
    }
    ,
    t.prototype.OnCreateInit = function() {}
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    t.prototype.OnUpdate = function() {}
    ,
    t.prototype.OnReload = function() {}
    ,
    t.prototype.OnClick = function() {}
    ,
    t.prototype.OnClickForm = function() {}
    ,
    t.prototype.OnKeyBoardEvent = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([c({
        tooltip: "\u663e\u793a\u754c\u9762\u52a8\u753b",
        type: cc.Enum(i)
    })], t.prototype, "ShowEffectType", undefined),
    __decorate([c({
        tooltip: "\u5173\u95ed\u754c\u9762\u52a8\u753b",
        type: cc.Enum(a)
    })], t.prototype, "CloseEffectType", undefined),
    __decorate([c({
        tooltip: "\u754c\u9762\u5c42\u7ea7//\u7f6e\u5e95\u754c\u9762\u5c42(UIFightTower)\nZorderLv0 = 0,\n//\u804a\u5929\u5c42(UIChat)\nZorderLv1 = 1,\n//\u73a9\u5bb6\u5934\u50cf\u5c42(UIPlayer)\nZorderLv2 = 2,\n//\u901a\u7528\u80cc\u666f\u5c42(UIResource)\nZorderLv3 = 3,\n//\u5e03\u9635\u5c42\nZorderLv4 = 4,\n//\u4e3b\u573a\u666f\u5de5\u5177\u5c42(UIMenu)\nZorderLv5 = 5,\n//\u6b63\u5e38\u754c\u9762\u5c42(\u591a\u6570\u754c\u9762)\nZorderLv6 = 6,\n//\u7f6e\u9876\u5c42(3\u7ea7\u754c\u9762\u4f7f\u7528\u5230,UICardPackFragSale)\nZorderLv7 = 7,\n//\u6a21\u6001\u5c42,\u6d88\u606f\u63d0\u793a\u5c42(UIMessage)\nZorderLv8 = 8,\n//debugTool\u754c\u9762\nZorderLv9 = 9,",
        type: cc.Enum(o)
    })], t.prototype, "ZorderLv", undefined),
    __decorate([c({
        type: cc.Prefab,
        tooltip: "\u754c\u9762\u80cc\u666f"
    })], t.prototype, "background", undefined),
    __decorate([c({
        tooltip: "\u70b9\u51fb\u80cc\u666f\u5173\u95ed\u754c\u9762",
        visible: function() {
            return null != this.background
        }
    })], t.prototype, "closeForm", undefined),
    __decorate([c({
        tooltip: "\u6a21\u62df\u70b9\u51fb\u6309\u94ae\u5173\u95ed\u754c\u9762(window:esc,android:\u8fd4\u56de\u952e)"
    })], t.prototype, "buttonClose", undefined),
    __decorate([c({
        tooltip: "\u662f\u5426\u652f\u6301\u8def\u7531"
    })], t.prototype, "router", undefined),
    __decorate([c({
        tooltip: "\u624b\u673a\u7aef\u81ea\u5b9a\u4e49\u952e\u76d8\u4e8b\u4ef6\u76d1\u542c"
    })], t.prototype, "phoneKey", undefined),
    __decorate([c({
        tooltip: "\u754c\u9762\u5f00\u542f\u663e\u793a\u52a8\u4f5c\u65f6\u95f4(\u79d2)"
    })], t.prototype, "ShowFormActionSec", undefined),
    __decorate([c({
        tooltip: "\u754c\u9762\u5173\u95ed\u663e\u793a\u52a8\u4f5c\u65f6\u95f4(\u79d2)"
    })], t.prototype, "CloseFormActionSec", undefined),
    __decorate([c({
        tooltip: "\u8bf7\u6dfb\u52a0\u6253\u5f00\u52a8\u753b",
        type: cc.AnimationClip,
        visible: function() {
            return this.ShowEffectType == i.None
        }
    })], t.prototype, "OpenClip", undefined),
    __decorate([c({
        tooltip: "\u8bf7\u6dfb\u52a0\u5173\u95ed\u52a8\u753b",
        type: cc.AnimationClip,
        visible: function() {
            return this.CloseEffectType == a.None
        }
    })], t.prototype, "CloseClip", undefined),
    __decorate([s], t)
}(l.default);
n.default = f,
module.exports = n
