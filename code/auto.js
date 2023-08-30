//auto.js
//自动重启
 
let process = require('child_process');
let ChildProcess  = process.fork('./server.js');
 
ChildProcess.on('exit',function (code) {
    console.log('process exits + '+code);
    if(code !== 0){
        process.fork('./auto.js');
    }
 
});