let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.Store2Manager = n.StorePayType = undefined;
var o = require("../../Base/Singleton")
  , i = require("../../Define/GameEventDefine")
  , a = require("../../Define/HttpServerDefine");
(function(e) {
    e[e.GooglePay = 7] = "GooglePay"
}
)(n.StorePayType || (n.StorePayType = {}));
var r = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.PayChannelList = null,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "Store2Manager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(a.HttpAPI.PAY_CHANNEL_TYPE_LIST, this.OnPayChannelTypes, this)
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
        app.HttpServerManager().SendHttpPack(a.HttpAPI.PAY_CHANNEL_TYPE_LIST, e)
    }
    ,
    t.prototype.OnPayChannelTypes = function(e) {
        this.PayChannelList = e,
        app.Client.OnEvent(i.GameEventDefine.PAY_CHANNEL_TYPES)
    }
    ,
    t.prototype.GetChannel = function(e) {
        if (this.PayChannelList)
            for (var t = 0; t < this.PayChannelList.length; t++) {
                var n = this.PayChannelList[t];
                if (n.id == e)
                    return n
            }
        return null
    }
    ,
    t.prototype.GetChoseChannel = function() {
        return this.GetChannel(this.ChosePayChennelId)
    }
    ,
    t.prototype.GetSubChannel = function(e, t) {
        t || (t = 0);
        var n = this.GetChannel(e);
        return n ? n.channel_list[t] : null
    }
    ,
    t.prototype.GetChoseSubChannel = function(e) {
        e || (e = 0);
        var t = this.GetChoseChannel();
        return t ? t.channel_list[e] : null
    }
    ,
    t.prototype.GetChoseTypeItem = function() {
        var e = this.GetChoseChannel();
        if (e)
            for (var t = 0; t < e.type_lists.length; t++) {
                var n = e.type_lists[t];
                if (n.type_id == this.ChosePayTypeId)
                    return n
            }
        return null
    }
    ,
    t.prototype.GetActSendInfo = function(e, t, n) {
        var o = this.GetSubChannel(e, t);
        if (o)
            for (var i = 0; i < o.act_send.length; i++) {
                var a = o.act_send[i];
                if (a.amount == n)
                    return a
            }
        return null
    }
    ,
    t.prototype.GetChoseNewChannelList = function() {
        var e = this.GetChoseTypeItem();
        return e && e.new_channel_list ? e.new_channel_list : null
    }
    ,
    t.prototype.GetActSendPercent = function(e, t) {
        for (var n = e.act_send, o = 0; o < n.length; o++) {
            var i = n[o]
              , a = n[o + 1] || {
                amount: 1 / 0
            };
            if (Number(t) >= Number(i.amount) && Number(t) < Number(a.amount))
                return n[o];
            if (Number(t) == Number(i.amount))
                return n[o]
        }
        return null
    }
    ,
    t.prototype.GetPercentNum = function(e) {
        var t = 0
          , n = this.GetChoseNewChannelList()
          , o = this.GetActSendPercent(n, e);
        if (o) {
            if (o.activity_info) {
                var i = o.activity_info;
                t += Number(i.send_percent)
            }
            var a = o.channel_recharge_activity_info;
            if (a)
                for (var r = 0; r < a.length; r++)
                    i = a[r],
                    t += Number(i.send_percent)
        }
        return t
    }
    ,
    t.prototype.GetPercentGold = function(e) {
        var t = 0
          , n = this.GetPercentNum(e);
        return n > 0 && (t = Number(e) * n / 100),
        t
    }
    ,
    t
}(o.Singleton);
n.Store2Manager = r,
module.exports = n
