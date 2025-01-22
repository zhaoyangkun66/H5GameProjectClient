let i = {}
Object.defineProperty(i, "__esModule", {
    value: true
});
var n = require("../../../../../../Common/Base/BaseForm")
    , o = require("../../../../../../Common/Component/ListView")
    , a = require("../../../Game1051Define")
    , r = require("./UIGame1051DailyItem")
    , s = cc._decorator
    , l = s.ccclass
    , p = s.menu
    , d = s.property
    , h = function (t) {
        function e() {
            var e = null !== t && t.apply(this, arguments) || this;
            return e.myhistoryItem = null,
                e.roomMgr = null,
                e.lbl_title = null,
                e.lbl_amount = null,
                e.lbl_winAndloss = null,
                e.Node_Nodata = null,
                e.n_IsSend = true,
                e.data = null,
                e
        }
        return __extends(e, t),
            e.prototype.OnCreateInit = function () {
                this.JS_Name = "UIGame1051SelectDateRange"
                this.CustomNode = this.GetWndNode("CustomNode")

                this.label_btn_NS = this.GetWndComponent("CustomNode/content/btn_NS/label", cc.Label)
                this.scrollviewNS = this.GetWndNode("CustomNode/content/btn_NS/scrollview")
                this.contentNS = this.GetWndNode("CustomNode/content/btn_NS/scrollview/view/content")
                this.Item_NS = this.GetWndNode("CustomNode/content/btn_NS/Item_NS")

                this.label_btn_YS = this.GetWndComponent("CustomNode/content/btn_YS/label", cc.Label)
                this.scrollviewYS = this.GetWndNode("CustomNode/content/btn_YS/scrollview")
                this.contentYS = this.GetWndNode("CustomNode/content/btn_YS/scrollview/view/content")
                this.Item_YS = this.GetWndNode("CustomNode/content/btn_YS/Item_YS")

                this.label_btn_RS = this.GetWndComponent("CustomNode/content/btn_RS/label", cc.Label)
                this.scrollviewRS = this.GetWndNode("CustomNode/content/btn_RS/scrollview")
                this.contentRS = this.GetWndNode("CustomNode/content/btn_RS/scrollview/view/content")
                this.Item_RS = this.GetWndNode("CustomNode/content/btn_RS/Item_RS")

                this.label_btn_NE = this.GetWndComponent("CustomNode/content/btn_NE/label", cc.Label)
                this.scrollviewNE = this.GetWndNode("CustomNode/content/btn_NE/scrollview")
                this.contentNE = this.GetWndNode("CustomNode/content/btn_NE/scrollview/view/content")
                this.Item_NE = this.GetWndNode("CustomNode/content/btn_NE/Item_NE")

                this.label_btn_YE = this.GetWndComponent("CustomNode/content/btn_YE/label", cc.Label)
                this.scrollviewYE = this.GetWndNode("CustomNode/content/btn_YE/scrollview")
                this.contentYE = this.GetWndNode("CustomNode/content/btn_YE/scrollview/view/content")
                this.Item_YE = this.GetWndNode("CustomNode/content/btn_YE/Item_YE")

                this.label_btn_RE = this.GetWndComponent("CustomNode/content/btn_RE/label", cc.Label)
                this.scrollviewRE = this.GetWndNode("CustomNode/content/btn_RE/scrollview")
                this.contentRE = this.GetWndNode("CustomNode/content/btn_RE/scrollview/view/content")
                this.Item_RE = this.GetWndNode("CustomNode/content/btn_RE/Item_RE")


                let startday = new Date();
                startday = new Date(startday.getFullYear(), startday.getMonth() - 3, 1);
                let today = new Date();
                today = new Date(today.getFullYear(), today.getMonth(), today.getDate());
                this.startday = startday
                this.today = today

                this.Select_NS = today.getFullYear();
                this.Select_YS = today.getMonth() + 1; // 月份从0开始，需要加1
                this.Select_RS = today.getDate();
                this.Select_NE = today.getFullYear();
                this.Select_YE = today.getMonth() + 1; // 月份从0开始，需要加1
                this.Select_RE = today.getDate();

                this.label_btn_NS.string = this.Select_NS
                this.label_btn_YS.string = this.Select_YS
                this.label_btn_RS.string = this.Select_RS
                this.label_btn_NE.string = this.Select_NE
                this.label_btn_YE.string = this.Select_YE
                this.label_btn_RE.string = this.Select_RE


            }
            ,
            e.prototype.SelectStartDay = function () {
                this.label_btn_NS.string = this.Select_NS
                this.label_btn_YS.string = this.Select_YS
                this.label_btn_RS.string = this.Select_RS
                if (new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS).getTime() > this.today.getTime()) {
                    this.Select_NS = this.today.getFullYear();
                    this.Select_YS = this.today.getMonth() + 1; // 月份从0开始，需要加1
                    this.Select_RS = this.today.getDate();
                    this.label_btn_NS.string = this.Select_NS
                    this.label_btn_YS.string = this.Select_YS
                    this.label_btn_RS.string = this.Select_RS
                }
                let tempDay = new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE)
                if (new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS).getTime() > tempDay.getTime() || new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS + 6).getTime() < tempDay.getTime()) {
                    tempDay = new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS + 6)
                    if (tempDay.getTime() > this.today.getTime()) {
                        tempDay = this.today
                    }
                    this.Select_NE = tempDay.getFullYear();
                    this.Select_YE = tempDay.getMonth() + 1; // 月份从0开始，需要加1
                    this.Select_RE = tempDay.getDate();
                    this.label_btn_NE.string = this.Select_NE
                    this.label_btn_YE.string = this.Select_YE
                    this.label_btn_RE.string = this.Select_RE
                }
            },
            e.prototype.SelectEndDay = function () {
                this.label_btn_NE.string = this.Select_NE
                this.label_btn_YE.string = this.Select_YE
                this.label_btn_RE.string = this.Select_RE
                if (new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE).getTime() > this.today.getTime()) {
                    this.Select_NE = this.today.getFullYear();
                    this.Select_YE = this.today.getMonth() + 1; // 月份从0开始，需要加1
                    this.Select_RE = this.today.getDate();
                    this.label_btn_NE.string = this.Select_NE
                    this.label_btn_YE.string = this.Select_YE
                    this.label_btn_RE.string = this.Select_RE
                }
                let tempDay = new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS)
                if (new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE - 6).getTime() > tempDay.getTime() || new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE).getTime() < tempDay.getTime()) {
                    tempDay = new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE - 6)
                    if (tempDay.getTime() < this.startday.getTime()) {
                        tempDay = this.startday
                    }
                    this.Select_NS = tempDay.getFullYear();
                    this.Select_YS = tempDay.getMonth() + 1; // 月份从0开始，需要加1
                    this.Select_RS = tempDay.getDate();
                    this.label_btn_NS.string = this.Select_NS
                    this.label_btn_YS.string = this.Select_YS
                    this.label_btn_RS.string = this.Select_RS
                }
            }
            ,
            e.prototype.OnShow = function () {

            }
            ,
            e.prototype.OnMyHistory = function () {

            }
            ,
            e.prototype.OnClick = function (name, item) {
                if (name == "CustomNode") {
                    this.closeTimeSelect()
                }
                else if (name == "btn_backCustom") {
                    this.CustomNode.active = false
                    this.closeTimeSelect()
                }
                else if (name == "toggleToday") {
                    app.RoomManager().GetCurHttpGameMgr().RequestBetOneDayHistory({
                        page: 1,
                        startDay: this.today.format("yyyy-MM-dd"),
                        endDay: this.today.format("yyyy-MM-dd")
                    })
                    this.CloseForm()
                }
                else if (name == "toggle_7days") {
                    app.RoomManager().GetCurHttpGameMgr().RequestBetOneDayHistory({
                        page: 1,
                        startDay: new Date(this.today.getFullYear(), this.today.getMonth(), this.today.getDate() - 6).format("yyyy-MM-dd"),
                        endDay: this.today.format("yyyy-MM-dd")
                    })
                    this.CloseForm()
                }
                else if (name == "toggle_Custom") {
                    this.CustomNode.active = true
                }
                else if (name == "btn_NS") {
                    if (this.scrollviewNS.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewNS.active = true
                        this.contentNS.removeAllChildren()
                        let Min = this.startday.getFullYear()
                        let Max = this.today.getFullYear()
                        for (let index = Min; index <= Max; index++) {
                            let Item_NS = cc.instantiate(this.Item_NS)
                            Item_NS.active = true
                            Item_NS.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_NS).string = index
                            this.contentNS.addChild(Item_NS);
                        }
                    }
                }
                else if (name == "Item_NS") {
                    this.closeTimeSelect()
                    if (this.Select_NS != item.indexTemp) {
                        this.Select_NS = item.indexTemp

                        let tempDay = new Date(this.Select_NS + 1, 0, 0)
                        if (tempDay.getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        this.Select_YS = tempDay.getMonth() + 1; // 月份从0开始，需要加1
                        this.Select_RS = tempDay.getDate();

                        this.SelectStartDay()
                    }
                }
                else if (name == "btn_YS") {
                    if (this.scrollviewYS.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewYS.active = true
                        this.contentYS.removeAllChildren()
                        let Min
                        let Max
                        if (this.Select_NS > this.startday.getFullYear()) {
                            Min = 1
                        }
                        else {
                            Min = this.startday.getMonth() + 1
                        }

                        if (this.Select_NS < this.today.getFullYear()) {
                            Max = 12
                        }
                        else {
                            Max = this.today.getMonth() + 1
                        }

                        for (let index = Min; index <= Max; index++) {
                            let Item_YS = cc.instantiate(this.Item_YS)
                            Item_YS.active = true
                            Item_YS.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_YS).string = index
                            this.contentYS.addChild(Item_YS);
                        }
                    }
                }
                else if (name == "Item_YS") {
                    this.closeTimeSelect()
                    if (this.Select_YS != item.indexTemp) {
                        this.Select_YS = item.indexTemp

                        let tempDay = new Date(this.Select_NS, this.Select_YS, 0)
                        if (new Date(this.Select_NS, this.Select_YS, 0).getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        this.Select_RS = tempDay.getDate();
                        this.SelectStartDay()
                    }
                }
                else if (name == "btn_RS") {
                    if (this.scrollviewRS.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewRS.active = true
                        this.contentRS.removeAllChildren()

                        let tempDay = new Date(this.Select_NS, this.Select_YS, 0)
                        if (new Date(this.Select_NS, this.Select_YS, 0).getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        let Max_RS = tempDay.getDate();
                        for (let index = 1; index <= Max_RS; index++) {
                            let Item_RS = cc.instantiate(this.Item_RS)
                            Item_RS.active = true
                            Item_RS.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_RS).string = index
                            this.contentRS.addChild(Item_RS);
                        }
                    }
                }
                else if (name == "Item_RS") {
                    this.closeTimeSelect()
                    if (this.Select_RS != item.indexTemp) {
                        this.Select_RS = item.indexTemp
                        this.SelectStartDay()
                    }
                }
                else if (name == "btn_NE") {
                    if (this.scrollviewNE.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewNE.active = true
                        this.contentNE.removeAllChildren()
                        let Min = this.startday.getFullYear()
                        let Max = this.today.getFullYear()
                        for (let index = Min; index <= Max; index++) {
                            let Item_NE = cc.instantiate(this.Item_NE)
                            Item_NE.active = true
                            Item_NE.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_NE).string = index
                            this.contentNE.addChild(Item_NE);
                        }
                    }
                }
                else if (name == "Item_NE") {
                    this.closeTimeSelect()
                    if (this.Select_NE != item.indexTemp) {
                        this.Select_NE = item.indexTemp

                        let tempDay = new Date(this.Select_NE + 1, 0, 0)
                        if (tempDay.getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        this.Select_YE = tempDay.getMonth() + 1; // 月份从0开始，需要加1
                        this.Select_RE = tempDay.getDate();

                        this.SelectEndDay()
                    }
                }
                else if (name == "btn_YE") {
                    if (this.scrollviewYE.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewYE.active = true
                        this.contentYE.removeAllChildren()
                        let Min
                        let Max
                        if (this.Select_NE > this.startday.getFullYear()) {
                            Min = 1
                        }
                        else {
                            Min = this.startday.getMonth() + 1
                        }

                        if (this.Select_NE < this.today.getFullYear()) {
                            Max = 12
                        }
                        else {
                            Max = this.today.getMonth() + 1
                        }
                        for (let index = Min; index <= Max; index++) {
                            let Item_YE = cc.instantiate(this.Item_YE)
                            Item_YE.active = true
                            Item_YE.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_YE).string = index
                            this.contentYE.addChild(Item_YE);
                        }
                    }
                }
                else if (name == "Item_YE") {
                    this.closeTimeSelect()
                    if (this.Select_YE != item.indexTemp) {
                        this.Select_YE = item.indexTemp

                        let tempDay = new Date(this.Select_NE, this.Select_YE, 0)
                        if (new Date(this.Select_NE, this.Select_YE, 0).getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        this.Select_RE = tempDay.getDate();

                        this.SelectEndDay()
                    }
                }
                else if (name == "btn_RE") {
                    if (this.scrollviewRE.active) {
                        this.closeTimeSelect()
                    }
                    else {
                        this.closeTimeSelect()
                        this.scrollviewRE.active = true
                        this.contentRE.removeAllChildren()

                        let tempDay = new Date(this.Select_NE, this.Select_YE, 0)
                        if (new Date(this.Select_NE, this.Select_YE, 0).getTime() > this.today.getTime()) {
                            tempDay = this.today
                        }
                        let Max_RE = tempDay.getDate();

                        for (let index = 1; index <= Max_RE; index++) {
                            let Item_RE = cc.instantiate(this.Item_RE)
                            Item_RE.active = true
                            Item_RE.indexTemp = index
                            this.GetWndComponent("label", cc.Label, Item_RE).string = index
                            this.contentRE.addChild(Item_RE);
                        }
                    }
                }
                else if (name == "Item_RE") {
                    this.closeTimeSelect()
                    if (this.Select_RE != item.indexTemp) {
                        this.Select_RE = item.indexTemp
                        this.SelectEndDay()
                    }
                }
                else if (name == "btn_Confirm") {
                    app.RoomManager().GetCurHttpGameMgr().RequestBetOneDayHistory({
                        page: 1,
                        startDay: new Date(this.Select_NS, this.Select_YS - 1, this.Select_RS).format("yyyy-MM-dd"),
                        endDay: new Date(this.Select_NE, this.Select_YE - 1, this.Select_RE).format("yyyy-MM-dd")
                    })
                    this.closeTimeSelect()
                    this.CloseForm()
                }
            },
            e.prototype.closeTimeSelect = function () {
                this.scrollviewRS.active = false
                this.scrollviewNS.active = false
                this.scrollviewYS.active = false
                this.scrollviewRE.active = false
                this.scrollviewNE.active = false
                this.scrollviewYE.active = false
            },
            e.prototype.OnClose = function () {
                for (var t = [], e = 0; e < arguments.length; e++)
                    t[e] = arguments[e]
            }
            ,
            __decorate([l, p("UI/prefab/UIGame1051SelectDateRange")], e)
    }(n.default);
i.default = h,
    module.exports = i
