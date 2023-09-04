require("../Script/script/i18n_script/LanguageData").default.inst.loadConfig().then(function () {

}).catch(function (t) {
    return console.log("loadConfig err", t)
});

let ccc = require("Http_gameList")




cc.Class({
    extends: cc.Component,

    properties: {

    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () {
        
    },

    start () {

    },

    // update (dt) {},
});
