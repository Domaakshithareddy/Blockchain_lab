curl -sSL https://bit.ly/2ysbOFE | bash -s

cd fabric-samples/test-network

sudo ./network.sh up

sudo docker exec peer0.org1.example.com peer channel list

sudo ./network.sh createChannel -c testchannel

sudo docker exec peer0.org1.example.com peer channel list

sudo docker exec peer0.org2.example.com peer channel list

sudo ./network.sh down



#variable execution


mkdir SolidityLab
cd SolidityLab
npm init -y

npm install truffle

npx truffle init

npx ganache

npx truffle compile
npx truffle migrate --network development

npx truffle console --network development


let v = await Variables.deployed()
(await v.stateVariable()).toString()
(await v.func()).toString()

o = await Operators.deployed()
(await o.multiply(4, 5)).toString()
(await o.compare(10, 25, 15)).toString()

