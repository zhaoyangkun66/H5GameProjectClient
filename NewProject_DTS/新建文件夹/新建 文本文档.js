System.register("chunks:///_virtual/AmountOption.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./SubmitBtn.ts", "./GameManager.ts"], (function (t) {
    var n, e, o, i, r, a, u, p, c, s, l, m, h, g, d, f;
    return {
        setters: [function (t) {
            n = t.applyDecoratedDescriptor,
                e = t.inheritsLoose,
                o = t.initializerDefineProperty,
                i = t.assertThisInitialized
        }
            , function (t) {
                r = t.cclegacy,
                    a = t._decorator,
                    u = t.Prefab,
                    p = t.UITransform,
                    c = t.Graphics,
                    s = t.Color,
                    l = t.instantiate,
                    m = t.Label,
                    h = t.Node,
                    g = t.Component
            }
            , function (t) {
                d = t.SubmitBtn
            }
            , function (t) {
                f = t.GameManager
            }
        ],
        execute: function () {
            var b, C, v, y, O, P, z, S, A;
            r._RF.push({}, "0ff3dTXUhtPnpHtQOHRLtuF", "AmountOption", void 0);
            var H = a.ccclass
                , R = a.property;
            t("AmountOption", (b = H("AmountOption"),
                C = R(u),
                v = R(d),
                y = R(f),
                b((z = n((P = function (t) {
                    function n() {
                        for (var n, e = arguments.length, r = new Array(e), a = 0; a < e; a++)
                            r[a] = arguments[a];
                        return n = t.call.apply(t, [this].concat(r)) || this,
                            o(n, "amountOptionPrefab", z, i(n)),
                            n.rectHeight = void 0,
                            o(n, "submitBtnComponent", S, i(n)),
                            o(n, "gameManagerComponent", A, i(n)),
                            n.optionSize = void 0,
                            n
                    }
                    e(n, t);
                    var r = n.prototype;
                    return r.onLoad = function () {
                        this.optionSize = this.amountOptionPrefab.data.getComponent(p);
                        var t = this.gameManagerComponent.amountOption;
                        this.rectHeight = this.optionSize.height * t.length + 20,
                            this.drawRoundedRect(),
                            this.addAmountOptions(t)
                    }
                        ,
                        r.drawRoundedRect = function () {
                            var t = this.node.getComponent(c);
                            t.clear(),
                                t.fillColor = s.WHITE,
                                t.roundRect(0, 0, 125, this.rectHeight, 10),
                                t.fill()
                        }
                        ,
                        r.addAmountOptions = function (t) {
                            var n = this
                                , e = this.optionSize.width / 2
                                , o = this.rectHeight - this.optionSize.height / 2 - 10;
                            t.forEach((function (t, i) {
                                var r = l(n.amountOptionPrefab);
                                r.getChildByName("amount").getComponent(m).string = t.toString(),
                                    r.setPosition(e, o - i * n.optionSize.height),
                                    n.node.addChild(r),
                                    r.on(h.EventType.TOUCH_START, n.checkPrice, n)
                            }
                            ))
                        }
                        ,
                        r.checkPrice = function (t) {
                            var n = t.target.getChildByName("amount").getComponent(m).string;
                            this.gameManagerComponent.setCheckoutAmount(Number(n)),
                                this.gameManagerComponent.toggleCheckPrice()
                        }
                        ,
                        n
                }(g)).prototype, "amountOptionPrefab", [C], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    S = n(P.prototype, "submitBtnComponent", [v], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    A = n(P.prototype, "gameManagerComponent", [y], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    O = P)) || O));
            r._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/AudioManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (i) {
    var n, t, l, e, o, a, r, u;
    return {
        setters: [function (i) {
            n = i.applyDecoratedDescriptor,
                t = i.inheritsLoose,
                l = i.initializerDefineProperty,
                e = i.assertThisInitialized
        }
            , function (i) {
                o = i.cclegacy,
                    a = i._decorator,
                    r = i.AudioSource,
                    u = i.Component
            }
        ],
        execute: function () {
            var p, s, c, f, h, y, d, b, g, w, k, m, v, z, A, C, K;
            o._RF.push({}, "f956d1zc0ZOJq6QpLOH2/fh", "AudioManager", void 0);
            var M = a.ccclass
                , W = a.property;
            i("AudioManager", (p = M("AudioManager"),
                s = W(r),
                c = W(r),
                f = W(r),
                h = W(r),
                y = W(r),
                d = W(r),
                b = W(r),
                p((k = n((w = function (i) {
                    function n() {
                        for (var n, t = arguments.length, o = new Array(t), a = 0; a < t; a++)
                            o[a] = arguments[a];
                        return n = i.call.apply(i, [this].concat(o)) || this,
                            l(n, "bgm", k, e(n)),
                            l(n, "playClick", m, e(n)),
                            l(n, "killed", v, e(n)),
                            l(n, "countdown", z, e(n)),
                            l(n, "killerWieldKnife", A, e(n)),
                            l(n, "win", C, e(n)),
                            l(n, "fail", K, e(n)),
                            n
                    }
                    t(n, i);
                    var o = n.prototype;
                    return o.onLoad = function () { }
                        ,
                        o.start = function () {
                            this.play("bgm", !0)
                        }
                        ,
                        o.playKnife = function () {
                            var i = this;
                            this.killerWieldKnife.loop = !0,
                                this.killerWieldKnife.play(),
                                this.scheduleOnce((function () {
                                    i.killerWieldKnife.stop()
                                }
                                ), 2.7)
                        }
                        ,
                        o.playKilled = function () {
                            var i = this;
                            this.killed.loop = !0,
                                this.killed.play(),
                                this.scheduleOnce((function () {
                                    i.killed.stop()
                                }
                                ), 3)
                        }
                        ,
                        o.playClickAudio = function () {
                            this.playClick.play()
                        }
                        ,
                        o.playCountdown = function () {
                            this.countdown.playing || (this.countdown.loop = !0,
                                this.countdown.play())
                        }
                        ,
                        o.stopCountdown = function () {
                            this.countdown.playing && this.countdown.stop()
                        }
                        ,
                        o.playSuccess = function () {
                            this.win.playing || this.win.play()
                        }
                        ,
                        o.stopSuccess = function () {
                            this.win.playing && this.win.stop()
                        }
                        ,
                        o.playFail = function () {
                            this.fail.playing || this.fail.play()
                        }
                        ,
                        o.stopFail = function () {
                            this.fail.playing && this.fail.stop()
                        }
                        ,
                        o.play = function (i, n) {
                            void 0 === n && (n = !1),
                                this[i] && (this[i].loop = n,
                                    this[i].play())
                        }
                        ,
                        o.pause = function (i) {
                            this[i] && this[i].pause()
                        }
                        ,
                        o.stop = function (i) {
                            this[i] && this[i].stop()
                        }
                        ,
                        n
                }(u)).prototype, "bgm", [s], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    m = n(w.prototype, "playClick", [c], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    v = n(w.prototype, "killed", [f], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    z = n(w.prototype, "countdown", [h], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    A = n(w.prototype, "killerWieldKnife", [y], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    C = n(w.prototype, "win", [d], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    K = n(w.prototype, "fail", [b], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    g = w)) || g));
            o._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/BalanceManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (n) {
    var e, a, t, o, r;
    return {
        setters: [function (n) {
            e = n.inheritsLoose
        }
            , function (n) {
                a = n.cclegacy,
                    t = n._decorator,
                    o = n.Label,
                    r = n.Component
            }
        ],
        execute: function () {
            var c;
            a._RF.push({}, "adfa3ADyYZMPaloGBXNLLYR", "BalanceManager", void 0);
            var i = t.ccclass;
            t.property,
                n("BalanceManager", i("BalanceManager")(c = function (n) {
                    function a() {
                        return n.apply(this, arguments) || this
                    }
                    e(a, n);
                    var t = a.prototype;
                    return t.onLoad = function () { }
                        ,
                        t.updateBalance = function (n) {
                            this.node.getComponent(o).string = "当前账户剩余" + n
                        }
                        ,
                        a
                }(r)) || c);
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/BaseToast.ts", ["cc"], (function (t) {
    var e, i, o, n, s, h, d, r, a, g, N, p, c, l, v, u, A, T;
    return {
        setters: [function (t) {
            e = t.cclegacy,
                i = t.UIOpacity,
                o = t.tween,
                n = t.Label,
                s = t.UITransform,
                h = t.v3,
                d = t.Node,
                r = t.Layers,
                a = t.Canvas,
                g = t.director,
                N = t.view,
                p = t.BlockInputEvents,
                c = t.Layout,
                l = t.Sprite,
                v = t.Texture2D,
                u = t.ImageAsset,
                A = t.SpriteFrame,
                T = t.color
        }
        ],
        execute: function () {
            e._RF.push({}, "2c64dPLS3dKd4TXSV+Tc0ck", "BaseToast", void 0);
            var m = t("Gravity", function (t) {
                return t[t.BOTTOM = 0] = "BOTTOM",
                    t[t.CENTER = 1] = "CENTER",
                    t[t.TOP = 2] = "TOP",
                    t
            }({}))
                , w = t("BaseToast", function () {
                    function t(e) {
                        this.isDestroy = !1,
                            this.bgNode = void 0,
                            this.textNode = void 0,
                            this.node = void 0,
                            this.text = "",
                            this.time = t.LENGTH_SHORT,
                            this.textSize = 14,
                            this.lineHeight = 2,
                            this.gravity = m.TOP,
                            this.node = null == e ? this.getPNode() : e,
                            this.bgNode = new d,
                            this.bgNode.layer = r.Enum.UI_2D,
                            this.bgNode.addComponent(p);
                        var i = this.bgNode.addComponent(c);
                        i.type = c.Type.VERTICAL,
                            i.resizeMode = c.ResizeMode.CONTAINER;
                        var o = this.bgNode.addComponent(l);
                        o.type = l.Type.SLICED;
                        var h = new Image;
                        h.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAACAQMAAABIeJ9nAAAAA1BMVEX///+nxBvIAAAACklEQVQI12MAAgAABAABINItbwAAAABJRU5ErkJggg==",
                            h.onload = function () {
                                var t = new v;
                                t.image = new u(h);
                                var e = new A;
                                e.texture = t,
                                    o.spriteFrame = e,
                                    o.color = T(0, 0, 0, 200)
                            }
                            ,
                            this.bgNode.active = !1,
                            this.textNode = new d("Text"),
                            this.textNode.layer = r.Enum.UI_2D,
                            this.textNode.addComponent(s).width = this.node.getComponent(s).width;
                        var a = this.textNode.addComponent(n);
                        a.horizontalAlign = n.HorizontalAlign.CENTER,
                            a.verticalAlign = n.VerticalAlign.CENTER,
                            this.textNode.parent = this.bgNode,
                            this.bgNode.parent = this.node
                    }
                    t.makeText = function (e, i, o) {
                        var n = new t(o);
                        return n.text = e,
                            n.time = i,
                            n
                    }
                        ;
                    var e = t.prototype;
                    return e.show = function () {
                        var t = this;
                        this.setText(this.text).setTextSize(this.textSize).setOverFlow(),
                            this.bgNode.active = !0,
                            this.isDestroy = !1;
                        var e = this.bgNode.getComponent(i);
                        null == e && (e = this.bgNode.addComponent(i)),
                            o(e).delay(this.time).to(.3, {
                                opacity: 0
                            }).call((function () {
                                t.bgNode.active = !1,
                                    t.bgNode.destroy(),
                                    t.isDestroy = !0
                            }
                            )).start()
                    }
                        ,
                        e.setText = function (t) {
                            return this.text = t,
                                this.textNode.getComponent(n).string = this.text,
                                this
                        }
                        ,
                        e.setTextSize = function (t) {
                            return this.textSize = t,
                                this.textNode.getComponent(n).fontSize = this.textSize,
                                this
                        }
                        ,
                        e.setLineheight = function (t) {
                            return this.lineHeight = t,
                                this
                        }
                        ,
                        e.setTime = function (t) {
                            return this.time = t,
                                this
                        }
                        ,
                        e.setGravity = function (t) {
                            return this.gravity = t,
                                this
                        }
                        ,
                        e.setPosition = function () {
                            var t = this.node.getComponent(s)
                                , e = this.bgNode.getComponent(s);
                            switch (this.gravity) {
                                case m.BOTTOM:
                                    var i = -t.height / 2 + e.height / 2 + 64;
                                    this.bgNode.position = h(0, i, 0);
                                    break;
                                case m.CENTER:
                                    e.width,
                                        e.height;
                                    this.bgNode.position = h(0, 0, 0);
                                    break;
                                case m.TOP:
                                    var o = t.height / 2 - e.height / 2 - 64;
                                    this.bgNode.position = h(0, o, 0)
                            }
                        }
                        ,
                        e.setOverFlow = function () {
                            var t = this.node.getComponent(s).width / 2
                                , e = this.textNode.getComponent(n)
                                , i = this.text.length * e.fontSize
                                , o = this.textNode.getComponent(s);
                            i > t ? (o.width = t,
                                e.overflow = n.Overflow.RESIZE_HEIGHT) : (o.width = i,
                                    e.overflow = n.Overflow.NONE);
                            var h = this.bgNode.getComponent(s);
                            h.width = o.width + 4 * e.fontSize,
                                h.height = e.fontSize * this.lineHeight,
                                this.setPosition()
                        }
                        ,
                        e.getPNode = function () {
                            if (null == t.pNode || !t.pNode.isValid) {
                                var e;
                                t.pNode = new d("Toast");
                                var i = t.pNode.addComponent(s);
                                t.pNode.layer = r.Enum.UI_2D,
                                    t.pNode.addComponent(a),
                                    null == (e = g.getScene()) || e.addChild(t.pNode);
                                var o = N.getVisibleSize();
                                i.contentSize = o,
                                    i.width = o.width,
                                    i.height = o.height,
                                    t.pNode.position = h(o.width / 2, o.height / 2, 0)
                            }
                            return t.pNode
                        }
                        ,
                        t
                }());
            w.LENGTH_SHORT = 2,
                w.LENGTH_LONG = 3.5,
                w.pNode = null,
                e._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/CoinFlyToRoom.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (o) {
    var n, i, t, e, r, s, a, c, l, u, d, f, h;
    return {
        setters: [function (o) {
            n = o.applyDecoratedDescriptor,
                i = o.inheritsLoose,
                t = o.initializerDefineProperty,
                e = o.assertThisInitialized
        }
            , function (o) {
                r = o.cclegacy,
                    s = o._decorator,
                    a = o.Prefab,
                    c = o.NodePool,
                    l = o.find,
                    u = o.instantiate,
                    d = o.tween,
                    f = o.v3,
                    h = o.Component
            }
        ],
        execute: function () {
            var p, P, v, m, y;
            r._RF.push({}, "22d62hf/KpNb5us208+4jgX", "CoinFlyToRoom", void 0);
            var C = s.ccclass
                , g = s.property;
            o("CoinFlyToRoom", (p = C("CoinFlyToRoom"),
                P = g(a),
                p((y = n((m = function (o) {
                    function n() {
                        for (var n, i = arguments.length, r = new Array(i), s = 0; s < i; s++)
                            r[s] = arguments[s];
                        return (n = o.call.apply(o, [this].concat(r)) || this).coinPool = null,
                            t(n, "coinPrefab", y, e(n)),
                            n.roomsNodes = void 0,
                            n
                    }
                    i(n, o);
                    var r = n.prototype;
                    return r.onLoad = function () {
                        this.coinPool = new c,
                            this.initCoinPool(),
                            this.roomsNodes = l("Canvas/content/rooms").children
                    }
                        ,
                        r.playAnim = function (o, n) {
                            void 0 === n && (n = 10),
                                o && this.playCoinFlyAnim(o, n)
                        }
                        ,
                        r.initCoinPool = function (o) {
                            void 0 === o && (o = 140);
                            for (var n = 0; n < o; n++) {
                                var i = u(this.coinPrefab);
                                this.coinPool.put(i)
                            }
                        }
                        ,
                        r.playCoinFlyAnim = function (o, n) {
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
                                    d(o.node).to(1, {
                                        position: o.mdPos
                                    }).delay(.01 * n).to(.5, {
                                        position: o.edPos
                                    }).call((function () {
                                        o.node.active = !1,
                                            i.coinPool.put(o.node)
                                    }
                                    )).start()
                                }
                                ))
                        }
                        ,
                        r.getCoinNode = function () {
                            var o = null;
                            return (o = this.coinPool.size() > 0 ? this.coinPool.get() : u(this.coinPrefab)).active = !0,
                                o
                        }
                        ,
                        r.getCirclePoints = function (o, n, i, t) {
                            void 0 === t && (t = 100);
                            for (var e = [], r = Math.PI / 180 * Math.round(360 / i), s = 0; s < i; s++) {
                                var a = n.x + o * Math.sin(r * s)
                                    , c = n.y + o * Math.cos(r * s);
                                e.unshift(f(a + Math.random() * t, c + Math.random() * t, 0))
                            }
                            return e
                        }
                        ,
                        n
                }(h)).prototype, "coinPrefab", [P], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    v = m)) || v));
            r._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/CommonUtils.ts", ["cc", "./GameStore.ts", "./DoorManager.ts"], (function (o) {
    var n, t, e, r, i, c, a;
    return {
        setters: [function (o) {
            n = o.cclegacy,
                t = o.Vec3,
                e = o.v3,
                r = o.tween,
                i = o.find
        }
            , function (o) {
                c = o.GameStore
            }
            , function (o) {
                a = o.DoorManager
            }
        ],
        execute: function () {
            function l(o, n) {
                return new t(Math.random() * (n.x - o.x) + o.x, Math.random() * (n.y - o.y) + o.y, Math.random() * (n.z - o.z) + o.z)
            }
            function u(o) {
                var n = {
                    room1: function () {
                        return l(e(0, 710, 0), e(230, 830, 0))
                    },
                    room2: function () {
                        return l(e(290, 710, 0), e(440, 780, 0))
                    },
                    room3: function () {
                        return l(e(490, 710, 0), e(710, 780, 0))
                    },
                    room4: function () {
                        return l(e(0, 450, 0), e(150, 610, 0))
                    },
                    room5: function () {
                        return l(e(210, 440, 0), e(440, 480, 0))
                    },
                    room6: function () {
                        return l(e(600, 340, 0), e(710, 480, 0))
                    },
                    room7: function () {
                        return l(e(0, 190, 0), e(150, 320, 0))
                    },
                    room8: function () {
                        return l(e(220, 190, 0), e(440, 220, 0))
                    }
                }[o];
                return n ? n.call(this) : (console.warn("Room ID " + o + " not recognized."),
                    null)
            }
            function m(o, n) {
                "killerMonKey" == o.name ? o.getChildByName("sprite").eulerAngles = e(0, "left" == n ? 0 : 180, 0) : o.getChildByName("sprite").eulerAngles = e(0, "left" == n ? 180 : 0, 0)
            }
            o({
                getBrowserValue: function (o) {
                    void 0 === o && (o = "");
                    for (var n = {}, t = window.location.search.substring(1).split("&"), e = 0; e < t.length; e++) {
                        var r = t[e].split("=");
                        2 == r.length && (n[r[0]] = r[1])
                    }
                    if (o)
                        return n[o] || null;
                    return n
                },
                getRandomPositionByRoom: u,
                getRoomNameById: function (o) {
                    var n = ["武当派", "崆峒派", "峨眉派", "丐帮派", "青城派", "华山派", "少林派", "昆仑派"][o - 1];
                    return n || ""
                },
                goRoomTween: function (o, n, t) {
                    void 0 === t && (t = null);
                    var c = n.getPosition()
                        , l = {
                            room1: [c, e(530, c.y, 0), e(530, 610, 0), e(220, 610, 0), e(220, 720, 0), u(o)],
                            room2: [c, e(530, c.y, 0), e(530, 610, 0), e(310, 610, 0), e(310, 720, 0), u(o)],
                            room3: [c, e(530, c.y, 0), e(530, 610, 0), e(530, 720, 0), u(o)],
                            room4: [c, e(530, c.y, 0), e(530, 610, 0), e(210, 610, 0), e(150, 610, 0), u(o)],
                            room5: [c, e(530, c.y, 0), e(530, 355, 0), e(300, 355, 0), e(300, 410, 0), u(o)],
                            room6: [c, e(530, c.y, 0), e(530, 350, 0), e(600, 350, 0), u(o)],
                            room7: [c, e(530, c.y, 0), e(530, 355, 0), e(210, 355, 0), e(150, 355, 0), u(o)],
                            room8: [c, e(530, c.y, 0), e(530, 355, 0), e(360, 355, 0), e(360, 300, 0), u(o)]
                        }[o];
                    if (!l)
                        return console.warn("Room ID " + o + " not recognized."),
                            null;
                    for (var s = r(n), f = function (t) {
                        var e = (0 == t ? 0 : l[t].clone().subtract(l[t - 1]).length()) / 250;
                        s.to(e, {
                            position: l[t]
                        }),
                            s.call((function () {
                                var o = l[t + 1];
                                o && (o.x > l[t].x ? m(n, "right") : o.x < l[t].x && m(n, "left"))
                            }
                            )),
                            "killerMonKey" == n.name && t == l.length - 3 && (console.log("targetNode==>", n.name, l[t]),
                                s.call((function () {
                                    i("Canvas/content/doors").getComponent(a).openDoor(Number(o.replace("room", "")))
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
                },
                goWaitTween: function (o, n) {
                    void 0 === n && (n = null);
                    if (!o.getComponent(c).checkRoomID)
                        return void (n && n());
                    var t = o.getComponent(c).checkRoomPath.reverse();
                    if (!t)
                        return console.warn("backPath not recognized."),
                            null;
                    for (var e = r(o), i = function (n) {
                        var r = (0 == n ? 0 : t[n].clone().subtract(t[n - 1]).length()) / 450;
                        (e = e.to(r, {
                            position: t[n]
                        })).call((function () {
                            var e = t[n + 1];
                            e && (e.x > t[n].x ? m(o, "right") : e.x < t[n].x && m(o, "left"))
                        }
                        ))
                    }, a = 0; a < t.length; a++)
                        i(a);
                    e.call((function () {
                        o.getComponent(c).checkRoomPath = [],
                            o.getComponent(c).checkRoomID = "",
                            n && n()
                    }
                    )).start()
                },
                killTurnBack: m,
                randomPositionInRect: l
            }),
                n._RF.push({}, "9a9feAn7StCsJcZRQcauJ5U", "CommonUtils", void 0),
                n._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/CountDown.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, n, i, o, r, a, s, c, u, l;
    return {
        setters: [function (t) {
            e = t.applyDecoratedDescriptor,
                n = t.inheritsLoose,
                i = t.initializerDefineProperty,
                o = t.assertThisInitialized
        }
            , function (t) {
                r = t.cclegacy,
                    a = t._decorator,
                    s = t.Label,
                    c = t.tween,
                    u = t.v3,
                    l = t.Component
            }
        ],
        execute: function () {
            var p, h, d, f, v;
            r._RF.push({}, "6cf38iHsadOJq5xeUaB8b/l", "CountDown", void 0);
            var y = a.ccclass
                , b = a.property;
            t("CountDown", (p = y("CountDown"),
                h = b(s),
                p((v = e((f = function (t) {
                    function e() {
                        for (var e, n = arguments.length, r = new Array(n), a = 0; a < n; a++)
                            r[a] = arguments[a];
                        return e = t.call.apply(t, [this].concat(r)) || this,
                            i(e, "timeLabel", v, o(e)),
                            e
                    }
                    n(e, t);
                    var r = e.prototype;
                    return r.show = function () {
                        this.node.active || (this.node.active = !0,
                            c(this.node).to(.6, {
                                position: u(180, this.node.position.y, 0)
                            }).start())
                    }
                        ,
                        r.hide = function () {
                            var t = this;
                            this.node.active && c(this.node).to(.6, {
                                position: u(600, this.node.position.y, 0)
                            }).call((function () {
                                t.node.active = !1
                            }
                            )).start()
                        }
                        ,
                        r.updateCountDownTime = function (t) {
                            this.timeLabel.string = t + "s后杀手出现"
                        }
                        ,
                        e
                }(l)).prototype, "timeLabel", [h], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    d = f)) || d));
            r._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/debug-view-runtime-control.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, o, i, n, s, l, r, a, g, h, p, c, C, d, m, u, L;
    return {
        setters: [function (t) {
            e = t.applyDecoratedDescriptor,
                o = t.inheritsLoose,
                i = t.initializerDefineProperty,
                n = t.assertThisInitialized
        }
            , function (t) {
                s = t.cclegacy,
                    l = t._decorator,
                    r = t.Node,
                    a = t.Color,
                    g = t.Canvas,
                    h = t.UITransform,
                    p = t.instantiate,
                    c = t.Label,
                    C = t.RichText,
                    d = t.Toggle,
                    m = t.Button,
                    u = t.director,
                    L = t.Component
            }
        ],
        execute: function () {
            var f, M, b, v, T, S, x, E, I;
            s._RF.push({}, "b2bd1+njXxJxaFY3ymm06WU", "debug-view-runtime-control", void 0);
            var A = l.ccclass
                , y = l.property;
            t("DebugViewRuntimeControl", (f = A("internal.DebugViewRuntimeControl"),
                M = y(r),
                b = y(r),
                v = y(r),
                f((x = e((S = function (t) {
                    function e() {
                        for (var e, o = arguments.length, s = new Array(o), l = 0; l < o; l++)
                            s[l] = arguments[l];
                        return e = t.call.apply(t, [this].concat(s)) || this,
                            i(e, "compositeModeToggle", x, n(e)),
                            i(e, "singleModeToggle", E, n(e)),
                            i(e, "EnableAllCompositeModeButton", I, n(e)),
                            e._single = 0,
                            e.strSingle = ["No Single Debug", "Vertex Color", "Vertex Normal", "Vertex Tangent", "World Position", "Vertex Mirror", "Face Side", "UV0", "UV1", "UV Lightmap", "Project Depth", "Linear Depth", "Fragment Normal", "Fragment Tangent", "Fragment Binormal", "Base Color", "Diffuse Color", "Specular Color", "Transparency", "Metallic", "Roughness", "Specular Intensity", "IOR", "Direct Diffuse", "Direct Specular", "Direct All", "Env Diffuse", "Env Specular", "Env All", "Emissive", "Light Map", "Shadow", "AO", "Fresnel", "Direct Transmit Diffuse", "Direct Transmit Specular", "Env Transmit Diffuse", "Env Transmit Specular", "Transmit All", "Direct Internal Specular", "Env Internal Specular", "Internal All", "Fog"],
                            e.strComposite = ["Direct Diffuse", "Direct Specular", "Env Diffuse", "Env Specular", "Emissive", "Light Map", "Shadow", "AO", "Normal Map", "Fog", "Tone Mapping", "Gamma Correction", "Fresnel", "Transmit Diffuse", "Transmit Specular", "Internal Specular", "TT"],
                            e.strMisc = ["CSM Layer Coloration", "Lighting With Albedo"],
                            e.compositeModeToggleList = [],
                            e.singleModeToggleList = [],
                            e.miscModeToggleList = [],
                            e.textComponentList = [],
                            e.labelComponentList = [],
                            e.textContentList = [],
                            e.hideButtonLabel = void 0,
                            e._currentColorIndex = 0,
                            e.strColor = ["<color=#ffffff>", "<color=#000000>", "<color=#ff0000>", "<color=#00ff00>", "<color=#0000ff>"],
                            e.color = [a.WHITE, a.BLACK, a.RED, a.GREEN, a.BLUE],
                            e
                    }
                    o(e, t);
                    var s = e.prototype;
                    return s.start = function () {
                        if (this.node.parent.getComponent(g)) {
                            var t = this.node.parent.getComponent(h)
                                , e = .5 * t.width
                                , o = .5 * t.height
                                , i = .1 * e - e
                                , n = o - .1 * o
                                , s = this.node.getChildByName("MiscMode")
                                , l = p(s);
                            l.parent = this.node,
                                l.name = "Buttons";
                            var r = p(s);
                            r.parent = this.node,
                                r.name = "Titles";
                            for (var u = 0; u < 2; u++) {
                                var L = p(this.EnableAllCompositeModeButton.getChildByName("Label"));
                                L.setPosition(i + (u > 0 ? 450 : 150), n, 0),
                                    L.setScale(.75, .75, .75),
                                    L.parent = r;
                                var f = L.getComponent(c);
                                f.string = u ? "----------Composite Mode----------" : "----------Single Mode----------",
                                    f.color = a.WHITE,
                                    f.overflow = 0,
                                    this.labelComponentList[this.labelComponentList.length] = f
                            }
                            n -= 20;
                            for (var M = 0, b = 0; b < this.strSingle.length; b++,
                                M++) {
                                b === this.strSingle.length >> 1 && (i += 200,
                                    M = 0);
                                var v = b ? p(this.singleModeToggle) : this.singleModeToggle;
                                v.setPosition(i, n - 20 * M, 0),
                                    v.setScale(.5, .5, .5),
                                    v.parent = this.singleModeToggle.parent;
                                var T = v.getComponentInChildren(C);
                                T.string = this.strSingle[b],
                                    this.textComponentList[this.textComponentList.length] = T,
                                    this.textContentList[this.textContentList.length] = T.string,
                                    v.on(d.EventType.TOGGLE, this.toggleSingleMode, this),
                                    this.singleModeToggleList[b] = v
                            }
                            i += 200,
                                this.EnableAllCompositeModeButton.setPosition(i + 15, n, 0),
                                this.EnableAllCompositeModeButton.setScale(.5, .5, .5),
                                this.EnableAllCompositeModeButton.on(m.EventType.CLICK, this.enableAllCompositeMode, this),
                                this.EnableAllCompositeModeButton.parent = l;
                            var S = this.EnableAllCompositeModeButton.getComponentInChildren(c);
                            this.labelComponentList[this.labelComponentList.length] = S;
                            var x = p(this.EnableAllCompositeModeButton);
                            x.setPosition(i + 90, n, 0),
                                x.setScale(.5, .5, .5),
                                x.on(m.EventType.CLICK, this.changeTextColor, this),
                                x.parent = l,
                                (S = x.getComponentInChildren(c)).string = "TextColor",
                                this.labelComponentList[this.labelComponentList.length] = S;
                            var E = p(this.EnableAllCompositeModeButton);
                            E.setPosition(i + 200, n, 0),
                                E.setScale(.5, .5, .5),
                                E.on(m.EventType.CLICK, this.hideUI, this),
                                E.parent = this.node.parent,
                                (S = E.getComponentInChildren(c)).string = "Hide UI",
                                this.labelComponentList[this.labelComponentList.length] = S,
                                this.hideButtonLabel = S,
                                n -= 40;
                            for (var I = 0; I < this.strMisc.length; I++) {
                                var A = p(this.compositeModeToggle);
                                A.setPosition(i, n - 20 * I, 0),
                                    A.setScale(.5, .5, .5),
                                    A.parent = s;
                                var y = A.getComponentInChildren(C);
                                y.string = this.strMisc[I],
                                    this.textComponentList[this.textComponentList.length] = y,
                                    this.textContentList[this.textContentList.length] = y.string,
                                    A.getComponent(d).isChecked = !!I,
                                    A.on(d.EventType.TOGGLE, I ? this.toggleLightingWithAlbedo : this.toggleCSMColoration, this),
                                    this.miscModeToggleList[I] = A
                            }
                            n -= 150;
                            for (var D = 0; D < this.strComposite.length; D++) {
                                var B = D ? p(this.compositeModeToggle) : this.compositeModeToggle;
                                B.setPosition(i, n - 20 * D, 0),
                                    B.setScale(.5, .5, .5),
                                    B.parent = this.compositeModeToggle.parent;
                                var w = B.getComponentInChildren(C);
                                w.string = this.strComposite[D],
                                    this.textComponentList[this.textComponentList.length] = w,
                                    this.textContentList[this.textContentList.length] = w.string,
                                    B.on(d.EventType.TOGGLE, this.toggleCompositeMode, this),
                                    this.compositeModeToggleList[D] = B
                            }
                        } else
                            console.error("debug-view-runtime-control should be child of Canvas")
                    }
                        ,
                        s.isTextMatched = function (t, e) {
                            var o = new String(t)
                                , i = o.search(">");
                            return -1 === i ? t === e : (o = (o = o.substr(i + 1)).substr(0, o.search("<"))) === e
                        }
                        ,
                        s.toggleSingleMode = function (t) {
                            for (var e = u.root.debugView, o = t.getComponentInChildren(C), i = 0; i < this.strSingle.length; i++)
                                this.isTextMatched(o.string, this.strSingle[i]) && (e.singleMode = i)
                        }
                        ,
                        s.toggleCompositeMode = function (t) {
                            for (var e = u.root.debugView, o = t.getComponentInChildren(C), i = 0; i < this.strComposite.length; i++)
                                this.isTextMatched(o.string, this.strComposite[i]) && e.enableCompositeMode(i, t.isChecked)
                        }
                        ,
                        s.toggleLightingWithAlbedo = function (t) {
                            u.root.debugView.lightingWithAlbedo = t.isChecked
                        }
                        ,
                        s.toggleCSMColoration = function (t) {
                            u.root.debugView.csmLayerColoration = t.isChecked
                        }
                        ,
                        s.enableAllCompositeMode = function (t) {
                            var e = u.root.debugView;
                            e.enableAllCompositeMode(!0);
                            for (var o = 0; o < this.compositeModeToggleList.length; o++) {
                                this.compositeModeToggleList[o].getComponent(d).isChecked = !0
                            }
                            var i = this.miscModeToggleList[0].getComponent(d);
                            i.isChecked = !1,
                                e.csmLayerColoration = !1,
                                (i = this.miscModeToggleList[1].getComponent(d)).isChecked = !0,
                                e.lightingWithAlbedo = !0
                        }
                        ,
                        s.hideUI = function (t) {
                            var e = this.node.getChildByName("Titles")
                                , o = !e.active;
                            this.singleModeToggleList[0].parent.active = o,
                                this.miscModeToggleList[0].parent.active = o,
                                this.compositeModeToggleList[0].parent.active = o,
                                this.EnableAllCompositeModeButton.parent.active = o,
                                e.active = o,
                                this.hideButtonLabel.string = o ? "Hide UI" : "Show UI"
                        }
                        ,
                        s.changeTextColor = function (t) {
                            this._currentColorIndex++,
                                this._currentColorIndex >= this.strColor.length && (this._currentColorIndex = 0);
                            for (var e = 0; e < this.textComponentList.length; e++)
                                this.textComponentList[e].string = this.strColor[this._currentColorIndex] + this.textContentList[e] + "</color>";
                            for (var o = 0; o < this.labelComponentList.length; o++)
                                this.labelComponentList[o].color = this.color[this._currentColorIndex]
                        }
                        ,
                        s.onLoad = function () { }
                        ,
                        s.update = function (t) { }
                        ,
                        e
                }(L)).prototype, "compositeModeToggle", [M], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    E = e(S.prototype, "singleModeToggle", [b], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    I = e(S.prototype, "EnableAllCompositeModeButton", [v], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    T = S)) || T));
            s._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/DoorManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./GameStore.ts"], (function (o) {
    var t, e, r, n, i, a, d;
    return {
        setters: [function (o) {
            t = o.inheritsLoose
        }
            , function (o) {
                e = o.cclegacy,
                    r = o._decorator,
                    n = o.tween,
                    i = o.v3,
                    a = o.Component
            }
            , function (o) {
                d = o.GameStore
            }
        ],
        execute: function () {
            var s;
            e._RF.push({}, "60261byOZlNK6EFwcknAeYQ", "DoorManager", void 0);
            var c = r.ccclass;
            r.property,
                o("DoorManager", c("DoorManager")(s = function (o) {
                    function e() {
                        return o.apply(this, arguments) || this
                    }
                    t(e, o);
                    var r = e.prototype;
                    return r.start = function () { }
                        ,
                        r.closeDoor = function (o) {
                            void 0 === o && (o = 0);
                            var t = .7
                                , e = "door" + o;
                            (o ? [this.node.getChildByName(e)] : this.node.children).forEach((function (o) {
                                o.getComponent(d).DoorState && (o.getComponent(d).DoorState = !1,
                                    "door0" == o.name && (n(o.getChildByName("left")).by(t, {
                                        position: i(90, 0, 0)
                                    }).start(),
                                        n(o.getChildByName("right")).by(t, {
                                            position: i(-90, 0, 0)
                                        }).start()),
                                    "door1" == o.name && n(o.children[0]).by(t, {
                                        position: i(60, 0, 0)
                                    }).start(),
                                    -1 != ["door4", "door6", "door7"].indexOf(o.name) && n(o.children[0]).by(t, {
                                        position: i(0, 40, 0)
                                    }).start(),
                                    -1 != ["door2", "door3", "door5", "door8"].indexOf(o.name) && (n(o.getChildByName("left")).by(t, {
                                        position: i(48, 0, 0)
                                    }).start(),
                                        n(o.getChildByName("right")).by(t, {
                                            position: i(-48, 0, 0)
                                        }).start()))
                            }
                            ))
                        }
                        ,
                        r.openDoor = function (o) {
                            void 0 === o && (o = 0);
                            var t = .7
                                , e = "door" + o;
                            (o ? [this.node.getChildByName(e)] : this.node.children).forEach((function (o) {
                                o.getComponent(d).DoorState || (o.getComponent(d).DoorState = !0,
                                    "door0" == o.name && (n(o.getChildByName("left")).by(t, {
                                        position: i(-90, 0, 0)
                                    }).start(),
                                        n(o.getChildByName("right")).by(t, {
                                            position: i(90, 0, 0)
                                        }).start()),
                                    "door1" == o.name && n(o.children[0]).by(t, {
                                        position: i(-60, 0, 0)
                                    }).start(),
                                    -1 != ["door4", "door6", "door7"].indexOf(o.name) && n(o.children[0]).by(t, {
                                        position: i(0, -40, 0)
                                    }).start(),
                                    -1 != ["door2", "door3", "door5", "door8"].indexOf(o.name) && (n(o.getChildByName("left")).by(t, {
                                        position: i(-48, 0, 0)
                                    }).start(),
                                        n(o.getChildByName("right")).by(t, {
                                            position: i(48, 0, 0)
                                        }).start()))
                            }
                            ))
                        }
                        ,
                        e
                }(a)) || s);
            e._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/FrameAnimation.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var n, t, o, i, a, r, s, l, p, c, m, f, u;
    return {
        setters: [function (e) {
            n = e.applyDecoratedDescriptor,
                t = e.inheritsLoose,
                o = e.initializerDefineProperty,
                i = e.assertThisInitialized
        }
            , function (e) {
                a = e.cclegacy,
                    r = e._decorator,
                    s = e.Node,
                    l = e.Sprite,
                    p = e.Animation,
                    c = e.resources,
                    m = e.SpriteAtlas,
                    f = e.AnimationClip,
                    u = e.Component
            }
        ],
        execute: function () {
            var h, d, v, y, g;
            a._RF.push({}, "7127fVZnmBNrpJ18IaO9sMo", "FrameAnimation", void 0);
            var F = r.ccclass
                , A = r.property;
            e("FrameAnimation", (h = F("FrameAnimation"),
                d = A(s),
                h((g = n((y = function (e) {
                    function n() {
                        for (var n, t = arguments.length, a = new Array(t), r = 0; r < t; r++)
                            a[r] = arguments[r];
                        return n = e.call.apply(e, [this].concat(a)) || this,
                            o(n, "frameNode", g, i(n)),
                            n.onPlay = void 0,
                            n.onFinish = void 0,
                            n.loop = !0,
                            n
                    }
                    t(n, e);
                    var a = n.prototype;
                    return a.play = function (e, n) {
                        void 0 === n && (n = 1),
                            this.frameNode.active ? this.playAni(this.frameNode, e, n) : console.log(this.frameNode.name + "节点未激活")
                    }
                        ,
                        a.playAni = function (e, n, t) {
                            var o = this;
                            if (!n || n.length < 1)
                                return e.getComponent(l).spriteFrame = null,
                                    void e.getComponent(p).stop();
                            c.load(n, m, (function (i, a) {
                                null == i && null != a || (console.log("加载文件失败"),
                                    console.log(i)),
                                    o.playOfAtlas(e, a, n, t)
                            }
                            ))
                        }
                        ,
                        a.playOfAtlas = function (e, n, t, o) {
                            var i = n.getSpriteFrames();
                            i.sort((function (e, n) {
                                return parseInt(e.name.replace("seq_0_", ""), 10) - parseInt(n.name.replace("seq_0_", ""), 10)
                            }
                            )),
                                console.log("frames", i),
                                i = i.slice(20);
                            var a = f.createWithSpriteFrames(i, 20);
                            a.speed = o,
                                a.name = t,
                                a.wrapMode = this.loop ? f.WrapMode.PingPong : f.WrapMode.Normal;
                            var r = e.getComponent(l);
                            r.spriteFrame = i[0],
                                r.sizeMode = l.SizeMode.CUSTOM,
                                r.trim = !1;
                            var s = e.getComponent(p);
                            -1 == s.clips.indexOf(a) && s.addClip(a),
                                s.play(a.name)
                        }
                        ,
                        a.onEvent = function (e, n) {
                            "play" == e && this.onPlay && this.onPlay(n),
                                "finished" == e && this.onFinish && this.onFinish()
                        }
                        ,
                        a.onEnable = function () {
                            var e = this.frameNode.getComponent(p);
                            e.on(p.EventType.PLAY, this.onEvent, this),
                                e.on(p.EventType.FINISHED, this.onEvent, this)
                        }
                        ,
                        a.onDisable = function () {
                            this.onPlay = this.onFinish = null;
                            var e = this.frameNode.getComponent(p);
                            e.off(p.EventType.PLAY, this.onEvent, this),
                                e.off(p.EventType.FINISHED, this.onEvent, this)
                        }
                        ,
                        a.onDestroy = function () { }
                        ,
                        a.onLoad = function () {
                            this.frameNode.getComponent(p) || this.frameNode.addComponent(p)
                        }
                        ,
                        a.start = function () { }
                        ,
                        a.update = function (e) { }
                        ,
                        n
                }(u)).prototype, "frameNode", [d], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    v = y)) || v));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/GameManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./CommonUtils.ts", "./KillerMonkey.ts", "./OtherMonkey.ts", "./MyMonkey.ts", "./Http.ts", "./GameStore.ts", "./RightMenu.ts", "./CountDown.ts", "./DoorManager.ts", "./KillerAppears.ts", "./RocksManager.ts", "./AudioManager.ts", "./QuantityManager.ts", "./GameResultManager.ts", "./CoinFlyToRoom.ts", "./BalanceManager.ts", "./Toast.ts"], (function (e) {
    var o, n, t, i, a, r, s, l, u, m, c, h, g, p, d, f, y, M, k, C, b, v, R, w, N, _, A, B, I, D, T, U, K;
    return {
        setters: [function (e) {
            o = e.applyDecoratedDescriptor,
                n = e.inheritsLoose,
                t = e.initializerDefineProperty,
                i = e.assertThisInitialized
        }
            , function (e) {
                a = e.cclegacy,
                    r = e._decorator,
                    s = e.Prefab,
                    l = e.Node,
                    u = e.find,
                    m = e.Label,
                    c = e.NodePool,
                    h = e.instantiate,
                    g = e.v3,
                    p = e.Component
            }
            , function (e) {
                d = e.getBrowserValue,
                    f = e.randomPositionInRect,
                    y = e.killTurnBack
            }
            , function (e) {
                M = e.KillerMonkey
            }
            , function (e) {
                k = e.otherMonkey
            }
            , function (e) {
                C = e.MyMonkey
            }
            , function (e) {
                b = e.Http
            }
            , function (e) {
                v = e.GameStore
            }
            , function (e) {
                R = e.RightMenu
            }
            , function (e) {
                w = e.CountDown
            }
            , function (e) {
                N = e.DoorManager
            }
            , function (e) {
                _ = e.killerAppears
            }
            , function (e) {
                A = e.RocksManager
            }
            , function (e) {
                B = e.AudioManager
            }
            , function (e) {
                I = e.QuantityManager
            }
            , function (e) {
                D = e.GameResultManager
            }
            , function (e) {
                T = e.CoinFlyToRoom
            }
            , function (e) {
                U = e.BalanceManager
            }
            , function (e) {
                K = e.Toast
            }
        ],
        execute: function () {
            var j, P, G, S, x, O, z, F, E, L, H, W, q, Q, J, V, X, Y, Z, $, ee, oe, ne, te, ie, ae, re, se, le, ue, me;
            a._RF.push({}, "b44bfLAmdRIEKEqHDHOj5t8", "GameManager", void 0);
            var ce = r.ccclass
                , he = r.property;
            e("GameManager", (j = ce("GameManager"),
                P = he(s),
                G = he(s),
                S = he(s),
                x = he(s),
                O = he(N),
                z = he(R),
                F = he(w),
                E = he(_),
                L = he(B),
                H = he(I),
                W = he(U),
                q = he(D),
                Q = he(T),
                J = he(l),
                j((Y = o((X = function (e) {
                    function o() {
                        for (var o, n = arguments.length, a = new Array(n), r = 0; r < n; r++)
                            a[r] = arguments[r];
                        return o = e.call.apply(e, [this].concat(a)) || this,
                            t(o, "otherMonkey", Y, i(o)),
                            t(o, "myMonkey", Z, i(o)),
                            t(o, "killerMonkey", $, i(o)),
                            t(o, "rulePrefab", ee, i(o)),
                            o.wsInstance = void 0,
                            o.wsMessage = void 0,
                            o.gameState = 0,
                            o.lastGameId = 0,
                            o.gameTimer = 0,
                            o.checkoutRoomId = void 0,
                            o.checkoutAmount = 0,
                            o.joinRoomId = 0,
                            o.preKillerRoom = 0,
                            o.killerRoom = 0,
                            o.existingUserNodes = {},
                            o.amountOption = [],
                            o.testFlag = !1,
                            o.userID = 0,
                            o.balance = 0,
                            o.joinAmount = 0,
                            o.monkeyPool = null,
                            o.killerMonKeyNode = void 0,
                            t(o, "doorManagerComponent", oe, i(o)),
                            t(o, "rightMenuComponent", ne, i(o)),
                            t(o, "countDownComponent", te, i(o)),
                            t(o, "killerAppearsComponent", ie, i(o)),
                            t(o, "audioManagerComponent", ae, i(o)),
                            t(o, "quantityManagerComponent", re, i(o)),
                            t(o, "balanceManagerComponent", se, i(o)),
                            t(o, "gameResultManagerComponent", le, i(o)),
                            t(o, "coinFlyToRoomComponent", ue, i(o)),
                            t(o, "submitBtnNode", me, i(o)),
                            o
                    }
                    n(o, e);
                    var a = o.prototype;
                    return a.onLoad = function () {
                        var e = d("token") || "";
                        e ? localStorage.setItem("token", e) : K.show("token错误"),
                            this.registerListening()
                    }
                        ,
                        a.registerListening = function () {
                            this.submitBtnNode.getChildByName("left").on(l.EventType.TOUCH_START, this.toggleCheckPrice, this),
                                this.submitBtnNode.getChildByName("right").on(l.EventType.TOUCH_START, this.targetJoin, this)
                        }
                        ,
                        a.start = function () {
                            this.initKiller(),
                                this.initGame(),
                                this.initWebSocket()
                        }
                        ,
                        a.initGame = function () {
                            var e = this;
                            b.get("/BattleRoyale/initGame").then((function (o) {
                                console.log(o),
                                    console.log(o.msg),
                                    200 == o.code && (e.balance = o.data.balance,
                                        e.rightMenuComponent.updateQs(o.data.game_id),
                                        e.balanceManagerComponent.updateBalance(e.balance),
                                        e.initAmountOption([100, 200, 300]))
                            }
                            ))
                        }
                        ,
                        a.initWebSocket = function () {
                            this.wsInstance = b.initSocket(),
                                this.wsInstance.onmessage = this.onmessage.bind(this)
                        }
                        ,
                        a.checkoutRoomMask = function (e) {
                            u("Canvas/content/rooms").children.forEach((function (o) {
                                o.getChildByName("mask").active = !1,
                                    o.name == "room" + e && (o.getChildByName("mask").active = !0)
                            }
                            ))
                        }
                        ,
                        a.onmessage = function (e) {
                            var o = this
                                , n = JSON.parse(e.data);
                            if (this.wsMessage = n,
                                console.log("Received message:", n),
                                this.lastGameId && this.lastGameId != n.game_id && this.resetGameData(),
                                this.lastGameId = n.game_id,
                                this.gameState = n.state,
                                this.gameTimer = n.timer,
                                this.userID = n.user_id,
                                3 != n.state) {
                                if (this.testFlag = !0,
                                    this.killerRoom = 0,
                                    !n.user_list)
                                    return;
                                this.rightMenuComponent.updateQs(n.game_id),
                                    this.rightMenuComponent.updatePlayer(n.join_people, n.max_people),
                                    2 == n.state && (this.rightMenuComponent.hide(),
                                        this.countDownComponent.show(),
                                        this.countDownComponent.updateCountDownTime(n.timer)),
                                    2 == n.state && n.timer <= 10 && this.audioManagerComponent.playCountdown(),
                                    this.joinAmount = n.user_amount,
                                    this.quantityManagerComponent.updateNumber(n.user_amount + ""),
                                    n.room_list.forEach((function (e) {
                                        u("Canvas/content/rooms/room" + e.room_id).getComponent(A).updateRocksNumber(e.amount + "")
                                    }
                                    )),
                                    n.user_list.forEach((function (e) {
                                        var n = e.user_id
                                            , t = e.room_id;
                                        if (o.userID === n) {
                                            var i = u("Canvas/content/player/myMonKey");
                                            if (!i) {
                                                if (!(i = o.initMonkey(o.myMonkey, "myMonKey")))
                                                    return;
                                                o.existingUserNodes[n] = i
                                            }
                                            t && (o.joinRoomId = t,
                                                o.checkoutRoomMask(t),
                                                i.getComponent(C).goRoom("room" + t))
                                        } else {
                                            var a = u("Canvas/content/player/otherMonKey_" + n);
                                            if (!a) {
                                                if (!(a = o.initMonkey(o.otherMonkey, "otherMonKey_" + n, e.nickname)))
                                                    return;
                                                o.existingUserNodes[n] = a
                                            }
                                            t && a.getComponent(k).goRoom("room" + t)
                                        }
                                    }
                                    )),
                                    this.clearUserList(n.user_list)
                            } else {
                                if (!this.testFlag)
                                    return K.show("等待下一期"),
                                        void this.rightMenuComponent.updatePlayerWait();
                                if (this.killerRoom)
                                    return;
                                if (this.audioManagerComponent.stopCountdown(),
                                    this.countDownComponent.hide(),
                                    this.killerAppearsComponent.show(),
                                    !this.checkUserGoRoomState())
                                    return;
                                this.killerRoom = n.killer_room,
                                    this.doorManagerComponent.closeDoor(),
                                    this.scheduleOnce((function () {
                                        o.killerMonKeyNode.getComponent(M).goRoom("room" + o.killerRoom, (function () {
                                            o.scheduleOnce((function () {
                                                o.killerMonKeyNode.getComponent(M).back(),
                                                    o.killRoomUserDie(n.killer_room)
                                            }
                                            ), 2),
                                                o.scheduleOnce((function () {
                                                    o.joinRoomId != o.killerRoom ? o.gameResultManagerComponent.showSuccess(n) : o.gameResultManagerComponent.showFail(n)
                                                }
                                                ), 2),
                                                o.scheduleOnce((function () {
                                                    o.doorManagerComponent.openDoor(),
                                                        o.scheduleOnce((function () {
                                                            o.allUserBack()
                                                        }
                                                        ), .7)
                                                }
                                                ), 4),
                                                o.scheduleOnce((function () {
                                                    var e = u("Canvas/content/rooms").getChildByName("room" + o.killerRoom);
                                                    o.coinFlyToRoomComponent.playAnim(e)
                                                }
                                                ), 5)
                                        }
                                        ))
                                    }
                                    ), .7)
                            }
                        }
                        ,
                        a.targetJoin = function () {
                            if (this.checkoutAmount <= 0)
                                return K.show("金额错误"),
                                    void console.log("join====>金额错误" + this.checkoutAmount);
                            this.audioManagerComponent.playClickAudio(),
                                this.join(this.checkoutAmount)
                        }
                        ,
                        a.join = function (e) {
                            var o = this;
                            if (void 0 === e && (e = 0),
                                2 == this.gameState && this.gameTimer <= 0)
                                console.log("join====>游戏倒计时结束");
                            else if (1 == this.gameState || 2 == this.gameState) {
                                if (!this.checkoutRoomId)
                                    return K.show("没有选中房间"),
                                        void console.log("join====>没有选中房间");
                                var n = {
                                    game_id: this.lastGameId,
                                    room_id: Number(this.checkoutRoomId.replace("room", "")),
                                    amount: e
                                };
                                console.log("join====>params", n),
                                    b.get("/BattleRoyale/join", n).then((function (t) {
                                        if (console.log(t),
                                            200 == t.code) {
                                            if (o.joinRoomId = n.room_id,
                                                e > 0) {
                                                o.joinAmount += e,
                                                    o.quantityManagerComponent.updateNumber(o.joinAmount.toFixed(2) + "");
                                                var i = (o.balance - o.joinAmount).toFixed(2);
                                                o.balanceManagerComponent.updateBalance(Number(i))
                                            }
                                        } else
                                            K.show(t.msg)
                                    }
                                    ))
                            } else
                                console.log("join====>游戏状态不允许")
                        }
                        ,
                        a.initAmountOption = function (e) {
                            var o = e[0] ? e[0] : 0;
                            this.setCheckoutAmount(o),
                                this.amountOption = e
                        }
                        ,
                        a.toggleCheckPrice = function () {
                            this.submitBtnNode.getChildByName("prices").active = !this.submitBtnNode.getChildByName("prices").active
                        }
                        ,
                        a.setCheckoutAmount = function (e) {
                            this.checkoutAmount = e,
                                u("Canvas/content/submitBtn/left/price").getComponent(m).string = String(e)
                        }
                        ,
                        a.resetGameData = function () {
                            for (var e in this.existingUserNodes) {
                                var o = this.existingUserNodes[e];
                                delete this.existingUserNodes[e],
                                    o.isValid && o.destroy()
                            }
                            this.initGame(),
                                u("Canvas/content/rooms").children.forEach((function (e) {
                                    e.getChildByName("mask").active = !1
                                }
                                )),
                                this.killerRoom = 0,
                                this.killerAppearsComponent.reset(),
                                this.gameTimer = 0,
                                this.gameState = 0,
                                this.checkoutRoomId = "",
                                this.joinRoomId = 0,
                                this.testFlag = !1,
                                this.joinAmount = 0
                        }
                        ,
                        a.clearUserList = function (e) {
                            var o = this;
                            if (0 != e.length) {
                                var n = function (n) {
                                    if (!e.some((function (e) {
                                        return e.user_id == n
                                    }
                                    ))) {
                                        var t = o.existingUserNodes[n];
                                        delete o.existingUserNodes[n],
                                            t.isValid && t.destroy()
                                    }
                                };
                                for (var t in this.existingUserNodes)
                                    n(t)
                            }
                        }
                        ,
                        a.allUserBack = function () {
                            for (var e in this.existingUserNodes) {
                                var o = this.existingUserNodes[e];
                                o.name.includes("otherMonKey") && o.getComponent(k).back(),
                                    o.name.includes("myMonKey") && o.getComponent(C).back(),
                                    this.rightMenuComponent.updatePlayerWait(),
                                    this.rightMenuComponent.show()
                            }
                        }
                        ,
                        a.killRoomUserDie = function (e) {
                            this.node.children.forEach((function (o) {
                                o.name.includes("otherMonKey") && o.getComponent(v).checkRoomID == "room" + e && o.destroy(),
                                    o.name.includes("myMonKey") && o.getComponent(v).checkRoomID == "room" + e && o.destroy()
                            }
                            ))
                        }
                        ,
                        a.checkUserGoRoomState = function () {
                            for (var e in this.existingUserNodes)
                                if (this.existingUserNodes[e]) {
                                    var o = this.existingUserNodes[e];
                                    if (o.name.includes("otherMonKey") && o && o.active && o.getComponent(k).onTheWay)
                                        return !1;
                                    if (o.name.includes("myMonKey") && o && o.active && o.getComponent(C).onTheWay)
                                        return !1
                                }
                            return !0
                        }
                        ,
                        a.initOther = function () {
                            var e = this;
                            this.schedule((function () {
                                var o = e.initMonkey(e.otherMonkey, "otherMonKey_");
                                setTimeout((function () {
                                    var e = ["room6"]
                                        , n = e[Math.floor(Math.random() * e.length)];
                                    "room0" != n && o.getComponent(k).goRoom(n)
                                }
                                ), 2e3)
                            }
                            ), .01, 200)
                        }
                        ,
                        a.initOwn = function () {
                            this.initMonkey(this.myMonkey, "myMonKey")
                        }
                        ,
                        a.initMonkeyPool = function (e) {
                            void 0 === e && (e = 200),
                                this.monkeyPool = new c;
                            for (var o = 0; o < e; o++) {
                                var n = h(this.otherMonkey);
                                this.monkeyPool.put(n)
                            }
                        }
                        ,
                        a.initMonkey = function (e, o, n) {
                            var t;
                            return void 0 === n && (n = ""),
                                (t = h(e)).name = o,
                                t.setParent(this.node),
                                t.setPosition(f(g(0, 0), g(700, 70))),
                                n && (t.getChildByName("name").getComponent(m).string = n),
                                t
                        }
                        ,
                        a.initKiller = function () {
                            var e = h(this.killerMonkey);
                            e.name = "killerMonKey",
                                e.setParent(this.node),
                                e.setPosition(g(780, 240)),
                                y(e, "left"),
                                e.active = !1,
                                this.killerMonKeyNode = e
                        }
                        ,
                        a.close = function () {
                            console.log("close..."),
                                uni.navigateBack({
                                    delta: 1
                                })
                        }
                        ,
                        a.goRule = function () {
                            console.log();
                            var e = u("/rule");
                            e ? e.active = !0 : h(this.rulePrefab).setParent(u("/"))
                        }
                        ,
                        o
                }(p)).prototype, "otherMonkey", [P], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    Z = o(X.prototype, "myMonkey", [G], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    $ = o(X.prototype, "killerMonkey", [S], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    ee = o(X.prototype, "rulePrefab", [x], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    oe = o(X.prototype, "doorManagerComponent", [O], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    ne = o(X.prototype, "rightMenuComponent", [z], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    te = o(X.prototype, "countDownComponent", [F], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    ie = o(X.prototype, "killerAppearsComponent", [E], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    ae = o(X.prototype, "audioManagerComponent", [L], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    re = o(X.prototype, "quantityManagerComponent", [H], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    se = o(X.prototype, "balanceManagerComponent", [W], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    le = o(X.prototype, "gameResultManagerComponent", [q], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    ue = o(X.prototype, "coinFlyToRoomComponent", [Q], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    me = o(X.prototype, "submitBtnNode", [J], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    V = X)) || V));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/GameResultManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./AudioManager.ts", "./CommonUtils.ts"], (function (e) {
    var t, o, i, n, a, s, r, c, u, l, d, p;
    return {
        setters: [function (e) {
            t = e.applyDecoratedDescriptor,
                o = e.inheritsLoose,
                i = e.initializerDefineProperty,
                n = e.assertThisInitialized
        }
            , function (e) {
                a = e.cclegacy,
                    s = e._decorator,
                    r = e.Node,
                    c = e.find,
                    u = e.Label,
                    l = e.Component
            }
            , function (e) {
                d = e.AudioManager
            }
            , function (e) {
                p = e.getRoomNameById
            }
        ],
        execute: function () {
            var h, g, m, f, v, y, N;
            a._RF.push({}, "64c82J3NChCtbtKm2X94O+A", "GameResultManager", void 0);
            var C = s.ccclass
                , M = s.property;
            e("GameResultManager", (h = C("GameResultManager"),
                g = M(r),
                m = M(r),
                h((y = t((v = function (e) {
                    function t() {
                        for (var t, o = arguments.length, a = new Array(o), s = 0; s < o; s++)
                            a[s] = arguments[s];
                        return t = e.call.apply(e, [this].concat(a)) || this,
                            i(t, "successNode", y, n(t)),
                            i(t, "failNode", N, n(t)),
                            t.audioManagerComponent = void 0,
                            t
                    }
                    o(t, e);
                    var a = t.prototype;
                    return a.onLoad = function () {
                        this.audioManagerComponent = c("Canvas/audio").getComponent(d)
                    }
                        ,
                        a.showSuccess = function (e) {
                            var t = this;
                            this.successNode.getChildByName("tips").getComponent(u).string = "本期投入宝石" + e.user_amount + "，获得" + e.user_bonus,
                                this.audioManagerComponent.playSuccess(),
                                this.successNode.active = !0,
                                this.scheduleOnce((function () {
                                    t.successNode.active = !1
                                }
                                ), 3)
                        }
                        ,
                        a.showFail = function (e) {
                            var t = this;
                            this.failNode.getChildByName("tips").getComponent(u).string = "杀手杀死了躲在「" + p(e.killer_room) + "」的人",
                                this.audioManagerComponent.playFail(),
                                this.failNode.active = !0,
                                this.scheduleOnce((function () {
                                    t.failNode.active = !1
                                }
                                ), 3)
                        }
                        ,
                        t
                }(l)).prototype, "successNode", [g], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    N = t(v.prototype, "failNode", [m], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    f = v)) || f));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/GameStore.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var t, r, o, i, n, a, c;
    return {
        setters: [function (e) {
            t = e.applyDecoratedDescriptor,
                r = e.inheritsLoose,
                o = e.initializerDefineProperty,
                i = e.assertThisInitialized
        }
            , function (e) {
                n = e.cclegacy,
                    a = e._decorator,
                    c = e.Component
            }
        ],
        execute: function () {
            var l, u, p, s, f;
            n._RF.push({}, "557df0bbh5CgI4lbsCiY+ak", "GameStore", void 0);
            var h = a.ccclass
                , b = a.property;
            e("GameStore", h("GameStore")((p = t((u = function (e) {
                function t() {
                    for (var t, r = arguments.length, n = new Array(r), a = 0; a < r; a++)
                        n[a] = arguments[a];
                    return t = e.call.apply(e, [this].concat(n)) || this,
                        o(t, "checkRoomID", p, i(t)),
                        o(t, "checkRoomPath", s, i(t)),
                        o(t, "DoorState", f, i(t)),
                        t
                }
                r(t, e);
                var n = t.prototype;
                return n.start = function () { }
                    ,
                    n.update = function (e) { }
                    ,
                    t
            }(c)).prototype, "checkRoomID", [b], {
                configurable: !0,
                enumerable: !0,
                writable: !0,
                initializer: function () {
                    return ""
                }
            }),
                s = t(u.prototype, "checkRoomPath", [b], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                f = t(u.prototype, "DoorState", [b], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return !0
                    }
                }),
                l = u)) || l);
            n._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/Http.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, r, n, o;
    return {
        setters: [function (t) {
            e = t.asyncToGenerator,
                r = t.regeneratorRuntime,
                n = t.extends
        }
            , function (t) {
                o = t.cclegacy
            }
        ],
        execute: function () {
            o._RF.push({}, "2102bwTwPVItI9K78QHIqO6", "Http", void 0);
            t("Http", function () {
                function t() { }
                return t.initSocket = function () {
                    return new WebSocket("ws://47.104.201.19:9016/dtsws?token=" + localStorage.getItem("token"))
                }
                    ,
                    t.get = function () {
                        var n = e(r().mark((function e(n, o, u) {
                            var c;
                            return r().wrap((function (e) {
                                for (; ;)
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return void 0 === u && (u = {}),
                                                u.method = "GET",
                                                o && (c = Object.keys(o).map((function (t) {
                                                    return encodeURIComponent(t) + "=" + encodeURIComponent(o[t])
                                                }
                                                )).join("&"),
                                                    n += "?" + c),
                                                e.abrupt("return", t.request(n, u));
                                        case 4:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                            ), e)
                        }
                        )));
                        return function (t, e, r) {
                            return n.apply(this, arguments)
                        }
                    }(),
                    t.post = function () {
                        var o = e(r().mark((function e(o, u, c) {
                            return r().wrap((function (e) {
                                for (; ;)
                                    switch (e.prev = e.next) {
                                        case 0:
                                            return void 0 === c && (c = {}),
                                                c.method = "POST",
                                                c.headers = n({
                                                    "Content-Type": "application/json"
                                                }, c.headers),
                                                c.body = JSON.stringify(u),
                                                e.abrupt("return", t.request(o, c));
                                        case 5:
                                        case "end":
                                            return e.stop()
                                    }
                            }
                            ), e)
                        }
                        )));
                        return function (t, e, r) {
                            return o.apply(this, arguments)
                        }
                    }(),
                    t.request = function () {
                        var t = e(r().mark((function t(e, n) {
                            var o, u;
                            return r().wrap((function (t) {
                                for (; ;)
                                    switch (t.prev = t.next) {
                                        case 0:
                                            return n.headers = n.headers || {},
                                                (o = localStorage.getItem("token")) && (n.headers.token = o),
                                                t.prev = 3,
                                                t.next = 6,
                                                fetch("http://47.104.201.19:9016/api" + e, n);
                                        case 6:
                                            if ((u = t.sent).ok) {
                                                t.next = 9;
                                                break
                                            }
                                            throw new Error("HTTP error! Status: " + u.status);
                                        case 9:
                                            return t.abrupt("return", u.json());
                                        case 12:
                                            throw t.prev = 12,
                                            t.t0 = t.catch(3),
                                            console.log("request error", t.t0),
                                            t.t0;
                                        case 16:
                                        case "end":
                                            return t.stop()
                                    }
                            }
                            ), t, null, [[3, 12]])
                        }
                        )));
                        return function (e, r) {
                            return t.apply(this, arguments)
                        }
                    }(),
                    t
            }());
            o._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/KillerAppears.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, o, r, n, s, i;
    return {
        setters: [function (t) {
            e = t.inheritsLoose
        }
            , function (t) {
                o = t.cclegacy,
                    r = t._decorator,
                    n = t.tween,
                    s = t.v3,
                    i = t.Component
            }
        ],
        execute: function () {
            var a;
            o._RF.push({}, "b5c14Sz6JJGqLoRoqM3bHTP", "KillerAppears", void 0);
            var c = r.ccclass;
            r.property,
                t("killerAppears", c("killerAppears")(a = function (t) {
                    function o() {
                        for (var e, o = arguments.length, r = new Array(o), n = 0; n < o; n++)
                            r[n] = arguments[n];
                        return (e = t.call.apply(t, [this].concat(r)) || this).showState = !1,
                            e
                    }
                    e(o, t);
                    var r = o.prototype;
                    return r.show = function () {
                        var t = this;
                        this.showState || (this.showState = !0,
                            this.node.active = !0,
                            n(this.node).to(.7, {
                                scale: s(1.1, 1.1, 1)
                            }).to(.7, {
                                scale: s(1, 1, 1)
                            }).union().repeat(3).call((function () {
                                t.hide()
                            }
                            )).start())
                    }
                        ,
                        r.hide = function () {
                            this.node.active = !1
                        }
                        ,
                        r.reset = function () {
                            this.showState = !1
                        }
                        ,
                        o
                }(i)) || a);
            o._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/KillerMonkey.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./CommonUtils.ts", "./GameStore.ts", "./AudioManager.ts"], (function (n) {
    var o, e, t, i, a, r, l, s, c, u, p, d, h;
    return {
        setters: [function (n) {
            o = n.applyDecoratedDescriptor,
                e = n.inheritsLoose,
                t = n.initializerDefineProperty,
                i = n.assertThisInitialized
        }
            , function (n) {
                a = n.cclegacy,
                    r = n._decorator,
                    l = n.dragonBones,
                    s = n.find,
                    c = n.Component
            }
            , function (n) {
                u = n.goRoomTween,
                    p = n.goWaitTween
            }
            , function (n) {
                d = n.GameStore
            }
            , function (n) {
                h = n.AudioManager
            }
        ],
        execute: function () {
            var m, g, y, f, v, C, M;
            a._RF.push({}, "e3c9eNfPA1IJ5Ivk2oCa3L8", "KillerMonkey", void 0);
            var k = r.ccclass
                , A = r.property;
            n("KillerMonkey", (m = k("KillerMonkey"),
                g = A(h),
                y = A(l.ArmatureDisplay),
                m((C = o((v = function (n) {
                    function o() {
                        for (var o, e = arguments.length, a = new Array(e), r = 0; r < e; r++)
                            a[r] = arguments[r];
                        return (o = n.call.apply(n, [this].concat(a)) || this).onTheWay = !1,
                            t(o, "audioManagerComponent", C, i(o)),
                            t(o, "dragonBones", M, i(o)),
                            o
                    }
                    e(o, n);
                    var a = o.prototype;
                    return a.onLoad = function () {
                        this.audioManagerComponent = s("Canvas/audio").getComponent(h)
                    }
                        ,
                        a.playAnimation = function (n, o) {
                            void 0 === o && (o = 0),
                                this.dragonBones && (this.dragonBones.timeScale = 1,
                                    this.dragonBones.playAnimation(n, o))
                        }
                        ,
                        a.goRoom = function (n, o) {
                            var e = this;
                            void 0 === o && (o = null),
                                this.node.active = !0,
                                "" == this.node.getComponent(d).checkRoomID && (this.onTheWay = !0,
                                    this.node.setSiblingIndex(9999),
                                    this.node.getComponent(d).checkRoomID = n,
                                    this.playAnimation("zou"),
                                    u(n, this.node, (function (n) {
                                        e.onTheWay = !1,
                                            e.node.getComponent(d).checkRoomPath = n.pathPoints,
                                            e.playAnimation("adle"),
                                            e.audioManagerComponent.playKnife(),
                                            e.audioManagerComponent.playKilled(),
                                            o && o()
                                    }
                                    )))
                        }
                        ,
                        a.back = function () {
                            var n = this;
                            this.onTheWay = !0,
                                this.playAnimation("zou"),
                                p(this.node, (function () {
                                    n.onTheWay = !1,
                                        n.node.active = !1
                                }
                                ))
                        }
                        ,
                        a.update = function (n) { }
                        ,
                        o
                }(c)).prototype, "audioManagerComponent", [g], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    M = o(v.prototype, "dragonBones", [y], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    f = v)) || f));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/main", ["./debug-view-runtime-control.ts", "./BaseToast.ts", "./Toast.ts", "./AmountOption.ts", "./AudioManager.ts", "./BalanceManager.ts", "./CoinFlyToRoom.ts", "./CountDown.ts", "./DoorManager.ts", "./FrameAnimation.ts", "./GameManager.ts", "./GameResultManager.ts", "./GameStore.ts", "./KillerAppears.ts", "./KillerMonkey.ts", "./MessageBox.ts", "./MyMonkey.ts", "./OtherMonkey.ts", "./ProgressBarManager.ts", "./QuantityManager.ts", "./RankListBtn.ts", "./RecordBtn.ts", "./RightMenu.ts", "./RocksManager.ts", "./SelectRoom.ts", "./SubmitBtn.ts", "./RuleMgr.ts", "./CommonUtils.ts", "./Http.ts"], (function () {
    return {
        setters: [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null],
        execute: function () { }
    }
}
));

System.register("chunks:///_virtual/MessageBox.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var t, i, n, r, s, o, a, c;
    return {
        setters: [function (e) {
            t = e.applyDecoratedDescriptor,
                i = e.inheritsLoose,
                n = e.initializerDefineProperty,
                r = e.assertThisInitialized
        }
            , function (e) {
                s = e.cclegacy,
                    o = e._decorator,
                    a = e.Label,
                    c = e.Component
            }
        ],
        execute: function () {
            var l, u, p, g, f;
            s._RF.push({}, "06233nAsz9K7KcLqiA6Movs", "MessageBox", void 0);
            var h = o.ccclass
                , v = o.property;
            e("MessageBox", (l = h("MessageBox"),
                u = v(a),
                l((f = t((g = function (e) {
                    function t() {
                        for (var t, i = arguments.length, s = new Array(i), o = 0; o < i; o++)
                            s[o] = arguments[o];
                        return t = e.call.apply(e, [this].concat(s)) || this,
                            n(t, "messageLabel", f, r(t)),
                            t
                    }
                    i(t, e);
                    var s = t.prototype;
                    return s.show = function (e) {
                        this.messageLabel.string = e,
                            this.node.active = !0
                    }
                        ,
                        s.hide = function () {
                            this.node.active = !1
                        }
                        ,
                        t
                }(c)).prototype, "messageLabel", [u], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    p = g)) || p));
            s._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/MyMonkey.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./CommonUtils.ts", "./GameStore.ts"], (function (o) {
    var n, e, t, i, a, r, c, s, h, l, u, p;
    return {
        setters: [function (o) {
            n = o.applyDecoratedDescriptor,
                e = o.inheritsLoose,
                t = o.initializerDefineProperty,
                i = o.assertThisInitialized
        }
            , function (o) {
                a = o.cclegacy,
                    r = o._decorator,
                    c = o.dragonBones,
                    s = o.Component
            }
            , function (o) {
                h = o.goWaitTween,
                    l = o.getRandomPositionByRoom,
                    u = o.goRoomTween
            }
            , function (o) {
                p = o.GameStore
            }
        ],
        execute: function () {
            var m, y, d, g, f, k, R;
            a._RF.push({}, "8cc29ZT0r9BTLOpG04XgHhk", "MyMonkey", void 0);
            var v = r.ccclass
                , b = r.property;
            o("MyMonkey", (m = v("MyMonkey"),
                y = b(c.ArmatureDisplay),
                m((f = n((g = function (o) {
                    function n() {
                        for (var n, e = arguments.length, a = new Array(e), r = 0; r < e; r++)
                            a[r] = arguments[r];
                        return n = o.call.apply(o, [this].concat(a)) || this,
                            t(n, "checkRoomID", f, i(n)),
                            t(n, "checkRoomPath", k, i(n)),
                            n.onTheWay = void 0,
                            t(n, "dragonBones", R, i(n)),
                            n
                    }
                    e(n, o);
                    var a = n.prototype;
                    return a.back = function () {
                        var o = this;
                        this.onTheWay = !0,
                            this.playAnimation("zou"),
                            h(this.node, (function () {
                                o.onTheWay = !1,
                                    o.playAnimation("adle")
                            }
                            ))
                    }
                        ,
                        a.playAnimation = function (o, n) {
                            void 0 === n && (n = 0),
                                this.dragonBones && (this.dragonBones.timeScale = 1,
                                    this.dragonBones.playAnimation(o, n))
                        }
                        ,
                        a.goRoom = function (o) {
                            var n = this;
                            this.onTheWay;
                            var e = this.node.getComponent(p).checkRoomID;
                            "" == e ? (this.onTheWay = !0,
                                this.playAnimation("zou"),
                                u(o, this.node, (function (e) {
                                    n.node.getComponent(p).checkRoomID = o,
                                        n.node.getComponent(p).checkRoomPath = e.pathPoints,
                                        n.onTheWay = !1,
                                        n.playAnimation("adle")
                                }
                                ))) : e != o && (this.node.setPosition(l(o)),
                                    this.node.getComponent(p).checkRoomID = o)
                        }
                        ,
                        n
                }(s)).prototype, "checkRoomID", [b], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return ""
                    }
                }),
                    k = n(g.prototype, "checkRoomPath", [b], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return []
                        }
                    }),
                    R = n(g.prototype, "dragonBones", [y], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    d = g)) || d));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/OtherMonkey.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./CommonUtils.ts", "./GameStore.ts"], (function (o) {
    var n, t, e, i, a, r, s, c, h, l, p, u;
    return {
        setters: [function (o) {
            n = o.applyDecoratedDescriptor,
                t = o.inheritsLoose,
                e = o.initializerDefineProperty,
                i = o.assertThisInitialized
        }
            , function (o) {
                a = o.cclegacy,
                    r = o._decorator,
                    s = o.dragonBones,
                    c = o.Component
            }
            , function (o) {
                h = o.getRandomPositionByRoom,
                    l = o.goRoomTween,
                    p = o.goWaitTween
            }
            , function (o) {
                u = o.GameStore
            }
        ],
        execute: function () {
            var y, m, d, f, g;
            a._RF.push({}, "3b665WknaxLKZJpk/YIfjI3", "OtherMonkey", void 0);
            var k = r.ccclass
                , v = r.property;
            o("otherMonkey", (y = k("otherMonkey"),
                m = v(s.ArmatureDisplay),
                y((g = n((f = function (o) {
                    function n() {
                        for (var n, t = arguments.length, a = new Array(t), r = 0; r < t; r++)
                            a[r] = arguments[r];
                        return (n = o.call.apply(o, [this].concat(a)) || this).onTheWay = !1,
                            e(n, "dragonBones", g, i(n)),
                            n
                    }
                    t(n, o);
                    var a = n.prototype;
                    return a.start = function () { }
                        ,
                        a.playAnimation = function (o, n) {
                            void 0 === n && (n = 0),
                                this.dragonBones && (this.dragonBones.timeScale = 1,
                                    this.dragonBones.playAnimation(o, n))
                        }
                        ,
                        a.goRoom = function (o) {
                            var n = this;
                            if (!this.onTheWay) {
                                var t = this.node.getComponent(u).checkRoomID;
                                "" == t ? (this.onTheWay = !0,
                                    this.playAnimation("zou"),
                                    l(o, this.node, (function (t) {
                                        n.node.getComponent(u).checkRoomID = o,
                                            n.node.getComponent(u).checkRoomPath = t.pathPoints,
                                            n.onTheWay = !1,
                                            n.playAnimation("adle", 0)
                                    }
                                    ))) : t != o && (this.node.setPosition(h(o)),
                                        this.node.getComponent(u).checkRoomID = o)
                            }
                        }
                        ,
                        a.back = function () {
                            var o = this;
                            this.onTheWay || (this.onTheWay = !0,
                                this.playAnimation("zou"),
                                p(this.node, (function () {
                                    o.playAnimation("adle", 0),
                                        o.onTheWay = !1
                                }
                                )))
                        }
                        ,
                        n
                }(c)).prototype, "dragonBones", [m], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    d = f)) || d));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/ProgressBarManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var r, o, a, s, i, n, t, l, p, g, c;
    return {
        setters: [function (e) {
            r = e.applyDecoratedDescriptor,
                o = e.inheritsLoose,
                a = e.initializerDefineProperty,
                s = e.assertThisInitialized
        }
            , function (e) {
                i = e.cclegacy,
                    n = e._decorator,
                    t = e.ProgressBar,
                    l = e.Label,
                    p = e.Node,
                    g = e.director,
                    c = e.Component
            }
        ],
        execute: function () {
            var u, h, b, d, f, B, m, y, v;
            i._RF.push({}, "09155cCVlpNu5VFy1WOWo9t", "ProgressBarManager", void 0);
            var w = n.ccclass
                , P = n.property;
            e("ProgressBarManager", (u = w("ProgressBarManager"),
                h = P(t),
                b = P(l),
                d = P(p),
                u((m = r((B = function (e) {
                    function r() {
                        for (var r, o = arguments.length, i = new Array(o), n = 0; n < o; n++)
                            i[n] = arguments[n];
                        return r = e.call.apply(e, [this].concat(i)) || this,
                            a(r, "progressBarView", m, s(r)),
                            a(r, "progressBarLabel", y, s(r)),
                            r.over = !1,
                            a(r, "openGameNode", v, s(r)),
                            r
                    }
                    o(r, e);
                    var i = r.prototype;
                    return i.onLoad = function () {
                        var e = this;
                        this.progressBarView.progress = 0,
                            this.openGameNode.on(p.EventType.TOUCH_START, this.openGame, this),
                            g.preloadScene("game", this._onProgress.bind(this), (function () {
                                e.progressBarLabel.string = "加载完成，马上开启",
                                    g.loadScene("game")
                            }
                            ))
                    }
                        ,
                        i._onProgress = function (e, r, o) {
                            this.progressBarView.progress = e / r,
                                this.progressBarLabel.string = "努力加载中" + (100 * this.progressBarView.progress).toFixed(2) + "%"
                        }
                        ,
                        i.openGame = function () {
                            g.loadScene("game")
                        }
                        ,
                        r
                }(c)).prototype, "progressBarView", [h], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    y = r(B.prototype, "progressBarLabel", [b], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    v = r(B.prototype, "openGameNode", [d], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    f = B)) || f));
            i._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/QuantityManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var n, i, r, a, e, o, u, s;
    return {
        setters: [function (t) {
            n = t.applyDecoratedDescriptor,
                i = t.inheritsLoose,
                r = t.initializerDefineProperty,
                a = t.assertThisInitialized
        }
            , function (t) {
                e = t.cclegacy,
                    o = t._decorator,
                    u = t.Label,
                    s = t.Component
            }
        ],
        execute: function () {
            var c, l, p, y, f;
            e._RF.push({}, "264fa2PP+xLaoZHNVQd5Rva", "QuantityManager", void 0);
            var g = o.ccclass
                , h = o.property;
            t("QuantityManager", (c = g("QuantityManager"),
                l = h(u),
                c((f = n((y = function (t) {
                    function n() {
                        for (var n, i = arguments.length, e = new Array(i), o = 0; o < i; o++)
                            e[o] = arguments[o];
                        return n = t.call.apply(t, [this].concat(e)) || this,
                            r(n, "quantity", f, a(n)),
                            n
                    }
                    i(n, t);
                    var e = n.prototype;
                    return e.start = function () {
                        this.quantity.string = "0"
                    }
                        ,
                        e.updateNumber = function (t) {
                            this.quantity.string != t && (this.quantity.string = t)
                        }
                        ,
                        n
                }(s)).prototype, "quantity", [l], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    p = y)) || p));
            e._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/RankListBtn.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var n, e, s, i, o;
    return {
        setters: [function (t) {
            n = t.inheritsLoose
        }
            , function (t) {
                e = t.cclegacy,
                    s = t._decorator,
                    i = t.Node,
                    o = t.Component
            }
        ],
        execute: function () {
            var r;
            e._RF.push({}, "d8f3aWB2GtNmZ81zFCAFBCD", "RankListBtn", void 0);
            var a = s.ccclass;
            s.property,
                t("RankListBtn", a("RankListBtn")(r = function (t) {
                    function e() {
                        return t.apply(this, arguments) || this
                    }
                    n(e, t);
                    var s = e.prototype;
                    return s.start = function () {
                        this.node.on(i.EventType.TOUCH_START, this.click, this)
                    }
                        ,
                        s.click = function () {
                            console.log("/pages/game/dts/rank_list"),
                                uni.navigateTo({
                                    url: "/pages/game/dts/rank_list"
                                })
                        }
                        ,
                        e
                }(o)) || r);
            e._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/RecordBtn.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, n, o, r, c;
    return {
        setters: [function (t) {
            e = t.inheritsLoose
        }
            , function (t) {
                n = t.cclegacy,
                    o = t._decorator,
                    r = t.Node,
                    c = t.Component
            }
        ],
        execute: function () {
            var s;
            n._RF.push({}, "eabc1nAqadJwL8HDnVPdmIr", "RecordBtn", void 0);
            var i = o.ccclass;
            o.property,
                t("RecordBtn", i("RecordBtn")(s = function (t) {
                    function n() {
                        return t.apply(this, arguments) || this
                    }
                    e(n, t);
                    var o = n.prototype;
                    return o.start = function () {
                        this.node.on(r.EventType.TOUCH_START, this.click, this)
                    }
                        ,
                        o.click = function () {
                            console.log("/pages/game/dts/record"),
                                uni.navigateTo({
                                    url: "/pages/game/dts/record"
                                })
                        }
                        ,
                        n
                }(c)) || s);
            n._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/RightMenu.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var t, i, n, r, a, o, l, u;
    return {
        setters: [function (e) {
            t = e.applyDecoratedDescriptor,
                i = e.inheritsLoose,
                n = e.initializerDefineProperty,
                r = e.assertThisInitialized
        }
            , function (e) {
                a = e.cclegacy,
                    o = e._decorator,
                    l = e.Label,
                    u = e.Component
            }
        ],
        execute: function () {
            var c, s, p, h, f, b, d;
            a._RF.push({}, "5b03dVujOVEb6f2ESrr/jFN", "RightMenu", void 0);
            var y = o.ccclass
                , g = o.property;
            e("RightMenu", (c = y("RightMenu"),
                s = g(l),
                p = g(l),
                c((b = t((f = function (e) {
                    function t() {
                        for (var t, i = arguments.length, a = new Array(i), o = 0; o < i; o++)
                            a[o] = arguments[o];
                        return t = e.call.apply(e, [this].concat(a)) || this,
                            n(t, "qsLabel", b, r(t)),
                            n(t, "playerLabel", d, r(t)),
                            t
                    }
                    i(t, e);
                    var a = t.prototype;
                    return a.start = function () { }
                        ,
                        a.show = function () {
                            this.node.active || (this.node.active = !0)
                        }
                        ,
                        a.hide = function () {
                            this.node.active && (this.node.active = !1)
                        }
                        ,
                        a.toggle = function () {
                            this.node.active = !this.node.active
                        }
                        ,
                        a.updateQs = function (e) {
                            this.qsLabel.string = e + "期"
                        }
                        ,
                        a.updatePlayer = function (e, t) {
                            this.playerLabel.string = e + "/" + t
                        }
                        ,
                        a.updatePlayerWait = function () {
                            this.playerLabel.string = "等待下一期"
                        }
                        ,
                        t
                }(u)).prototype, "qsLabel", [s], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    d = t(f.prototype, "playerLabel", [p], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: function () {
                            return null
                        }
                    }),
                    h = f)) || h));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/RocksManager.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var r, t, n, o, a, i, s, c, l, u;
    return {
        setters: [function (e) {
            r = e.applyDecoratedDescriptor,
                t = e.inheritsLoose,
                n = e.initializerDefineProperty,
                o = e.assertThisInitialized
        }
            , function (e) {
                a = e.cclegacy,
                    i = e._decorator,
                    s = e.Label,
                    c = e.tween,
                    l = e.v3,
                    u = e.Component
            }
        ],
        execute: function () {
            var p, g, b, f, h;
            a._RF.push({}, "1bdfc8gLblIG7T95/MX8qqU", "RocksManager", void 0);
            var k = i.ccclass
                , y = i.property;
            e("RocksManager", (p = k("RocksManager"),
                g = y(s),
                p((h = r((f = function (e) {
                    function r() {
                        for (var r, t = arguments.length, a = new Array(t), i = 0; i < t; i++)
                            a[i] = arguments[i];
                        return r = e.call.apply(e, [this].concat(a)) || this,
                            n(r, "rocksLabel", h, o(r)),
                            r
                    }
                    t(r, e);
                    var a = r.prototype;
                    return a.start = function () {
                        this.rocksLabel.string = "0"
                    }
                        ,
                        a.updateRocksNumber = function (e) {
                            this.rocksLabel.string != e && (this.rocksLabel.string = e + "",
                                c(this.node.getChildByName("rocks")).to(.2, {
                                    scale: l(1.1, 1.1, 1)
                                }).to(.2, {
                                    scale: l(1, 1, 1)
                                }).start())
                        }
                        ,
                        r
                }(u)).prototype, "rocksLabel", [g], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: function () {
                        return null
                    }
                }),
                    b = f)) || b));
            a._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/RuleMgr.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (t) {
    var e, r, n, o;
    return {
        setters: [function (t) {
            e = t.inheritsLoose
        }
            , function (t) {
                r = t.cclegacy,
                    n = t._decorator,
                    o = t.Component
            }
        ],
        execute: function () {
            var u;
            r._RF.push({}, "e428aJVmMBArakqRMFTi/Z4", "RuleMgr", void 0);
            var c = n.ccclass;
            n.property,
                t("RuleMgr", c("RuleMgr")(u = function (t) {
                    function r() {
                        return t.apply(this, arguments) || this
                    }
                    e(r, t);
                    var n = r.prototype;
                    return n.back = function () {
                        this.node.active = !1
                    }
                        ,
                        n.start = function () { }
                        ,
                        n.update = function (t) { }
                        ,
                        r
                }(o)) || u);
            r._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/SelectRoom.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./MyMonkey.ts", "./AudioManager.ts", "./GameManager.ts"], (function (o) {
    var e, n, t, a, i, c, m, r, s;
    return {
        setters: [function (o) {
            e = o.inheritsLoose
        }
            , function (o) {
                n = o.cclegacy,
                    t = o._decorator,
                    a = o.find,
                    i = o.Node,
                    c = o.Component
            }
            , function (o) {
                m = o.MyMonkey
            }
            , function (o) {
                r = o.AudioManager
            }
            , function (o) {
                s = o.GameManager
            }
        ],
        execute: function () {
            var h;
            n._RF.push({}, "c0284tu8tJBp4qcS+AnztPY", "SelectRoom", void 0);
            var u = t.ccclass;
            t.property,
                o("SelectRoom", u("SelectRoom")(h = function (o) {
                    function n() {
                        for (var e, n = arguments.length, t = new Array(n), a = 0; a < n; a++)
                            t[a] = arguments[a];
                        return (e = o.call.apply(o, [this].concat(t)) || this).audioManagerComponent = void 0,
                            e.myMonKeyNode = void 0,
                            e.gameManagerComponent = void 0,
                            e
                    }
                    e(n, o);
                    var t = n.prototype;
                    return t.onLoad = function () {
                        this.audioManagerComponent = a("Canvas/audio").getComponent(r),
                            this.gameManagerComponent = a("Canvas/content/player").getComponent(s),
                            this.node.on(i.EventType.TOUCH_START, this.clickRoom, this)
                    }
                        ,
                        t.clickRoom = function () {
                            if (3 != this.gameManagerComponent.gameState && (this.myMonKeyNode = a("Canvas/content/player/myMonKey"),
                                this.myMonKeyNode)) {
                                this.myMonKeyNode.getComponent(m).onTheWay;
                                var o = this.node.name;
                                this.checkoutRoom(),
                                    this.audioManagerComponent.playClickAudio(),
                                    this.myMonKeyNode.setSiblingIndex(9999),
                                    this.myMonKeyNode.getComponent(m).goRoom(o),
                                    this.gameManagerComponent.checkoutRoomId = o,
                                    this.gameManagerComponent.joinRoomId && this.gameManagerComponent.join(0)
                            }
                        }
                        ,
                        t.checkoutRoom = function () {
                            this.node.parent.children.forEach((function (o) {
                                o.getChildByName("mask").active = !1
                            }
                            )),
                                this.node.getChildByName("mask").active = !0
                        }
                        ,
                        n
                }(c)) || h);
            n._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/SubmitBtn.ts", ["./rollupPluginModLoBabelHelpers.js", "cc"], (function (e) {
    var t, i, r, n, o, l, a, c;
    return {
        setters: [function (e) {
            t = e.applyDecoratedDescriptor,
                i = e.inheritsLoose,
                r = e.initializerDefineProperty,
                n = e.assertThisInitialized
        }
            , function (e) {
                o = e.cclegacy,
                    l = e._decorator,
                    a = e.Node,
                    c = e.Component
            }
        ],
        execute: function () {
            var u, p, s, b, f, d, y, g, h;
            o._RF.push({}, "72144k/pE5Jo5YHCBBc1MFK", "SubmitBtn", void 0);
            var m = l.ccclass
                , B = l.property;
            e("SubmitBtn", (u = m("SubmitBtn"),
                p = B(a),
                s = B(a),
                b = B(a),
                u((y = t((d = function (e) {
                    function t() {
                        for (var t, i = arguments.length, o = new Array(i), l = 0; l < i; l++)
                            o[l] = arguments[l];
                        return t = e.call.apply(e, [this].concat(o)) || this,
                            r(t, "leftNode", y, n(t)),
                            r(t, "rightNode", g, n(t)),
                            r(t, "priceOptionNode", h, n(t)),
                            t
                    }
                    return i(t, e),
                        t.prototype.onLoad = function () { }
                        ,
                        t
                }(c)).prototype, "leftNode", [p], {
                    configurable: !0,
                    enumerable: !0,
                    writable: !0,
                    initializer: null
                }),
                    g = t(d.prototype, "rightNode", [s], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    h = t(d.prototype, "priceOptionNode", [b], {
                        configurable: !0,
                        enumerable: !0,
                        writable: !0,
                        initializer: null
                    }),
                    f = d)) || f));
            o._RF.pop()
        }
    }
}
));

System.register("chunks:///_virtual/Toast.ts", ["./rollupPluginModLoBabelHelpers.js", "cc", "./BaseToast.ts"], (function (t) {
    var e, i, n, o;
    return {
        setters: [function (t) {
            e = t.extends
        }
            , function (t) {
                i = t.cclegacy
            }
            , function (e) {
                n = e.BaseToast,
                    o = e.Gravity,
                    t("Gravity", e.Gravity)
            }
        ],
        execute: function () {
            i._RF.push({}, "52b46cnIAVAbKW6O3MgZkm4", "Toast", void 0);
            var s = []
                , u = t("Toast", function () {
                    function t() { }
                    return t.show = function (i, o, u) {
                        void 0 === o && (o = n.LENGTH_SHORT),
                            void 0 === u && (u = t.defaultOptions);
                        var r = e({}, this.defaultOptions, u)
                            , a = n.makeText(i, o, null).setGravity(r.gravity).setTextSize(r.textSize).setLineheight(r.lineHeight);
                        return s.push(a),
                            setTimeout((function () {
                                s.forEach((function (t) {
                                    return !t.isDestroy && t.show()
                                }
                                ))
                            }
                            ), 20),
                            a
                    }
                        ,
                        t.hideAll = function () {
                            setTimeout((function () {
                                s = []
                            }
                            ), 0)
                        }
                        ,
                        t
                }());
            u.LENGTH_SHORT = n.LENGTH_SHORT,
                u.LENGTH_LONG = n.LENGTH_LONG,
                u.defaultOptions = {
                    gravity: o.CENTER,
                    textSize: 24,
                    lineHeight: 2
                },
                i._RF.pop()
        }
    }
}
));

(function (r) {
    r('virtual:///prerequisite-imports/main', 'chunks:///_virtual/main');
}
)(function (mid, cid) {
    System.register(mid, [cid], function (_export, _context) {
        return {
            setters: [function (_m) {
                var _exportObj = {};

                for (var _key in _m) {
                    if (_key !== "default" && _key !== "__esModule")
                        _exportObj[_key] = _m[_key];
                }

                _export(_exportObj);
            }
            ],
            execute: function () { }
        };
    });
});
