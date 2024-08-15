// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Import the Forge standard library for testing
import {Test, console} from "forge-std/Test.sol";
// Import the HelloBlockchain contract to be tested
import {HelloBlockchain} from "../src/HelloBlockchain.sol";

// Define the test contract for HelloBlockchain
contract HelloBlockchainTest is Test {
    // Declare a variable to hold the instance of the HelloBlockchain contract
    HelloBlockchain helloBlockchain;
    // This function is called before each test, setting up the contract instance

    function setUp() public {
        // Deploy a new HelloBlockchain contract with an initial greeting
        helloBlockchain = new HelloBlockchain("HelloBlockchain");
    }
    // Test to check if the initial greetings is set correctly

    function testInitialGreetings() public view {
        // Assert that the greeting returned by getGreetings() is "HelloBlockchain!"
        assertEq(helloBlockchain.getGreetings(), "HelloBlockchain");
    }

    // Test to check if the setGreeting function updates the greeting correctly
    function testSetGreetings() public {
        // Call setGreetings to update the greetings to "New Greetings"
        helloBlockchain.setGreetings("New Greetings");
        // Assert that the greetings returned by getGreetings() is now "New Greetings"
        assertEq(helloBlockchain.getGreetings(), "New Greetings");
    }
}
