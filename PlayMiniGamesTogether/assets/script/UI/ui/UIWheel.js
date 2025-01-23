let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"), a = require("../../../Common/DB/Hall/WheelManager"), r = require("../../../Common/Define/GameEventDefine"), s = require("../../../Common/Define/UINameDefine"), c = require("./wheelEffect"), l = require("./WheelHistory"), p = (o = cc.Node,
__extends(function() {
    return null !== o && o.apply(this, arguments) || this
}, o),
cc._decorator), d = p.ccclass, h = (p.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.topNode = null,
        t.lotteryNode = null,
        t.wheelNode = null,
        t.vipContent = null,
        t.vipItemContent = null,
        t.HisLayout = null,
        t.HisItem = null,
        t.icon_zw = null,
        t.drawNum = null,
        t.bg_bottom = null,
        t.Ani = null,
        t.logo = null,
        t.result = null,
        t.bg_bottom1 = null,
        t.bg_huan = null,
        t.isWheel = false,
        t.runTimeStart = null,
        t.RecordNode = null,
        t.Ispaging = false,
        t.IsPush = true,
        t.lbl_vipLevel = null,
        t.node_Timeinterval = null,
        t.oldNodePosData = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        var e = this;
        this.topNode = this.GetWndNode("content/top"),
        this.lotteryNode = this.GetWndNode("content/top/lottery"),
        this.wheelNode = this.GetWndNode("content/top/wheel"),
        this.vipContent = this.GetWndNode("content/scrollview/view/content"),
        this.vipItemContent = this.GetWndNode("content/layer"),
        this.HisLayout = this.GetWndNode("content/list/Recharge/layout"),
        this.HisItem = this.GetWndNode("content/list/Recharge/layout/li"),
        this.icon_zw = this.GetWndNode("content/list/icon_zw"),
        this.drawNum = this.GetWndNode("tipNode/num", this.lotteryNode).getComponent(cc.Label),
        this.bg_bottom = this.GetWndNode("bg_bottom", this.topNode),
        this.Ani = this.GetWndNode("Ani", this.topNode),
        this.logo = this.GetWndNode("logo", this.topNode),
        this.result = this.GetWndNode("result", this.topNode),
        this.bg_bottom1 = this.GetWndNode("huan/bg_bottom1", this.topNode),
        this.bg_huan = this.GetWndNode("huan/bg_huan", this.topNode),
        this.RecordNode = this.GetWndNode("content/list"),
        this.lbl_vipLevel = this.GetWndComponent("content/top/wheel/spin/vip/label_num", cc.Label),
        this.node_Timeinterval = this.GetWndComponent("content/top/time", cc.Label),
        this.oldNodePosData = {
            bg_bottom: {
                x: this.bg_bottom.x,
                y: this.bg_bottom.y
            },
            Ani: {
                x: this.Ani.x,
                y: this.Ani.y
            },
            logo: {
                x: this.logo.x,
                y: this.logo.y
            },
            result: {
                x: this.result.x,
                y: this.result.y
            },
            bg_bottom1: {
                x: this.bg_bottom1.x,
                y: this.bg_bottom1.y
            },
            bg_huan: {
                x: this.bg_huan.x,
                y: this.bg_huan.y
            },
            lotteryNode: {
                x: this.lotteryNode.x,
                y: this.lotteryNode.y
            },
            wheelNode: {
                x: this.wheelNode.x,
                y: this.wheelNode.y
            }
        },
        this.RegEvent(r.GameEventDefine.GET_WheelInfo, this.OnGetWheelInfo),
        this.RegEvent(r.GameEventDefine.GET_WheelRun, this.OnPlayWheel),
        this.RegEvent(r.GameEventDefine.GET_WheelRecord, this.OnWheelRecord),
        this.RegEvent(r.GameEventDefine.COMPANY_PAYMENT, function() {
            e.scheduleOnce(function() {
                app.WheelManager().RequestWheelConf()
            }, 1)
        }),
        app.Client.RegEvent(r.GameEventDefine.UPGRADE_VIPLV, function() {
            app.WheelManager().RequestWheelConf()
        }, this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.onQuestNodeDisable(),
        app.WheelManager().RequestWheelConf(),
        this.Ispaging = false,
        app.WheelManager().RequestWheelRecord(a.WheelRecordType.Allrecord),
        this.SwitchRecordTitle(true),
        this.setBtnRun(false),
        this.IsPush = true,
        this.node_Timeinterval.string = "",
        this.result.active = true,
        this.result.children.forEach(function(e) {
            e.active = false,
            e.opacity = 255
        })
    }
    ,
    t.prototype.OnGetWheelInfo = function() {
        var e = app.WheelManager().GetWheelInfo;
        e && (this.OnWheelView(e.wheel_config),
        this.setDrawNum(e.draw_num),
        this.GetWndComponent("content/explain/richtext", cc.RichText).string = e.wheel_desc,
        this.node_Timeinterval.string = e.start_date + " - " + e.end_date,
        this.lbl_vipLevel.string = "" + (app.UserManager().GetUserInfo.vip_id - 1))
    }
    ,
    t.prototype.setDrawNum = function(e) {
        e = Math.max(e, 0),
        this.drawNum.string = e + "",
        this.setBtnRun(e > 0)
    }
    ,
    t.prototype.setBtnRun = function(e) {
        this.GetWndNode("button", this.lotteryNode).getComponent(cc.Button).interactable = e
    }
    ,
    t.prototype.onQuestNodeDisable = function() {
        this.GetWndNode("guest", this.lotteryNode).active = !app.UserManager().getIsOfficialAccount(),
        this.GetWndNode("button", this.lotteryNode).active = app.UserManager().getIsOfficialAccount(),
        this.GetWndNode("tipNode", this.lotteryNode).active = app.UserManager().getIsOfficialAccount()
    }
    ,
    t.prototype.OnClick = function(e) {
        var t = this;
        if ("button" != e)
            if ("btn_back" != e) {
                if ("help" != e)
                    return "tog_history" == e ? (app.WheelManager().RequestWheelRecord(a.WheelRecordType.Allrecord),
                    void this.SwitchRecordTitle(true)) : "tog_rewards" == e ? (app.WheelManager().RequestWheelRecord(a.WheelRecordType.Myrecord),
                    void this.SwitchRecordTitle(false)) : undefined;
                app.FormManager().ShowForm(s.UINameDefine.UIWheelHelp)
            } else {
                this.isWheel = false,
                this.GetWndComponent("btn_back", cc.Button, this.result).interactable = false,
                this.result;
                var n = this.topNode.getComponent(cc.Animation)
                  , o = app.ComTool().H5Platform() ? "result_quit_V" : "result_quit_H";
                this.onPlayAnimEndFn(n, o, function() {
                    t.OnSetResultLabel();
                    var e = app.ComTool().H5Platform() ? "movie_quit" : "movie_web_quit";
                    n.play(e),
                    t.scheduleOnce(function() {
                        t.GetWndComponent("btn_back", cc.Button, t.result).interactable = true
                    }, 2)
                })
            }
        else
            this.isWheel || (this.isWheel = true,
            app.WheelManager().RequestWheelRun(),
            this.runTimeStart = setTimeout(function() {
                clearTimeout(t.runTimeStart),
                t.isWheel = false,
                t.setBtnRun(true)
            }, 3e3),
            this.setBtnRun(false))
    }
    ,
    t.prototype.OnPlayWheel = function(e) {
        var t = this;
        clearTimeout(this.runTimeStart),
        this.isWheel = true;
        var n = this.topNode.getComponent(cc.Animation)
          , o = app.ComTool().H5Platform() ? "movie" : "movie_web";
        this.onPlayAnimEndFn(n, o, function() {
            var n = t.wheelNode.getComponent(c.default);
            n && n.SetTargetIDAngle(e.stall_id),
            t.OnSetResultLabel("" + e.gold)
        }),
        this.setDrawNum(e.draw_num)
    }
    ,
    t.prototype.SwitchRecordTitle = function(e) {
        this.GetWndNode("content/list/title_rewards").active = !e,
        this.GetWndNode("content/list/title_history").active = e
    }
    ,
    t.prototype.OnWheelRecord = function(e) {
        var t = app.WheelManager().GetWheelRecord;
        if (e == a.WheelRecordType.Allrecord && this.Ispaging)
            return this.HisToryDate = t,
            void (this.Ispaging = false);
        var n = [];
        this.HisToryDate = t;
        var o = this.RecordNode.getComponent(l.default);
        this.unscheduleAllCallbacks(),
        e == a.WheelRecordType.Allrecord ? (n = this.HisToryDate.length > 20 ? this.HisToryDate.splice(20, this.HisToryDate.length - 20) : this.HisToryDate,
        o.historyDate = n,
        this.IsPush = true,
        this.schedule(this.UpdateRecord, 1)) : (n = this.HisToryDate,
        o.historyDate = n),
        o.historytype = e,
        o.parent = this.node,
        o.int()
    }
    ,
    t.prototype.UpdateRecord = function() {
        var e = this;
        this.IsPush && (this.IsPush = false,
        this.scheduleOnce(function() {
            var t = e.RecordNode.getComponent(l.default);
            e.HisToryDate.length > 0 ? t.BackPushData(e.HisToryDate.splice(0, 1)[0]) : (e.Ispaging = true,
            app.WheelManager().RequestWheelRecord(a.WheelRecordType.Allrecord)),
            e.IsPush = true
        }, Math.round(5 * Math.random())))
    }
    ,
    t.prototype.OnSetResultLabel = function(e) {
        undefined === e && (e = ""),
        this.GetWndNode("content/top/result/gold_bg/gold/lbl").getComponent(cc.Label).string = e
    }
    ,
    t.prototype.onPlayAnimEndFn = function(e, t, n) {
        e.play(t),
        e.once("finished", n)
    }
    ,
    t.prototype.OnWheelView = function(e) {
        this.GetWndNode("wheel", this.wheelNode).children.forEach(function(t, n) {
            if (e[n]) {
                var o = e[n].gold.replace(/(\.0+)+$/, "");
                t.getChildByName("lbl").getComponent(cc.Label).string = o
            }
        })
    }
    ,
    t.prototype.OnReductionUI = function() {
        this.topNode.getComponent(cc.Animation).stop(),
        app.ComTool().H5Platform() ? (this.bg_bottom.y = this.oldNodePosData.bg_bottom.y,
        this.Ani.y = this.oldNodePosData.Ani.y,
        this.logo.y = this.oldNodePosData.logo.y,
        this.result.y = this.oldNodePosData.result.y,
        this.bg_huan.y = this.oldNodePosData.bg_huan.y,
        this.bg_bottom1.y = this.oldNodePosData.bg_bottom1.y,
        this.lotteryNode.y = this.oldNodePosData.lotteryNode.y,
        this.wheelNode.y = this.oldNodePosData.wheelNode.y,
        this.wheelNode.scale = 1.3) : (this.bg_bottom.x = this.oldNodePosData.bg_bottom.x,
        this.Ani.x = this.oldNodePosData.Ani.x,
        this.logo.x = this.oldNodePosData.logo.x,
        this.result.x = this.oldNodePosData.result.x,
        this.bg_huan.x = this.oldNodePosData.bg_huan.x,
        this.bg_bottom1.x = this.oldNodePosData.bg_bottom1.x,
        this.lotteryNode.x = this.oldNodePosData.lotteryNode.x,
        this.wheelNode.x = this.oldNodePosData.wheelNode.x,
        this.wheelNode.scale = 1),
        this.logo.opacity = 255,
        this.lotteryNode.opacity = 255
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.OnReductionUI(),
        clearTimeout(this.runTimeStart),
        this.isWheel = false,
        this.unscheduleAllCallbacks(),
        app.RoomManager().SetWheelAnimation(false),
        app.Client.OnEvent(r.GameEventDefine.UPDATE_USER_INFO)
    }
    ,
    __decorate([d], t)
}(i.default));
n.default = h,
module.exports = n
