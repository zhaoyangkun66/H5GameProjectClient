
cc.Class({
  extends: cc.Component,

  properties: {
    label: {
      default: null,
      type: cc.Label
    },
    // defaults, set visually when attaching this script to the Canvas
    text: 'Hello, World!'
  },

  // use this for initialization
  onLoad: function () {
    this.label.string = this.text;
    let xmlHttp = cc.loader.getXMLHttpRequest();
    xmlHttp.open("GET", 'https://bridge.17slots.com/api/game_url?token=E0E5AEE61AA245529637B7882A85804E&member_account=651989&game_uid=ee26c5af71fd4f7a94c83c0667c351ca', true);
    // xmlHttp.open("POST", 'https://api.brabet.com/config/getLangList', true);
    // xmlHttp.setRequestHeader("Content-Type", "application/json; charset=utf-8");
    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
    //  xmlHttp.setRequestHeader('Access-Control-Allow-Headers', '*');
    //  xmlHttp.setRequestHeader("Access-Control-Allow-Origin", "*"); 

    xmlHttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        console.log(JSON.parse(xmlHttp.responseText).data);
      }
    }
    xmlHttp.timeout = 5000;// 5 seconds for timeout
    //xmlHttp.send('language=en-us');
    xmlHttp.send();

  },

  // called every frame
  update: function (dt) {

  },
});



