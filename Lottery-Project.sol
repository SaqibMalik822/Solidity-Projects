// SPDX-License-Identifier: MIT

pragma solidity ^0.2.28;

// Build a decentralized lottery where users can enter by sending ETH. The contract:

// Collects all participants (via array & mapping)

// Uses require() for entry validation

// Uses Chainlink Price Feed to ensure minimum entry in USD

// Stores player info in struct

// Uses loops to pick a winner

// Sends the prize to the winner


contract Lottery{
    struct registaredUser{

        address userAddress;
        uint256 uniqueId;

    }
    registaredUser[] internal registaredUsers;

    mapping(address => uint256) internal addressToUniqueId;

    function registar(uint256 _uniqueId) public payable{
        bool IDexist = false;

        for(uint i = 0; i < registaredUsers.length; i = i + 1){
            if(registaredUsers[i].uniqueId == _uniqueId){
                IDexist = true;
                break
            }
        }
        require(!IDexist, "id already exists");

        
    }

    function getPrice() internal{}

    function convertEthToUSD() internal{}

    function winner() public{}
}