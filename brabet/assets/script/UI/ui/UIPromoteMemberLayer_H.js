let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Model/D_PromoteMember")
  , r = cc._decorator
  , s = r.ccclass
  , c = r.property
  , l = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.editboxMemberId = null,
        t.itemPrefabNameH = null,
        t.PageNum = 1,
        t.MaxPage = 2,
        t.isAddPage = false,
        t.SelLevel = "0",
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.RegEvent(i.GameEventDefine.GET_DIRECTDETAILLIST, this.OnGetDirectList),
        this.selectEndLevelStr = cc.find("/btn_select/btn_select/lbl", this.node).getComponent(cc.Label)
    }
    ,
    t.prototype.OnEnable = function() {
        this.PageNum = 1,
        this.currentSelectIdx = 0,
        this.MaxPage = 9999,
        this.SelLevel = "0",
        this.selectEndLevelStr.string = app.i18n.t("UI_PromoteMeberAllLevel"),
        this.QuestServerInfo(),
        this.setTypeNode()
    }
    ,
    t.prototype.OnGetDirectList = function() {
        var e = a.default.ins.dtailList;
        this.setRecordListData(),
        cc.find("/node_btn/label", this.node).getComponent(cc.Label).string = "" + this.PageNum,
        (this.isAddPage && 0 == e.length || 1 == this.PageNum && 0 == e.length || e.length < 10) && (this.MaxPage = this.PageNum),
        app.Client.OnEvent(i.GameEventDefine.TOP_MAINSCROLLVIEW)
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
    t.prototype.setRecordListData = function() {
        for (var e = a.default.ins.dtailList, t = cc.find("content", this.node), n = 0; n < t.children.length; n++)
            (o = t.children[n]).active = false;
        for (n = 0; n < e.length; n++) {
            var o = e[n]
              , i = t.children[n] ? t.children[n] : cc.instantiate(this.itemPrefabNameH);
            if (i) {
                for (var r = [app.ComUtil().cutStr(o.nickname, 17), o.uid, o.team_num, o.level, o.create_time.substring(0, o.create_time.lastIndexOf(":")), app.ScoreUtil().formatScore22(o.total_cash)], s = 0; s < i.children.length && s < r.length; ++s)
                    i.children[s].children[0].getComponent(cc.Label).string = "" + r[s];
                i.active = true,
                t.children[n] || t.addChild(i)
            }
        }
        cc.find("icon_zw", this.node) && (cc.find("icon_zw", this.node).active = 0 == e.length)
    }
    ,
    t.prototype.openlevelSelect = function() {
        var e = cc.find("btn_select/btn_select/layer_select/toggleContainer", this.node);
        e.active = !e.active
    }
    ,
    t.prototype.QuestServerInfo = function() {
        var e = this.getTime(this.currentSelectIdx)
          , t = {
            page: this.PageNum,
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
    t.prototype.OnClick = function(e, t, n) {
        if ("btn_right" != e)
            if ("btn_left" != e) {
                if ("toggle1" != e && "toggle2" != e && "toggle3" != e && "toggle4" != e && "toggle5" != e)
                    return "toggle_levelall" == e ? (this.selectEndLevelStr.string = t.node.children[0].getChildByName("lbl").getComponent(cc.Label).string,
                    cc.find("btn_select/btn_select/layer_select/toggleContainer", this.node).active = false,
                    this.SelLevel = n,
                    this.PageNum = 1,
                    this.MaxPage = 9999,
                    void this.QuestServerInfo()) : void ("btn_select" != e || this.openlevelSelect());
                this.setSelectTime(n)
            } else
                this.PageNum > 1 && (this.PageNum--,
                this.isAddPage = false,
                this.QuestServerInfo());
        else
            this.PageNum && this.PageNum < this.MaxPage && (this.PageNum++,
            this.isAddPage = true,
            this.QuestServerInfo())
    }
    ,
    t.prototype.serchEvent = function() {
        this.PageNum = 1,
        this.QuestServerInfo()
    }
    ,
    t.prototype.setSelectTime = function(e) {
        app.ComUtil().playBtnClick(),
        this.currentSelectIdx = e,
        this.PageNum = 1,
        this.MaxPage = 9999,
        this.QuestServerInfo()
    }
    ,
    t.prototype.getTime = function(e) {
        if (0 == e)
            return null;
        var t = new Date;
        return [new Date(t.getTime() - 864e5 * [0, 1, 3, 7, 30][e]).format("yyyy-MM-dd HH:mm:ss"), t.format("yyyy-MM-dd HH:mm:ss")]
    }
    ,
    __decorate([c(cc.EditBox)], t.prototype, "editboxMemberId", undefined),
    __decorate([c(cc.Prefab)], t.prototype, "itemPrefabNameH", undefined),
    __decorate([s], t)
}(o.default);
n.default = l,
module.exports = n
