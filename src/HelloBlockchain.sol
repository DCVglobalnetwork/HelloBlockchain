// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract HelloBlockchain {
    string public greetings;

    // Constructor to initialize the contract with a greeting message
    constructor(string memory _greetings) {
        greetings = _greetings; // Set the initial greeting message
    }

    function setGreetings(string memory _greetings) public {
        greetings = _greetings; // Change the greeting to the new value
    }

    function getGreetings() public view returns (string memory) {
        return greetings; // Return the current greeting message
    }
}
