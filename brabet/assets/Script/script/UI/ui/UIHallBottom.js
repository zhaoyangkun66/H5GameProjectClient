let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o, i = require("../../../Common/Base/BaseForm"), a = require("../../../Common/Define/GameEventDefine"), r = require("../../../Common/Define/ShareDefine"), s = require("../../../Common/Define/TextDefine"), c = require("../../../Common/Define/UINameDefine"), l = cc._decorator, p = l.ccclass, d = (l.property,
o = cc.Node,
__extends(function() {
    return null !== o && o.apply(this, arguments) || this
}, o),
function(e) {
    __extends(function() {
        return null !== e && e.apply(this, arguments) || this
    }, e)
}(cc.Node),
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.gameFastJoinList = null,
        t.gameNode = null,
        t.BottomTextList = null,
        t.gameIcon = null,
        t.txtIcon = null,
        t.isGameList = false,
        t.textNode = null,
        t.gameFastCloneItem = null,
        t.textItem = null,
        t.iconItem = null,
        t.logoItem = null,
        t.sprItem = null,
        t.BottomLabel = null,
        t.list_icon = null,
        t.list_logo = null,
        t.official = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIHallBottom",
        this.gameNode = app.ComTool().H5Platform() ? this.GetWndNode("game") : this.GetWndNode("layout/game"),
        this.gameFastJoinList = app.ComTool().H5Platform() ? this.GetWndNode("game/li") : this.GetWndNode("layout/game/ScrollView/view/li"),
        this.gameFastCloneItem = app.ComTool().H5Platform() ? this.GetWndNode("game/btn_JoinGame") : this.GetWndNode("layout/game/ScrollView/view/btn_JoinGame"),
        this.BottomTextList = app.ComTool().H5Platform() ? this.GetWndNode("text1/li") : this.GetWndNode("layout/text1/li"),
        this.textItem = app.ComTool().H5Platform() ? this.GetWndNode("text1/li/btn_lbl") : this.GetWndNode("layout/text1/li/btn_lbl"),
        this.gameIcon = app.ComTool().H5Platform() ? this.GetWndNode("game/gameIcon/btn_gameIcon/icon_jiantou") : null,
        this.txtIcon = app.ComTool().H5Platform() ? this.GetWndNode("text1/text/btn_text/icon_jiantou") : null,
        this.textNode = app.ComTool().H5Platform() ? this.GetWndNode("18/text") : this.GetWndNode("layout/18/text"),
        this.sprItem = app.ComTool().H5Platform() ? this.GetWndNode("18/sprItem") : this.GetWndNode("layout/18/sprItem"),
        this.BottomLabel = app.ComTool().H5Platform() ? this.GetWndComponent("18/label", cc.Label) : this.GetWndComponent("layout/18/label", cc.Label),
        this.official = app.ComTool().H5Platform() ? this.GetWndNode("Official") : this.GetWndNode("layout/18/Official"),
        this.list_icon = app.ComTool().H5Platform() ? this.GetWndNode("space/list_icon") : this.GetWndNode("layout/18/third/list_icon"),
        this.iconItem = app.ComTool().H5Platform() ? this.GetWndNode("space/spr_icon") : this.GetWndNode("layout/18/third/spr_icon"),
        this.list_logo = app.ComTool().H5Platform() ? this.GetWndNode("space/list_logo") : this.GetWndNode("layout/18/third/list_logo"),
        this.logoItem = app.ComTool().H5Platform() ? this.GetWndNode("space/spr_logo") : this.GetWndNode("layout/18/third/spr_logo"),
        this.isGameList = false,
        this.RegEvent(a.GameEventDefine.GET_FAQ_LIST, this.OnBottomTextList),
        this.RegEvent(a.GameEventDefine.SEND_END, this.OnFastGameJoinList),
        this.RegEvent(a.GameEventDefine.GET_OUT_LINKS, this.OnOfficialList),
        this.RegEvent(a.GameEventDefine.GET_FOOTER_PICS, this.OnBottomTextIconList),
        this.RegEvent(a.GameEventDefine.INIT_TEXT, this.setBottomLabel),
        this.setNodeShow()
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        app.SupportManager().GetOfficeList || app.SupportManager().RequestOutLink(),
        app.HallManager().GetFaqList() || app.HallManager().RequestFaqList(),
        this.isGameList || this.OnFastGameJoinList(),
        app.HallManager().GetFooterPics() || app.HallManager().RequestFooterPics();
        var n = app.UserManager().UserInfo.user_config.show_arr;
        n && (this.textNode.active = 1 == n[r.VisibleBtnTag.BottomGCItem],
        this.gameNode.active = 1 == n[r.VisibleBtnTag.bottomGame]),
        this.setBottomLabel(),
        this.OnBottomIconList()
    }
    ,
    t.prototype.OnClick = function(e, t) {
        if (e.startsWith("btn_JoinGame"))
            if ((o = t).Gid)
                app.HallManager().RequestHundredLeaveEnterRoom(o.Gid);
            else {
                var n = app.GameConfigManager().GetOtherGameFactory(Number(t.factoryId));
                app.FormManager().ShowForm(c.UINameDefine.UIGameHierarchy, {
                    subInfo: Number(t.factoryId),
                    topName: n.name
                })
            }
        else if (e.startsWith("btn_FAQ"))
            app.FormManager().ShowForm(c.UINameDefine.UIFAQ);
        else if (e.startsWith("btn_lbl")) {
            var o = t;
            app.FormManager().ShowForm(c.UINameDefine.UIText, o.tagname)
        } else {
            if (e.startsWith("btn_text") || e.startsWith("text"))
                return this.txtIcon && (this.txtIcon.scaleY = -this.txtIcon.scaleY),
                void (this.BottomTextList.active = !this.BottomTextList.active);
            if (e.startsWith("btn_gameIcon") || e.startsWith("gameIcon"))
                return this.gameIcon && (this.gameIcon.scaleY = -this.gameIcon.scaleY),
                void (this.gameFastJoinList.active = !this.gameFastJoinList.active);
            if ("sprItem" != e)
                if ("btn_official" != e)
                    ;
                else {
                    var i = t;
                    cc.sys.openURL(i.Link_url)
                }
            else {
                var a = t.url;
                a && cc.sys.openURL(a)
            }
        }
    }
    ,
    t.prototype.OnFastGameJoinList = function() {
        var e = this
          , t = app.GameConfigManager().GetBottomFastGame();
        if (t && this.gameNode.active) {
            var n = this.gameFastCloneItem;
            this.gameFastJoinList.removeAllChildren(),
            t.forEach(function(t) {
                var o = cc.instantiate(n);
                o && (o.getComponent(cc.Label).string = t.game_name,
                o.active = true,
                o.Gid = t.gid,
                e.gameFastJoinList.addChild(o))
            });
            var o = app.GameConfigManager().GetGameConfig().other_game_factory;
            if (o) {
                for (var i = 0; i < o.length; i++) {
                    var a = o[i]
                      , r = cc.instantiate(n);
                    r.getComponent(cc.Label).string = a.name,
                    r.active = true,
                    r.factoryId = a.id,
                    this.gameFastJoinList.addChild(r)
                }
                this.isGameList = true
            }
        }
    }
    ,
    t.prototype.OnBottomTextList = function(e) {
        var t = e.index_list
          , n = this.BottomTextList.getChildByName("fury")
          , o = this.textItem;
        n.removeAllChildren(),
        t.forEach(function(e) {
            var t = e
              , i = cc.instantiate(o);
            i && t && (i.getComponent(cc.Label).string = t.title,
            i.tagname = t.name,
            i.active = true,
            n.addChild(i))
        })
    }
    ,
    t.prototype.OnBottomIconList = function() {
        var e = this
          , t = app.GameConfigManager().GetGamePartners(1);
        if (t) {
            var n = this.iconItem;
            this.list_icon.removeAllChildren(),
            t.forEach(function(t) {
                var o = cc.instantiate(n);
                o && (app.ImageUtil().LoadImage(o, t.img_url),
                o.active = true,
                e.list_icon.addChild(o))
            })
        }
        var o = app.GameConfigManager().GetGamePartners(2);
        if (o) {
            var i = this.logoItem;
            this.list_logo.removeAllChildren(),
            o.forEach(function(t) {
                var n = cc.instantiate(i);
                n && (app.ImageUtil().LoadImage(n, t.img_url),
                n.active = true,
                e.list_logo.addChild(n))
            })
        }
    }
    ,
    t.prototype.OnBottomTextIconList = function() {
        var e = this;
        if (this.textNode.removeAllChildren(),
        this.textNode.active) {
            var t = app.HallManager().GetFooterPics();
            if (t) {
                var n = this.sprItem;
                t.forEach(function(t) {
                    var o = cc.instantiate(n);
                    o && (app.ImageUtil().LoadImage(o, t.img_url),
                    o.url = t.jump_url,
                    o.active = true,
                    e.textNode.addChild(o))
                })
            }
        }
    }
    ,
    t.prototype.setBottomLabel = function() {
        var e = app.TextManager().GetTextInfo(s.TextDefine.footer_notice_text) || app.i18n.t("UI_BOTTOM_TXT");
        this.BottomLabel.string = e;
        var t = app.TextManager().GetTextInfo(s.TextDefine.web_cfg_title) || app.i18n.t("UI_Official_Channel");
        this.GetWndComponent("lbl", cc.Label, this.official).string = t
    }
    ,
    t.prototype.setNodeShow = function() {
        if (app.ComTool().H5Platform()) {
            var e = !app.GameConfigManager().IsExperienceServer;
            this.gameNode.active = e,
            this.GetWndNode("text1").active = e,
            this.GetWndNode("space").active = e
        }
    }
    ,
    t.prototype.OnOfficialList = function() {
        var e = app.SupportManager().GetOfficeList;
        if (this.official.active = 0 != e.length,
        0 != e.length) {
            for (var t = this.GetWndNode("entrance", this.official), n = t.children[0], o = 1, i = 0; i < e.length; i++) {
                o++;
                var a = e[i]
                  , r = t.children[i];
                r || (r = cc.instantiate(n),
                t.addChild(r));
                var s = this.GetWndNode("Background", r);
                s && app.ImageUtil().LoadImage(s, a.icon_url),
                r.Link_url = a.link_url,
                r.active = true
            }
            this.OnHideChildNode(o, t)
        }
    }
    ,
    t.prototype.OnHideChildNode = function(e, t) {
        for (var n = t.children.length, o = e + 1; o < n; o++) {
            var i = t.children[o];
            i && (i.active = false)
        }
    }
    ,
    __decorate([p], t)
}(i.default));
n.default = d,
module.exports = n
