let n ={} 
function o(e) {
    return "string" == typeof e ? new Promise(function(t, n) {
        var o = new Image;
        o.setAttribute("crossOrigin", "anonymous"),
        o.src = e,
        o.onload = function() {
            var e = document.createElement("canvas");
            e.width = o.width,
            e.height = o.height,
            e.getContext("2d").drawImage(o, 0, 0, o.width, o.height);
            var n = e.toDataURL("image/jpeg", .8);
            t(n)
        }
        ,
        o.onerror = function(e) {
            console.log("Error: ", e),
            n(e)
        }
    }
    ) : new Promise(function(t, n) {
        var o = new FileReader;
        o.readAsDataURL(e),
        o.onload = function() {
            t(o.result)
        }
        ,
        o.onerror = function(e) {
            n(e)
        }
    }
    )
}
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.getBase64 = undefined,
n.getBase64 = o,
n.default = {
    getBase64: o
},
module.exports = n
