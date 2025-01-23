require("../script/i18n_script/LanguageData").default.inst.loadConfig().then(function () {
   require("../script/i18n_script/LanguageData").default.inst.selectLang("zh-cn");
   // require("../script/i18n_script/LanguageData").default.inst.selectLang("pt-pt");
}).catch(function (t) {
    return console.log("loadConfig err", t)
});


cc.Class({
    extends: cc.Component,

    properties: {

    },


    onLoad() {

    },

    start() {

    },


});
