// SPDX-License-Identifier: LGPLv3
pragma solidity >0.6.0;

contract HashFunctions {

    function getSHA256(string memory input) public pure returns (bytes32) {
        return sha256(abi.encodePacked(input));
    }

    function getKeccak256(string memory input) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(input));
    }

    function getRipemd160(string memory input) public pure returns (bytes32) {
        return ripemd160(abi.encodePacked(input));
    }

    function getAddmod(uint x, uint y, uint z) public pure returns (uint) {
        return addmod(x, y, z);
    }

    function getMulmod(uint x, uint y, uint z) public pure returns (uint) {
        return mulmod(x, y, z);
    }
}
