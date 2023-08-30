
var n = {
    hosts: ["api.brabet.com"],
    scheme: "https"
};
// n = {
//     hosts: ["127.0.0.1:8080"],
//     scheme: "https"
// };

n.webapi_url = n.scheme + "://" + n.hosts[0],
n.mainVer = 1,
n.subVer = 1,
n.buildVer = "0712-219",
n.oem = "BRABET",
n.appName = "BRABET",
n.packageName = "",
n.versionCode = 1,
n.versionName = "1.0",
n.packageUrl = "",
n.LogSwitch = false,
n.WebDesktopLogSwitch = false,
n.GAID = "G-M36ZXGX5X0",
n.footer = 'Powered by <a target="_blank" href="" title="Brabet">Brabet',
n.GoogleClientID = "1028031628248-hh629s30taao79a8f65v5nptk9624afk.apps.googleusercontent.com",
n.FacebookAppID = "1691987294470305",
n.FacebookAppSecret = "",
n.FacebookDisplayName = "brabet",
n.FacebookLoginScheme = "fb" + n.FacebookAppID,
n.KEFU_URL = "https://t.me/+_TDxVzcOhhE1MTVl",
n.OFFICIAL_URL = "",
n.debug = false,
n.EnableLog = false,

module.exports = n
