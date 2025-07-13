// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

// get funds from user
// withdraw funds
// set a minimum funding value of 5 dollars

contract FundMe{

    function fund() public payable{

        require(msg.value > 1e18, "you did not send enough eth");

    }


    function withdraw() public{}




}