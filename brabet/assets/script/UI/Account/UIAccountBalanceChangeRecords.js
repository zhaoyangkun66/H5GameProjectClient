let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
    , GameEventDefine = require("../../../Common/Define/GameEventDefine")
    , p = cc._decorator
    , d = p.ccclass
    , h = p.property
    , u = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.Records = null,
                t.icon_zw = null,
                t.CalendarView = null,
                t.moreNode = null,
                t.page = 1,
                t.type = 0,
                t.defaultStartTime = "",
                t.defaultEndTime = "",
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.RegEvent(GameEventDefine.GameEventDefine.GET_USER_BalanceChangeRecords, this.OnInitView)
            }
            ,
            t.prototype.OnShow = function () {
                this.GetWndNode("content/toggleContainer/toggle0").getComponent(cc.Toggle).isChecked = true
                this.type = 0
                this.OnInit()
                var e = this.Records.getChildByName("layout");
                e.removeAllChildren()
                this.OnUpdateLayout(e);
                app.UserManager().RequestUserBalanceChangeRecords(0, 20, this.page)
            },
            t.prototype.OnUpdateUserInfo = function () {
                app.UserManager().RequestUserBalanceChangeRecords(0, 20, 1)
            },
            t.prototype.OnInit = function () {
                this.page = 1,
                    this.defaultStartTime = "",
                    this.defaultEndTime = "",
                    this.CalendarView.active = false;
                var e = this.GetWndNode("content");
                e.getComponent(cc.Layout).enabled = true,
                    this.OnUpdateLayout(e)
            },
            t.prototype.OnInitView = function (data) {
                var t = data
                this.OnDateView(t.start_date, t.end_date),
                    this.OnRecharge(data)
            },
            t.prototype.OnDateView = function (e, t) {
                var n = this.GetWndNode("content/date");
                n.getChildByName("start_date").getComponent(cc.Label).string = e,
                    this.defaultStartTime = e,
                    n.getChildByName("end_date").getComponent(cc.Label).string = t,
                    this.defaultEndTime = t
            },
            t.prototype.OnRecharge = function (data) {
                if (!data.balanceChange_list) {
                    data.balanceChange_list = []
                }
                var e = data.balanceChange_list
                    , t = this.Records.getChildByName("layout");
                1 == this.page && (t.removeAllChildren(),
                    this.OnUpdateLayout(t));
                for (var n = 0; n < e.length; n++) {
                    var o = e[n]
                        , i = cc.instantiate(this.Records.getChildByName("li"));
                    i.getChildByName("time").getComponent(cc.Label).string = o.time
                    if (o.type == 1) {
                        i.getChildByName("type").getComponent(cc.Label).string = "jogo"
                    }
                    else if (o.type == 2) {
                        i.getChildByName("type").getComponent(cc.Label).string = "depósito"
                    }
                    else if (o.type == 3) {
                        i.getChildByName("type").getComponent(cc.Label).string = "retirar"
                    }
                    else if (o.type == 4) {
                        i.getChildByName("type").getComponent(cc.Label).string = "bônus"
                    }
                    i.getChildByName("name").getComponent(cc.Label).string = o.name
                    i.getChildByName("Amount").getComponent(cc.Label).string = o.amount
                    i.getChildByName("Original").getComponent(cc.Label).string = o.original;
                    i.active = true
                    i.parent = t
                }
                this.OnsetPage(e.length)
            },
            t.prototype.OnsetPage = function (e) {
                this.Records.parent.getComponent(cc.Layout).enabled = true,
                    this.OnUpdateLayout(this.Records.parent),
                    this.icon_zw.active = 0 == e && 1 == this.page,
                    this.moreNode.active = 20 == e,
                    this.page > 1 && (this.page = 20 == e ? this.page : this.page--)
            }
            ,
            t.prototype.OnUpdateLayout = function (e) {
                e.getComponent(cc.Layout).updateLayout()
            }
            ,
            t.prototype.OnClick = function (e, t, n) {
                if ("toggle0" == e) {
                    this.OnToggleView(0);
                }
                else if ("toggle1" == e) {
                    this.OnToggleView(1);
                }
                else if ("toggle2" == e) {
                    this.OnToggleView(2);
                }
                else if ("toggle3" == e) {
                    this.OnToggleView(3);
                }
                else if ("toggle4" == e) {
                    this.OnToggleView(4);
                }
                else {
                    if ("start_date" != e && "end_date" != e) {
                        if ("btn_search" == e)
                            return this.page = 1,
                                void this.OnSearch();
                        if ("btn_view" == e)
                            return this.page++,
                                void this.OnSearch();
                    } else
                        this.OnCalendarView(t.getComponent(cc.Label));
                }


            }
            ,
            t.prototype.OnCalendarView = function (e) {
                var t = this.GetWndNode("content");;
                t.getComponent(cc.Layout).enabled = false,
                    t.height = t.height > 1000 ? t.height : 1000,
                    this.CalendarView.active = true,
                    this.CalendarView.getComponent("UICalendarView").setCurrent(e)
            }
            ,
            t.prototype.OnToggleView = function (e) {
                this.page = 1,
                    this.type = e,
                    this.Records.getChildByName("layout").removeAllChildren(),
                    this.defaultEndTime && this.defaultStartTime && (app.UserManager().RequestUserBalanceChangeRecords(this.type, 20, this.page, this.defaultStartTime, this.defaultEndTime),
                        this.OnDateView(this.defaultStartTime, this.defaultEndTime))
            }
            ,
            t.prototype.OnSearch = function () {
                for (var e = this.GetWndNode("content/date/start_date").getComponent(cc.Label), t = e.string.split("-"), n = "", o = 0; o < t.length; o++)
                    n += t[o];
                var i = this.GetWndNode("content/date/end_date").getComponent(cc.Label)
                    , a = i.string.split("-")
                    , r = "";
                for (o = 0; o < a.length; o++)
                    r += a[o];
                Number(n) > Number(r) ? this.Log("\u65f6\u95f4\u4e0d\u5bf9") : app.UserManager().RequestUserBalanceChangeRecords(this.type, 20, this.page, e.string, i.string)
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
            }
            ,
            __decorate([h(cc.Node)], t.prototype, "Records", undefined),
            __decorate([h(cc.Node)], t.prototype, "icon_zw", undefined),
            __decorate([h(cc.Node)], t.prototype, "CalendarView", undefined),
            __decorate([h(cc.Node)], t.prototype, "moreNode", undefined),
            __decorate([d], t)
    }(o.default);
n.default = u,
    module.exports = n
