
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
        xmlHttp.open("POST", 'http://127.0.0.1:8080/account/getUserInfo', true);
       // xmlHttp.open("POST", 'https://api.brabet.com/config/getLangList', true);
       // xmlHttp.setRequestHeader("Content-Type", "application/json; charset=utf-8");
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
      //  xmlHttp.setRequestHeader('Access-Control-Allow-Headers', '*');
        xmlHttp.setRequestHeader('Origin', '123');
      //  xmlHttp.setRequestHeader("Access-Control-Allow-Origin", "*"); 

        xmlHttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
              console.log(xmlHttp.responseText);
            }
        }
        xmlHttp.timeout = 5000;// 5 seconds for timeout
        //xmlHttp.send('language=en-us');
        xmlHttp.send('token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEwMDEyMywidXNlcm5hbWUiOiJ0ZXN0IiwiZXhwIjoxNjkzODE0MTI1LCJpc3MiOiJnYW1lIn0.beReCzQYtPZrBBb1S3RFmMusqtwzgNDtbHC2lWpweR4&mainVer=1&subVer=1&pkgName=h5_client&nativeVer=0&deviceid=PC_fff15830-6c0b-461b-a416-95e64b7b3236&agentid=1&Type=101&source=10&os=Windows&ioswebclip=0&isShell=0&language=pt-pt');
   
    },

    // called every frame
    update: function (dt) {

    },
});



  