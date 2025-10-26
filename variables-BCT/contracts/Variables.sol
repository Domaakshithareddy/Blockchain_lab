// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Variables {
    string public stateVariable = "This is a state variable";

    function fun() public pure returns (string memory) {
        string memory localVariable = "This is a Local Variable";
        return localVariable;
    }
}
