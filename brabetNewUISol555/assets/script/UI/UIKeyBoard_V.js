let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Define/GameEventDefine")
  , a = require("../../Common/Define/ShareDefine")
  , r = cc._decorator
  , s = r.ccclass
  , c = (r.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.numLabel = null,
        t.lab_str = null,
        t.limit = 0,
        t.oldStr = null,
        t.moveNode = null,
        t.keyIsUpAnim = false,
        t.movingNum = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIKeyBoard_V",
        this.nodeHeight = this.GetWndNode("bg").height
    }
    ,
    t.prototype.OnShow = function(e) {
        this.keyIsUpAnim = false,
        this.moveNode = e.moveNode,
        this.movingNum = 0,
        this.numLabel = e.label,
        this.lab_str = Number(e.label.string) > 0 ? e.label.string : "",
        this.numLabel.string = this.lab_str,
        this.enterType = e.type,
        this.limit = this.enterType == a.EnterType.odds ? 1 : e.limit,
        this.oldStr = this.lab_str,
        this.OnKeyBoardPos(true)
    }
    ,
    t.prototype.OnKeyBoardPos = function(e) {
        var t = this.node.convertToNodeSpaceAR(this.numLabel.node.convertToWorldSpaceAR(cc.v2(0, 0)))
          , n = this.node.convertToNodeSpaceAR(this.GetWndNode("bg/Node").convertToWorldSpaceAR(cc.v2(0, 0))).y + this.numLabel.node.parent.height;
        if (e && (this.movingNum = t.y >= n && e ? 50 : Math.abs(t.y - n) + this.numLabel.lineHeight),
        this.keyIsUpAnim || e)
            if (this.keyIsUpAnim = e,
            this.moveNode) {
                var o = e ? this.moveNode.y + this.movingNum : this.moveNode.y - this.movingNum;
                cc.tween(this.moveNode).to(.1, {
                    y: o
                }).start()
            } else
                app.Client.OnEvent(i.GameEventDefine.KEYBOARD_POS, {
                    height: this.movingNum,
                    isShow: e
                })
    }
    ,
    t.prototype.OnClickGetLabelStr = function() {
        this.oldStr.length > 0 && this.oldStr == this.lab_str && (this.lab_str = "",
        this.oldStr = "",
        this.numLabel.string = "")
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        if ("btn_1" == e || "btn_2" == e || "btn_3" == e || "btn_0" == e || "btn_4" == e || "btn_5" == e || "btn_6" == e || "btn_7" == e || "btn_8" == e || "btn_9" == e) {
            if (!this.checkSuccess(n))
                return;
            return this.OnClickGetLabelStr(),
            this.OnSetLabelNum(n),
            void app.Client.OnEvent(i.GameEventDefine.KEYBOARD_CHANGE)
        }
        if ("btn_del" == e)
            return this.oldStr = "",
            this.OnSetLabelDel(),
            void app.Client.OnEvent(i.GameEventDefine.KEYBOARD_CHANGE);
        "btn_point" != e || this.OnSetLabelPoint()
    }
    ,
    t.prototype.OnSetLabelNum = function(e) {
        this.checkLabelToFixed() || (this.lab_str += e,
        this.enterType == a.EnterType.betGold && Number(this.lab_str) > app.UserManager().UserInfo.gold && (this.lab_str = app.UserManager().UserInfo.gold.toString()),
        this.numLabel.string = this.lab_str)
    }
    ,
    t.prototype.OnSetLabelDel = function() {
        0 != this.lab_str.length && (this.lab_str = this.lab_str.replace(/.$/, ""),
        this.numLabel.string = this.lab_str)
    }
    ,
    t.prototype.OnSetLabelPoint = function() {
        if (this.enterType != a.EnterType.round)
            return 0 == this.lab_str.length ? (this.lab_str = this.limit >= 1 ? "1." : "0.",
            void (this.numLabel.string = this.lab_str)) : void (this.lab_str.indexOf(".") >= 0 || (this.lab_str += ".",
            this.numLabel.string = this.lab_str))
    }
    ,
    t.prototype.checkLabelToFixed = function() {
        return this.lab_str.indexOf(".") >= 0 && 2 == this.lab_str.split(".")[1].length
    }
    ,
    t.prototype.checkSuccess = function(e) {
        return this.checkRoundsLabel(e) && this.checkCodeLabel()
    }
    ,
    t.prototype.checkRoundsLabel = function(e) {
        return !(this.enterType == a.EnterType.round && (0 === Number(this.numLabel.string) && this.numLabel.string.length >= 1 || 0 === Number(e) && this.numLabel.string.length < 1 ? (this.lab_str = "",
        this.numLabel.string = "",
        1) : this.numLabel.string.length > 6))
    }
    ,
    t.prototype.checkCodeLabel = function() {
        return this.enterType != a.EnterType.fourCode || !(this.numLabel.string.length >= this.enterType)
    }
    ,
    t.prototype.OnClick_Close = function(t) {
        e.prototype.OnClick_Close.call(this, t),
        this.OnKeyBoardPos(false)
    }
    ,
    t.prototype.OnClose = function() {
        app.Client.OnEvent(i.GameEventDefine.KEYBOARD_EVENTE, {
            type: this.enterType
        })
    }
    ,
    __decorate([s], t)
}(o.default));
n.default = c,
module.exports = n
