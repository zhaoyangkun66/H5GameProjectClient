let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.GameTypeManager = undefined;
var o = function (e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.SelectToggleIdx = -1,
            t.RecentColumCount = 1,
            t.MaxHistoryGame = 8,
            t.MaxPageCount = 2,
            t.DataChange = false,
            t.TypeSelectCount = new Map,
            t.LoadTime = 0,
            t
    }
    return __extends(t, e),
        t.prototype.Init = function () {
            this.JS_Name = "GameTypeManager",
                this.Log("Init")
        }
        ,
        t.prototype.OnReload = function () {
            this.DataChange = true
        }
        ,
        Object.defineProperty(t.prototype, "GetColumCount", {
            get: function () {
                return app.ComTool().H5Platform() ? 3 : 6
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.SetRecentColumCount = function (e) {
            this.RecentColumCount = e
        }
        ,
        Object.defineProperty(t.prototype, "GetRecentColumCount", {
            get: function () {
                return this.RecentColumCount
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.SetMaxHistoryGame = function (e) {
            this.MaxHistoryGame = e
        }
        ,
        Object.defineProperty(t.prototype, "GetMaxPageCount", {
            get: function () {
                return this.MaxPageCount
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.SetTypeSelectCount = function (e) {
            var t = this.GetSelectToggleIdx.toString();
            this.TypeSelectCount.set(t, e)
        }
        ,
        t.prototype.GetTypeSelectCount = function () {
            var e = this.GetSelectToggleIdx.toString();
            return this.TypeSelectCount.get(e)
        }
        ,
        t.prototype.SetSelectToggleIdx = function (e) {
            this.SelectToggleIdx = e
        }
        ,
        Object.defineProperty(t.prototype, "GetSelectToggleIdx", {
            get: function () {
                return this.SelectToggleIdx
            },
            enumerable: false,
            configurable: true
        }),
        t.prototype.AddGameListItem = function (e, t) {
            var n = this;
            (function (t) {
                if (t.is_external || isgoServer) {
                    var o = t.sub_game_list;
                    if (o && o.length > 0)
                        o.forEach(function (t) {
                            e.push({
                                gid: t.gid,
                                sub_gid: t.sub_gid,
                                url: t.fury_icon,
                                name: t.game_name
                            })
                        });
                    else {
                        var i = app.HGameManager().GetCountryGameLogo(t.gid);
                        i ? e.push({
                            gid: t.gid,
                            url: i,
                            name: t.game_name
                        }) : n.ErrLog("GetGameTypeList: " + t.gid)
                    }
                } else
                    app.GameListManager().GetGoldGameList(t) || e.push({
                        gid: t.gid,
                        name: t.game_name
                    })
            }
            )(t)
        }
        ,
        t.prototype.GetGameTypeList = function (e, t) {
            var n = this
                , o = []
                , i = function (e) {
                    var t = app.GameConfigManager().GetGameConfig().game_type[e];
                    t ? (app.GameListManager().clearGameShowMap(),
                        t.has_child ? t.child_list.forEach(function (t, n) {
                            o.push({
                                pIdx: e,
                                name: t.type_name,
                                cIdx: n,
                                url: t.icon_on || t.icon
                            })
                        }) : t.game_list.forEach(function (e) {
                            app.UserManager().GetUserInfoConfig.game_arr.InArray(e.gid) && n.AddGameListItem(o, e)
                        })) : n.ErrLog("GetGameTypeList failed: " + e)
                };
            return e < 0 ? app.GameConfigManager().GetGameConfig().game_type.forEach(function (e, t) {
                i(t)
            }) : i(e),
                t ? o.filter(function (e) {
                    return e.name.toLowerCase().indexOf(t.toLowerCase()) > -1
                }) : o
        }
        ,
        t.prototype.GetGameTypeList_2 = function (e) {
            var t = this
                , n = []
                , o = app.GameConfigManager().GetGameConfig().game_type[e];
            if (o)
                return o.has_child ? o.child_list.forEach(function (t, o) {
                    n.push({
                        pIdx: e,
                        name: t.type_name,
                        cIdx: o,
                        url: t.icon_on || t.icon
                    })
                }) : o.game_list.forEach(function (e) {
                    app.UserManager().GetUserInfoConfig.game_arr.InArray(e.gid) && t.AddGameListItem(n, e)
                }),
                    n;
            this.ErrLog("GetGameTypeList failed: " + e)
        }
        ,
        t.prototype.GetChildList = function (e, t) {
            var n = this
                , o = app.GameConfigManager().GetGameConfig().game_type[e];
            if (!o)
                return null;
            var i = o.child_list[t];
            if (!i)
                return null;
            var a = [];
            return i.game_list.forEach(function (e) {
                app.UserManager().GetUserInfoConfig.game_arr.InArray(e.gid) && n.AddGameListItem(a, e)
            }),
                a
        }
        ,
        t.prototype.GetExternGameChildList = function (e) {
            if (!app.ExternGameManager().IsExternGame(e))
                return null;
            var t = app.GameConfigManager().GetGameChildLisItem(e);
            if (!t)
                return null;
            var n = {
                list: [],
                name: null
            };
            return n.name = t.name,
                app.UserManager().GetUserInfoConfig.game_arr.InArray(e) && this.AddGameListItem(n.list, t.HGame),
                n
        }
        ,
        t.prototype.GetRecommendTypeGameList = function () {
            var e = this
                , t = []
                , n = function (n) {
                    var o = app.GameConfigManager().GetGameConfig().game_type[n];
                    if (o)
                        for (var i = function (n, o) {
                            for (var i = 0; i < t.length; i++) {
                                var a = t[i];
                                if (a.sub_gid) {
                                    if (a.sub_gid == o && a.gid == n.gid)
                                        return
                                } else if (a.gid == n.gid)
                                    return
                            }
                            if (n.is_external || isgoServer) {
                                var r = n.sub_game_list;
                                if (r && r.length > 0)
                                    r.forEach(function (e) {
                                        e.sub_gid == o && t.push({
                                            gid: e.gid,
                                            sub_gid: e.sub_gid,
                                            url: e.fury_icon,
                                            name: e.game_name
                                        })
                                    });
                                else {
                                    var s = app.HGameManager().GetCountryGameLogo(n.gid);
                                    s ? t.push({
                                        gid: n.gid,
                                        url: s,
                                        name: n.game_name
                                    }) : e.ErrLog("GetRecommendTypeGameList: " + n.gid)
                                }
                            } else
                                t.push({
                                    gid: n.gid,
                                    name: n.game_name
                                })
                        }, a = app.GameConfigManager().GetRecommendedGameList(), r = function (e) {
                            o.game_list.forEach(function (t) {
                                t.gid == a[e].gid && app.UserManager().GetUserInfoConfig.game_arr.InArray(t.gid) && i(t, a[e].sub_gid)
                            })
                        }, s = 0; s < a.length; s++)
                            r(s);
                    else
                        e.ErrLog("GetRecommendTypeGameList failed: " + n)
                };
            return app.GameConfigManager().GetGameConfig().game_type.forEach(function (e, t) {
                n(t)
            }),
                t
        }
        ,
        t.prototype.GetGameBonesUrlByGid = function (e) {
            var t = app.GameConfigManager().GetGameInfoByGid(e);
            return t ? t.longgu_url : ""
        }
        ,
        t.prototype.GetOtherFactoryGame = function (e) {
            var t, n, o = this, i = [];
            return t = e,
                (n = app.GameConfigManager().GetOtherGameFactory(t)) && n.game ? n.game.forEach(function (e) {
                    if (e.sub_gid) {
                        var t = app.GameConfigManager().GetOtherGameList(e.gid, e.sub_gid);
                        t ? i.push({
                            gid: e.gid,
                            sub_gid: e.sub_gid,
                            name: t.name_en,
                            url: t.fury_icon
                        }) : o.ErrLog("GetOtherGameList failed: " + e.gid)
                    } else {
                        var n = app.GameConfigManager().GetGameListItem(e.gid);
                        n ? i.push({
                            gid: e.gid,
                            name: n.game_name
                        }) : o.ErrLog("GetGameList failed: " + e.gid)
                    }
                }) : o.ErrLog("gameTypeInfo.game failed: " + t),
                i
        }
        ,
        t.prototype.SetFavoriteGame = function (e, t) {

            this.DataChange = true;
            if (isgoServer) {
                for (var n = this.GetFavoriteGameArray(), o = false, i = n.length - 1; i >= 0; i--) {
                    var a = n[i];
                    a.subID == t && (this.DelFavoriteGame(a), n.splice(i, 1), o = true)
                }
            }
            else {
                for (var n = this.GetFavoriteGameArray(), o = false, i = n.length - 1; i >= 0; i--) {
                    var a = n[i];
                    t ? a.gid == e && a.subID == t && (this.DelFavoriteGame(a), n.splice(i, 1), o = true)
                        : a.gid == e && (this.DelFavoriteGame(a), n.splice(i, 1), o = true)
                }
            }
            !o && n.unshift({
                gid: e,
                subID: t
            }),
                n.length > this.MaxHistoryGame && (n.length = this.MaxHistoryGame),
                app.LocalDataManager().SetConfigObject("NewFavoriteGame", n)
        }
        ,
        t.prototype.GetFavoriteGameArray = function () {
            var e = app.LocalDataManager().GetConfigObject("NewFavoriteGame") || []
                , t = app.LocalDataManager().GetConfigObject("FavoriteGame");
            t && (Array.isArray(t) && t.forEach(function (t) {
                var n = Number(t)
                    , o = 65535 & n
                    , i = n >> 16;
                e.push({
                    gid: i,
                    subID: o
                })
            }),
                app.LocalDataManager().Remove("FavoriteGame"),
                app.LocalDataManager().SetConfigObject("NewFavoriteGame", e));
            for (var n = this.GetDelFavoriteGameArray(), o = this.GetUserCollectionArray(), i = o.length - 1; i >= 0; i--)
                for (var a = o[i], r = 0; r < n.length; r++) {
                    var s = n[r];
                    if (a.gid == s.gid && a.subID == s.subID) {
                        o.splice(i, 1);
                        break
                    }
                }
            for (r = 0; r < o.length; r++) {
                var c = o[r];
                for (i = 0; i < e.length; i++) {
                    var l = e[i];
                    if (c.gid == l.gid && c.subID == l.subID)
                        break;
                    i == e.length - 1 && e.push({
                        gid: c.gid,
                        subID: c.subID
                    })
                }
                0 == e.length && e.push({
                    gid: c.gid,
                    subID: c.subID
                })
            }
            return e
        }
        ,
        t.prototype.GetUserCollectionArray = function () {
            for (var e = [], t = app.GameConfigManager().GetGameConfig().game_info, n = 0; n < t.length; n++)
                1 === (i = t[n]).is_user_collection && e.push({
                    gid: i.gid,
                    subID: undefined
                });
            var o = app.GameConfigManager().GetGameConfig().other_game;
            for (n = 0; n < o.length; n++)
                for (var i = o[n], a = 0; a < i.gameurl.length; a++) {
                    var r = i.gameurl[a];
                    1 == r.is_user_collection && e.push({
                        gid: r.gid,
                        subID: r.gameid
                    })
                }
            return e
        }
        ,
        t.prototype.GetDelFavoriteGameArray = function () {
            return app.LocalDataManager().GetConfigObject("DelFavoriteGame") || []
        }
        ,
        t.prototype.DelFavoriteGame = function (e) {
            for (var t = this.GetDelFavoriteGameArray(), n = 0; n < t.length; n++) {
                var o = t[n];
                if (o.gid == e.gid && o.subID == e.subID)
                    return
            }
            t.push(e),
                app.LocalDataManager().SetConfigObject("DelFavoriteGame", t)
        }
        ,
        t.prototype.IsFavoriteGame = function (e, t) {
            if (isgoServer) {
                for (var n = this.GetFavoriteGameBuffer(), o = 0; o < n.length; o++) {
                    var i = n[o];
                    if (i.sub_gid == t)
                        return true
                }
            }
            else {
                for (var n = this.GetFavoriteGameBuffer(), o = 0; o < n.length; o++) {
                    var i = n[o];
                    if (i.gid == e && i.sub_gid == t)
                        return true
                }
            }
            return false
        }
        ,
        t.prototype.GetFavoriteGameBuffer = function () {
            return this.DataChange && (this.DataBuffer = this.GetFavoriteGame(),
                this.DataChange = false),
                this.DataBuffer || (this.DataBuffer = this.GetFavoriteGame()),
                this.DataBuffer
        }
        ,
        t.prototype.GetFavoriteGame = function () {
            var e = this.GetFavoriteGameArray();
            return this.GetGameList(e)
        }
        ,
        t.prototype.GetGameList = function (e) {
            var t = this
                , n = [];
            return e.forEach(function (e) {
                var o = e.gid
                    , i = e.subID
                    , a = app.GameConfigManager().GetGameListItem(o);
                if (a) {
                    if (app.UserManager().GetUserInfoConfig.game_arr.InArray(o))
                        if (a.is_external || isgoServer) {
                            var r = app.GameConfigManager().GetSubGameListItem(o, i);
                            if (r)
                                n.push({
                                    gid: r.gid,
                                    sub_gid: r.sub_gid,
                                    url: r.fury_icon,
                                    name: r.game_name
                                });
                            else if (!i) {
                                var s = app.HGameManager().GetCountryGameLogo(a.gid);
                                if (s) {
                                    var c = false;
                                    app.GameConfigManager().GetGameConfig().game_type.forEach(function (e, o) {
                                        if (!c)
                                            if (e.has_child)
                                                for (var i = 0; i < e.child_list.length; i++) {
                                                    var r = e.child_list[i];
                                                    if (r.game_list)
                                                        for (var l = 0; l < r.game_list.length; l++)
                                                            if (r.game_list[l].gid == a.gid) {
                                                                c = true,
                                                                    n.push({
                                                                        pIdx: o,
                                                                        name: r.type_name,
                                                                        cIdx: i,
                                                                        url: s
                                                                    });
                                                                break
                                                            }
                                                    if (c)
                                                        break
                                                }
                                            else {
                                                var p = app.HGameManager().GetCountryGameLogo(a.gid);
                                                p ? (c = true,
                                                    n.push({
                                                        gid: a.gid,
                                                        url: p,
                                                        name: a.game_name
                                                    })) : t.ErrLog("GetGameTypeList: " + a.gid)
                                            }
                                    })
                                } else
                                    t.ErrLog("GetGameList error: " + a.gid)
                            }
                        } else
                            n.push({
                                gid: a.gid,
                                name: a.game_name
                            })
                } else
                    t.WarnLog("GetGameListItem failed: " + o + ", maybe game is closed")
            }),
                n
        }
        ,
        t.prototype.SetHistoryGame = function (e, t) {
            undefined === t && (t = 0);
            if (isgoServer) {
                for (var n = this.GetHistoryGameArray(), o = n.length - 1; o >= 0; o--) {
                    var i = n[o];
                    if (i.subID == t) {
                        n.splice(o, 1);
                      //  break
                    }
                }
            }
            else {
                for (var n = this.GetHistoryGameArray(), o = n.length - 1; o >= 0; o--) {
                    var i = n[o];
                    if (i.gid == e && i.subID == t) {
                        n.splice(o, 1);
                        break
                    }
                } 
            }
            n.unshift({
                gid: e,
                subID: t
            }),
                n.length > this.MaxHistoryGame && (n.length = this.MaxHistoryGame),
                app.LocalDataManager().SetConfigObject("NewHistoryGame", n)
        }
        ,
        t.prototype.GetHistoryGameArray = function () {
            var e = app.LocalDataManager().GetConfigObject("NewHistoryGame") || []
                , t = app.LocalDataManager().GetConfigObject("HistoryGame");
            return t && (t.forEach(function (t) {
                var n = Number(t)
                    , o = 65535 & n
                    , i = n >> 16;
                e.push({
                    gid: i,
                    subID: o
                })
            }),
                app.LocalDataManager().Remove("HistoryGame"),
                app.LocalDataManager().SetConfigObject("NewHistoryGame", e)),
                e.length > this.MaxHistoryGame && (e.length = this.MaxHistoryGame),
                e
        }
        ,
        t.prototype.GetHistoryGame = function () {
            var e = this.GetHistoryGameArray();
            return this.GetGameList(e)
        }
        ,
        t
}(require("../../Base/Singleton").Singleton);
n.GameTypeManager = o,
    module.exports = n
