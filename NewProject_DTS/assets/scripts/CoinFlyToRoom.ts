import { _decorator, Component, Prefab, NodePool, find, instantiate, tween, v3 } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('CoinFlyToRoom')
export class CoinFlyToRoom extends Component {

    @property(Prefab)
    coinPrefab: Prefab = null!;

    roomsNodes = void 0

    onLoad = function () {
        this.coinPool = new NodePool,
            this.initCoinPool(),
            this.roomsNodes = find("Canvas/content/rooms").children
    }
    playAnim = function (o, n = 10) {
        o && this.playCoinFlyAnim(o, n)
    }
    initCoinPool = function (o) {
        void 0 === o && (o = 140);
        for (var n = 0; n < o; n++) {
            var i = instantiate(this.coinPrefab);
            this.coinPool.put(i)
        }
    }
    playCoinFlyAnim = function (o, n) {
        var i = this
            , t = o.position
            , e = [];
        this.roomsNodes.forEach((function (r) {
            if (r.name != o.name) {
                var s = i.getCirclePoints(80, t, n).map((function (o, n) {
                    var e = i.getCoinNode();
                    return e.setPosition(t),
                        i.node.addChild(e),
                    {
                        node: e,
                        stPos: t,
                        mdPos: o,
                        edPos: r.position,
                        dis: o.clone().subtract(r.position).length()
                    }
                }
                ));
                e = [].concat(e, s)
            }
        }
        )),
            (e = e.sort((function (o, n) {
                return o.dis - n.dis > 0 ? 1 : o.dis - n.dis < 0 ? -1 : 0
            }
            ))).forEach((function (o, n) {
                tween(o.node).to(1, {
                    position: o.mdPos
                }).delay(.01 * n).to(.5, {
                    position: o.edPos
                }).call((function () {
                    o.node.active = false,
                        i.coinPool.put(o.node)
                }
                )).start()
            }
            ))
    }
    getCoinNode = function () {
        var o = null;
        return (o = this.coinPool.size() > 0 ? this.coinPool.get() : instantiate(this.coinPrefab)).active = true,
            o
    }
    getCirclePoints = function (o, n, i, t) {
        void 0 === t && (t = 100);
        for (var e = [], r = Math.PI / 180 * Math.round(360 / i), s = 0; s < i; s++) {
            var a = n.x + o * Math.sin(r * s)
                , c = n.y + o * Math.cos(r * s);
            e.unshift(v3(a + Math.random() * t, c + Math.random() * t, 0))
        }
        return e
    }
}


