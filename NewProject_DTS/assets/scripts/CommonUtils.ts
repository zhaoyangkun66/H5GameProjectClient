import { _decorator, Vec3, v3, tween, find } from 'cc';
const { ccclass, property } = _decorator;
import { GameStore } from "./GameStore";
import { DoorManager } from "./DoorManager";
import { LanguageData } from "./i18n_script/LanguageData";

export function randomPositionInRect(o, n) {
    return new Vec3(Math.random() * (n.x - o.x) + o.x, Math.random() * (n.y - o.y) + o.y, Math.random() * (n.z - o.z) + o.z)
}
export function getRandomPositionByRoom(o) {
    var n = {
        room1: function () {
            return randomPositionInRect(v3(0, 710, 0), v3(230, 830, 0))
        },
        room2: function () {
            return randomPositionInRect(v3(290, 710, 0), v3(440, 780, 0))
        },
        room3: function () {
            return randomPositionInRect(v3(490, 710, 0), v3(710, 780, 0))
        },
        room4: function () {
            return randomPositionInRect(v3(0, 450, 0), v3(150, 610, 0))
        },
        room5: function () {
            return randomPositionInRect(v3(210, 440, 0), v3(440, 480, 0))
        },
        room6: function () {
            return randomPositionInRect(v3(600, 340, 0), v3(710, 480, 0))
        },
        room7: function () {
            return randomPositionInRect(v3(0, 190, 0), v3(150, 320, 0))
        },
        room8: function () {
            return randomPositionInRect(v3(220, 190, 0), v3(440, 220, 0))
        }
    }[o];
    return n ? n.call(this) : (console.warn("Room ID " + o + " not recognized."),
        null)
}
export function killTurnBack(o, n) {
    "killerMonKey" == o.name ? o.getChildByName("sprite").eulerAngles = v3(0, "left" == n ? 0 : 180, 0) : o.getChildByName("sprite").eulerAngles = v3(0, "left" == n ? 180 : 0, 0)
}
export function getBrowserValue(o) {
    void 0 === o && (o = "");
    for (var n = {}, t = window.location.search.substring(1).split("&"), e = 0; e < t.length; e++) {
        var r = t[e].split("=");
        2 == r.length && (n[r[0]] = r[1])
    }
    if (o)
        return n[o] || null;
    return n
}
export function getRoomNameById(o) {
    var n = [LanguageData.inst().t("CommonUtils1"), LanguageData.inst().t("CommonUtils2"), LanguageData.inst().t("CommonUtils3"), LanguageData.inst().t("CommonUtils4"), LanguageData.inst().t("CommonUtils5"), LanguageData.inst().t("CommonUtils6"), LanguageData.inst().t("CommonUtils7"), LanguageData.inst().t("CommonUtils8")][o - 1];
    return n || ""
}
export function goRoomTween(o, n, t) {
    void 0 === t && (t = null);
    var c = n.getPosition()
        , l = {
            room1: [c, v3(530, c.y, 0), v3(530, 610, 0), v3(220, 610, 0), v3(220, 720, 0), getRandomPositionByRoom(o)],
            room2: [c, v3(530, c.y, 0), v3(530, 610, 0), v3(310, 610, 0), v3(310, 720, 0), getRandomPositionByRoom(o)],
            room3: [c, v3(530, c.y, 0), v3(530, 610, 0), v3(530, 720, 0), getRandomPositionByRoom(o)],
            room4: [c, v3(530, c.y, 0), v3(530, 610, 0), v3(210, 610, 0), v3(150, 610, 0), getRandomPositionByRoom(o)],
            room5: [c, v3(530, c.y, 0), v3(530, 355, 0), v3(300, 355, 0), v3(300, 410, 0), getRandomPositionByRoom(o)],
            room6: [c, v3(530, c.y, 0), v3(530, 350, 0), v3(600, 350, 0), getRandomPositionByRoom(o)],
            room7: [c, v3(530, c.y, 0), v3(530, 355, 0), v3(210, 355, 0), v3(150, 355, 0), getRandomPositionByRoom(o)],
            room8: [c, v3(530, c.y, 0), v3(530, 355, 0), v3(360, 355, 0), v3(360, 300, 0), getRandomPositionByRoom(o)]
        }[o];
    if (!l)
        return console.warn("Room ID " + o + " not recognized."),
            null;
    for (var s = tween(n), f = function (t) {
        var e = (0 == t ? 0 : l[t].clone().subtract(l[t - 1]).length()) / 250;
        s.to(e, {
            position: l[t]
        }),
            s.call((function () {
                var o = l[t + 1];
                o && (o.x > l[t].x ? killTurnBack(n, "right") : o.x < l[t].x && killTurnBack(n, "left"))
            }
            )),
            "killerMonKey" == n.name && t == l.length - 3 && (console.log("targetNode==>", n.name, l[t]),
                s.call((function () {
                    find("Canvas/content/doors").getComponent(DoorManager).openDoor(Number(o.replace("room", "")))
                }
                )),
                s.delay(.7))
    }, g = 0; g < l.length; g++)
        f(g);
    s.call((function () {
        t && t({
            pathPoints: l.slice()
        })
    }
    )).start()
}
export function goWaitTween(o, n) {
    void 0 === n && (n = null);
    if (!o.getComponent(GameStore).checkRoomID)
        return void (n && n());
    var t = o.getComponent(GameStore).checkRoomPath.reverse();
    if (!t)
        return console.warn("backPath not recognized."),
            null;
    for (var e = tween(o), i = function (n) {
        var r = (0 == n ? 0 : t[n].clone().subtract(t[n - 1]).length()) / 450;
        (e = e.to(r, {
            position: t[n]
        })).call((function () {
            var e = t[n + 1];
            e && (e.x > t[n].x ? killTurnBack(o, "right") : e.x < t[n].x && killTurnBack(o, "left"))
        }
        ))
    }, a = 0; a < t.length; a++)
        i(a);
    e.call((function () {
        o.getComponent(GameStore).checkRoomPath = [],
            o.getComponent(GameStore).checkRoomID = "",
            n && n()
    }
    )).start()
}
