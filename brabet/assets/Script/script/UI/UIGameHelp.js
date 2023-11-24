let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
  , i = require("../../Common/Bundle/BundleManager")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ImageUrl = {
            "en-us": "_help_en",
            "pt-pt": "_help_pt",
            "vi-vn": "_help_yn",
            "hi-in": "_help_in"
        },
        t.help_node = null,
        t.content = null,
        t.help_1 = null,
        t.help_2 = null,
        t.btn_next = null,
        t.btn_close = null,
        t.helpView = null,
        t.pageView = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.JS_Name = "UIGameHelp",
        this.GetWndNode("general").scale = app.ComTool().H5Platform() ? 1 : .7,
        this.help_2 && (this.help_2.active = false),
        this.help_1 && (this.help_1.active = false)
    }
    ,
    t.prototype.OnShow = function(e) {
        if (e)
            if (this.bundle = e.bundle,
            e.HelpPage) {
                if (this.content.removeAllChildren(),
                0 == this.content.childrenCount)
                    for (var t = 0; t < e.HelpPage; t++) {
                        var n = cc.instantiate(this.help_node);
                        this.getHelpNodeSpr(e.bundle, n, t),
                        n.active = true,
                        this.help_2 && (this.help_2.active = true)
                    }
            } else
                this.helpView.removeAllChildren(),
                this.getHelpNode(e.bundle, e.helpName),
                this.setBtnDisable(true),
                this.help_1 && (this.help_1.active = true);
        else
            this.CloseForm()
    }
    ,
    t.prototype.setBtnDisable = function(e) {
        this.btn_next.active = e
        this.btn_close.active = !e
    }
    ,
    t.prototype.getHelpNode = function(e, t) {
        var n = this
          , o = t || e + "_help";
        i.BundleManager.LoadAssets("prefab/" + o, this.bundle, cc.Prefab).then(function(e) {
            var t = cc.instantiate(e);
            n.helpView.addChild(t),
            n.pageView = t.getComponent(cc.PageView),
            n.pageView && n.pageView.node.on("scroll-ended", n.pageTurnEnded.bind(n))
        })
    }
    ,
    t.prototype.pageTurnEnded = function() {
        this.pageView.getCurrentPageIndex() >= this.pageView.getPages().length - 1 ? this.setBtnDisable(false) : this.setBtnDisable(true)
    }
    ,
    t.prototype.getHelpNodeSpr = function(e, t, n) {
        var o = this
          , a = app.LanguageManager().GetLocalLanguage(true)
          , r = this.ImageUrl[a];
        r && (r = 0 == n ? e + r : e + r + n,
        i.BundleManager.LoadAssets("atlas/" + r, this.bundle, cc.SpriteFrame).then(function(e) {
            t.getComponent(cc.Sprite).spriteFrame = e,
            o.content.addChild(t)
        }).catch(function() {
            o.getEnHelpNodeSpr(e, t, n)
        }))
    }
    ,
    t.prototype.getEnHelpNodeSpr = function(e, t, n) {
        var o = this;
        if ("en-us" != app.LanguageManager().GetLocalLanguage(true)) {
            var a = 0 == n ? e + this.ImageUrl["en-us"] : e + this.ImageUrl["en-us"] + n;
            i.BundleManager.LoadAssets("atlas/" + a, this.bundle, cc.SpriteFrame).then(function(e) {
                t.getComponent(cc.Sprite).spriteFrame = e,
                o.content.addChild(t)
            })
        }
    }
    ,
    t.prototype.OnClick = function(e) {
        if ("btn_next" != e)
            ;
        else {
            var t = this.pageView.getCurrentPageIndex();
            this.pageView.scrollToPage(t + 1, this.pageView.pageTurningSpeed)
        }
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.help_2 && (this.help_2.active = false),
        this.help_1 && (this.help_1.active = false)
    }
    ,
    __decorate([s(cc.Node)], t.prototype, "help_node", undefined),
    __decorate([s(cc.Node)], t.prototype, "content", undefined),
    __decorate([s(cc.Node)], t.prototype, "help_1", undefined),
    __decorate([s(cc.Node)], t.prototype, "help_2", undefined),
    __decorate([s(cc.Node)], t.prototype, "btn_next", undefined),
    __decorate([s(cc.Node)], t.prototype, "btn_close", undefined),
    __decorate([s(cc.Node)], t.prototype, "helpView", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
