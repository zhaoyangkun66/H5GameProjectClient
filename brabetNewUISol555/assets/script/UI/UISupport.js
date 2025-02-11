let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i, a = require("../../Common/Base/BaseForm"), r = require("../../Common/Component/ListView"), s = require("../../Common/Define/GameEventDefine"), c = require("../../Common/Define/TextDefine");
i = cc.Node,
    __extends(function () {
        return null !== i && i.apply(this, arguments) || this
    }, i),
    function (e) {
        __extends(function () {
            return null !== e && e.apply(this, arguments) || this
        }, e)
    }(cc.Node),
    function (e) {
        e[e.SUPPORTLIST = 0] = "SUPPORTLIST",
            e[e.PROBLEM = 1] = "PROBLEM",
            e[e.PROBLEMDETAIL = 2] = "PROBLEMDETAIL"
    }(o || (o = {}));
var l = cc._decorator
    , p = l.ccclass
    , d = l.property
    , h = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.supportItem = null,
                t.supportNode = null,
                t.robotMenuNode = null,
                t.titNode = null,
                t.n_page = 1,
                t.n_IsReadySendMatchPage = true,
                t.MainSearchStr = "",
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                var e = this;
                this.JS_Name = "UISupport",
                    this.RegEvent(s.GameEventDefine.GET_KEFU_LIST, this.InitItemList)
                this.RegEvent(s.GameEventDefine.GET_ROBOTQUESTIONS, this.OnProblem_list),
                    this.RegEvent(s.GameEventDefine.GET_ROBOTQUESTIONSAL_LTYPE, this.InitPobotQuestions),
                    this.layer = this.GetWndNode("layer"),
                    this.node_problem = this.GetWndNode("/Nodelist/problem"),
                    this.node_problem_detail = this.GetWndNode("/Nodelist/problem_detail"),
                    this.node_problemTypeItem = this.GetWndNode("/Nodelist/problem/scrollview_q/view/item"),
                    this.node_DetailRich = this.GetWndNode("/Nodelist/problem_detail/scrollview_q/view/lb_richtext"),
                    this.node_DetailImg = this.GetWndNode("/Nodelist/problem_detail/scrollview_q/view/img"),
                    this.node_detailContent = this.GetWndNode("/Nodelist/problem_detail/scrollview_q/view/content"),
                    this.Node_Line = this.GetWndNode("/Nodelist/problem_detail/scrollview_q/view/line"),
                    this.manualServiceBtn = this.GetWndNode("Nodelist/Nodeservice"),
                    this.ListNode = [],
                    this.ListNode[o.SUPPORTLIST] = this.supportNode,
                    this.ListNode[o.PROBLEM] = this.node_problem,
                    this.ListNode[o.PROBLEMDETAIL] = this.node_problem_detail

            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.layer.active = false,
                    this.initMainData(),
                    // this.onChildNodeShow(0),
                    // app.SupportManager().RequestRobotQuestionsAllType(1)
                    app.SupportManager().RequestSupportList();
                this.onGetFaqInfo()

                // this.ToWechatOrQQClient({
                //     chat_url: "https://direct.lc.chat/16287603/",
                //     is_small: 1
                // })
            }
            ,
            t.prototype.initMainData = function () {
                this.MainSearchStr = "",
                    this.n_page = 1,
                    this.n_IsReadySendMatchPage = true,
                    this.DetailTypeStr = {
                        name: "",
                        id: 0
                    }
            }
            ,
            t.prototype.OnProblem_list = function (e) {
                var t = e.data
                    , n = t.list;
                this.node_detailContent.removeAllChildren();
                for (var i = 0; i < n.length; i++) {
                    var a = n[i];
                    if (a.answer) {
                        var r = cc.instantiate(this.node_DetailRich);
                        r.getComponent(cc.RichText).string = a.answer,
                            r.active = true,
                            this.node_detailContent.addChild(r)
                    }
                    for (var s = 0; s < a.imgurls.length; s++) {
                        var c = a.imgurls[s]
                            , l = cc.instantiate(this.node_DetailImg);
                        l.active = true,
                            app.ImageUtil().LoadImage(l, c),
                            this.node_detailContent.addChild(l)
                    }
                    var p = cc.instantiate(this.Node_Line);
                    p.active = true,
                        this.node_detailContent.addChild(p)
                }
                this.out_link = t.outside_link,
                    this.in_link = t.inside_link,
                    this.showService = t.show_service_button,
                    this.OnServiceDisable(),
                    this.ShowLayerByIndex(o.PROBLEMDETAIL)
            }
            ,
            t.prototype.ShowLayerByIndex = function (e) {
                for (var t = 0; t < this.ListNode.length; t++)
                    this.ListNode[t].active = false;
                var n = this.ListNode[e];
                n && (n.active = true),
                    this.GetWndNode("/Nodelist").active = e != o.SUPPORTLIST,
                    this.manualServiceBtn.active = e == o.PROBLEMDETAIL
            }
            ,
            t.prototype.InitPobotQuestions = function () {
                var e = app.SupportManager().PoRotQuestionsAllType
                    , t = this.GetWndNode("/scrollview_q/view/content", this.ListNode[1]);
                if (1 != this.n_page || 0 != e.length) {
                    1 == this.n_page && t.removeAllChildren();
                    for (var n = 0; n < e.length; n++) {
                        var i = e[n]
                            , a = cc.instantiate(this.node_problemTypeItem);
                        cc.find("lb_q", a).getComponent(cc.Label).string = i.name;
                        var r = new cc.Component.EventHandler;
                        r.target = this.node,
                            r.component = this.JS_Name,
                            r.handler = "ProblemTypeItemCallBack",
                            r.customEventData = JSON.stringify(i),
                            a.getComponent(cc.Button).clickEvents = [],
                            a.getComponent(cc.Button).clickEvents.push(r),
                            a.active = true,
                            a.zIndex = i.sort,
                            t.addChild(a)
                    }
                    this.ShowLayerByIndex(o.PROBLEM)
                } else
                    app.SupportManager().RequestSupportList()
            }
            ,
            t.prototype.MainPobotSearchEditBoxChange = function (e) {
                this.MainSearchStr = e
            }
            ,
            t.prototype.ProblemTypeItemCallBack = function (e, t) {
                var n = JSON.parse(t);
                this.DetailTypeStr = n,
                    this.n_page = 1
                var o = {
                    search: "",
                    page: this.n_page,
                    type: n.id
                };
                this.RequestRobotQuestions(o)
            }
            ,
            t.prototype.OnServiceDisable = function () {
                this.GetWndNode("Layout/btn_jump", this.manualServiceBtn).active = !!this.out_link || Number(this.in_link) > 0,
                    this.GetWndNode("Layout/btn_service", this.manualServiceBtn).active = this.showService,
                    this.GetWndNode("lb_tips", this.manualServiceBtn).active = this.showService;
                var e = this.GetWndNode("Nodelist/problem_detail/scrollview_q")
                    , t = e.getComponent(cc.Widget);
                !this.showService && !this.out_link && Number(this.in_link) <= 0 ? t.bottom = 0 : t.bottom = 240,
                    t.updateAlignment(),
                    this.GetWndComponent("view", cc.Widget, e).updateAlignment()
            }
            ,
            t.prototype.TypesScrollEvents = function (e) {
                Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsReadySendMatchPage && (this.n_page += 1,
                    this.n_IsReadySendMatchPage = false,
                    app.SupportManager().RequestRobotQuestionsAllType(this.n_page))
            }
            ,
            t.prototype.PobotQuestionScrollEvents = function (e) {
                if (Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsReadySendMatchPage) {
                    this.n_page += 1,
                        this.n_IsReadySendMatchPage = false;
                    var t = {
                        search: "",
                        page: this.n_page,
                        type: this.DetailTypeStr.id
                    };
                    this.RequestRobotQuestions(t)
                }
            }
            ,
            t.prototype.RequestRobotQuestions = function (e) {
                this.out_link = "",
                    this.in_link = "",
                    this.showService = false,
                    app.SupportManager().RequestRobotQuestions(e)
            }
            ,
            t.prototype.SearchQuestionScrollEvents = function (e) {
                Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsReadySendMatchPage && (this.n_page += 1,
                    this.n_IsReadySendMatchPage = false,
                    this.QuestSearchData())
            }
            ,
            t.prototype.InitItemList = function (e) {
                if (isgoServer) {
                    if (app.UserManager().UserInfo) {
                        this.ToWechatOrQQClient({
                            chat_url: window.location.origin + "/client/kefu/?uid=" + app.UserManager().UserInfo.uid + "&nickname=" + app.UserManager().GetUserInfo.nickname + "&channel_id=" + app.ClientConfigManager().GetClientConfig.channel_id + "&vip_id=" + (app.UserManager().GetUserInfo.vip_id - 1) + "&license=" + e,
                            is_small: 1
                        })
                    }
                    else{
                        this.ToWechatOrQQClient({
                            chat_url: window.location.origin + "/client/kefu/?license=" + e,
                            is_small: 1
                        })
                    }
                }
                else {
                    this.SupportData = e;
                    var t = cc.find("view/content/customerLayout", this.supportNode);
                    if (this.SupportData) {
                        for (var n in this.SupportData)
                            if (this.SupportData.hasOwnProperty(n)) {
                                var i = this.SupportData[n];
                                if (0 == t.childrenCount)
                                    this.addCustomerNode(i);
                                else {
                                    for (var a = false, r = 0; r < t.childrenCount; r++) {
                                        var s = t.children[r];
                                        if (s.type == i.nickname) {
                                            s.active = true,
                                                a = true;
                                            break
                                        }
                                    }
                                    a || this.addCustomerNode(i)
                                }
                            }
                    } else
                        this.supportNode.removeAllChildren();
                    this.layer.active = true,
                        this.ShowLayerByIndex(o.SUPPORTLIST)
                }
            }
            ,
            t.prototype.addCustomerNode = function (e) {
                var t = cc.instantiate(this.supportItem);
                t.getChildByName("label").getComponent(cc.Label).string = e.nickname.length > 10 ? e.nickname.substr(0, 10) + "..." : e.nickname,
                    t.getChildByName("whatsapp").getChildByName("label").getComponent(cc.Label).string = e.whatsapp.length > 12 ? e.whatsapp.substr(0, 12) + "..." : e.whatsapp,
                    app.ImageUtil().LoadHead(t.getChildByName("mask").getChildByName("face1"), e.headimg),
                    e.icon && app.ImageUtil().LoadImage(t.getChildByName("whatsapp").getChildByName("icon"), e.icon),
                    t.chat_url = e.kf_chat_url,
                    t.type = e.nickname,
                    t.is_small = e.is_small,
                    t.x = 0,
                    t.getChildByName("level").active = e.vip_level > 0,
                    cc.find("level/lbl", t).getComponent(cc.Label).string = "V" + e.vip_level,
                    cc.find("view/content/customerLayout", this.supportNode).addChild(t),
                    t.active = true
            }
            ,
            t.prototype.OnClick = function (e, t) {
                if ("customer" != e)
                    if ("robot" != e)
                        if ("robotMenuItem" != e)
                            if ("btn_menuBack" != e)
                                if ("btn_TITBack" != e)
                                    if ("btn_closewebview" != e)
                                        if ("btn_service" != e) {
                                            if ("btn_jump" == e) {
                                                var n = Number(this.in_link);
                                                return n > 0 ? (this.CloseForm(),
                                                    void app.InteractionMgr().SendWndEvent(n)) : void (this.out_link && cc.sys.openURL(this.out_link))
                                            }
                                            if ("btn_ProblemlistBack" != e)
                                                if ("btn_Detailback" != e) {
                                                    if ("btn_Searchback" != e)
                                                        return "btn_MainSearch" == e ? this.MainSearchStr ? (this.GetWndComponent("/Nodelist/search/search/edit_search", cc.EditBox).string = this.MainSearchStr,
                                                            this.n_page = 1,
                                                            void this.QuestSearchData()) : void app.SysNotifyManager().ShowToast(app.i18n.t("UI_Support_PleaseEnteryour")) : "btn_Search" == e ? this.MainSearchStr ? (this.n_page = 1,
                                                                void this.QuestSearchData()) : void app.SysNotifyManager().ShowToast(app.i18n.t("UI_Support_PleaseEnteryour")) : undefined;
                                                    this.ShowLayerByIndex(o.PROBLEM)
                                                } else
                                                    this.ShowLayerByIndex(o.PROBLEM);
                                            else
                                                this.ShowLayerByIndex(o.PROBLEM)
                                        } else
                                            app.SupportManager().RequestSupportList();
                                    else
                                        this.closeWebView();
                                else
                                    this.onChildNodeShow(1);
                            else
                                this.onChildNodeShow(0);
                        else
                            this.onChildNodeShow(2);
                    else
                        this.onChildNodeShow(1);
                else {
                    var i = t;
                    this.ToWechatOrQQClient({
                        chat_url: i.chat_url,
                        is_small: i.is_small
                    })
                }
            }
            ,
            t.prototype.QuestSearchData = function () {
                var e = {
                    search: this.MainSearchStr,
                    page: this.n_page,
                    type: 0
                };
                this.RequestRobotQuestions(e)
            }
            ,
            t.prototype.onChildNodeShow = function (e) {
                if (this.supportNode.active = 0 == e,
                    this.robotMenuNode.opacity = 0,
                    this.robotMenuNode.active = 1 == e,
                    this.titNode.opacity = 0,
                    this.titNode.active = 2 == e,
                    0 != e) {
                    var t = 1 == e ? this.robotMenuNode : this.titNode;
                    t.stopAllActions();
                    var n = new cc.Vec3(this.node.width / 2 + this.node.width, t.y)
                        , o = new cc.Vec3(0, t.y);
                    cc.tween(t).set({
                        position: n
                    }).to(.2, {
                        position: o,
                        opacity: 255
                    }).start()
                }
            }
            ,
            t.prototype.ToWechatOrQQClient = function (e) {
                var t = cc.find("ndoe_smallWebview", this.node);
                1 == e.is_small ? (cc.find("webview", t).getComponent(cc.WebView).url = e.chat_url,
                    t.active = true) : (cc.sys.openURL(e.chat_url),
                        t.active = false)
            }
            ,
            t.prototype.closeWebView = function () {
                cc.find("ndoe_smallWebview", this.node).active = false
            }
            ,
            t.prototype.onGetFaqInfo = function () {
                var e = app.TextManager().GetTextInfo(c.TextDefine.customer_servic);
                e && this.manualServiceBtn && (this.manualServiceBtn.getChildByName("lb_tips").getComponent(cc.Label).string = e)
            }
            ,
            __decorate([d(cc.Node)], t.prototype, "supportItem", undefined),
            __decorate([d(cc.Node)], t.prototype, "supportNode", undefined),
            __decorate([d(cc.Node)], t.prototype, "robotMenuNode", undefined),
            __decorate([d(cc.Node)], t.prototype, "titNode", undefined),
            __decorate([p], t)
    }(a.default);
n.default = h,
    module.exports = n
