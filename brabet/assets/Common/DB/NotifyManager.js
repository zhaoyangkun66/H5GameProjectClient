let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.NotifyManager = undefined;
var o = require("../Base/Singleton")
  , i = require("../Net/MsgEventDefine")
  , a = require("../Define/GameEventDefine")
  , r = require("../Define/ShareDefine")
  , s = require("../Define/HttpServerDefine")
  , c = require("../Define/TrackEventName")
  , l = require("./Hall/Task/TaskManager")
  , p = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.prototype.Init = function() {
        this.JS_Name = "NotifyManager",
        this.Log("Init"),
        cc.systemEvent.on(i.default.EVENT_NOTIFY, this.OnRespNotify, this),
        app.HttpServerManager().RegNetPack(s.HttpAPI.GET_RECHARGEGOLD, this.OnRechargeGold, this)
    }
    ,
    t.prototype.OnRespNotify = function(e) {
        try {
            var t = undefined;
            switch (e.id) {
            case 79:
                t = e.content;
                var n = e.loop
                  , o = e.interval;
                null != o && 0 != o || (o = 2);
                for (var i = 0; i < n; i++)
                    ;
                break;
            case 88:
                var c = (t = JSON.parse(e.content)).type;
                if ("game_broadcast" == c || "gold_withdrawal" == c)
                    return void cc.systemEvent.emit("game_broadcast", t.text);
                if ("update_gold" == c)
                    return void app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_EXT_GOLD, t.end_gold);
                if ("vip_lv" == c)
                    return app.UserManager().GetUserInfo.vip_id = t.vip_id,
                    app.UserManager().GetUserInfo.is_keep_level = 1,
                    app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_VIP),
                    app.RedDotManager().updateSingleData({
                        type: r.RedDotStr.vip_cash_gift
                    }),
                    void app.Client.OnEvent(a.GameEventDefine.UPGRADE_VIPLV, t);
                if ("unlock_user_level" == c)
                    return app.UserManager().GetUserInfo.is_keep_level = t.data,
                    void app.Client.OnEvent(a.GameEventDefine.UPDATE_USER_VIP);
                if ("desk_notices_activity" == c)
                    return void app.Client.OnEvent(a.GameEventDefine.REFRESH_DESK_NOTICE);
                if ("bg_close" == c || "other_close" == c)
                    cc.systemEvent.emit("e_back_hall");
                else if ("withdraw_message" == c) {
                    var p = t.text;
                    app.GameManager().InHallScene || cc.sys.localStorage.setItem(app.UserManager().GetUserInfo.uid + "withdraw_message", p)
                } else {
                    if ("envelopes" == c)
                        return;
                    if ("finish_task" == c)
                        return void cc.systemEvent.emit("finish_task", t);
                    if ("recharge_reward" == c)
                        return void app.Client.OnEvent(a.GameEventDefine.NOTICE_UPDATELIST);
                    if ("recharge_activity" == c) {
                        var d = app.UserManager().GetUserRechargeActivity;
                        return d.status = t.status,
                        d.end_time = t.end_time,
                        void app.Client.OnEvent(a.GameEventDefine.RECHARGE_ACTIVITY)
                    }
                    if ("recharge_sale" == c)
                        return void app.Client.OnEvent(a.GameEventDefine.NOTICE_UPDATELIST);
                    if ("user_recharge" == c)
                        return void app.Client.OnEvent(a.GameEventDefine.NOTICE_UPDATELIST);
                    if ("game_way_change" == c)
                        return;
                    if ("first_recharge" == c)
                        return;
                    if ("sale_act_del" == c)
                        return;
                    if ("sale_refresh" == c)
                        return;
                    if ("common_check" == c)
                        app.AdjustEventTrackManager().RequestAJNotice();
                    else {
                        if ("game_maintain_notice" == c)
                            return void app.Client.OnEvent(a.GameEventDefine.GAME_MAINTAIN_NOTICE, t.data);
                        if ("red_dot_event_notice" == c)
                            0 == t.show_type ? app.RedDotManager().localStorageRedData({
                                type: t.event,
                                bShow: true
                            }) : app.RedDotManager().updateSingleData({
                                type: t.event,
                                bShow: t.show_type
                            });
                        else if ("withdraw_suc" == c)
                            app.Client.OnEvent(a.GameEventDefine.NOTICE_UPDATELIST),
                            app.AdjustEventTrackManager().RequestAJGetWithdrawgold();
                        else if ("common_suc" == c)
                            try {
                                t.data.forEach(function(e) {
                                    app.NativeMgr().AdjustlogEvent(e.key, e.value),
                                    app.NativeMgr().FacebooklogEvent(e.key, e.value)
                                })
                            } catch (m) {}
                        else {
                            if ("new_task_red_check" == c)
                                return void app.RedDotManager().updateSingleData({
                                    type: r.RedDotStr.task_red,
                                    bShow: true
                                });
                            if ("new_task_recharge_change" == c)
                                return void l.TaskManager.GetInstance().RequstGetUserTaskConfig();
                            if ("game_forbidden" == c)
                                return void (app.GameConfigManager().GetGameConfig().game_status = t.game_status);
                            if ("kf_reply_user_question" == c)
                                app.Client.OnEvent(a.GameEventDefine.KF_REPLY_USER_QUESTION, t);
                            else {
                                var h = t.source
                                  , u = t.gold;
                                if (app.GoldRewardManager().FormGoldReward(t),
                                "online_payment" == h || "back_stage_recharge" == h || "manual_payment" == h || "company_payment" == h || "gold_collection_tips" == c) {
                                    var _ = {
                                        af_param_1: parseInt(u)
                                    };
                                    app.NativeMgr().trackEvent("purchase123", JSON.stringify(_)),
                                    t.amount && (app.HttpServerManager().SendHttpPack(s.HttpAPI.GET_RECHARGEGOLD, {
                                        token: app.UserManager().GetUserInfo.token
                                    }),
                                    app.Client.OnEvent(a.GameEventDefine.COMPANY_PAYMENT, t))
                                }
                            }
                        }
                    }
                }
            }
        } catch (m) {
            cc.error(m)
        }
    }
    ,
    t.prototype.OnRechargeGold = function(e) {
        e.forEach(function(e) {
            var t = e.amount;
            t && (app.NativeMgr().AdjustlogEvent(c.default.RECHARGE, t),
            app.NativeMgr().FacebooklogEvent(c.default.RECHARGE, t),
            app.EventTrackManager().LogEvent(c.default.RECHARGE, {
                currency: "PHP",
                value: t
            }))
        })
    }
    ,
    t
}(o.Singleton);
n.NotifyManager = p,
module.exports = n
