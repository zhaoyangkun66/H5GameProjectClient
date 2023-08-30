var request = require('request');
var fs = require('fs');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
var AlipaySdk = require('./node_modules/alipay-sdk').default;
var AlipayFormData = require('./node_modules/alipay-sdk/lib/form').default;
var GlobalDef = require('./GlobalDef');
var appId = '2019112069276677'
var showName = "BUYU王国现金红包"
var AppSecret = "MIIEowIBAAKCAQEAw5SRFqbAQj1uKj1SmyPKwvyjKfMJMWfjcdHwY+k8rdrU+IuTphgCBjCGsikvhMZ7MTPbr8hIdHifEE1uqsi8KrwsX4GRRrQu0ryB2AbQuFTOB4OxBt9Ah9r7WGdycG0vv5GQNywg+TcJ5nYs4XlcQGFxJxJr8N+r/huqugNnw+57n7qAmw9qZhf1slxG6bGWf1xQGox34bmlOeI0cAv0nHXHsdG/FsPQ4VfuwQhPZOB19ZcaeEEduUr7O965iTayvTwYs4Lm/JEz2larNJBtnI/gEB2AQG4WD1WqAGMOSLWyHjLsMTwp9ys9QXV7MF5ns3VQZlZW+lUqkjjftOKn+QIDAQABAoIBAEUv+WOZ+cl1EdO/fcmED+aKmO3uHAJuTfel3PR7PgwCrfR+6+yF8bFe2UeNalH+JPZy8fRtVbReN2b8/XlNKcO0bb4bh9kLRMUoCobxYkTTO09NNwLHV3y36tKLReCfv5R1Wh8qbT+8SLROefIJjKj5z52S1ryPY7iw8OR87+hPhrxtcSVE48T+RiWgujHi255KrOgCXut/QwFTatm+NrWkBnvfDShWrcKZPWNWbxf1WaAfsmAlyKhxMJeTthvSyxhNT2Y2PfM/vAZ4piVZ/mdif/RdBZBe9+o2yvnYvuIslGdNKXcAurtMH6liEH/5Kd5ugPCa+5umzLn7ewG8fQECgYEA7JwXHhDOCk4S1SwDki6UgvITUsFSqEdFsvlz1diFT32l7LiZyjCZMblurj33d9I4HQMr6JSP7I0KSK2ez90XuhKybDUDxSX0Mg5Sx35eh2kNoiOuainiVqtBskKGm0bWkFksGzVqPfFiO1S0L7hLuq0viZU1SmE9dWTvoW2Sm00CgYEA05u1QXjf7a1JYHACfcGu3BBOsjuNekslhQ+ZKq5kt/tb0tkAvBrzFDAjM3nWKNxICvk0wHd6U3eVZqp4TBWsaRWvktZq8ggbg2gknIjJzAnNxvJMLAY963U6x1N2aYXlmKDKj+v7xkIhwNkgDzNqujDvY+O5j3CblyI94Y5AsV0CgYApe4xKByQ4hkui+B6AKI59Drf4kFBPlH9Ry45VdaqZryvB/vNnkXGqWBphjheu+DpCS+YM1s8M6AVfjKEFTHv2cYS6l+jbTbYseHpm427rSq3LOXpAvqsiCtBv0l4LJzZDBH9JHepMhd91C3qzyxnr1qU49+Hp8nZ1+IZSxQUpGQKBgQCE0KBNfb6fATqi6urFX8GOojWirLo53dyozYeHQHo69+tERauuZQPY0fXmIzyF3Ozi5lNz0gnXRaFiFPD4YEockt3mPepWCzypl74S+dAe3rBnhEDHCQvoM2Y3IW2bAc1/pLw+5RDb+ToSPrVelRkR0BEREyeunjEqBPXuEkkMiQKBgE+dzsYlCfStpMd0givrnIfhNv/wJIein4hYn71HREAFq/zFgy8MI0jDFZy4slHCD02sZ5gKtXEABiEfP59Qh2l9p3vnNJP4IYG/SCGnnly686u28n5OJlq/zk6Mqw0faV4tpGHH7kXhAK13FZi9DpQdaePMIUY+Qz82DheSSKY3"
const alipaySdk = new AlipaySdk({
  appId: appId,
  privateKey: AppSecret,
  alipayPublicKey: "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw5SRFqbAQj1uKj1SmyPKwvyjKfMJMWfjcdHwY+k8rdrU+IuTphgCBjCGsikvhMZ7MTPbr8hIdHifEE1uqsi8KrwsX4GRRrQu0ryB2AbQuFTOB4OxBt9Ah9r7WGdycG0vv5GQNywg+TcJ5nYs4XlcQGFxJxJr8N+r/huqugNnw+57n7qAmw9qZhf1slxG6bGWf1xQGox34bmlOeI0cAv0nHXHsdG/FsPQ4VfuwQhPZOB19ZcaeEEduUr7O965iTayvTwYs4Lm/JEz2larNJBtnI/gEB2AQG4WD1WqAGMOSLWyHjLsMTwp9ys9QXV7MF5ns3VQZlZW+lUqkjjftOKn+QIDAQAB",
  alipayRootCertPath: './config/alipay/alipayRootCert.crt',
  alipayPublicCertPath: './config/alipay/alipayCertPublicKey_RSA2.crt',
  appCertPath: './config/alipay/appCertPublicKey.crt',
  gateway: 'https://openapi.alipay.com/gateway.do',
  charset: 'utf-8',
  version: '1.0',
  keyType: 'RSA PRIVATE KEY',
  signType: 'RSA2'
});
exports.alipaymentRed = function (req, res) {
  var identity = "18815292066"
  var name = "赵阳坤2"
  var total_amount = 0.01

  var now = new Date();
  var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
  var date_no = (now.getTime() + '').substr(-8);
  var random_no = Math.floor(Math.random() * 99);
  if (random_no < 10) {
    random_no = '0' + random_no;
  }
  let out_trade_no = appId + date_time + date_no + random_no;

  var biz_content = {}
  biz_content.out_biz_no = out_trade_no
  biz_content.trans_amount = total_amount
  biz_content.product_code = "STD_RED_PACKET"
  biz_content.biz_scene = "DIRECT_TRANSFER"
  biz_content.order_title = showName
  biz_content.payee_info = { "identity": identity, "identity_type": "ALIPAY_LOGON_ID", "name": name }
  biz_content.business_params = "{\"sub_biz_scene\":\"REDPACKET\"}"

  console.log(biz_content);
  async function asyncCreate() {
    const result = await alipaySdk.exec('alipay.fund.trans.uni.transfer', {
      bizContent: biz_content,
    }, {
      log: console.log,
      info: console.info,
      error: console.error,
    })
    console.log(result);
    res.send(result);
  }
  asyncCreate();
}
exports.fnSendMoney = function (option, func) {
  var identity = option.identity
  var name = option.name
  var total_amount = option.total_amount

  var now = new Date();
  var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
  var date_no = (now.getTime() + '').substr(-8);
  var random_no = Math.floor(Math.random() * 99);
  if (random_no < 10) {
    random_no = '0' + random_no;
  }
  let out_trade_no = appId + date_time + date_no + random_no;

  var biz_content = {}
  biz_content.out_biz_no = out_trade_no
  biz_content.trans_amount = total_amount
  biz_content.product_code = "STD_RED_PACKET"
  biz_content.biz_scene = "DIRECT_TRANSFER"
  biz_content.order_title = showName
  biz_content.payee_info = { "identity": identity, "identity_type": "ALIPAY_LOGON_ID", "name": name }
  biz_content.business_params = "{\"sub_biz_scene\":\"REDPACKET\"}"

  console.log(biz_content);
  async function asyncCreate() {
    const result = await alipaySdk.exec('alipay.fund.trans.uni.transfer', {
      bizContent: biz_content,
    }, {
      log: console.log,
      info: console.info,
      error: console.error,
    })
    func(result)
  }
  asyncCreate();
}
exports.alipaymentapp = function (req, res) {
  var itemId = 1
  var userId = 4
  var shopItem = shopItemConf[itemId]
  if (!shopItem) {
    console.log("!shopItem")
    return
  }
  var now = new Date();
  var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
  var date_no = (now.getTime() + '').substr(-8);
  var random_no = Math.floor(Math.random() * 99);
  if (random_no < 10) {
    random_no = '0' + random_no;
  }
  let out_trade_no = date_time + date_no + random_no;
  // var total_amount = resxx.recordset[0].ChargeAmount  
  var total_amount = 0.01
  var biz_content = {}
  biz_content.subject = showName
  biz_content.out_trade_no = out_trade_no
  biz_content.total_amount = total_amount
  console.log(biz_content);
  const formData = new AlipayFormData();
  //formData.addField('returnUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/alipaymentOrderquery");
  formData.addField('notifyUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/aliPayAction");
  formData.addField('bizContent', biz_content);
  async function asyncCreate() {
    const result = await alipaySdk.exec('alipay.trade.app.pay', {}, {
      formData: formData
    })
      .catch(err => {
        console.log(err);
      });;
    res.writeHead(200, {
      'Content-Type': 'text/html;charset=utf-8'
    });
    var str = result.toString()
    console.log(result);
    res.write(result)
    res.end();
  }

  asyncCreate();
}
exports.alipaymentTest = function (req, res) {
  var itemId = 1
  var userId = 4
  var shopItem = shopItemConf[itemId]
  if (!shopItem) {
    console.log("!shopItem")
    return
  }
  var now = new Date();
  var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
  var date_no = (now.getTime() + '').substr(-8);
  var random_no = Math.floor(Math.random() * 99);
  if (random_no < 10) {
    random_no = '0' + random_no;
  }
  let out_trade_no = date_time + date_no + random_no;
  // var total_amount = resxx.recordset[0].ChargeAmount   
  var total_amount = 0.01
  var biz_content = {}
  biz_content.subject = showName
  biz_content.out_trade_no = out_trade_no
  biz_content.total_amount = total_amount
  biz_content.quit_url = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/quit";
  biz_content.product_code = "QUICK_WAP_PAY"
  const formData = new AlipayFormData();
  //formData.addField('returnUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/alipaymentOrderquery"); 
  formData.addField('notifyUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/aliPayAction");
  formData.addField('bizContent', biz_content);
  async function asyncCreate() {
    const result = await alipaySdk.exec('alipay.trade.wap.pay', {}, {
      formData: formData
    })
      .catch(err => {
        console.log(err);
      });;
    res.writeHead(200, {
      'Content-Type': 'text/html;charset=utf-8'
    });
    var str = result.toString()
    res.write(result)
    res.end();
  }
  asyncCreate();
}
