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

Step 1 — Get instance

instance = await ArrayLength.deployed()

Step 2 — Get array

arr = await instance.getArray()

Step 3 — Print array

arr.toString()

Step 4 — Get length

len = await instance.getArrayLength()

Step 5 — Print length

len.toString()

Step 6 — Add a new element

await instance.addElement(99)

Step 7 — Read updated array

arr = await instance.getArray()

arr.toString()

Step 8 — Read updated length

len = await instance.getArrayLength()

len.toString()

let v = await Variables.deployed()
(await v.stateVariable()).toString()
(await v.func()).toString()

o = await Operators.deployed()
(await o.multiply(4, 5)).toString()
(await o.compare(10, 25, 15)).toString()

