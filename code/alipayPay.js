var request = require('request');
var fs = require('fs');
var sql = require('./sql');
var shopItemConf = require('./shopItemConf');
var AlipaySdk = require('alipay-sdk').default;
var AlipayFormData = require('alipay-sdk/lib/form').default;
var GlobalDef = require('./GlobalDef');
var showName = "BUYU王国现金红包"
var appId = '2018033002474693'
var AppSecret = "MIIEpQIBAAKCAQEAuJgW4BTvkHYZA+vTKLudtxQQg9tu4mb6RUIxxoHoEsShX4IAtgxyuKuIoA8riQASI/Qe+UvAnWliix2Ftoqu4pdZP196MJZ1e558zAGw6C1bgCBZM5ha1p/eNI+eheldfPcO3zfOiwBf6MIDgi9RBQSK/MwezuflC5PjqM1lPxEyJ6BBW2qlDzblO8hAQZwSw/cfq+1G8TLJKSE2EOjQIbHG5jmLiw++uc6wb4Yl4jFZXoFsvcd/MtfkOLDsjEQwbRcIOE85LT9PET9rv+Jf+G45djp5paYj7Z9Qqdk95EkvX9lJ6TzxAMGNamWhmLo6Z3rIxLjrpzxfLiiwJn5zrQIDAQABAoIBAQCI7lExwnX/XIur6/jEo4AX+etSVKmJisgmLjdMQLtNiM0IUyCB6vQC50O/L+GkjAfo4cNEPJxSaIVwGuNAiNm4Pns21nWGq2XU4LlEgBCh+luAzP4+lsrzoL2tkcgPIBB4jbBbh0NQu2Np/tmpbb4VEcykQCquYzj2AKuFYW+0eqMq6+5GeCE7CIZ26HKUQzeJlzrsmcrVMlobq7rjMz7myl3jwjtkCNSDu3IqTDzzZRti8yCgXj/yeapcfB/quQqFaLEcUtBE1SERPPVq3ererZFkQOx6Z94/ow+nCtHPUqqGfsEn0BjIQ3Mmmh0yQSWTjYMBWlB7BmxpIg6Ocd7FAoGBAORASNF1t5Va0Wvl/bU1PmRKjhJqqMMd3mSUn0fsuCISG5XScWIS2lKggYFIQPlXaURF+wh6yZKkVftIFspYQIn1V0HnEgFQ9XMMO9V+sZ+08r/vWutAYNq6eUkEX2naVN4+s2f9yj5fU8fjEYyhuVKo8CWllQJQn1TbE75WqoavAoGBAM8JGGCZCsl2YwiC/mt900j/LiqKEH8Xb/f3XU2fVOnu/q29navC7h1Ct71P4OEIE8ZsaanPhHRm0L78ZSLFz3rlSIK5gO8hV8x5CrwJw/RS9i9OMJlrqrasqXmP8lE6klNC5Trk3/ok9q6QXP+BKC3QQAxt2k0Dm63v8bZaMQJjAoGASpgftCSOjMcTbfnKAnCWJVygNbCZ2rpmNeTEcVMRkkDstvgBihWzOBGwgTnF0jcY9fEQ62KFgeEnIGoc2KAi53NAww7rOXbl4GV9IHa5QgJ22vc0dXGitZj/jjdZn1R1K/S92Rx9/ghVbxvsXlN0J2mCoisNGaaTi73VI/1a2Y0CgYEAyhHJfjbBZYKsBBm+cnG7r6qIh7J7iV/5w97mbSWO/khqwG6qnoNCXsLIjPiSt3BnxKn5s2i8kdPr+AxmNbs113BEBntCEaPMiuC1DnTFkgkLCX7aRlPkqij5vJE3Y/qz6JoJHCNZTE+ZiSWT7zlDWvvAF6F8iOB1qR3hICcFYJsCgYEAlKMFG3yvy9ONyCuoDyr4zMj+lOKD8As93UP5eiZc899T6t2Zx+bI3tv/Zvc1w11wZlyf2ljnGSR4HpNP5ysVpnodRC2eAPkYZDy5+hBTf7QeTclYpNaZq5YRyfPePywL+a6j59NUB+IoQl1vUQWo4LWFpyqQzdw4WtNktBkdPMw="
const alipaySdk = new AlipaySdk({
  // 参考下方 SDK 配置
  appId: appId,
  privateKey: AppSecret,
  alipayPublicKey: "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiwO/nKHdf0AUMaFvjnu6ZlDpl0uAGx1t8C7RDvVLzPDRg15CypyIB98CfhKPy8JsRw5sodlbBtpR2469P4Fkvv2aC/L7UCmKvLkvp2TnXe6W8L+rdbJLQA15EWIIgyKTxiCkbxg0PLixkNcX4eoDwuoPbRYw+M9Klj4g9IcHqgO4i418LY9zDmmcNqYt9ndRSzQ/ocs0SNOAp2OBt3KrRVTE09GdlhOy464x7HpzZ6iFcisSyRm9ETQzqJVTPQ05DWaQGqW+HEWftXm3JpvjkcpKMBbRTn28tIxan/Ilbua8eXaEMNMfr3sAur62p2joYpPjOLL1jzG16FwMJ0kXmwIDAQAB",
  gateway: 'https://openapi.alipay.com/gateway.do', // 支付宝的应用网关
  charset: 'utf-8',
  version: '1.0',
  keyType: 'RSA PRIVATE KEY',
  signType: 'RSA2'
});
//exports.alipayment = alipayment
//const alipayment = async (req, res) => {
exports.alipayment = function (req, res) {
  var itemId = req.query.itemId
  var userId = req.query.userId
  var shopItem = shopItemConf[itemId]
  if (!shopItem) {
    console.log("!shopItem")
    return
  }
  var now = new Date();
  var date_time = now.getFullYear() + '' + (now.getMonth() + 1) + '' + now.getDate();
  var date_no = (now.getTime() + '').substr(-8); //生成8为日期数据，精确到毫秒
  var random_no = Math.floor(Math.random() * 99);
  if (random_no < 10) { //生成位数为2的随机码
    random_no = '0' + random_no;
  }
  let out_trade_no = appId + date_time + date_no + random_no; //订单号为 mch_id + yyyymmdd+10位一天内不能重复的数字; //+201502041234567893';
  var GSP_WEB_CanShopRechargeAndClick = {
    dwUserID: {
      sqlType: "Int",
      inputValue: userId
    },
    fCash: {
      sqlType: "Float",
      inputValue: shopItem.amt
    },
    dwGold: {
      sqlType: "Int",
      inputValue: shopItem.golds
    },
    iItemId: {
      sqlType: "Int",
      inputValue: itemId
    },
    strOut_trade_no: {
      sqlType: "NVarChar",
      size: 32,
      inputValue: out_trade_no
    },
    iSuccess: {
      sqlType: "Int",
      inputValue: 0
    },
    strTransaction_id: {
      sqlType: "NVarChar",
      size: 32,
      inputValue: "H5alipay"
    }
  };
  sql.execute("GSP_WEB_CanShopRechargeAndClick", GSP_WEB_CanShopRechargeAndClick, function (resxx) {
    if (resxx.returnValue == 0) {
      var total_amount = shopItem.amt
      // var total_amount = 0.01 
      var biz_content = {}
      biz_content.subject = showName
      biz_content.out_trade_no = out_trade_no
      biz_content.total_amount = total_amount
      biz_content.quit_url = "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/quit";
      biz_content.product_code = "QUICK_WAP_PAY"
      const formData = new AlipayFormData(); // 获取一个实例化对象
      //formData.addField('returnUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/alipaymentOrderquery"); // 客户端支付成功后会同步跳回的地址
      formData.addField('notifyUrl', "http://fish.qiquwa.com:" + GlobalDef.serverPort + "/aliPayAction"); // 支付宝在用户支付成功后会异步通知的回调地址，必须在公网 IP 上才能收到
      formData.addField('bizContent', biz_content); // 将必要的参数集合添加进 form 表单
      async function asyncCreate() {
        // 异步向支付宝发送生成订单请求, 第二个参数为公共参数，不需要的话传入空对象就行
        const result = await alipaySdk.exec('alipay.trade.wap.pay', {}, {
          formData: formData
        })
          .catch(err => {
            console.log(err);
          });;
        res.writeHead(200, {
          'Content-Type': 'text/html'
        });
        var str = result.toString()
        res.write(result)
        res.end();
      }
      asyncCreate();
    }
  });
}

exports.alipaymentOrderquery = function (req, res) {
  if (req.body.out_trade_no) {
    var GSP_WEB_GameShopRechargeCommon = {
      dwTypePay: {
        sqlType: "Int",
        inputValue: 11
      },
      strTransaction_id: {
        sqlType: "NVarChar",
        size: 32,
        inputValue: req.body.out_trade_no
      },
      strOut_trade_no: {
        sqlType: "NVarChar",
        size: 32,
        inputValue: req.body.trade_no
      },
    };
    //console.log(GSP_WEB_GameShopRechargeCommon);
    sql.execute("GSP_WEB_GameShopRechargeCommon", GSP_WEB_GameShopRechargeCommon, function (resxx) {
      res.end('success');
    })
  }
  else {
    console.log("alipaymentOrderquery", req.body);
  }
}
