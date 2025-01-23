import { _decorator, Component, Node } from 'cc';
const { ccclass, property } = _decorator;
import { global } from "./GlobalDef";

@ccclass('Http')
export class Http {
    static initSocket(): any {
        return new WebSocket(global.ws + "?token=" + localStorage.getItem("token"))

    }
    static get(n: any, o: any = undefined, u: any = undefined): any {
        var c;
        void 0 === u && (u = {}),
            u.method = "GET",
            o && (c = Object.keys(o).map((function (t) {
                return encodeURIComponent(t) + "=" + encodeURIComponent(o[t])
            }
            )).join("&"),
                n += "?" + c)
        return this.request(n, u);
    }
    static request(url, n): any {
        var o;
        n.headers = n.headers || {}, (o = localStorage.getItem("token")) && (n.headers.token = o)
        return fetch("http://47.104.201.19:9016/api" + url, n)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}`);
                }
                return response.json();
            })
            .catch(error => console.error('Fetch error:', error));
    }
    static utf8ArrayToString = function (array) {
        var out, i, len, c;
        var char2, char3;

        out = "";
        len = array.length;
        i = 0;

        while (i < len) {
            c = array[i++];

            switch (c >> 4) {
                //	case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    // 0xxxxxxx
                    out += String.fromCharCode(c);
                    break;
                case 12:
                case 13:
                    // 110x xxxx   10xx xxxx
                    char2 = array[i++];
                    out += String.fromCharCode(((c & 0x1F) << 6) | (char2 & 0x3F));
                    break;
                case 14:
                    // 1110 xxxx  10xx xxxx  10xx xxxx
                    char2 = array[i++];
                    char3 = array[i++];
                    out += String.fromCharCode(((c & 0x0F) << 12) |
                        ((char2 & 0x3F) << 6) |
                        ((char3 & 0x3F) << 0));
                    break;
            }
        }

        return out;
    };
}
