//cc.sys.platform = cc.sys.MOBILE_BROWSER
//cc.sys.platform = cc.sys.DESKTOP_BROWSER

window.isgoServer = true;
window.channelID = 2;//巴西2西班牙

if (isgoServer) {
  // cc.sys.platform = cc.sys.MOBILE_BROWSER
  // window.goServer_hosts = "127.0.0.1:8080"
  //window.goServer_hosts = "192.168.1.100:8080"
  if (channelID == 1) {
   // window.goServer_hosts = "192.168.1.100:8000"
   // window.goServer_scheme = "http"
    window.goServer_hosts = "api.yotuwin.com"
    window.goServer_scheme = "https"
  }
  else if (channelID == 2) {
    window.goServer_hosts = "192.168.1.100:8090"
    window.goServer_scheme = "http"
   // window.goServer_hosts = "api.yotuwin.com"
  //  window.goServer_scheme = "https"
  } else {
   
  }
  //  window.goServer_hosts = "api.yotuwin.com"
  // window.goServer_hosts = "api.bbh5sdffi01.com"
}
