
var n = {
    hosts: ["api.bbh5sdffi01.com"],
    scheme: "https"
};
if (isgoServer) {
    n = {
        hosts: [goServer_hosts],
        scheme: goServer_scheme
    };
}


n.webapi_url = n.scheme + "://" + n.hosts[0],
    n.mainVer = 1,
    n.subVer = 1,
    n.buildVer = "0712-219",
    n.oem = "yotubet",
    n.appName = "yotubet",
    n.packageName = "",
    n.versionCode = 1,
    n.versionName = "1.0",
    n.packageUrl = "",
    n.LogSwitch = false,
    n.WebDesktopLogSwitch = false,
    n.GAID = "G-M36ZXGX5X0",
    n.footer = 'Powered by <a target="_blank" href="" title="yotubet">yotubet',
    n.GoogleClientID = "712948427018-p4o172ogsrct3e28r4khh52852jhinkb.apps.googleusercontent.com",
    n.FacebookAppID = "3655106758067676",
    n.FacebookAppSecret = "",
    n.FacebookDisplayName = "yotubet",
    n.FacebookLoginScheme = "fb" + n.FacebookAppID,
    n.KEFU_URL = "https://t.me/yotubet1com",
    n.OFFICIAL_URL = "",
    n.debug = false,
    n.EnableLog = false,

    module.exports = n
