let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
    , i = require("../../../Common/Define/GameEventDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = (a.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.last_page = 9999,
                    t.isAddPage = false,
                    t.CoolingTime = true,
                    t
            }
            return __extends(t, e),
                t.prototype.OnLoadInit = function () {
                    this.JS_Name = "UIBonusRecords",
                        this.types = 0,
                        this.page = 1,
                        this.RegEvent(i.GameEventDefine.GET_AGENTBONUSRECORDS, this.onAgentBonusRecordData.bind(this)),
                        this.selectNameNode = cc.find("/btn_select/lbl", this.node).getComponent(cc.Label),
                        this.selectNameNode.string = app.i18n.t("UI.MakeMoney_4_Promotion_19")
                }
                ,
                t.prototype.OnEnable = function () {
                    this.page = 1,
                        this.types = 0;
                    var e = cc.find("btn_select/node_bgSelect/layer_select/toggleContainer", this.node);
                    e.childrenCount > 0 && (this.selectNameNode.string = app.i18n.t("UI.MakeMoney_4_Promotion_19"),
                        e.children[0].getComponent(cc.Toggle).check()),
                        this.last_page = 9999,
                        this.CoolingTime = true,
                        this.sendRequestBonuesData({
                            page: this.page
                        }),
                        cc.find("node_btn/label", this.node).getComponent(cc.Label).string = "" + this.page,
                        cc.find("btn_select/node_bgSelect", this.node).active = false
                }
                ,
                t.prototype.sendRequestBonuesData = function (e) {
                    var t = this;
                    this.CoolingTime && (this.CoolingTime = false,
                        this.scheduleOnce(function () {
                            t.CoolingTime = true
                        }, 5),
                        app.PromoteMainManager().RequestBonusRecords({
                            limit: 20,
                            page: e.page,
                            types: this.types
                        }))
                }
                ,
                t.prototype.onAgentBonusRecordData = function () {
                    if (this.BonusRecordData = app.PromoteMainManager().BonuesRecordResult,
                        this.BonusRecordData) {
                        this.setTypeNode(),
                            this.setRecordListData(),
                            cc.find("node_btn/label", this.node).getComponent(cc.Label).string = "" + this.page,
                            cc.find("icon_zw", this.node).active = this.BonusRecordData.lists.data.length <= 0,
                            cc.find("content", this.node).active = !(this.BonusRecordData.lists.data.length <= 0),
                            app.Client.OnEvent(i.GameEventDefine.TOP_MAINSCROLLVIEW);
                        var e = this.BonusRecordData.lists.data.length;
                        (this.isAddPage && 0 == e || 1 == this.page && 0 == e || e < 20) && (this.last_page = this.page),
                            this.GetWndNode("node_btn", this.node).active = !(1 == this.page && 0 == e)
                    }
                }
                ,
                t.prototype.OnClick = function (e) {
                    if ("btn_select" != e)
                        if ("btn_right" != e)
                            if ("btn_left" != e)
                                "node_bgSelect" != e || this.openBtnLayerNode();
                            else {
                                if (!this.CoolingTime)
                                    return;
                                this.page > 1 && (this.page--,
                                    this.isAddPage = false,
                                    this.paging())
                            }
                        else {
                            if (!this.CoolingTime)
                                return;
                            this.page < this.last_page && (this.page++,
                                this.isAddPage = true,
                                this.paging())
                        }
                    else
                        this.openBtnLayerNode()
                }
                ,
                t.prototype.paging = function () {
                    this.sendRequestBonuesData({
                        page: this.page
                    })
                }
                ,
                t.prototype.setRecordListData = function () {
                    
                    for (var e = cc.find("content", this.node), t = 0; t < e.children.length; t++)
                        (n = e.children[t]).active = false;
                    for (t = 0; t < this.BonusRecordData.lists.data.length; t++) {
                        var n = this.BonusRecordData.lists.data[t]
                            , o = e.children[t] ? e.children[t] : cc.instantiate(e.children[0]);
                        if (o) {
                            if (n["change_gold "]) {
                                n.change_gold = n["change_gold "]
                            }
                            o.children[0].getChildByName("label").getComponent(cc.Label).string = "" + n.create_time,
                                o.children[1].getChildByName("label").getComponent(cc.Label).string = "" + n.type_name,
                                o.children[3].getChildByName("label").getComponent(cc.Label).string = "" + n.c_id;
                            var i = o.children[2].getChildByName("label").getComponent(cc.Label)
                                , a = o.children[2].getChildByName("richtext").getComponent(cc.RichText);
                            if (i.string = "" + n.change_gold,
                                a.node.active = false,
                                "" != n.id && (a.string = "<color=#FFFFFF>ID:" + n.id + "</color>",
                                    a.node.active = true),
                                5 == n.type && "number" == typeof n.status) {
                                var r = "<color=#FFFFFF>"
                                    , s = app.i18n.t("UI.OrderType_2")
                                    , c = Number(n.status);
                                1 == c ? (r = "<color=#009900>",
                                    s = app.i18n.t("UI.OrderType_1")) : 2 == c && (r = "<color=#FF0000>",
                                        s = app.i18n.t("UI.OrderType_3"));
                                var l = r + s + "</color>";
                                a.string = l,
                                    a.node.active = true
                            }
                            o.active = true,
                                e.children[t] || e.addChild(o)
                        }
                    }
                    cc.find("node_null", this.node) && (cc.find("node_null", this.node).active = this.BonusRecordData.lists.data.length <= 3)
                }
                ,
                t.prototype.setTypeNode = function () {
                    var e = this
                        , t = cc.find("btn_select/node_bgSelect/layer_select/toggleContainer", this.node);
                    t.childrenCount > 0 || this.BonusRecordData.disposetypeList.forEach(function (n) {
                        var o = cc.instantiate(cc.find("btn_select/node_bgSelect/layer_select/toggle1", e.node));
                        cc.find("Background/lbl", o).getComponent(cc.Label).string = n.title,
                            cc.find("checkmark/lbl", o).getComponent(cc.Label).string = n.title;
                        var i = new cc.Component.EventHandler;
                        i.target = e.node,
                            i.component = e.JS_Name,
                            i.handler = "SelectItemToggleCallBack",
                            i.customEventData = JSON.stringify(n),
                            o.getComponent(cc.Toggle).checkEvents = [],
                            o.getComponent(cc.Toggle).checkEvents.push(i),
                            o.active = true,
                            t.addChild(o)
                    })
                }
                ,
                t.prototype.openBtnLayerNode = function () {
                    var e = cc.find("btn_select/node_bgSelect", this.node);
                    e.active = !e.active
                }
                ,
                t.prototype.SelectItemToggleCallBack = function (e, t) {
                    t = JSON.parse(t),
                        this.types = t.types,
                        this.page = 1,
                        this.last_page = 9999,
                        this.CoolingTime = true,
                        this.sendRequestBonuesData({
                            page: this.page
                        }),
                        cc.find("btn_select/node_bgSelect", this.node).active = false,
                        this.selectNameNode.string = t.title
                }
                ,
                __decorate([r], t)
        }(o.default));
n.default = s,
    module.exports = n
