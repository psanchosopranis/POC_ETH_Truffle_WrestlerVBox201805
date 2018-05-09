module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    // nombre de alias de la red 'ficticia' constituida por el nodo Ganache
    localganache: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "4567890", 
      // optional config values:
      // gas (Gas limit used for deploys. Default is 4712388)
      // gasPrice (Gas price used for deploys. Default is 100000000000 (100 Shannon).)
      // from (From address used during migrations. Defaults to the first available account provided by your Ethereum client.) 
      from: "0xeb4a8de3c6c4c0b4dea506882f80b59b57c874ba" // PRIMERA CUENTA DE GANACHE SI NO SE INDICA ES LA DE POR DEFECTO
      // provider - web3 provider instance Truffle should use to talk to the Ethereum network.
      //          - function that returns a web3 provider instance (see below.)
      //          - if specified, host and port are ignored.
    }
  }
};

