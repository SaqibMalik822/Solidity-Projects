// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import {getPriceConversion} from "./PriceConvertor.sol";


contract FundMe{

    using getPriceConversion for uint256;

    uint256 public minimumFund = 5;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;


    function Funds() public payable{

        require(msg.value.getConversionRate(); > minimumFund, "not enough eth");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;

        
    }

    function withdraw() public {
        for(funderIndex = 0; funderIndex < funderIndex.length; funderIndex++){
            funders = funders[funderIndex];
            addressToAmountFunded[funders] = 0;
        }
        funders = new address[](0);
    }

    payable(msg.sender).transfer(address(this).balance);

    }



}
