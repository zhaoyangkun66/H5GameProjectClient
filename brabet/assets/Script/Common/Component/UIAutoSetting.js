let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../Base/BaseForm")
  , i = require("../Define/GameEventDefine")
  , a = require("./UINumKeyPadLabel")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.autoNodeData = [],
        t.autoMaxRoundInput = null,
        t.autoWinNumInput = null,
        t.autoFailNumInput = null,
        t.autoWinAddNumToggle1 = null,
        t.autoWinAddNumToggle2 = null,
        t.autoWinAddNumInput = null,
        t.autoFailAddNumToggle1 = null,
        t.autoFailAddNumToggle2 = null,
        t.autoFailAddNumInput = null,
        t.key = null,
        t.autoBetData = null,
        t.isSave = false,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(i.GameEventDefine.KEYBOARD_POS, this.OnNodeHight),
        app.ComTool().H5Platform() ? (this.autoMaxRoundInput = this.GetWndComponent("general/Auto/Rounds/Apostas/editbox_xsje/TEXT_LABEL", cc.Label, this.node),
        this.autoWinNumInput = this.GetWndComponent("general/Auto/layout1/ganhar/TEXT_LABEL", cc.Label, this.node),
        this.autoFailNumInput = this.GetWndComponent("general/Auto/layout1/perder/TEXT_LABEL", cc.Label, this.node),
        this.autoWinAddNumInput = this.GetWndComponent("general/Auto/vencer/toggleContainer/editbox_xsje/TEXT_LABEL", cc.Label, this.node),
        this.autoFailAddNumInput = this.GetWndComponent("general/Auto/perder/toggleContainer/editbox_xsje/TEXT_LABEL", cc.Label, this.node)) : (this.autoMaxRoundInput = this.GetWndComponent("general/Auto/Rounds/Apostas/editbox_xsje", cc.EditBox, this.node),
        this.autoWinNumInput = this.GetWndComponent("general/Auto/layout1/ganhar/editbox_xsje", cc.EditBox, this.node),
        this.autoFailNumInput = this.GetWndComponent("general/Auto/layout1/perder/editbox_xsje", cc.EditBox, this.node),
        this.autoWinAddNumInput = this.GetWndComponent("general/Auto/vencer/toggleContainer/editbox_xsje", cc.EditBox, this.node),
        this.autoFailAddNumInput = this.GetWndComponent("general/Auto/perder/toggleContainer/editbox_xsje", cc.EditBox, this.node)),
        this.autoWinAddNumToggle1 = cc.find("general/Auto/vencer/toggleContainer/toggle1", this.node),
        this.autoWinAddNumToggle2 = cc.find("general/Auto/vencer/toggleContainer/toggle2", this.node),
        this.autoFailAddNumToggle1 = cc.find("general/Auto/perder/toggleContainer/toggle1", this.node),
        this.autoFailAddNumToggle2 = cc.find("general/Auto/perder/toggleContainer/toggle2", this.node)
    }
    ,
    t.prototype.OnShow = function(e) {
        if (this.key = Number(e.key),
        this.autoBetData = e.autoBetData,
        this.isSave = false,
        this.autoBetData && this.autoBetData[this.key]) {
            var t = this.autoBetData[this.key];
            this.autoWinNumInput.string = 0 == t.winStopNum ? "" : t.winStopNum + "",
            this.autoFailNumInput.string = 0 == t.failStopNum ? "" : t.failStopNum + "",
            this.autoWinAddNumToggle2.getComponent(cc.Toggle).isChecked = t.addWinChk,
            this.autoWinAddNumToggle1.getComponent(cc.Toggle).isChecked = !t.addWinChk,
            this.autoFailAddNumToggle2.getComponent(cc.Toggle).isChecked = t.addFailChk,
            this.autoFailAddNumToggle1.getComponent(cc.Toggle).isChecked = !t.addFailChk,
            this.autoWinAddNumInput.string = t.addWinChk ? t.addWinNum + "" : "",
            this.autoFailAddNumInput.string = t.addFailChk ? t.addFailNum + "" : ""
        } else
            this.autoWinNumInput.string = "",
            this.autoFailNumInput.string = "",
            this.autoWinAddNumToggle2.getComponent(cc.Toggle).isChecked = false,
            this.autoWinAddNumToggle1.getComponent(cc.Toggle).isChecked = true,
            this.autoFailAddNumToggle2.getComponent(cc.Toggle).isChecked = false,
            this.autoFailAddNumToggle1.getComponent(cc.Toggle).isChecked = true,
            this.autoWinAddNumInput.string = "",
            this.autoFailAddNumInput.string = "";
        this.OnLblNodeTs()
    }
    ,
    t.prototype.OnClick = function(e) {
        "btn_save" == e && (this.isSave = true,
        this.CloseForm())
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        if (this.isSave) {
            var n = this.autoWinAddNumToggle2.getComponent(cc.Toggle).isChecked
              , o = this.autoFailAddNumToggle2.getComponent(cc.Toggle).isChecked
              , a = n ? Number(this.autoWinAddNumInput.string) : 0
              , r = o ? Number(this.autoFailAddNumInput.string) : 0;
            this.autoBetData || (this.autoBetData = []),
            this.autoBetData[this.key] = {
                winStopNum: Number(this.autoWinNumInput.string),
                failStopNum: Number(this.autoFailNumInput.string),
                addWinChk: n,
                addFailChk: o,
                addWinNum: a,
                addFailNum: r
            };
            var s = {
                key: String(this.key),
                autoBetData: this.autoBetData
            };
            app.Client.OnEvent(i.GameEventDefine.BD_AutoInfo, s)
        }
    }
    ,
    t.prototype.OnLblNodeTs = function() {
        if (app.ComTool().H5Platform())
            for (var e = 0; e < this.autoNodeData.length; e++) {
                var t = this.autoNodeData[e].getComponent(a.default);
                t && (t.setCustomEvent(this.key),
                t.OnNodeShow())
            }
    }
    ,
    t.prototype.OnKeyBoardEvent = function() {
        for (var e = 0; e < this.autoNodeData.length; e++) {
            var t = this.autoNodeData[e].getComponent(a.default);
            t && t.OnNodeShow()
        }
    }
    ,
    t.prototype.OnNodeHight = function(e) {
        var t = this.GetWndNode("general");
        this.Log(t.y);
        var n = e.isShow ? t.y + e.height : t.y - e.height;
        !e.isShow && (t.y <= .1 || !this.keyIsUpAnim) || n < 0 || (this.keyIsUpAnim = e.isShow,
        cc.tween(t).to(.1, {
            y: n
        }).start())
    }
    ,
    __decorate([c([cc.Node])], t.prototype, "autoNodeData", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
