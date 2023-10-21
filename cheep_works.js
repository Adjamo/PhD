
// code from:
// https://web3js.readthedocs.io/en/v1.2.11/web3-eth-subscribe.html

// justification for web3 1.2.1, its the stable version
//https://ethereum.stackexchange.com/questions/73763/which-version-of-web3-shall-i-be-using-now

const Web3 = require('web3');

var ether_port = 'wss://soft-neat-lambo.bsc.discover.quiknode.pro/11c29f4badee9e27ed04519fe62b37b8dd5c8e67/'
var web3       = new Web3(new Web3.providers.WebsocketProvider(ether_port));

console.log('Initiated');

//cheep contract address is:
//0xDC36484Cc5EaBb02921ddD35bDb17021aA86bb30

// phd contract is
// 0x8d32503fa8d6a26c41fcf0c415065232a3af964f

// Listen for all logs - for debugging purposes
let subscription1 = web3.eth.subscribe('logs', {
    address: '0x97945c374b7202E406D5D638D4f29D14AB4DE057'
});

// Listen for transferMessage events - for debugging purposes
subscription1.on('data', (data) => {
    console.log('New TransferMessage:', data);
    if (data.event == '0x03') {
        // Decode the event arguments and filter by message content
        const params = JSON.parse(data.arg1.slice(2));
        const { to } = params;
        if (to == '0x97945c374b7202E406D5D638D4f29D14AB4DE057') {
            console.log('TransferMessage received from contract, addressed matched!');
        }
    }
});





