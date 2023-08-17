let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Component/ScrollViewExtend")
  , a = require("../../../Common/Define/GameEventDefine")
  , r = require("../../../Common/Model/D_PromoteMember")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.property
  , p = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.labelDirectNum = null,
        t.labelTeamNum = null,
        t.editboxMemberId = null,
        t.itemPrefabName = null,
        t.itemPrefabNameH = null,
        t.selectItem = null,
        t.SelLevel = "0",
        t.countNum = 10,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this._scrollViewExtend = this.node.getChildByName("scrollview").addComponent(i.default),
        this.currentSelectIdx = 0,
        this.selectItem = app.ComTool().H5Platform() ? this.itemPrefabName : this.itemPrefabNameH,
        this.selectEndLevelStr = cc.find("/btn_select/btn_select/lbl", this.node).getComponent(cc.Label),
        this.selectheight = app.ComTool().H5Platform() ? 242 : 72,
        app.Client.RegEvent(a.GameEventDefine.GET_TEAMTOTAL, this.OnTeamTotal, this),
        this.RegEvent(a.GameEventDefine.GET_DIRECTDETAILLIST, this.OnGetDirectList)
    }
    ,
    t.prototype.OnEnable = function() {
        r.default.ins.infoData(),
        this.n_ListData = [],
        this.n_IsReadySendMatchPage = true,
        this.n_MatchListPage = 1,
        this.SelLevel = "0",
        this.selectEndLevelStr.string = app.i18n.t("UI_PromoteMeberAllLevel"),
        this.node.getChildByName("scrollview").active = false,
        this.node.getChildByName("icon_zw").active = false,
        this.setTypeNode(),
        this.updateInfo(),
        this.setTypeNode(),
        this.requestDirectDataList()
    }
    ,
    t.prototype.updateInfo = function() {
        cc.find("node_btn/label", this.node).getComponent(cc.Label).string = "" + this.n_MatchListPage
    }
    ,
    t.prototype.onDisable = function() {
        this.node.getChildByName("scrollview").active = false,
        this.node.getChildByName("icon_zw").active = false
    }
    ,
    t.prototype.scrollEvents = function(e) {
        Number(e.getScrollOffset().y) / Number(e.getMaxScrollOffset().y) > .8 && this.n_IsReadySendMatchPage && (this.n_MatchListPage += 1,
        this.n_IsReadySendMatchPage = false,
        this.requestDirectDataList())
    }
    ,
    t.prototype.OnTeamTotal = function(e) {
        var t = e;
        this.labelDirectNum.string = t.direct_num,
        this.labelTeamNum.string = t.team_num
    }
    ,
    t.prototype.OnGetDirectList = function() {
        var e = r.default.ins.dtailList;
        this.updateInfo(),
        this.HidePagesView(),
        null == e || e.length <= 0 || (this.n_IsReadySendMatchPage ? this.n_ListData = e : (this.n_IsReadySendMatchPage = true,
        this.n_MatchListPage > 1 ? this.n_ListData = this.n_ListData.concat(e) : this.n_ListData = e),
        this.setRecordListData(),
        app.Client.OnEvent(a.GameEventDefine.TOP_MAINSCROLLVIEW))
    }
    ,
    t.prototype.setRecordListData = function() {
        for (var e = r.default.ins.dtailList, t = cc.find("content", this.node), n = 0; n < t.children.length; n++)
            (o = t.children[n]).active = false;
        for (n = 0; n < e.length; n++) {
            var o = e[n]
              , i = t.children[n] ? t.children[n] : cc.instantiate(t.children[0]);
            i && (i.children[1].getChildByName("lab_name").getComponent(cc.Label).string = "" + o.id,
            i.children[2].getChildByName("lab_times").getComponent(cc.Label).string = "" + o.create_time,
            i.children[3].getChildByName("lab_lev").getComponent(cc.Label).string = "" + o.level,
            i.children[4].getChildByName("lab_wager").getComponent(cc.Label).string = "" + o.total_cash,
            i.children[5].getChildByName("lab_Dun").getComponent(cc.Label).string = "" + o.team_num,
            i.active = true,
            t.children[n] || t.addChild(i))
        }
    }
    ,
    t.prototype.HidePagesView = function() {
        var e = this.node.getChildByName("icon_zw")
          , t = this.node.getChildByName("node_btn")
          , n = cc.find("content", this.node);
        t.active = false,
        e.active = false,
        n.active = false,
        null != r.default.ins.dtailList && 0 != r.default.ins.dtailList.length || 1 != this.n_MatchListPage ? (t.active = true,
        n.active = true) : e.active = true
    }
    ,
    t.prototype.resetData = function() {
        this.n_ListData = [],
        this.n_IsReadySendMatchPage = true,
        this.n_MatchListPage = 1
    }
    ,
    t.prototype.flushServerInfo = function() {
        this.resetData(),
        this.requestDirectDataList()
    }
    ,
    t.prototype.onBtnSearchClick = function() {
        app.ComUtil().playBtnClick(),
        this.flushServerInfo()
    }
    ,
    t.prototype.openlevelSelect = function() {
        var e = cc.find("btn_select/btn_select/layer_select/toggleContainer", this.node);
        e.active = !e.active
    }
    ,
    t.prototype.toggle_levelCallBack = function(e, t) {
        this.selectEndLevelStr.string = e.node.children[0].getChildByName("lbl").getComponent(cc.Label).string,
        cc.find("btn_select/btn_select/layer_select/toggleContainer", this.node).active = false,
        this.SelLevel = t,
        this.flushServerInfo()
    }
    ,
    t.prototype.setTypeNode = function() {
        var e = cc.find("btn_select/btn_select/layer_select/toggleContainer", this.node);
        if (!(e.childrenCount > 1))
            for (var t = Number(app.UserManager().UserInfo.user_config.agent_sub_level), n = 0; n <= t; n++) {
                var o = cc.instantiate(cc.find("btn_select/btn_select/layer_select/toggle_levelall", this.node))
                  , i = 0 == n ? app.i18n.t("UI_PromoteMeberAllLevel") : app.i18n.t("UI.MakeMoney_1_MakeGold_1") + n;
                cc.find("Background/lbl", o).getComponent(cc.Label).string = i,
                cc.find("checkmark/lbl", o).getComponent(cc.Label).string = i,
                o.getComponent(cc.Toggle).checkEvents[0].customEventData = n.toString(),
                o.active = true,
                e.addChild(o)
            }
    }
    ,
    t.prototype.getTime = function(e) {
        if (0 == e)
            return null;
        var t = new Date;
        return [new Date(t.getTime() - 864e5 * [0, 1, 3, 7, 30][e]).format("yyyy-MM-dd HH:mm:ss"), t.format("yyyy-MM-dd HH:mm:ss")]
    }
    ,
    t.prototype.requestDirectDataList = function() {
        var e = this.getTime(this.currentSelectIdx)
          , t = {
            page: this.n_MatchListPage,
            start_time: "",
            end_time: "",
            nickname: "",
            level: "0"
        };
        e && (t.start_time = e[0],
        t.end_time = e[1]),
        t.level = this.SelLevel,
        this.editboxMemberId.string && (t.nickname = this.editboxMemberId.string),
        app.PromoteMainManager().RequstDirectdetailList(t)
    }
    ,
    t.prototype.isHasDataList = function(e, t) {
        var n = r.default.ins.allDtailList.length
          , o = (e - 1) * t;
        if (n == o)
            this.requestDirectDataList();
        else if (n > o) {
            r.default.ins.dtailList = [];
            for (var i = o; i < r.default.ins.allDtailList.length; i++) {
                var a = r.default.ins.allDtailList[i];
                if (r.default.ins.dtailList.push(a),
                r.default.ins.dtailList.length > t)
                    break
            }
            this.OnGetDirectList()
        } else
            this.n_MatchListPage--
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_right" == e)
            return this.n_MatchListPage++,
            void this.isHasDataList(this.n_MatchListPage, this.countNum);
        "btn_left" != e || this.n_MatchListPage > 1 && (this.n_MatchListPage--,
        this.isHasDataList(this.n_MatchListPage, this.countNum))
    }
    ,
    __decorate([l(cc.Label)], t.prototype, "labelDirectNum", undefined),
    __decorate([l(cc.Label)], t.prototype, "labelTeamNum", undefined),
    __decorate([l(cc.EditBox)], t.prototype, "editboxMemberId", undefined),
    __decorate([l(cc.Prefab)], t.prototype, "itemPrefabName", undefined),
    __decorate([l(cc.Prefab)], t.prototype, "itemPrefabNameH", undefined),
    __decorate([c], t)
}(o.default);
n.default = p,
module.exports = n
