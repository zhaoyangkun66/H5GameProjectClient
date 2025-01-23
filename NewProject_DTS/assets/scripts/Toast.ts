import { _decorator, Component } from 'cc';
const { ccclass, property } = _decorator;
import { BaseToast, Gravity } from "./BaseToast";

var s = []
@ccclass('Toast')
export class Toast {
    static LENGTH_SHORT = BaseToast.LENGTH_SHORT;
    static LENGTH_LONG = BaseToast.LENGTH_LONG;
    static defaultOptions = {
        gravity: Gravity.CENTER,
        textSize: 24,
        lineHeight: 2
    };
    static show(i, o = BaseToast.LENGTH_SHORT) {
        var r = this.defaultOptions
            , a = BaseToast.makeText(i, o, null).setGravity(r.gravity).setTextSize(r.textSize).setLineheight(r.lineHeight);
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
    hideAll() {
        setTimeout((function () {
            s = []
        }
        ), 0)
    }
}

