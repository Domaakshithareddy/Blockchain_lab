curl -sSL https://bit.ly/2ysbOFE | bash -s

cd fabric-samples/test-network

sudo ./network.sh up

sudo docker exec peer0.org1.example.com peer channel list

sudo ./network.sh createChannel -c testchannel

sudo docker exec peer0.org1.example.com peer channel list

sudo docker exec peer0.org2.example.com peer channel list

sudo ./network.sh down



# variable execution

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




let v = await Variables.deployed()
(await v.stateVariable()).toString()
(await v.func()).toString()

o = await Operators.deployed()
(await o.multiply(4, 5)).toString()
(await o.compare(10, 25, 15)).toString()

