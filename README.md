### 10. fabric

curl -sSL https://bit.ly/2ysbOFE | bash -s

cd fabric-samples/test-network

sudo ./network.sh up

sudo docker exec peer0.org1.example.com peer channel list

sudo ./network.sh createChannel -c testchannel

sudo docker exec peer0.org1.example.com peer channel list

sudo docker exec peer0.org2.example.com peer channel list

sudo ./network.sh down



# Solidity tuffle ganace

Initial set up:
mkdir SolidityLab

cd SolidityLab

npm init -y

npm install truffle

npx truffle init

terminal 1

npx ganache

terminal 2

npx truffle compile

npx truffle migrate --network development

npx truffle console --network development

### 7. Array and length

let arr = await ArrayLength.deployed()

(await arr.getArray()).map(n => n.toString())

(await arr.getArrayLength()).toString()

await arr.addElement(10)

(await arr.getArray()).map(n => n.toString())

(await arr.getArrayLength()).toString()

### 5. Increment Decrement

let ctr = await Counter.deployed()

(await ctr.getCounter()).toString()

await ctr.increment()

(await ctr.getCounter()).toString()

await ctr.decrement()

(await ctr.getCounter()).toString()

### 8. Variables

let v = await Variables.deployed()

(await v.stateVariable()).toString()

(await v.func()).toString()

### operators
o = await Operators.deployed()

(await o.multiply(4, 5)).toString()

(await o.compare(10, 25, 15)).toString()

### 1 

Elements of Distributed Computing:

Distributed computing in blockchain refers to a system of interconnected nodes working on a P2P network without a central authority. It includes replication of ledger data, consensus mechanisms like PoW/PoS, and Byzantine fault tolerance. These elements ensure decentralization, reliability, and transparency.

Elements of Cryptography:

Blockchain uses cryptographic techniques such as hash functions (SHA-256), public–private key cryptography, and Merkle trees to secure data. Cryptography ensures confidentiality, integrity, authentication, and tamper-proofing of transactions stored on the blockchain.

Digital Signature:

A digital signature is a cryptographic method to prove the authenticity and integrity of blockchain transactions. It is created using the sender’s private key and verified using the public key. Digital signatures provide authentication, non-repudiation, and ensure that data has not been altered.

### 2

Remix Ethereum Tool:

Remix is a browser-based IDE for writing, compiling, deploying, and debugging Ethereum smart contracts. It supports Solidity and provides modules for compilation, deployment, debugging, static analysis, and testing. It allows deploying contracts directly on local VM, MetaMask, or test networks.

Truffle:

Truffle is a development framework for Ethereum that provides a structured workspace for smart contract development. It supports compilation, automated migrations, scripting, unit testing, and network configuration. Truffle simplifies deploying and managing multiple contracts during development.

Ganache:

Ganache is a local Ethereum blockchain used for testing smart contracts. It provides pre-funded accounts, instant mining, and detailed logs of blocks and transactions. It integrates with tools like Truffle to allow local, cost-free deployment of contracts before using real testnets.

### 3

Solidity Program Structure:

A Solidity program contains pragma version, import statements, and contract definitions. Within the contract, state variables store data, functions define logic, and events log activities. Modifiers add conditions, while constructors run during deployment. The structure ensures clear, secure smart contract organization.

Compilation:

Solidity code is compiled using tools like solc, Remix, Truffle, or Hardhat. The compiler converts .sol source code into bytecode and ABI. Bytecode is deployed to the blockchain, while ABI allows external applications to interact with the contract.

Deployment Environment:

Smart contracts can be deployed on local networks (Ganache, Hardhat), testnets (Sepolia, Goerli), or mainnet. Deployment tools include Remix, Truffle, and Hardhat. Deployment uploads bytecode to the blockchain using a wallet (MetaMask) and consumes gas (except local networks).
