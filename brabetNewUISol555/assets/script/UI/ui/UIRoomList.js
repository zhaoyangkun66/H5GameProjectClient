let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/BaseForm")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/ShareDefine")
  , r = require("../../../Common/Define/UINameDefine")
  , s = require("../../common/GIDTool")
  , c = cc._decorator
  , l = c.ccclass
  , p = c.property
  , d = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.gameName = null,
        t.typeLbl = null,
        t.goldLbl = null,
        t.goldTipLbl = null,
        t.toggleList = null,
        t.RoomScrollViewItemText = null,
        t.btn_gold = null,
        t.ScrollViewContent = null,
        t.typeLayer = null,
        t.goldLayer = null,
        t.SelectedBg = null,
        t.goldSelected = null,
        t.pointSelected = null,
        t.doubleNode = null,
        t.gameData = null,
        t.searchGid = 0,
        t.gameMulti = 0,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.ScrollViewContent = this.GetWndNode("ScrollViewPlayerRoom/view/content"),
        this.doubleNode = this.GetWndNode("typeSelection/double"),
        this.typeLayer = this.GetWndNode("typeSelection/double/point/layer"),
        this.goldLayer = this.GetWndNode("typeSelection/double/gold/layer"),
        this.SelectedBg = this.GetWndNode("typeSelection/double/SelectedBg"),
        this.goldSelected = this.GetWndNode("typeSelection/double/gold/goldSelected"),
        this.pointSelected = this.GetWndNode("typeSelection/double/point/pointSelected"),
        this.RegEvent(i.GameEventDefine.ROOM_LIST, this.InitRoomList)
    }
    ,
    t.prototype.OnShow = function(e) {
        this.init();
        var t = e.gid;
        this.setGameName(app.RoomManager().GetGoldGame(t)),
        this.gameData = app.GameListManager().getGameRoomList(t),
        this.doubleNode.active = app.GameListManager().GetIsTypeShow,
        this.GetToggleView(),
        app.GameListManager().GetIsGameTruco && this.GetTrucoView(),
        this.getToggleList()
    }
    ,
    t.prototype.setGameName = function(e) {
        this.gameName.string = e
    }
    ,
    t.prototype.GetToggleView = function() {
        var e = this;
        this.toggleList.active = true,
        this.toggleList.parent.active = true,
        this.toggleList.children.forEach(function(t) {
            app.ComTool().H5Platform() && (t.width = 223.33,
            e.toggleList.getComponent(cc.Layout).resizeMode = cc.Layout.ResizeMode.CONTAINER),
            t.active = false
        })
    }
    ,
    t.prototype.GetTrucoView = function() {
        var e = Object.keys(this.gameData).length;
        if (this.toggleList.active = e > 1,
        this.toggleList.parent.active = e > 1,
        2 == e)
            this.toggleList.getComponent(cc.Layout).resizeMode = cc.Layout.ResizeMode.CHILDREN;
        else if (1 == e)
            for (var t in this.gameData[0])
                this.setGameName(t);
        this.toggleList.height = 100
    }
    ,
    t.prototype.init = function() {
        this.searchGid = 0,
        this.typeLbl.string = app.i18n.t("UI.cashout_0_main_5"),
        this.pointSelected.active = true,
        this.searchPointView(this.pointSelected, true),
        this.gameMulti = 0,
        this.goldLbl.string = app.i18n.t("UI.cashout_0_main_5"),
        this.goldSelected.active = true,
        this.searchPointView(this.goldSelected, true),
        this.ScrollViewContent.removeAllChildren()
    }
    ,
    t.prototype.getToggleList = function() {
        var e = this.toggleList.children[0]
          , t = 0;
        for (var n in this.gameData) {
            var o = "";
            for (var i in this.gameData[n])
                o = i;
            var a = this.toggleList.children[t];
            a || ((a = cc.instantiate(e)).parent = this.toggleList),
            this.GetWndComponent("Background/layout/label", cc.Label, a).string = o,
            this.GetWndComponent("checkmark/layout/label", cc.Label, a).string = o,
            this.GetWndComponent("Background/layout/icon", cc.Sprite, a).node.active = false,
            this.GetWndComponent("checkmark/layout/icon", cc.Sprite, a).node.active = false,
            a.gameName = o,
            "" == app.GameListManager().GetTypeName && 0 == t && app.GameListManager().SetTypeName(o),
            app.GameListManager().GetTypeName == o && (a.getComponent(cc.Toggle).isChecked = true,
            this.OnGameRoomList()),
            a.active = true,
            t++
        }
        app.ComTool().H5Platform() && this.GetWndComponent("typeSelection", cc.Layout).updateLayout(),
        this.setRoomNodePos(t)
    }
    ,
    t.prototype.setRoomNodePos = function(e) {
        if (app.ComTool().H5Platform()) {
            var t = this.GetWndNode("title_row_remarch")
              , n = this.GetWndNode("ScrollViewPlayerRoom")
              , o = 0
              , i = this.toggleList.active ? 0 : 100;
            this.doubleNode.active ? (t.y = e > 2 ? -453 : -382,
            o = e > 2 ? -502 : -435) : (t.y = -382 + this.doubleNode.height + i,
            o = -435 + this.doubleNode.height + i),
            n.getComponent(cc.Widget).top = Math.abs(o),
            n.getComponent(cc.Widget).updateAlignment()
        }
    }
    ,
    t.prototype.OnGameRoomList = function() {
        app.GameListManager().GetIsGameTruco && this.setGameName(app.GameListManager().GetTypeName),
        app.HGameManager().GetRoomConfig() ? this.InitRoomList() : app.HGameManager().RequestRoomConfig()
    }
    ,
    t.prototype.getGameDataList = function() {
        for (var e in this.gameData) {
            var t = this.gameData[e];
            if (t[app.GameListManager().GetTypeName])
                return t[app.GameListManager().GetTypeName]
        }
        return []
    }
    ,
    t.prototype.InitRoomList = function() {
        app.GameListManager().SetOldGameType(),
        this.OnGoldTipLbl(),
        this.OnRematchTip();
        var e = this.getGameDataList();
        this.ScrollViewContent.removeAllChildren();
        var t = [];
        if (0 == this.searchGid) {
            for (var n = function(n) {
                var o = e[n]
                  , i = app.HGameManager().GetRoomConfigByGid(o.gid);
                i && (i.forEach(function(e) {
                    e.gid = o.gid
                }),
                t = t.concat(i))
            }, o = 0; o < e.length; o++)
                n(o);
            t.sort(function(e, t) {
                return e.win_multi - t.win_multi
            });
            for (var i = 0; i < t.length; i++) {
                var a = t[i]
                  , r = cc.instantiate(this.RoomScrollViewItemText);
                this.ScrollViewContent.addChild(r),
                this.setItemInfo(r, a, a.gid)
            }
            this.updateScrollView()
        }
    }
    ,
    t.prototype.updateScrollView = function() {
        app.ComTool().H5Platform() && (this.ScrollViewContent.getComponent(cc.Layout).updateLayout(),
        this.node.height = 450 + this.ScrollViewContent.height,
        this.node.parent.getComponent(cc.Layout).updateLayout())
    }
    ,
    t.prototype.setItemInfo = function(e, t, n) {
        var o = new cc.Component.EventHandler;
        o.target = this.node,
        o.component = "UIRoomList",
        o.handler = "RoomItemClick",
        o.customEventData = String(t.way_id),
        e.getComponent(cc.Button).clickEvents = [],
        e.getComponent(cc.Button).clickEvents.push(o),
        e.opacity = 255;
        var i = e.getChildByName("Layout");
        i.getChildByName("label_point").active = !app.GameListManager().GetIsGameTruco,
        i.getChildByName("label_point").getComponent(cc.Label).string = app.i18n.t("UI.TP_0_Main_1") + ":" + t.min_gold,
        this.GetWndComponent("label_point/iocn_gold/label", cc.Label, i).string = app.GameConfigManager().GetCurrency,
        i.getChildByName("label_point2").active = app.GameListManager().GetIsGameTruco,
        i.getChildByName("label_point2").getComponent(cc.Label).string = app.i18n.t("UI.TP_0_Main_1") + ":" + t.min_gold,
        this.GetWndComponent("label_point2/iocn_gold/label", cc.Label, i).string = app.GameConfigManager().GetCurrency,
        i.getChildByName("label_name").getComponent(cc.Label).string = app.GameListManager().GetTypeName,
        i.getChildByName("label_type").getComponent(cc.Label).string = this.getTypeView(n),
        i.getChildByName("label_type").active = app.GameListManager().GetIsTypeShow;
        var a = i.getChildByName("Layout_min");
        a.getChildByName("label_min").getComponent(cc.Label).string = "" + Number(t.win_multi),
        a.active = !app.GameListManager().GetIsPoolDealRummy,
        this.GetWndComponent("iocn_gold/label", cc.Label, a).string = app.GameConfigManager().GetCurrency,
        i.getComponent(cc.Layout).updateLayout(),
        e.limit = t.min_gold,
        e.win_multi = Number(t.win_multi),
        e.gid = Number(n),
        e.active = true
    }
    ,
    t.prototype.getTypeView = function(e) {
        return app.GameListManager().GetPlayTypeName(e)
    }
    ,
    t.prototype.searchGameList = function() {
        var e = this;
        this.ScrollViewContent.children.forEach(function(t) {
            0 == e.gameMulti && 0 == e.searchGid ? t.active = true : 0 != e.gameMulti && 0 != e.searchGid ? t.active = t.win_multi == e.gameMulti && t.gid == e.searchGid : 0 == e.gameMulti && 0 != e.searchGid ? t.active = t.gid == e.searchGid : 0 != e.gameMulti && 0 == e.searchGid && (t.active = t.win_multi == e.gameMulti)
        }),
        this.updateScrollView()
    }
    ,
    t.prototype.RoomItemClick = function(e, t) {
        if (!app.UserManager().GetIsOfficialPopup()) {
            var n = e.target.limit;
            if (app.UserManager().GetUserInfo.gold < Number(n)) {
                if (app.GameConfigManager().IsExperienceServer)
                    return;
                app.ConfirmManager().ShowConfirm(a.ConfirmType.Confirm, app.i18n.t("SC_LessThanChips").replace("{S1}", String(n)), null, function() {
                    app.ActivityManager().selectShop()
                })
            } else
                app.HallManager().EnterRoomGame(Number(t))
        }
    }
    ,
    t.prototype.OnClick = function(e, t, n) {
        if ("btn_back" != e) {
            if ("gameName" == e || "gameName1" == e)
                return app.GameListManager().SetTypeName(t.gameName),
                this.init(),
                void this.OnGameRoomList();
            if ("btn_help" != e)
                return "pointSelected" == e ? (this.goldLayer.active && this.searchPointView(this.goldSelected),
                void this.searchPointView(t)) : "goldSelected" == e ? (this.typeLayer.active && this.searchPointView(this.pointSelected),
                void this.searchGoldView(t)) : "SelectedBg" == e ? (this.typeLayer.active && this.searchPointView(this.pointSelected),
                void (this.goldLayer.active && this.searchPointView(this.goldSelected))) : void ("btn_all" != e && "btn_match" != e && "btn_single" != e && "btn_Pool_101" != e && "btn_Pool_201" != e && "btn_Deal_2" != e && "btn_Deal_3" != e ? "btn_gold" != e || this.setGoldView(Number(t.gold)) : this.setPointView(Number(n)));
            app.GameListManager().OpenGameHelp()
        } else
            app.FormManager().IsFormShow(r.UINameDefine.UIHall) || app.FormManager().ShowForm(r.UINameDefine.UIHall)
    }
    ,
    t.prototype.searchPointView = function(e, t) {
        undefined === t && (t = false);
        var n = this.GetWndNode("layer", e.parent);
        n.active = !n.active,
        t && (n.active = false);
        var o = this.GetWndNode("icon_drop", e);
        o.scaleY = t ? Math.abs(o.scaleY) : -o.scaleY,
        o.color = n.active ? new cc.Color(255,255,255) : new cc.Color(147,172,211),
        this.SelectedBg.active = n.active,
        this.gameData && (this.GetWndNode("btn_Pool_101", this.typeLayer).active = app.GameListManager().GetPlayPoolRummy,
        this.GetWndNode("btn_Pool_201", this.typeLayer).active = app.GameListManager().GetPlayPoolRummy,
        this.GetWndNode("btn_match", this.typeLayer).active = !app.GameListManager().GetIsPoolDealRummy,
        this.GetWndNode("btn_single", this.typeLayer).active = !app.GameListManager().GetIsPoolDealRummy,
        this.GetWndNode("btn_Deal_2", this.typeLayer).active = app.GameListManager().GetPlayDealRummy,
        this.GetWndNode("btn_Deal_3", this.typeLayer).active = app.GameListManager().GetPlayDealRummy)
    }
    ,
    t.prototype.setPointView = function(e) {
        0 == e && (this.searchGid = 0),
        app.GameListManager().GetIsGameRummy ? 1 == e ? this.searchGid = app.GameListManager().GetTypeName == app.GameListManager().GetGameTypeName(s.GIDTool.RUMMY) ? s.GIDTool.RUMMY : s.GIDTool.RUMMY_2P : 2 == e ? this.searchGid = app.GameListManager().GetTypeName == app.GameListManager().GetGameTypeName(s.GIDTool.RUMMY_SINGLE) ? s.GIDTool.RUMMY_SINGLE : s.GIDTool.RUMMY_2P_SINGLE : 3 == e ? this.searchGid = s.GIDTool.RUMMY_Pool_101 : 4 == e ? this.searchGid = s.GIDTool.RUMMY_Pool_201 : 5 == e ? this.searchGid = s.GIDTool.RUMMY_Deal_2P : 6 == e && (this.searchGid = s.GIDTool.RUMMY_Deal_3P) : app.GameListManager().GetIsGameTeenPatti && (1 == e ? this.searchGid = app.GameListManager().GetTypeName == app.GameListManager().GetGameTypeName(s.GIDTool.YDZJH) ? s.GIDTool.YDZJH : s.GIDTool.Royal_TP : 2 == e && (this.searchGid = app.GameListManager().GetTypeName == app.GameListManager().GetGameTypeName(s.GIDTool.TP_SINGLE) ? s.GIDTool.TP_SINGLE : s.GIDTool.Royal_TP_SINGLE)),
        this.typeLbl.string = app.GameListManager().GetPlayTypeName(this.searchGid),
        this.searchPointView(this.pointSelected),
        this.searchGameList()
    }
    ,
    t.prototype.searchGoldView = function(e, t) {
        undefined === t && (t = false),
        this.searchPointView(e, t);
        var n = this.GetWndNode("layer", e.parent);
        if (n.active) {
            n.removeAllChildren();
            var o = this.getGameDataList();
            if (n.active) {
                for (var i = [0], a = 0; a < o.length; a++) {
                    var r = o[a]
                      , s = app.HGameManager().GetRoomConfigByGid(r.gid);
                    if (s)
                        for (var c = 0; c < s.length; c++) {
                            var l = s[c];
                            i.indexOf(Number(l.win_multi)) > -1 || i.push(Number(l.win_multi))
                        }
                }
                for (i.length > 1 && i.sort(function(e, t) {
                    return e - t
                }),
                a = 0; a < i.length; a++) {
                    r = i[a];
                    var p = cc.instantiate(this.btn_gold);
                    p.gold = r,
                    p.getChildByName("label_players").getComponent(cc.Label).string = 0 == r ? app.i18n.t("UI.cashout_0_main_5") : "" + r,
                    p.active = true,
                    p.parent = n
                }
            }
        }
    }
    ,
    t.prototype.setGoldView = function(e) {
        this.gameMulti = e,
        this.goldLbl.string = 0 == e ? app.i18n.t("UI.cashout_0_main_5") : "" + e,
        this.searchPointView(this.goldSelected),
        this.searchGameList()
    }
    ,
    t.prototype.OnGoldTipLbl = function() {
        this.goldTipLbl.string = app.GameListManager().GetPlayPoolRummy || app.GameListManager().GetPlayDealRummy ? app.i18n.t("UI_RoomList_MinEntry") : app.i18n.t("UI_RoomList2")
    }
    ,
    t.prototype.OnRematchTip = function() {
        var e = this.GetWndNode("title_row_remarch");
        this.GetWndNode("label_type", e).active = app.GameListManager().GetIsTypeShow,
        this.GetWndNode("label_Min Entry", e).active = !app.GameListManager().GetIsGameTruco,
        this.GetWndNode("label_Point Value", e).active = !app.GameListManager().GetIsPoolDealRummy,
        this.GetWndNode("label_Min Entry2", e).active = app.GameListManager().GetIsGameTruco,
        e.getComponent(cc.Layout).updateLayout()
    }
    ,
    __decorate([p(cc.Label)], t.prototype, "gameName", undefined),
    __decorate([p(cc.Label)], t.prototype, "typeLbl", undefined),
    __decorate([p(cc.Label)], t.prototype, "goldLbl", undefined),
    __decorate([p(cc.Label)], t.prototype, "goldTipLbl", undefined),
    __decorate([p(cc.Node)], t.prototype, "toggleList", undefined),
    __decorate([p(cc.Prefab)], t.prototype, "RoomScrollViewItemText", undefined),
    __decorate([p(cc.Node)], t.prototype, "btn_gold", undefined),
    __decorate([l], t)
}(o.default);
n.default = d,
module.exports = n
