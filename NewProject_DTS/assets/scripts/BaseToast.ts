import { _decorator, UIOpacity, tween, Label, UITransform, v3, Node, Layers, Canvas, director, view, BlockInputEvents, Layout, Sprite, Texture2D, ImageAsset, SpriteFrame, color } from 'cc';
const { ccclass, property } = _decorator;
export enum Gravity {
    BOTTOM = 'BOTTOM',
    CENTER = 'CENTER',
    TOP = 'TOP'
}

@ccclass('BaseToast')
export class BaseToast {
    isDestroy: boolean;
    bgNode: any;
    textNode: any;
    node: any;
    textSize: number;
    lineHeight: number;
    gravity: any;
    text: any;
    time: any;
    constructor(e) {
        this.isDestroy = false
        this.bgNode = void 0,
            this.textNode = void 0,
            this.node = void 0,
            this.text = "",
            this.time = BaseToast.LENGTH_SHORT,
            this.textSize = 14,
            this.lineHeight = 2,
            this.gravity = Gravity.TOP,
            this.node = null == e ? this.getPNode() : e,
            this.bgNode = new Node,
            this.bgNode.layer = Layers.Enum.UI_2D,
            this.bgNode.addComponent(BlockInputEvents);
        var i = this.bgNode.addComponent(Layout);
        i.type = Layout.Type.VERTICAL,
            i.resizeMode = Layout.ResizeMode.CONTAINER;
        var o = this.bgNode.addComponent(Sprite);
        o.type = Sprite.Type.SLICED;
        var h = new Image;
        h.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAACAQMAAABIeJ9nAAAAA1BMVEX///+nxBvIAAAACklEQVQI12MAAgAABAABINItbwAAAABJRU5ErkJggg==",
            h.onload = function () {
                var t = new Texture2D;
                t.image = new ImageAsset(h);
                var e = new SpriteFrame;
                e.texture = t,
                    o.spriteFrame = e,
                    o.color = color(0, 0, 0, 200)
            }
            ,
            this.bgNode.active = false,
            this.textNode = new Node("Text"),
            this.textNode.layer = Layers.Enum.UI_2D,
            this.textNode.addComponent(UITransform).width = this.node.getComponent(UITransform).width;
        var a = this.textNode.addComponent(Label);
        a.horizontalAlign = Label.HorizontalAlign.CENTER,
            a.verticalAlign = Label.VerticalAlign.CENTER,
            this.textNode.parent = this.bgNode,
            this.bgNode.parent = this.node
    }

    static makeText = function (e, i, o) {
        var n = new BaseToast(o);
        return n.text = e,
            n.time = i,
            n
    }
    show = function () {
        var t = this;
        this.setText(this.text).setTextSize(this.textSize).setOverFlow(),
            this.bgNode.active = true,
            this.isDestroy = false;
        var e = this.bgNode.getComponent(UIOpacity);
        null == e && (e = this.bgNode.addComponent(UIOpacity)),
            tween(e).delay(this.time).to(.3, {
                opacity: 0
            }).call((function () {
                t.bgNode.active = false,
                    t.bgNode.destroy(),
                    t.isDestroy = true
            }
            )).start()
    }
    setText = function (t) {
        return this.text = t,
            this.textNode.getComponent(Label).string = this.text,
            this
    }
    setTextSize = function (t) {
        return this.textSize = t,
            this.textNode.getComponent(Label).fontSize = this.textSize,
            this
    }
    setLineheight = function (t) {
        return this.lineHeight = t,
            this
    }
    setTime = function (t) {
        return this.time = t,
            this
    }
    setGravity = function (t) {
        return this.gravity = t,
            this
    }
    setPosition = function () {
        var t = this.node.getComponent(UITransform)
            , e = this.bgNode.getComponent(UITransform);
        switch (this.gravity) {
            case Gravity.BOTTOM:
                var i = -t.height / 2 + e.height / 2 + 64;
                this.bgNode.position = v3(0, i, 0);
                break;
            case Gravity.CENTER:
                e.width,
                    e.height;
                this.bgNode.position = v3(0, 0, 0);
                break;
            case Gravity.TOP:
                var o = t.height / 2 - e.height / 2 - 64;
                this.bgNode.position = v3(0, o, 0)
        }
    }
    setOverFlow = function () {
        var t = this.node.getComponent(UITransform).width / 2
            , e = this.textNode.getComponent(Label)
            , i = this.text.length * e.fontSize
            , o = this.textNode.getComponent(UITransform);
        i > t ? (o.width = t,
            e.overflow = Label.Overflow.RESIZE_HEIGHT) : (o.width = i,
                e.overflow = Label.Overflow.NONE);
        var h = this.bgNode.getComponent(UITransform);
        h.width = o.width + 4 * e.fontSize,
            h.height = e.fontSize * this.lineHeight,
            this.setPosition()
    }
    getPNode = function () {
        if (null == BaseToast.pNode || !BaseToast.pNode.isValid) {
            var e;
            BaseToast.pNode = new Node("Toast");
            var i = BaseToast.pNode.addComponent(UITransform);
            BaseToast.pNode.layer = Layers.Enum.UI_2D,
                BaseToast.pNode.addComponent(Canvas),
                null == (e = director.getScene()) || e.addChild(BaseToast.pNode);
            var o = view.getVisibleSize();
            i.contentSize = o,
                i.width = o.width,
                i.height = o.height,
                BaseToast.pNode.position = v3(o.width / 2, o.height / 2, 0)
        }
        return BaseToast.pNode
    }
    static LENGTH_SHORT = 2;
    static LENGTH_LONG = 3.5;
    static pNode = null;
}