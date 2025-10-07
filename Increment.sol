// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public counter;
    constructor(uint256 _initialValue) {
        counter = _initialValue;
    }
    function increment() public {
        counter += 1;
    }
    function decrement() public {
        // Prevent underflow
        require(counter > 0, "Counter cannot go below zero");
        counter -= 1;
    }
    function getCounter() public view returns (uint256) {
        return counter;
    }
}
