let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("../../../Common/Define/TrackEventName")
  , s = require("./GuideDefine")
  , c = cc._decorator
  , l = c.ccclass
  , p = (c.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t._SelNodeParent = null,
        t.SelIndex = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGuide",
        app.Client.RegEvent(i.GameEventDefine.GUIDE_WITHDRAW, this.setGuideWithdrawPos, this)
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.data = e[0],
        this.InitData(),
        this.SetShowNode(this.data.type),
        this.HideAllNode(),
        this.PlayGuideList()
    }
    ,
    t.prototype.InitData = function() {
        this.SelIndex = 0,
        this._GuideType = null,
        this._SelNodeParent = null
    }
    ,
    t.prototype.SetShowNode = function(e) {
        var t = this.node.getChildByName(e);
        this._SelNodeParent = t || null,
        this._GuideType = e
    }
    ,
    t.prototype.PlayGuideList = function() {
        if (this._SelNodeParent) {
            for (var e = app.GuideManager().RecvGuideList[s.GuideTypeByNum[this._GuideType]], t = 0; t < this._SelNodeParent.children.length; t++)
                this._SelNodeParent.children[t].active = false;
            this._SelNodeParent.active = true;
            var n = this._SelNodeParent.children[this.SelIndex];
            if (n) {
                if (e) {
                    var o = e.step_info;
                    if (o) {
                        var i = this.GetWndComponent("node_con/spr_guide_box/label_tip", cc.Label, n);
                        i && o[this.SelIndex] && (i.string = o[this.SelIndex].value)
                    }
                }
                n.active = true
            } else
                app.GuideManager().RequestGuide(this._GuideType, 1),
                app.GuideManager().setLocalDataGuideData(this._GuideType),
                this.CloseForm();
            this.SelIndex++
        }
    }
    ,
    t.prototype.HideAllNode = function() {
        for (var e = 0; e < this.node.children.length; e++)
            this.node.children[e].active = false
    }
    ,
    t.prototype.OnClick = function(e) {
        return "btn_step1" == e ? (app.StoreManager().ShowStoreUI(),
        void this.PlayGuideList()) : "btn_step2" == e ? (app.StoreManager().ShowStoreUI({
            ShowType: a.WIN_TYPE.CASHOUT,
            in_type: r.default.PAGETRACK_EVENT_WITHDRAW_SWITCHTAB
        }),
        void this.PlayGuideList()) : void ("btn_step3" != e && "btn_step_next" != e || this.PlayGuideList())
    }
    ,
    t.prototype.setGuideWithdrawPos = function(e) {
        app.GuideManager().b_UpdateNodePos = e
    }
    ,
    t.prototype.update = function() {
        if (this._GuideType == s.Guide_Type.Guide_withdraw && !app.GuideManager().b_UpdateNodePos)
            for (var e = app.ComTool().H5Platform() ? 100 : 64, t = 2; t < 4; t++) {
                var n = this._SelNodeParent.children[t];
                n && (n.y = e * n.scale)
            }
    }
    ,
    __decorate([l], t)
}(o.default));
n.default = p,
module.exports = n
