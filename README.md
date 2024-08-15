# HelloBlockchain

Welcome to the **HelloBlockchain** project! This repository contains a simple Ethereum smart contract, along with scripts for deployment, testing, and interaction using the [Foundry](https://getfoundry.sh/) toolkit.

![image](https://github.com/user-attachments/assets/df8d0747-0a38-4338-a80c-3e41683f18da)


## Table of Contents

- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Testing](#testing)
- [Deployment](#deployment)
- [Usage](#usage)
- [License](#license)

## Project Overview

**HelloBlockchain** is a simple Ethereum smart contract that stores a greeting message on the blockchain. The project demonstrates how to create, test, and deploy a smart contract using Foundry and Anvil.

## Prerequisites

Before getting started, make sure you have the following installed:

- [Foundry](https://getfoundry.sh/)
- [Anvil](https://book.getfoundry.sh/anvil/)
- [Node.js](https://nodejs.org/) (optional, for JavaScript integrations)

You can install Foundry and Anvil by running:

```sh
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

## Installation
Clone the repository:
```sh
git clone https://github.com/DCVglobalnetwork/HelloBlockchain.git
cd HelloBlockchain
```
Install dependencies:
```sh
forge install
```
Build the project:
```
forge build
```
## Testing
The project includes a test file HelloBlockchainTest.sol to ensure the contract behaves as expected.

Running Tests
To run the tests:
```sh
forge test
```
This will compile the contract and run the tests defined in HelloBlockchainTest.sol.

## Deployment
You can deploy the contract using Anvil (a local Ethereum node) and the deployment script DeployHelloBlockchain.s.sol.

Steps to Deploy
Start Anvil:
```sh
anvil
```
Deploy the contract:
```sh
forge script script/DeployHelloBlockchain.s.sol:DeployHelloBlockchain --rpc-url http://127.0.0.1:8545 --broadcast --private-key <YOUR_PRIVATE_KEY>
```
Replace <YOUR_PRIVATE_KEY> with the private key of one of the accounts provided by Anvil.

Check Deployment
You can verify the deployment by calling the getGreetings() function:
```sh
cast call <CONTRACT_ADDRESS> "getGreetings()"
```
## Usage
After deployment, you can interact with the contract using the following functions:

Get the current greetings:
```sh
function getGreetings() public view returns (string memory)
```
Set a new greeting:
```sh
function setGreetings(string memory _greetings) public
```
You can interact with these functions using tools like cast or directly through your preferred Ethereum interface.

## License
This project is licensed under the MIT License. 


# Detailed Walkthrough on Medium
If you're interested in a step-by-step guide on how this project was built, including explanations of the code, testing, and deployment process, check out the detailed walkthrough on Medium:

👉 [Read the HelloBlockchain Walkthrough on Medium](https://medium.com/@maria.magdalena.makeup/guide-to-creating-testing-and-deploying-a-smart-contract-with-foundry-helloblockchain-8c9eeedf780e)

![image](https://github.com/user-attachments/assets/44f9ccda-166f-4ce2-b6a7-befbd45d16da)

This article will provide you with a deeper understanding of the project and help you get started with your own blockchain development journey.


