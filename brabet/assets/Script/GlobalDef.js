//cc.sys.platform = cc.sys.MOBILE_BROWSER
//cc.sys.platform = cc.sys.DESKTOP_BROWSER

window.isgoServer = true;
//window.channelID = 2;//1巴西2西班牙
window.isPushServer = false;
if (isgoServer) {
  if (isPushServer) {
    // window.goServer_hosts1 = "192.168.1.100:8000"
    // window.goServer_scheme1 = "http"
    window.goServer_hosts1 = "game.yotuwin.com"
    window.goServer_scheme1 = "https"
    window.goServer_hosts2 = "columbia.yotuwin.com"
    window.goServer_scheme2 = "https"
  }
  else {
    window.goServer_hosts1 = "game.yotuwin.com"
    window.goServer_scheme1 = "https"
    // window.goServer_hosts1 = "api.yotuwin.com"
    // window.goServer_scheme1 = "https"
    window.goServer_hosts2 = "192.168.1.100:8090"
    window.goServer_scheme2 = "http"
  }
  //  window.goServer_hosts = "api.yotuwin.com"
  // window.goServer_hosts = "api.bbh5sdffi01.com"

}
