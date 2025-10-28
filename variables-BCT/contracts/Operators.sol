// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Operators {
    // Function to multiply two numbers
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Function to find the largest of three numbers
    function compare(uint a, uint b, uint c) public pure returns (uint) {
        uint largest = a;

        if (a > b && a > c) {
            largest = a;
        } else if (b > a && b > c) {
            largest = b;
        } else {
            largest = c;
        }

        return largest;
    }
}
