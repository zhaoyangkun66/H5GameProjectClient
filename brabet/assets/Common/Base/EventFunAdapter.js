let n ={} 

Object.defineProperty(n, "__esModule", {
    value: true
}),
n.EventFunAdapter = undefined;
var o = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.isRegistEvent = false,
        t.router = false,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function(e) {
        this.target = e,
        this._eventFuncDict = {},
        this._sysFuncDict = {},
        this._httpFuncDict = {},
        this._roomFuncDict = {},
        this._backFuncDict = []
    }
    ,
    t.prototype.RegisterEvent = function(e) {
        if (!this.isRegistEvent) {
            for (var t in this._eventFuncDict)
                for (var n = this._eventFuncDict[t], o = 0; o < n.length; o++)
                    app.Client.RegEvent(t, n[o], this.target);
            for (o = 0; o < this._backFuncDict.length; o++) {
                var i = this._backFuncDict[o];
                app.KeyManager().RegBackEvent(i, this.target)
            }
            for (var t in this._httpFuncDict)
                for (n = this._httpFuncDict[t],
                o = 0; o < n.length; o++)
                    app.HttpServerManager().RegNetPack(t, n[o], this.target);
            for (var t in this._roomFuncDict)
                for (n = this._roomFuncDict[t],
                o = 0; o < n.length; o++)
                    app.GoServerManager().RegisterMsgHandler(t, n[o], this.target);
            for (var t in this._sysFuncDict)
                for (n = this._sysFuncDict[t],
                o = 0; o < n.length; o++)
                    cc.systemEvent.on(t, n[o], this.target);
            this.router && app.KeyManager().RegRouterEvent(this.target, e),
            this.isRegistEvent = true
        }
    }
    ,
    t.prototype.UnRegisterEvent = function() {
        if (this.isRegistEvent) {
            app.Client.UnRegTargetEvent(this.target);
            for (var e = 0; e < this._backFuncDict.length; e++) {
                var t = this._backFuncDict[e];
                app.KeyManager().UnRegBackEvent(t, this.target)
            }
            for (var n in this._httpFuncDict) {
                var o = this._httpFuncDict[n];
                for (e = 0; e < o.length; e++)
                    app.HttpServerManager().UnRegNetPack(n, o[e], this.target)
            }
            for (var n in this._roomFuncDict)
                for (o = this._roomFuncDict[n],
                e = 0; e < o.length; e++)
                    app.GoServerManager().UnregisterMsgHandler(n, o[e], this.target);
            cc.systemEvent.targetOff(this.target),
            this.isRegistEvent = false
        }
    }
    ,
    t.prototype.RegEvent = function(e, t) {
        this._eventFuncDict.SetDefault(e, []).push(t)
    }
    ,
    t.prototype.RegSystemEvent = function(e, t) {
        this._sysFuncDict.SetDefault(e, []).push(t)
    }
    ,
    t.prototype.RegBackEvent = function(e) {
        this._backFuncDict.push(e)
    }
    ,
    t.prototype.RegRouterEvent = function() {
        this.router = true
    }
    ,
    t.prototype.RegHttpEvent = function(e, t) {
        this._httpFuncDict.SetDefault(e, []).push(t)
    }
    ,
    t.prototype.RegRoomEvent = function(e, t) {
        this._roomFuncDict.SetDefault(e, []).push(t)
    }
    ,
    t
}(require("./BaseClass").BaseClass);
n.EventFunAdapter = o

module.exports = n
