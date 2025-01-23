let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Define/GameEventDefine")
    , i = require("../../../Common/Define/UINameDefine")
    , a = require("../../../Common/Net/MsgEventDefine")
    , r = require("../../../Common/Define/ShareDefine")
    , s = require("./UIHallTop")
    , c = require("../../../Common/Define/TrackEventName")
    , l = cc._decorator
    , p = l.ccclass
    , d = (l.property,
        function (e) {
            function t() {
                var t = null !== e && e.apply(this, arguments) || this;
                return t.player_Node = null,
                    t.lbCash = null,
                    t.login_Node = null,
                    t.gold_icon = null,
                    t
            }
            return __extends(t, e),
                t.prototype.OnCreateInit = function () {
                    e.prototype.OnCreateInit.call(this),
                        // this.RegEvent(o.GameEventDefine.LOAD_HALL_SUCCESS, this.LoadHallSuccess),
                        this.RegEvent(o.GameEventDefine.SELECT_TOPTOOGLE, this.onSelectToggleContainer),
                        this.tab_cd01 = cc.find("tab/cd01", this.node)
                    this.tab_cd02 = cc.find("tab/cd02", this.node)
                    this.tab_cd03 = cc.find("tab/cd03", this.node)
                }
                ,
                t.prototype.OnShow = function () {
                    for (var t = [], n = 0; n < arguments.length; n++)
                        t[n] = arguments[n];
                    e.prototype.OnShow.apply(this, t)
                    this.onSelectToggleContainer(1)
                },
                t.prototype.OnClick = function (e, t) {
                    if ("toggle_Mission" == e) {
                        //app.ExternGameManager().RequestWatchAdsInSubGames();
                        app.HallManager().ShowHallForm(i.UINameDefine.UIActivityMission);
                        this.onSelectToggleContainer(0)
                    }
                    else if ("toggle_Game" == e) {
                        app.HallManager().ShowHallForm()
                        this.onSelectToggleContainer(1)
                    }
                    else if ("toggle_Mine" == e) {
                        app.HallManager().ShowHallForm(i.UINameDefine.UIAccount)
                        // this.onSelectToggleContainer(2)
                    }
                }
                ,
                t.prototype.onSelectToggleContainer = function (e) {
                    if (e == 0) {
                        this.tab_cd01.active = true
                        this.tab_cd02.active = false
                        this.tab_cd03.active = false
                    }
                    else if (e == 1) {
                        this.tab_cd01.active = false
                        this.tab_cd02.active = true
                        this.tab_cd03.active = false
                    }
                    else if (e == 2) {
                        this.tab_cd01.active = false
                        this.tab_cd02.active = false
                        this.tab_cd03.active = true
                    }
                    var t = cc.find("tab/toggleContainer", this.node);
                    if (t) {
                        for (let index = 0; index < t.children.length; index++) {
                            t.children[index].getChildByName("Background").active = true

                        }
                        var n = t.children[e];
                        if (n) {
                            n.getComponent(cc.Toggle).check()
                            n.getChildByName("Background").active = false
                        }
                    }
                }
                ,
                t.prototype.GetPlayerValid = function () {

                }
                ,
                t.prototype.LoadHallSuccess = function () {
                    this.login_Node.active && app.LoginManager().GetIsFormLogin && (app.LoginManager().VisitorLogin(),
                        app.LoginManager().SetIsFormLogin(false)),
                        this.GetPlayerValid(),
                        this.onSelectToggleContainer(r.Hall_SelectTopToggle.Home)
                }
                ,
                __decorate([p], t)
        }(s.default));
n.default = d,
    module.exports = n
