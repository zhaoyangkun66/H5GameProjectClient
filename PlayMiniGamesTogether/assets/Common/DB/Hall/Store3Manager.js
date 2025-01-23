let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.Store3Manager = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/HttpServerDefine")
  , r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.PayChannelList = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "Store3Manager",
        app.HttpServerManager().RegNetPack(a.HttpAPI.PAY_CHANNEL_LISTS, this.OnPayChannelTypes, this)
    }
    ,
    t.prototype.SendPayChannelTypes = function() {
        var e = {
            token: app.UserManager().GetUserInfo.token,
            uid: app.UserManager().GetUserInfo.uid,
            mainVer: app.ClientConfigManager().GetGlobalConfig.mainVer,
            subVer: app.ClientConfigManager().GetGlobalConfig.subVer,
            pkgName: app.ComTool().getPackageName(),
            platform: cc.sys.os,
            Type: cc.sys.platform
        };
        app.HttpServerManager().SendHttpPack(a.HttpAPI.PAY_CHANNEL_LISTS, e)
    }
    ,
    t.prototype.OnPayChannelTypes = function(e) {
        this.PayChannelList = e,
        app.Client.OnEvent(i.GameEventDefine.PAY_CHANNEL_TYPES)
    }
    ,
    t.prototype.GetTypeItem = function(e) {
        if (this.PayChannelList)
            for (var t = 0; t < this.PayChannelList.length; t++) {
                var n = this.PayChannelList[t];
                if (n.id == e)
                    return n
            }
        return null
    }
    ,
    t.prototype.GetChoseType = function() {
        return this.GetTypeItem(this.ChosePayTypeId)
    }
    ,
    t.prototype.GetChoseChannelItem = function() {
        var e = this.GetChoseType();
        if (e)
            for (var t = 0; t < e.channel_lists.length; t++) {
                var n = e.channel_lists[t];
                if (n.id == this.ChosePayChannelId)
                    return n
            }
        return null
    }
    ,
    t.prototype.GetChoseSubChannel = function(e) {
        e || (e = 0);
        var t = this.GetChoseChannelItem();
        return t ? t.channel_list[e] : null
    }
    ,
    t.prototype.GetChoseNewChannelList = function() {
        var e = this.GetChoseChannelItem();
        return e && e.new_channel_list ? e.new_channel_list : null
    }
    ,
    t.prototype.GetActSendPercent = function(e, t) {
        for (var n = e.act_send, o = 0; o < n.length; o++) {
            var i = n[o]
              , a = n[o + 1] || {
                amount: 1 / 0,
                send_percent: 0
            };
            if (Number(t) >= Number(i.amount) && Number(t) < Number(a.amount) && i.activity_info)
                return n[o];
            if (Number(t) == Number(i.amount) && !i.activity_info)
                return n[o]
        }
        return null
    }
    ,
    t.prototype.GetPercentGold = function(e) {
        var t = 0
          , n = this.GetChoseNewChannelList()
          , o = this.GetActSendPercent(n, e);
        if (o && o.activity_info) {
            var i = Number(o.send_percent);
            i > 0 && (t = Number(o.amount) * i / 100)
        }
        return t
    }
    ,
    t
}(o.Singleton);
n.Store3Manager = r,
module.exports = n
