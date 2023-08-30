var GlobalDef = require('./GlobalDef');
var sql = require('./sql');
var request = require('request');
var fs = require('fs');
//var ethUtil = require('ethereumjs-util');
//var Tx = require('ethereumjs-tx')
//var Tx = require('@ethereumjs/tx').Transaction;

const USDT_BEP20_abi = require('./configETH/USDT_BEP20_abi')
const USDT_ERC20_abi = require('./configETH/USDT_ERC20_abi')

const USDT_BEP20_Address = "0x537b50efe8240b6c7b7864ad0c1bad8e47c49f4f"
const USDT_ERC20_Address = "0xdAC17F958D2ee523a2206206994597C13D831ec7"

let accounts = "0x4028e110EE70AC7b3B09A9A0aC157B706C8b6637"
//let accounts = "0xEB628732C020b3319FDB98834bcFD69aBFC39409"

//var privateKey = Buffer.from('67561d870aaf3422b382e4474d5a6b9001ca55ea1308e1fceade2068dd814738', 'hex');

const Web3 = require('web3');
//const web3 = new Web3("wss://goerli.infura.io/ws/v3/31170e34a3914527837143afa3b5162d");
//const web3 = new Web3("wss://eth-mainnet.g.alchemy.com/v2/mb7WEtyDisVbLjbMi0vBt7Jr5OkU4c9I");
//const web3 = new Web3("wss://eth-goerli.g.alchemy.com/v2/kA2B4kHuzRmVbVPz-xrslj9N8WeQHOUt");
//const web3 = new Web3("wss://matic.getblock.io/testnet/?api_key=d752b81d-ffcc-465d-a04d-13b72bcbd53c");
//https://polygon-rpc.com
//const web3 = new Web3(GlobalDef.Web3GvenProvider);

exports.bindingETHaccounts = function (req, res) {
    const web3 = new Web3(new Web3.providers.HttpProvider(`https://goerli.infura.io/v3/31170e34a3914527837143afa3b5162d`));
    let data = web3.eth.accounts.create()
    console.log({ address: data.address, privateKey: data.privateKey });
    res.send({ address: data.address.toLowerCase(), privateKey: data.privateKey.toLowerCase() });
    let nickName = req.query.nickName
    var GSP_WEB_bindingETHaccounts = {
        strHeadImgUrl: {
            sqlType: "NVarChar",
            size: 256,
            inputValue: req.query.avatarUrl
        },
        strOpenID: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: req.query.openId
        },
        strUnionID: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: req.query.unionId
        },
        cbGender: {
            sqlType: "TinyInt",
            inputValue: req.query.gender
        },
        strnickName: {
            sqlType: "NVarChar",
            size: 48,
            inputValue: nickName
        },
    };
    //console.log(GSP_WEB_bindingETHaccounts);
    sql.execute("GSP_WEB_bindingETHaccounts", GSP_WEB_bindingETHaccounts, function (resxx) {
        if (resxx.returnValue != 1) {
            console.log("GSP_WEB_bindingETHaccounts", req.query, resxx)
        }
        if (resxx.returnValue >= 1) {
            res.send({ returnValue: resxx.returnValue });
        }
    })
}
var transferSendxxx = function (option, func) {
    var USDTAddress = option.USDTAddress
    var NetworkType = option.NetworkType
    var total_amount = option.total_amount

    total_amount = 111
    USDTAddress = accounts
    const web3temp = new Web3(new Web3.providers.HttpProvider(`https://goerli.infura.io/v3/31170e34a3914527837143afa3b5162d`));
    // Creating a signing account from a private key
    const signer = web3temp.eth.accounts.privateKeyToAccount('67561d870aaf3422b382e4474d5a6b9001ca55ea1308e1fceade2068dd814738');
    web3temp.eth.accounts.wallet.add(signer);
    // Creating the transaction object
    web3temp.eth.getGasPrice()
        .then(function (gasPrice) {
            //  gasPrice = Number(gasPrice) * 3

            let myContract = new web3temp.eth.Contract(USDT_BEP20_abi)
            myContract.options.address = USDT_BEP20_Address
            myContract.options.from = USDTAddress; // default from address        
            myContract.options.gasPrice = gasPrice; // default gas price in wei
            myContract.options.gas = 600000; // provide as fallback always 5M gas

            myContract.methods.transfer(USDTAddress, total_amount).call(
                { from: accounts }, function (error, result) {
                    console.log("transferCall", error, result)
                    if (result) {
                        myContract.methods.transfer(USDTAddress, total_amount).send(
                            {
                                from: accounts,
                                value: 0
                            },
                            function (error, transactionHash) {
                                console.log("transfer", error, transactionHash)
                                func(error, transactionHash)
                            }
                        )
                    }
                    else {
                        console.log("transferCall", error, result)
                    }
                })

        });
}
exports.transferSend = function (option, func) {
    transferSendxxx(option, func)
}

// exports.transferFromReceive = function () {
//     const web3 = new Web3("wss://goerli.infura.io/ws/v3/31170e34a3914527837143afa3b5162d");
//     web3.eth.getBlockNumber()
//         .then(function (blockNumber) {
//             blockNumber = 0
//             let myContract = new web3.eth.Contract(USDT_BEP20_abi)
//             myContract.options.address = USDT_BEP20_Address
//             myContract.options.from = accounts; // default from address
//             //  myContract.options.gasPrice = web3.eth.gasPrice; // default gas price in wei
//             myContract.options.gas = 4700000; // provide as fallback always 5M gas
//             myContract.events.Transfer({
//                 fromBlock: blockNumber
//             }, function (error, event) {
//                 console.log("Transfer")
//                 console.log(event);
//                 if (error) {
//                     console.log("Transfer", error, event)
//                 }
//                 if (event) {
//                     if (event.returnValues.from.toLowerCase() == accounts.toLowerCase()) {
//                         var GSP_WEB_RedPacketExchangeGoodsVerify = {
//                             TransactionHash: {
//                                 sqlType: "NVarChar",
//                                 size: 70,
//                                 inputValue: event.transactionHash
//                             },
//                             NetworkType: {
//                                 sqlType: "NVarChar",
//                                 size: 32,
//                                 inputValue: "BEP20"
//                             },
//                             VerificationCompleted: {
//                                 sqlType: "Int",
//                                 inputValue: 2  //订单未生成成
//                             },
//                         };
//                         console.log(GSP_WEB_RedPacketExchangeGoodsVerify);
//                         sql.execute("GSP_WEB_RedPacketExchangeGoodsVerify", GSP_WEB_RedPacketExchangeGoodsVerify, function (resxx) {

//                         })
//                     }
//                 }
//             })
//         });
// }

//this.transferFromSend()
//this.transferFromReceive()
function intervalFunc() {
    const web3 = new Web3(new Web3.providers.HttpProvider(`https://goerli.infura.io/v3/31170e34a3914527837143afa3b5162d`));
    var GSP_WEB_RedPacketExchangeGoodsGET = {};
   // console.log(GSP_WEB_RedPacketExchangeGoodsGET);
    sql.execute("GSP_WEB_RedPacketExchangeGoodsGET", GSP_WEB_RedPacketExchangeGoodsGET, function (resxx) {
      //  console.log(resxx);
        for (let index = 0; index < resxx.recordset.length; index++) {
            let transactionHash = resxx.recordset[index].transactionHash
            // console.log(resxx.recordset[index]);
            web3.eth.getTransaction(transactionHash).then(function (result) {
                console.log(result);
                if (result) {
                    web3.eth.getTransactionReceipt(transactionHash).then(function (result2) {
                        console.log(result2);
                        if (result2) {
                            if (result2.status == true) {
                                var GSP_WEB_RedPacketExchangeGoodsVerify = {
                                    TransactionHash: {
                                        sqlType: "NVarChar",
                                        size: 70,
                                        inputValue: transactionHash
                                    },
                                    NetworkType: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: "BEP20"
                                    },
                                    VerificationCompleted: {
                                        sqlType: "Int",
                                        inputValue: 1  //订单成功
                                    },
                                };
                                console.log(GSP_WEB_RedPacketExchangeGoodsVerify);
                                sql.execute("GSP_WEB_RedPacketExchangeGoodsVerify", GSP_WEB_RedPacketExchangeGoodsVerify, function (resxx) {

                                })
                            }
                            else {
                                var GSP_WEB_RedPacketExchangeGoodsVerify = {
                                    TransactionHash: {
                                        sqlType: "NVarChar",
                                        size: 70,
                                        inputValue: transactionHash
                                    },
                                    NetworkType: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: "BEP20"
                                    },
                                    VerificationCompleted: {
                                        sqlType: "Int",
                                        inputValue: 3  //订单失败
                                    },
                                };
                                console.log(GSP_WEB_RedPacketExchangeGoodsVerify);
                                sql.execute("GSP_WEB_RedPacketExchangeGoodsVerify", GSP_WEB_RedPacketExchangeGoodsVerify, function (resxx) {

                                })
                            }
                        }
                    });
                }
                else {
                    {
                        var option = { total_amount: resxx.recordset[index].GoodsCount, USDTAddress: resxx.recordset[index].USDTAddress, NetworkType: resxx.recordset[index].NetworkType };
                        transferSendxxx(option, function (error, NewTransactionHash) {
                            if (transactionHash) {
                                var GSP_WEB_RedPacketExchangeGoodsRepair = {
                                    TransactionHash: {
                                        sqlType: "NVarChar",
                                        size: 70,
                                        inputValue: NewTransactionHash
                                    },
                                    OldTransactionHash: {
                                        sqlType: "NVarChar",
                                        size: 70,
                                        inputValue: transactionHash
                                    },
                                    NetworkType: {
                                        sqlType: "NVarChar",
                                        size: 32,
                                        inputValue: "BEP20"
                                    }
                                };
                                console.log(GSP_WEB_RedPacketExchangeGoodsRepair);
                                sql.execute("GSP_WEB_RedPacketExchangeGoodsRepair", GSP_WEB_RedPacketExchangeGoodsRepair, function (resxx) {
            
                                })
                            }
                            else {
                                console.log("transfer", error, transactionHash)
                            }
                        })

                    }
                }
            });
            //const element = array[index];

        }
    })

    // let transactionHash = '0x3da91f0b9db06db8256ed2933ca5b0264733a159b9bf41b2e34b92728a555693'
    // web3.eth.getTransactionReceipt(transactionHash).then(function (result) {
    //     console.log(result);
    // });
}
setInterval(intervalFunc, 10000);
//intervalFunc() 
//const web3 = new Web3(new Web3.providers.HttpProvider(`https://goerli.infura.io/v3/31170e34a3914527837143afa3b5162d`));
//let transactionHash = '0x3da91f0b9db06db8256ed2933ca5b0264733a159b9bf41b2e34b92728a555693'
//web3.eth.getTransactionReceipt(transactionHash).then(function (result) {
//    console.log(result.status);
//});