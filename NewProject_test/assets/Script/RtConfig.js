let n ={} 
n.__esModule = true,
            n.cs_Config = void 0;
            var s = require("LaunchConfig");
            n.cs_Launch = s.cs_Launch;
            var e = Object.freeze({
                gameId: 126,
                globalDomain: "com.pgsoft",
                bundleId: "com.pgsoft.slot.fortunetiger",
                loginMethod: window.LoginMethod,
                apiDomain: window.ApiDomain,
                version: "2.8.0.3",
                certifiedVersion: "1.0.0.0",
                replaySupported: true
            });
            n.cs_Config = e,
            !window.LoginMethod && !window.ApiDomain && window.GtagId,
module.exports = n
