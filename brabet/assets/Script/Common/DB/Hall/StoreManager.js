let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.StoreManager = n.StorePayType = undefined;
var o, i = require("../../Base/Singleton"), a = require("../../Define/GameEventDefine"), r = require("../../Define/HttpServerDefine"), s = require("../../Define/ShareDefine"), c = require("../../Define/UINameDefine");
(function(e) {
    e[e.GooglePay = 7] = "GooglePay"
}
)(o = n.StorePayType || (n.StorePayType = {}));
var l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.GoodsList = null,
        t.PayType = {},
        t.PayGoodResult = null,
        t.DiffTime = 0,
        t
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "StoreManager",
        this.Log("Init"),
        app.HttpServerManager().RegNetPack(r.HttpAPI.GOODS_LIST, this.onGoodsList, this),
        app.HttpServerManager().RegNetPack(r.HttpAPI.GOODS_PAY, this.onGoodsPay, this),
        app.HttpServerManager().RegNetPack(r.HttpAPI.GET_PAY_NOTIFYURL, this.AddMonitor, this)
    }
    ,
    t.prototype.RequstGoodsList = function() {
        var e = {
            token: app.UserManager().GetUserInfo.token,
            uid: app.UserManager().GetUserInfo.uid,
            mainVer: app.ClientConfigManager().GetGlobalConfig.mainVer,
            subVer: app.ClientConfigManager().GetGlobalConfig.subVer,
            pkgName: app.ComTool().getPackageName(),
            platform: cc.sys.os,
            Type: cc.sys.platform
        };
        app.HttpServerManager().SendHttpPack(r.HttpAPI.GOODS_LIST, e)
    }
    ,
    t.prototype.onGoodsList = function(e) {
        var t = this;
        this.GoodsList = e,
        this.GoodsList.forEach(function(e) {
            t.PayType[e.id] = e.return_type
        }),
        app.Client.OnEvent(a.GameEventDefine.GET_GOODS_LIST)
    }
    ,
    Object.defineProperty(t.prototype, "GetGoodsList", {
        get: function() {
            return this.GoodsList
        },
        set: function(e) {
            this.onGoodsList(e)
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetChannel = function(e) {
        var t = app.GameConfigManager().GetGameConfig().pay_channel_version;
        if (t == r.PayUIType.Pay_UI_Type_Vietnam_Channel)
            return app.Store2Manager().GetChannel(e);
        if (t == r.PayUIType.Pay_UI_Type_Vietnam_Type)
            return app.Store3Manager().GetChoseChannelItem();
        if (!this.GoodsList)
            return null;
        for (var n = 0; n < this.GoodsList.length; n++) {
            var o = this.GoodsList[n];
            if (o.id == e)
                return o
        }
        return null
    }
    ,
    t.prototype.GetDefaultChannel = function() {
        return this.GoodsList ? this.GoodsList[0] : null
    }
    ,
    t.prototype.GetDefaultSubChannel = function() {
        var e = this.GetDefaultChannel();
        return e ? e.channel_list[0] : null
    }
    ,
    t.prototype.GetSubChannel = function(e, t) {
        t || (t = 0);
        var n = this.GetChannel(e);
        return n ? n.channel_list[t] : null
    }
    ,
    Object.defineProperty(t.prototype, "GetPayType", {
        get: function() {
            return this.PayType
        },
        enumerable: false,
        configurable: true
    }),
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
    t.prototype.RequstPayGood = function(e) {
        app.HttpServerManager().SendHttpPack(r.HttpAPI.GOODS_PAY, e)
    }
    ,
    t.prototype.onGoodsPay = function(e, t) {
        this.PayGoodResult = e,
        t.type != o.GooglePay ? app.Client.OnEvent(a.GameEventDefine.GOODS_PAY, t) : app.NativeMgr().OpenGooglePay(app.UserManager().GetUserInfo.uid, e.orderid, t.amount)
    }
    ,
    t.prototype.AddMonitor = function(e, t) {
        app.HttpServerManager().UnRegNetPack(e.notify_url, this.OnPayGoogleNotify, this),
        app.HttpServerManager().RegNetPack(e.notify_url, this.OnPayGoogleNotify, this),
        app.HttpServerManager().SendHttpPack(e.notify_url, t)
    }
    ,
    t.prototype.GetPayGoodResult = function() {
        return this.PayGoodResult
    }
    ,
    t.prototype.InActivity = function(e) {
        var t = e.act_status
          , n = e.act_start
          , o = e.act_end
          , i = e.act_send
          , a = Math.round(Date.now() / 1e3) + this.DiffTime;
        return !!(t && n >= a && a <= o && i.length > 0) || (e.act_send,
        true)
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
    t.prototype.ShowStoreUI = function(e) {
        if (undefined === e && (e = null),
        this.IsOpenStoreUI) {
            var t = this.GetStoreName();
            app.FormManager().ShowForm(t, e)
        }
    }
    ,
    Object.defineProperty(t.prototype, "IsOpenStoreUI", {
        get: function() {
            var e = app.UserManager().GetUserInfoConfig.show_arr;
            return 1 == e[s.VisibleBtnTag.Withdrawal] || 1 == e[s.VisibleBtnTag.Btn_Pay]
        },
        enumerable: false,
        configurable: true
    }),
    t.prototype.GetStoreName = function() {
        var e = app.GameConfigManager().GetGameConfig().pay_channel_version;
        return e == r.PayUIType.Pay_UI_Type_Vietnam_Channel ? c.UINameDefine.UIStoreAndCashVi : e == r.PayUIType.Pay_UI_Type_Vietnam_Type ? c.UINameDefine.UIStoreAndCashVi_2 : c.UINameDefine.UIStoreAndCash
    }
    ,
    t.prototype.OnPayGoogleNotify = function(e) {
        var t = JSON.parse(e);
        app.NativeMgr().GoogleConsumeProduct(t.purchaseToken)
    }
    ,
    t.prototype.IsJoinAtWillActivity = function(e) {
        var t = app.StoreManager().GetSubChannel(e)
          , n = (t.sale.cur_time,
        Math.round(Date.now() / 1e3),
        t.act_send);
        if (n)
            for (var o = 0; o < n.length; o++) {
                var i = n[o].activity_info;
                if (i && 0 === i.end_time_stamp && 0 === i.start_time_stamp)
                    return true
            }
        return false
    }
    ,
    t.prototype.IsJoinActivity = function(e) {
        var t = app.StoreManager().GetSubChannel(e).sale.cur_time - Math.round(Date.now() / 1e3);
        return t && t,
        Math.round(Date.now() / 1e3),
        !!this.IsJoinAtWillActivity(e) || !!this.IsJoinTimerActivity(e)
    }
    ,
    t.prototype.IsShowActivityInfoTime = function(e) {
        var t = e.activity_info;
        return !(!t || !t.tip_time_switch)
    }
    ,
    t.prototype.IsShowActivityInfoCount = function(e) {
        var t = e.activity_info;
        return !(!t || !t.tip_count_switch)
    }
    ,
    t.prototype.IsJoinTimerActivity = function(e) {
        var t = app.StoreManager().GetSubChannel(e)
          , n = 0
          , o = t.sale.cur_time - Math.round(Date.now() / 1e3);
        o && (n = o);
        var i = Math.round(Date.now() / 1e3) + n;
        if (t.act_send.length <= 0)
            return false;
        for (var a = 0; a < t.act_send.length; a++) {
            var r = t.act_send[a]
              , s = r.activity_info;
            if (s && s.start_time_stamp && s.end_time_stamp && i >= s.start_time_stamp && i <= s.end_time_stamp)
                return true;
            var c = r.channel_recharge_activity_info;
            if (c)
                for (var l = 0; l < c.length; l++) {
                    var p = c[l];
                    if (p.start_time_stamp && p.end_time_stamp && i >= p.start_time_stamp && i <= p.end_time_stamp)
                        return true
                }
        }
        return false
    }
    ,
    t.prototype.GetIsPop = function() {
        var e = app.GameConfigManager().GetGameConfig().pay_channel_version;
        return e == r.PayUIType.Pay_UI_Type_Brazil ? this.GetSubChannel(this.ChosePayChennelId).is_pop : e == r.PayUIType.Pay_UI_Type_Vietnam_Channel ? app.Store2Manager().GetChoseTypeItem().is_pop : e == r.PayUIType.Pay_UI_Type_Vietnam_Type ? app.Store3Manager().GetChoseType().is_pop : 1
    }
    ,
    t
}(i.Singleton);
n.StoreManager = l,
module.exports = n
