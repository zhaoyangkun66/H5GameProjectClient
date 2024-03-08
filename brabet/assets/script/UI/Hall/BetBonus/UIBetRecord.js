let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
    , i = require("../../../../Common/Define/GameEventDefine")
    , a = cc._decorator
    , r = a.ccclass
    , s = a.property
    , c = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.layout = null,
                t.zwNode = null,
                t.listNode = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnLoadInit = function () {
                this.JS_Name = "UIBetRecord",
                    this.RegEvent(i.GameEventDefine.New_CleanBetList, this.updateInfoNodeData)
            }
            ,
            t.prototype.OnEnable = function () {
                app.BetBonusManager().RequestCleanBetHistoryList(10)
            }
            ,
            t.prototype.updateInfoNodeData = function () {
                // if (app.BetBonusManager().GetBetHistoryList.data.length == 0) {
                //     app.BetBonusManager().GetBetHistoryList.data = [{
                //         "date": "2023-09-07",
                //         "total": 1,
                //         "sports": 2,
                //         "slot": 3,
                //         "internal": 4,
                //         "video": 5,
                //         "lottery": 6,
                //         "lottery": 7,
                //         "fish": 8
                //     }, {
                //         "date": "2023-09-07",
                //         "total": 1,
                //         "sports": 2,
                //         "slot": 3,
                //         "internal": 4,
                //         "video": 5,
                //         "lottery": 6,
                //         "lottery": 7,
                //         "fish": 8
                //     }, {
                //         "date": "2023-09-07",
                //         "total": 1,
                //         "sports": 2,
                //         "slot": 3,
                //         "internal": 4,
                //         "video": 5,
                //         "lottery": 6,
                //         "lottery": 7,
                //         "fish": 8
                //     }]
                // }

                var e = app.BetBonusManager().GetBetHistoryList.data;
                this.zwNode.active = 0 == e.length,
                    this.layout.active = 0 != e.length,
                    this.listNode.active = true,
                    this.GetWndNode("top").active = true,
                    this.renderTitle();
                var t = this.GetWndNode("hisToryItem");
                if (this.layout.removeAllChildren(),
                    0 == e.length)
                    return this.node.height = 400,
                        void (this.GetWndNode("view/layer/content", this.listNode).active = false);
                for (var n = 0; n < e.length; n++) {
                    var o = e[n]
                        , i = cc.instantiate(t);
                    this.GetWndNode("Date/lbl", i).getComponent(cc.Label).string = o.date,
                        i.active = true,
                        this.layout.addChild(i)
                }
                this.layout.getComponent(cc.Layout).updateLayout();
                var a = 95 + this.layout.height;
                this.node.height = a < 600 ? 600 : a,
                    this.recordInfo()
            }
            ,
            t.prototype.renderTitle = function () {
                var e = this
                    , t = app.BetBonusManager().GetBetHistoryList.title
                    , n = this.GetWndNode("view/layer/title", this.listNode);
                n.children.forEach(function (e) {
                    e.active = false
                });
                var o = t.length > 5;
                this.listNode.getComponent(cc.ScrollView).enabled = o,
                    n.getComponent(cc.Layout).resizeMode = o ? cc.Layout.ResizeMode.CONTAINER : cc.Layout.ResizeMode.CHILDREN;
                var i = this.GetWndNode("view/layer", this.listNode);
                i.children.forEach(function (e, t) {
                    0 != t && (e.active = false,
                        e.children.forEach(function (e) {
                            e.active = false
                        }))
                }),
                    t.forEach(function (t, i) {
                        for (var a in t)
                            if (Object.prototype.hasOwnProperty.call(t, a)) {
                                var r = t[a]
                                    , s = n.children[i];
                                s || ((s = cc.instantiate(n.children[0])).parent = n),
                                    o && (s.width = 120),
                                    e.GetWndComponent("lbl", cc.Label, s).string = app.i18n.t("UI.UIBetRecord" + a),//r,
                                s.active = true
                            }
                    }),
                    n.getComponent(cc.Layout).updateLayout(),
                    i.width = n.width + 10
            }
            ,
            t.prototype.recordInfo = function () {
                var e = app.BetBonusManager().GetBetHistoryList.data
                    , t = app.BetBonusManager().GetBetHistoryList.title
                    , n = t.length > 5
                    , o = this.GetWndNode("view/layer", this.listNode)
                    , i = this.GetWndNode("view/layer/content", this.listNode);
                i.getComponent(cc.Layout).resizeMode = n ? cc.Layout.ResizeMode.CONTAINER : cc.Layout.ResizeMode.CHILDREN;
                for (var a = 0; a < e.length; a++) {
                    var r = e[a]
                        , s = o.children[a + 1];
                    s || ((s = cc.instantiate(i)).parent = o),
                        s.active = true;
                    for (var c = 0; c < t.length; c++) {
                        var l = t[c]
                            , p = Object.keys(l)[0]
                            , d = Number(r[p])
                            , h = s.children[c];
                        h || ((h = cc.instantiate(s.children[0])).parent = s),
                            h.active = true,
                            this.GetWndComponent("lbl", cc.Label, h).string = d.toFixed(2),
                            n && (h.width = 120)
                    }
                    s.getComponent(cc.Layout).updateLayout()
                }
            }
            ,
            __decorate([s(cc.Node)], t.prototype, "layout", undefined),
            __decorate([s(cc.Node)], t.prototype, "zwNode", undefined),
            __decorate([s(cc.Node)], t.prototype, "listNode", undefined),
            __decorate([r], t)
    }(o.default);
n.default = c,
    module.exports = n
