cc.Class({
    extends: cc.Component,

    properties: {
        label: {
            default: null,
            type: cc.Label
        },
        // defaults, set visually when attaching this script to the Canvas
        text: 'Hello, World!'
    },

    // use this for initialization
    onLoad: function () {
        this.label.string = this.text;



        let xmlHttp = cc.loader.getXMLHttpRequest();
        xmlHttp.open("GET", "https://wxauth.11478.com:2013/clientVersion2", true);
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")

        // let l = false
        // let time1 = setTimeout(function () {
        //     d()
        // }, 8e3)
        // let d = function () {
        //     l || (l = true,
        //         clearTimeout(time1),
        //         xmlHttp.abort(),
        //         app.Client.OnEvent("ModalLayer", EventWaitType.EventWaitType.ReceiveNet))
        // };
        xmlHttp.onreadystatechange = function () {
            console.log("onreadystatechange", this.readyState, this.status, xmlHttp.responseText);
            if (this.readyState == 4 && this.status == 200) {
                // console.log("XXXXGETGETGET", xmlHttp.responseText);
            }
        }
        xmlHttp.ontimeout = function () {
            console.log("ontimeout");
        }
        xmlHttp.timeout = 5000;// 5 seconds for timeout
        xmlHttp.send();
    },

    // called every frame
    update: function (dt) {

    },
});
