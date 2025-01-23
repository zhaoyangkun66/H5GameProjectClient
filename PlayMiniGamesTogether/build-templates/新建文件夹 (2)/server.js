var express = require('./express');
var app = express();

app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Headers", "Content-Type");
    res.header("Access-Control-Allow-Methods", "POST,PUT,GET,DELETE,OPTIONS");
    res.header("Access-Control-Allow-Origin", "*");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});

app.post('/getTransactionReceipt', function (req, res) {
    web3ETH.getTransactionReceipt(req, res)
});
app.post('/ItemCreateds', function (req, res) {
    console.log("ItemCreateds", req.body)
});
app.post('/TransferMore', function (req, res) {
    console.log("TransferMore", req.body)
});
app.post('/setItemCreatedsUrl', function (req, res) {
    web3ETH.setItemCreatedsUrl(req, res)
});

var server = app.listen(GlobalDef.serverPort, '0.0.0.0', function () {
    var host = server.address().address;
    var port = server.address().port;
    console.log('Example app listening at http://%s:%s', host, port);
})

