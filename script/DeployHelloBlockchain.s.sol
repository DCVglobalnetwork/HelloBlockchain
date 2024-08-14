// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Import the Forge standard library for scripting
import {Script, console} from "forge-std/Script.sol";
// Import the HelloBlockchain contract to be deployed
import {HelloBlockchain} from "../src/HelloBlockchain.sol";

// Define a script contract for deploying the HelloBlockchain contract
contract DeployHelloBlockchain is Script {
    HelloBlockchain public helloBlockchain;

    // The run function contains the deployment logic
    function run() public {
        // Start broadcasting transactions to the network
        vm.startBroadcast();
        // Deploy a new HelloBlockchain contract with the initial greetings "Hello, Blockchain!"
        helloBlockchain = new HelloBlockchain("HelloBlockchain");
        // Stop broadcasting transactions
        vm.stopBroadcast();
    }
}
