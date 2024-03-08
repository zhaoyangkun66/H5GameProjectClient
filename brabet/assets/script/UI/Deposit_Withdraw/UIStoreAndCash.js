let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/UINameDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("../CashOut/UICashOut")
  , s = require("../../../Common/Define/GameEventDefine")
  , c = require("../../../Common/DB/PageTrackManager")
  , l = require("../../../Common/Define/TrackEventName")
  , p = cc._decorator
  , d = p.ccclass
  , h = p.property
  , u = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.layerWin = [],
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        var e = this;
        this.JS_Name = "UIStoreAndCash",
        this.node_Nodate = this.GetWndNode("layer/bg/node_Nodate") || this.GetWndNode("bg/node_Nodate"),
        this.buybtn = cc.find("bg/layer_deposit/scrollview_content/view/content/btn_buy", this.node) || cc.find("layer/bg/btn_buy", this.node),
        this.Withdrawbtn = cc.find("/bg/btn_Withdraw", this.node) || cc.find("layer/bg/btn_Withdraw", this.node),
        this.RegEvent(s.GameEventDefine.GET_GOODS_LIST, this.onGetGoodsList),
        this.RegEvent(s.GameEventDefine.COMPANY_PAYMENT, function() {
            e.CloseForm()
        })
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        this.VisibleAllListNode();
        var n = this.data && this.data.ShowType ? this.data.ShowType : a.WIN_TYPE.STORE;
        this.showWin(n),
        this.setAgentTxSwitch(this.data && this.data.AgentTx)
    }
    ,
    t.prototype.VisibleAllListNode = function() {
        for (var e = 0; e < this.layerWin.length; e++)
            this.layerWin[e].active = false
    }
    ,
    t.prototype.OnClose = function() {
        this.VisibleAllListNode(),
        app.FormManager().ShowNextQueueForm("hall"),
        this.data && this.data.in_type && (1 == c.PageTrackpageType[this.data.in_type] ? app.EventTrackManager().LogEvent(this.data.in_type, {
            out_type: 1
        }) : 3 == c.PageTrackpageType[this.data.in_type] && app.EventTrackManager().LogEvent(this.data.in_type, {
            out_type: 1
        }))
    }
    ,
    t.prototype.onSelect = function() {
        app.ComUtil().playBtnClick()
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btnLogin" != e)
            if ("btnSignUp" != e)
                if ("toggle1" != e && "Deposit" != e)
                    if ("toggle2" != e && "Withdraw" != e)
                        if ("btn_service" != e)
                            "btn_record" != e || app.FormManager().ShowForm(i.UINameDefine.UIWithdrawRecord);
                        else {
                            var t = app.SupportManager().SelToServiceTypeName();
                            app.FormManager().ShowForm(t)
                        }
                    else
                        this.showWin(a.WIN_TYPE.CASHOUT);
                else
                    this.showWin(a.WIN_TYPE.STORE);
            else
                app.FormManager().ShowForm(i.UINameDefine.UILoginSign, 2);
        else
            app.FormManager().ShowForm(i.UINameDefine.UILoginSign, 1)
    }
    ,
    t.prototype.showWin = function(e) {
        this.node_Nodate.active = false,
        this.buybtn.active = 0 == e,
        this.Withdrawbtn.active = !(0 == e),
        (cc.find("layer/bg/scrollview_withdraw", this.node) || cc.find("bg/scrollview_withdraw", this.node)).getComponent(r.default).isAgentTx = !(!this.data || !this.data.AgentTx);
        for (var t = 0; t < this.layerWin.length; t++)
            this.layerWin[t].active = t == e;
        var n = app.UserManager().GetUserInfoConfig.show_arr
          , o = cc.find("layer/left/toggleContainer/Deposit", this.node) || cc.find("bg/top/toggleContainer/toggle1", this.node)
          , i = cc.find("layer/left/toggleContainer/Withdraw", this.node) || cc.find("bg/top/toggleContainer/toggle2", this.node);
        i.active = 1 == n[a.VisibleBtnTag.Withdrawal],
        e != a.WIN_TYPE.STORE && i.active ? i.getComponent(cc.Toggle).check() : o.getComponent(cc.Toggle).check(),
        1 == e && this.data.in_type == l.default.PAGETRACK_EVENT_RECHARGE_ENTER && (this.data.in_type = l.default.PAGETRACK_EVENT_WITHDRAW_SWITCHTAB)
    }
    ,
    t.prototype.setAgentTxSwitch = function(e) {
        var t = cc.find("layer/bg/scrollview_withdraw", this.node) || cc.find("bg/scrollview_withdraw", this.node);
        t.getComponent(r.default).isAgentTx = e,
        t.getComponent(r.default).CallInitIsAngentTx()
    }
    ,
    t.prototype.onGetGoodsList = function() {
        this.node_Nodate.active = 0 == app.StoreManager().GoodsList.length,
        this.buybtn.active = !this.node_Nodate.active
    }
    ,
    t.prototype.showReceive = function() {}
    ,
    t.prototype.onShowReceive = function() {}
    ,
    t.prototype.onShowDetail = function() {}
    ,
    t.prototype.onShowRecord = function() {}
    ,
    __decorate([h(cc.Node)], t.prototype, "layerWin", undefined),
    __decorate([d], t)
}(o.default);
n.default = u,
module.exports = n
