// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherSender {
    event EtherSent(address indexed to, uint256 amount);

    function sendToAddress(address payable _to) public payable {
        require(msg.value > 0, "Send some Ethers");

        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ethers");

        emit EtherSent(_to, msg.value);
    }
}
