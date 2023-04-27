const Web3 = require('web3')
const contractABI = require('./build/contracts/MyNFT.json').abi

const web3 = new Web3('https://alfajores-forno.celo-testnet.org')
const contractAddress = '0x1234567890123456789012345678901234567890'
const contractInstance = new web3.eth.Contract(contractABI, contractAddress)
