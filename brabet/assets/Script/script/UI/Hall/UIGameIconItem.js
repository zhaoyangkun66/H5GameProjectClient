let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = require("../../../Common/Define/UINameDefine")
  , r = require("./UIGameIconBlurMask")
  , s = cc._decorator
  , c = s.ccclass
  , l = (s.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.spGameIcon = null,
        t.setOnce = false,
        t.startTouchTimer = 0,
        t.iconType = 0,
        t.iconUrl = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        var e = this;
        this.JS_Name = "UIGameIconItem",
        this.RegEvent(i.GameEventDefine.UPDATE_GAME_MAINTAIN, this.UpDateMaintainInfo),
        this.node.on(cc.Node.EventType.MOUSE_ENTER, this.onMouseEnter, this),
        this.nodeState = this.GetWndNode("state"),
        app.ComTool().H5Platform() ? (this.node.on(cc.Node.EventType.TOUCH_START, function() {
            e.startTouchTimer = Date.now()
        }, this),
        this.node.on(cc.Node.EventType.TOUCH_END, function() {
            Date.now() - e.startTouchTimer < 500 && (app.ComUtil().playBtnClick(),
            e.OnStateClickFunc()),
            e.startTouchTimer = 0
        }, this),
        this.node.on(cc.Node.EventType.TOUCH_CANCEL, function() {
            e.startTouchTimer = 0
        }, this),
        this.nodeFavorite = this.GetWndNode("Node/favorite")) : this.nodeFavorite = this.GetWndNode("state/favorite"),
        this.spGameIcon = this.GetWndComponent("game", cc.Sprite);
        var t = this.GetWndNode("Node") || this.node;
        this.nodeMaintain = this.GetWndNode("weihu", t),
        this.labelMaintain = this.GetWndComponent("weihu/label", cc.Label, t),
        this.MaintainLayout = this.GetWndNode("weihu/Layout", t),
        this.lb_name = this.GetWndComponent("game/label_name", cc.Label),
        this.lb_factory = this.GetWndComponent("game/label_factory", cc.Label),
        this.tagNode = this.GetWndNode("tag", t),
        this.nodeState.on(cc.Node.EventType.MOUSE_LEAVE, this.onMouseLeave, this),
        this.nodeFavorite && this.nodeFavorite.on(cc.Node.EventType.MOUSE_LEAVE, this.onMouseLeave, this),
        this.RegEvent(i.GameEventDefine.SHOW_GAME_ICON, this.OnShowGameIcon);
        var n = this.GetWndNode("Node");
        n && app.PlaceholderManager().FirstLogin && (t.active = false,
        app.PlaceholderManager().AddBeginHideIcon(n))
    }
    ,
    t.prototype.OnEnable = function() {
        this.upDateMaintainTime = Date.now(),
        this.nodeMaintain.active = false,
        this.nodeState.active = false,
        this.defaultSpriteFrame = this.spGameIcon.spriteFrame
    }
    ,
    t.prototype.onMouseEnter = function() {
        if (!this.nodeState.active) {
            if (this.nodeState.active = true,
            !this.setOnce) {
                if (this.iconUrl) {
                    var e = app.ControlManager().GetResCache(this.iconUrl);
                    e && this.GetWndComponent("state/bg", r.default).SetTexture(e)
                }
                this.setOnce = true
            }
            app.Client.OnEvent(i.GameEventDefine.SHOW_GAME_ICON, {
                gid: this._data.gid,
                sub_gid: this._data.sub_gid
            })
        }
    }
    ,
    t.prototype.OnShowGameIcon = function(e) {
        e.gid === this._data.gid && e.sub_gid === this._data.sub_gid || (this.nodeState.active = false)
    }
    ,
    t.prototype.onMouseLeave = function() {
        this.nodeState.active && (this.nodeState.active = false)
    }
    ,
    t.prototype.resetSpriteFrame = function() {
        this.spGameIcon.spriteFrame = this.defaultSpriteFrame,
        this.setOnce = false
    }
    ,
    t.prototype.renderData = function(e) {
        this._data = e,
        this.GetWndComponent("state/name", cc.Label, this.node).string = e.name,
        this.renderFavorite(),
        this.renderMaintainInfo();
        var t = e.url || app.HGameManager().GetCountryGameLogo(e.gid, this.iconType);
        if (t) {
            this.renderTagView(),
            this.resetSpriteFrame(),
            this.iconUrl = t;
            var n = false;
            app.PlaceholderManager().GameIconNum > 0 && (app.PlaceholderManager().GameIconNum--,
            n = true),
            app.HallManager().LoadImageIncrease(this.spGameIcon.node, t, n);
            var o = app.ClientConfigManager().GetGlobalConfig.showIconName;
            if (this.lb_name && true === o && (this.lb_name.string = e.name),
            this.lb_factory && true === o) {
                var i = app.GameConfigManager().GetGameFactory(e.gid);
                this.lb_factory.string = i || ""
            }
            var a = app.GameTypeManager().GetGameBonesUrlByGid(e.gid);
            if (a && app.GameConfigManager().IsGameBones)
                this.renderSkeleton(a);
            else {
                var r = this.GetWndNode("net_node");
                if (!r)
                    return;
                r.active = false
            }
        } else
            this.ErrLog("renderData failed: " + JSON.stringify(e))
    }
    ,
    t.prototype.renderTagView = function() {
        var e = app.GameConfigManager().GetGameInfoByGid(this._data.gid);
        e && this.tagNode && (this.tagNode.active = true,
        this.GetWndNode("new", this.tagNode).active = 3 == e.tab,
        this.GetWndNode("hot", this.tagNode).active = 2 == e.tab)
    }
    ,
    t.prototype.renderSkeleton = function(e) {
        var t = this
          , n = this.GetWndNode("net_node");
        if (n) {
            var o = n.getComponent(sp.Skeleton) || n.addComponent(sp.Skeleton)
              , i = e.split("/")
              , a = e + "/" + i[i.length - 1] + "_" + this.iconType
              , r = a + ".png"
              , s = a + ".atlas"
              , c = a + ".json";
            app.ControlManager().CreateLoadPromiseByUrl(r).then(function(e) {
                app.ControlManager().CreateLoadPromiseByUrl(s).then(function(i) {
                    app.ControlManager().CreateLoadPromiseByUrl(c).then(function(a) {
                        n.active = true;
                        var s = new sp.SkeletonData;
                        s._uuid = c,
                        s.skeletonJson = a.json,
                        s.atlasText = i.text,
                        s.textures = [e];
                        var l = r.split("/");
                        s.textureNames = [l[l.length - 1]],
                        o.skeletonData = s,
                        o.animation = "animation",
                        t.resetSpriteFrame()
                    })
                })
            })
        }
    }
    ,
    t.prototype.renderMaintainInfo = function() {
        this._data.gid ? this.initMaintainInfo(this._data.gid, this._data.sub_gid) : this.nodeMaintain.active = false
    }
    ,
    t.prototype.UpDateMaintainInfo = function(e) {
        this._data.gid == e.gid && (e.sub_gid && this._data.sub_gid != e.sub_gid || this.initMaintainInfo(e.gid, e.sub_gid))
    }
    ,
    t.prototype.initMaintainInfo = function(e, t) {
        var n = app.ExternGameManager().GetExternGameInfoOrSubGameInfo(e, t);
        app.ExternGameManager().IsMaintain(e, t) ? (this.nodeMaintain.active = true,
        this.labelMaintain.node.active = -1 != this.node.name.indexOf("Recente"),
        this.MaintainLayout.active = !(-1 != this.node.name.indexOf("Recente")),
        -1 != this.node.name.indexOf("Recente") ? this.labelMaintain.string = app.i18n.t("UI_GameIcon") : (this.GetWndComponent("label1", cc.Label, this.MaintainLayout).string = app.ComUtil().timeStr(n.mtc_st_date),
        this.GetWndComponent("label2", cc.Label, this.MaintainLayout).string = app.ComUtil().timeStr(n.mtc_end_date))) : this.nodeMaintain.active = false
    }
    ,
    t.prototype.renderFavorite = function() {
        if (this.nodeFavorite) {
            if (!this._data.gid)
                return void (this.nodeFavorite.active = false);
            this.nodeFavorite.active = true;
            var e = app.GameTypeManager().IsFavoriteGame(this._data.gid, this._data.sub_gid);
            this.nodeFavorite.getComponent(cc.Toggle).isChecked = e
        }
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if ("favorite" == e)
            return app.UserManager().GetIsOfficialPopup() ? void (t.getComponent(cc.Toggle).isChecked = false) : void (this._data.gid ? (app.GameTypeManager().SetFavoriteGame(this._data.gid, this._data.sub_gid),
            app.Client.OnEvent(i.GameEventDefine.RefreshGameSelectAll)) : this.ErrLog("OnClick: " + this._data.pIdx + ", " + this._data.cIdx));
        "state" == e && this.OnStateClickFunc(),
        "weihu" == e && app.FormManager().ShowForm(a.UINameDefine.UIGameHintWindow, this._data)
    }
    ,
    t.prototype.OnStateClickFunc = function() {
        this.nodeMaintain.active ? app.FormManager().ShowForm(a.UINameDefine.UIGameHintWindow, this._data) : this.EnterGame()
    }
    ,
    t.prototype.EnterGame = function() {
        if (this._data.gid)
            app.HallManager().OnEnterGame(this._data.gid, this._data.sub_gid);
        else {
            var e = app.GameTypeManager().GetChildList(this._data.pIdx, this._data.cIdx);
            e ? app.FormManager().ShowForm(a.UINameDefine.UIGameHierarchy, {
                subInfo: e,
                topName: this._data.name
            }) : this.ErrLog("EnterGame failed: " + this._data.pIdx + ", " + this._data.cIdx)
        }
    }
    ,
    t.prototype.OnUpdate = function() {
        if (this.startTouchTimer && Date.now() - this.startTouchTimer >= 500 && (this.startTouchTimer = 0,
        this.onMouseEnter(null)),
        this.nodeMaintain.active && Date.now() - this.upDateMaintainTime >= 1e3 && (this.upDateMaintainTime = Date.now(),
        !app.ExternGameManager().IsMaintain(this._data.gid, this._data.sub_gid))) {
            var e = app.ExternGameManager().GetExternGameInfoOrSubGameInfo(this._data.gid, this._data.sub_gid);
            e && (e.mtc_status = 0),
            this.nodeMaintain.active = false
        }
    }
    ,
    __decorate([c], t)
}(o.default));
n.default = l,
module.exports = n
