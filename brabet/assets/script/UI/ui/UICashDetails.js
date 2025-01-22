let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.TextGroupNode = null,
        t.Node_currency = null,
        t.Node_Remarks = null,
        t.ParentConnct = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UICashDetails",
        this.RegEvent(i.GameEventDefine.GET_TXRECORDDETAILS, this.onReceiveData),
        this.ParentConnct = this.GetWndNode("bg/layer/connect/view/connect")
    }
    ,
    t.prototype.OnShow = function(e) {
        this.InitAllLabelData(),
        this.Init(e)
    }
    ,
    t.prototype.InitAllLabelData = function() {
        this.TextGroupNode.children.forEach(function(e) {
            e.active = false,
            e.getChildByName("Label").getComponent(cc.Label).string = ""
        })
    }
    ,
    t.prototype.getIdData = function() {
        this._ItemData && app.CashOutManager().RequstTxRecordDetails(this._ItemData.DetailsId)
    }
    ,
    t.prototype.onReceiveData = function(e) {
        this.ParentConnct.removeAllChildren();
        var t = e.prepay_fileds_show
          , n = e.prepay_fileds_map;
        try {
            for (var o in t)
                if (Object.prototype.hasOwnProperty.call(t, o)) {
                    var i = cc.instantiate(this.Node_currency);
                    if (i) {
                        if ("account_type" == o) {
                            var a = "1" == t[o] ? app.i18n.t("UI_CASHOUT_Corrente") : app.i18n.t("UI_CASHOUT_Poupan");
                            i.getChildByName("Label").getComponent(cc.Label).string = a
                        } else
                            i.getChildByName("Label").getComponent(cc.Label).string = t[o];
                        i.getChildByName("lbl_title").getComponent(cc.Label).string = n[o],
                        i.active = true,
                        this.ParentConnct.addChild(i)
                    }
                }
            var r = cc.instantiate(this.Node_Remarks);
            r.getChildByName("Label").getComponent(cc.Label).string = e.remark,
            r.active = true,
            this.ParentConnct.addChild(r)
        } catch (s) {
            this.ErrLog("Cash_outRecordDetailis  getIdData ERROR")
        }
    }
    ,
    t.prototype.Init = function(e) {
        this._ItemData = e,
        this.InitAllLabelData(),
        this.getIdData(),
        this.node.active = true
    }
    ,
    t.prototype.closeSelf = function() {
        this.node.active = false,
        cc.systemEvent.emit("Close_FootBtnList")
    }
    ,
    __decorate([s(cc.Node)], t.prototype, "TextGroupNode", undefined),
    __decorate([s(cc.Node)], t.prototype, "Node_currency", undefined),
    __decorate([s(cc.Node)], t.prototype, "Node_Remarks", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
