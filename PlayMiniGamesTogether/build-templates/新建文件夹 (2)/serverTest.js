
var request = require('request');

const Web3 = require('web3');
//Web3.givenProvider = 'http://localhost:8545'
//const web3 = new Web3(Web3.givenProvider || "wss://eth-ropsten.alchemyapi.io/v2/FdPgHPUHj8sHRdPanIt_GdvFfsgLuKiB");
//const web3 = new Web3('wss://opbningxia.bsngate.com:18602/api/8ff15843fbc345c2aaed99c4e0390c80/ws');
const web3 = new Web3(Web3.givenProvider || "ws://121.201.12.115:8000");
let accounts = "0x4028e110EE70AC7b3B09A9A0aC157B706C8b6637"
var privateKey = Buffer.from('67561d870aaf3422b382e4474d5a6b9001ca55ea1308e1fceade2068dd814738', 'hex');
let Url = 'http://127.0.0.1:28888/'
Url = 'https://fish.qiquwa.com:22004/'
const ItemCoreabi = require('./ERC1155Itemabi')
const ItemCoreAddress = "0xe8bf7c0c8112161eb3222e855f0c605fe73d0c7a"
var Tx = require('ethereumjs-tx');
// web3.eth.getGasPrice()
//   .then(function (gasPrice) {
//     gasPrice=0
//     let myContract = new web3.eth.Contract(ItemCoreabi)
//     myContract.options.address = ItemCoreAddress
//     myContract.options.from = accounts; // default from address
//     myContract.options.gasPrice = gasPrice; // default gas price in wei
//     myContract.options.gas = 7000000; // provide as fallback always 5M gas
//     web3.eth.getTransactionCount(accounts, function (error, nonce) {
//       if (!error) {
//         var rawTx = {
//           from: accounts,
//           nonce: nonce,
//           gasPrice: gasPrice,
//           gasLimit: 7000000,
//           to: ItemCoreAddress,
//           value: 0,
//           data: myContract.methods.safeTransferFromByChildID(accounts, "0xEB628732C020b3319FDB98834bcFD69aBFC39409", 1, 2).encodeABI()
//         }
//         // console.log(rawTx);
//         var tx = new Tx(rawTx);
//         tx.sign(privateKey);
//         var serializedTx = tx.serialize();
//         web3.eth.sendSignedTransaction('0x' + serializedTx.toString('hex'), function (error, transactionHash) {
//           console.log("safeTransferFromByChildID", error, transactionHash)
//         }).on('receipt', console.log);
//       }
//       else {
//         console.log('safeTransferFromByChildID');
//       }
//     })
    // web3.eth.getTransactionCount(accounts, function (error, nonce) {
    //   if (!error) {
    //     var rawTx = {
    //       from: accounts,
    //       nonce: nonce,
    //       gasPrice: gasPrice,
    //       gasLimit: 7000000,
    //       to: ItemCoreAddress,
    //       value: 0,
    //       data: myContract.methods.safeTransferFromByChildID("0xEB628732C020b3319FDB98834bcFD69aBFC39409", accounts, 1, 2).encodeABI()
    //     }
    //     // console.log(rawTx);
    //     var tx = new Tx(rawTx);
    //     tx.sign(privateKey);
    //     var serializedTx = tx.serialize();
    //     web3.eth.sendSignedTransaction('0x' + serializedTx.toString('hex'), function (error, transactionHash) {
    //       console.log("safeTransferFromByChildID", error, transactionHash)
    //     })
    //   }
    //   else {
    //     console.log('safeTransferFromByChildID');
    //   }
    // })
 // })
//let reter=0x4028e110ee70ac7b3b09a9a0ac157b706c8b6637
//console.log('isAddress', web3.utils.isAddress(0),reter);

// web3.eth.getTransaction("0xbac1c8fa9a3e8c48bc1a0a854c1afe6ca20eb8e5468e44e0b1a9f52a78b62cdc").then(function (transaction) {
//   console.log(transaction);
// });
// web3.eth.getTransactionReceipt("0xbac1c8fa9a3e8c48bc1a0a854c1afe6ca20eb8e5468e44e0b1a9f52a78b62cdc").then(function (transaction) {
//   console.log(transaction);
// });
// web3.eth.getTransactionReceipt("0xb0e3312eec847b596ee092e66cdb21905342489d12489ab57a84475e35e48eb6").then(function (transaction) {
//   console.log(transaction);
// });
// request({
//   url: Url + "getTransaction",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { transactionHash: "0xbac1c8fa9a3e8c48bc1a0a854c1afe6ca20eb8e5468e44e0b1a9f52a78b62cdc" }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("getTransaction", body);
//     // let bodyData = JSON.parse(body)
//   }
// });
// request({
//   url: Url + "getTransactionReceipt",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { transactionHash: "0xbac1c8fa9a3e8c48bc1a0a854c1afe6ca20eb8e5468e44e0b1a9f52a78b62cdc" }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("getTransactionReceipt", body);
//     // let bodyData = JSON.parse(body)
//   }
// });


// request({
//   url: "https://fish.qiquwa.com:22004/accountsCreate",
//   method: 'get',
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     let bodyData = JSON.parse(body)
//     console.log("accountsCreate", bodyData);
//   }
// });


request({
  url: Url + "getTokenOwnerByChildID",
  method: "POST",
  json: true,
  headers: {
    "content-type": "application/json",
  },
  body: { tokenId: 1, childID: 4 }
}, function (error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log("getTokenOwnerByChildID", body);
    // let bodyData = JSON.parse(body)
  }
});
request({
  url: Url + "getTokenOwner",
  method: "POST",
  json: true,
  headers: {
    "content-type": "application/json",
  },
  body: { tokenId: 1 }
}, function (error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log("getTokenOwner", body);
    // let bodyData = JSON.parse(body)
  }
});
request({
  url: Url + "totalSupply",
  method: "POST",
  json: true,
  headers: {
    "content-type": "application/json",
  },
  body: { tokenId: 1 }
}, function (error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log("totalSupply", body);
    // let bodyData = JSON.parse(body)
  }
});
// request({
//   url: Url+"http://127.0.0.1:28888/getTokenByOwner",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { owner: accounts }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("getTokenByOwner", body);
//   }
// });

// request({
//   url: Url+"https://fish.qiquwa.com:22004/getTransfer",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { tokenId: '4' }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("getTransfer", body);
//     // let bodyData = JSON.parse(body)
//   }
// });
// request({
//   url: Url + "transferFrom",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { from: accounts, to: "0xEB628732C020b3319FDB98834bcFD69aBFC39409", tokenId: 1, childID: 2 }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("transferFrom", body);
//   }
// });
// request({
//   url: Url + "transferFrom",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { from: "0xEB628732C020b3319FDB98834bcFD69aBFC39409", to: accounts, tokenId: 1, childID: 2 }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("transferFrom", body);
//   }
// });
request({
  url: Url + "createItems",
  method: "POST",
  json: true,
  headers: {
    "content-type": "application/json",
  },
  body: { tokenId: "32944f06de0146bf8f08d9eb4f1a11f9", owner: '0xa9150A7B435039e442a0Faa340c32D71B6Caa955', count: '100' }
}, function (error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log("createItems", body);
  }
});

// request({
//   url: "https://fish.qiquwa.com:22004/setItemCreatedsUrl",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { ItemCreatedsUrl: "http://114.55.165.13:8080/back/api/createItemsCallBack" }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("setItemCreatedsUrl", body);
//     // let bodyData = JSON.parse(body)
//   }
// });
// request({
//   url: "https://fish.qiquwa.com:22004/setTransferMoreUrl",
//   method: "POST",
//   json: true,
//   headers: {
//     "content-type": "application/json",
//   },
//   body: { TransferMoreUrl: "http://114.55.165.13:8080/back/api/transferCallBack" }
// }, function (error, response, body) {
//   if (!error && response.statusCode == 200) {
//     console.log("setTransferMoreUrl", body);
//     // let bodyData = JSON.parse(body)
//   }
// });

//web3.eth.getPendingTransactions().then(console.log);