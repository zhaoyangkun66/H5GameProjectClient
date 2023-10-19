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
        function isStandalone() {
            //alert("ios:"+navigator.standalone+";  Android:"+(window.matchMedia('(display-mode: standalone)').matches)+";  Android:"+(window.matchMedia('(display-mode: fullscreen)').matches))
            return (window.matchMedia('(display-mode: standalone)').matches);
        }

        //由于本人所用mainfest文件可能是display:fullscreen，所以增加(window.matchMedia('(display-mode: fullscreen)').matches)判断
        this.label.string = isStandalone()

        
    },

    // called every frame
    update323: function () {
        deferredPrompt.prompt();
        deferredPrompt.userChoice.then(function (choiceResult) {
            deferredPrompt = null;
        });
    },
});
