// primerasComprobaciones.js
module.exports = function (callback) {
    // perform actions

    var accountList = JSON.stringify(web3.eth.accounts, null, 2);
    console.log("Cuentas:\n " + accountList);

    var coinBaseAddress = JSON.stringify(web3.eth.coinbase, null, 2);
    console.log("\nCoinbase Address:\n " + coinBaseAddress);

    var gasPrice = JSON.stringify(web3.eth.gasPrice, null, 2);
    console.log("\nGas Price:\n " + gasPrice);

    console.log("\nBlock Number:");
    web3.eth.getBlockNumber(function (error, result) {
        if (!error) {
            console.log(result);
            web3.eth.getBlock(result, function (error, result) {
                if (!error)
                    console.log("\nBlockInfo:\n" + JSON.stringify(result));
                else
                    console.error(error);
            })
        } else {
            console.error(error);
        }
    })

    return 0;
}