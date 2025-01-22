//cc.sys.platform = cc.sys.MOBILE_BROWSER
//cc.sys.platform = cc.sys.DESKTOP_BROWSER
window.channelIDNewbieBonusShow = false;//
window.isgoServer = true;
//window.channelIDGlobal = 1;//1巴西2智利
window.isPushServer = true;
//window.is2048Game = true;
window.GameTypeGlobal = 2;//1 bigerwin 2 SOL555 3 Chile
if (GameTypeGlobal == 1) {
  window.is2048Game = false;
  window.channelIDGlobal = 1;//1巴西2智利
  window.GetCurrencyGlobal = "BRL"
  window.shareTextGlobal = "Registre-se com sucesso e receba bônus de R$13"
}
else if (GameTypeGlobal == 2) {
  window.is2048Game = true;
  window.channelIDGlobal = 1;//1巴西2智利
  window.GetCurrencyGlobal = "BRL"
  window.shareTextGlobal = "Cadastre-se agora e ganhe R$ 2 grátis"
}
else if (GameTypeGlobal == 3) {
  window.is2048Game = true;
  window.channelIDGlobal = 2;//1巴西2智利
  window.GetCurrencyGlobal = "CLP"
  window.shareTextGlobal = "LUCKY JUEGO | La última plataforma de casino de Chile, retiros justos y rápidos, invita a cada amigo a ganar CLP$10.000"
}
if (isgoServer) {
  if (isPushServer) {
    window.goServer_hosts1 = "game.yotuwin.com"
    window.goServer_scheme1 = "https"
  }
  else {
    window.goServer_hosts1 = "192.168.1.100:8080"
    window.goServer_scheme1 = "http"
  }
  if (GameTypeGlobal == 3) {
    if (isPushServer) {
      window.goServer_hosts1 = "game.luckyjuego.com"
      window.goServer_scheme1 = "https"
    }
    else {
      window.goServer_hosts1 = "192.168.1.100:9090"
      window.goServer_scheme1 = "http"
    }
  }
  else if (is2048Game) {
    if (isPushServer) {
      window.goServer_hosts1 = "game.sol555.com"
      window.goServer_scheme1 = "https"
    }
    else {
      window.goServer_hosts1 = "192.168.1.100:8090"
      window.goServer_scheme1 = "http"
    }
  }
}
else {
  window.goServer_hosts1 = "api.bbh5sdffi01.com"
  window.goServer_scheme1 = "https"
}


// const fpPromise = import('https://openfpcdn.io/fingerprintjs/v4')
//   .then(FingerprintJS => FingerprintJS.load())
// // Get the visitor identifier when you need it.
// fpPromise
//   .then(fp => fp.get())
//   .then(result => {
//     // This is the visitor identifier:
//     window.visitorIdDeviceIdGlobal = result.visitorId

//   })