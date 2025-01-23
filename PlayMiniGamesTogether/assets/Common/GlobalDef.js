
//cc.sys.platform = cc.sys.MOBILE_BROWSER
//cc.sys.platform = cc.sys.DESKTOP_BROWSER
window.isgoServer = true;
window.channelIDGlobal = 1;//
window.isPushServer = true;
window.tonConnectUI = null;
//window.transformRotateGlobal = true;
if (isPushServer) {
  window.goServer_hosts1 = "api.playtogetherhub.com"
  window.goServer_scheme1 = "https"
}
else {
  window.goServer_hosts1 = "192.168.1.36:8081"
  window.goServer_scheme1 = "http"
}
