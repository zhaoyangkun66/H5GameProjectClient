//cc.sys.platform = cc.sys.MOBILE_BROWSER
//cc.sys.platform = cc.sys.DESKTOP_BROWSER

window.isgoServer = true;

if (isgoServer) {
   // cc.sys.platform = cc.sys.MOBILE_BROWSER
   // window.goServer_hosts = "127.0.0.1:8080"
    window.goServer_hosts = "192.168.1.100:8080"
    window.goServer_scheme = "http"
}
